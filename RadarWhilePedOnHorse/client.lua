RegisterNetEvent('Radar:SetHidden')
AddEventHandler('Radar:SetHidden',function()
    DisplayRadar(false)
end)

RegisterNetEvent('Radar:SetShow')
AddEventHandler('Radar:SetShow', function()
    if Config['USE_REDEMRP_FRAMEWORK_HUD'] == true then
        TriggerEvent('redemrp:showHUD')
    end
    DisplayRadar(true)
end)

CreateThread(function()
    while true do 
        Citizen.Wait(300)
        if IsPedOnMount(PlayerPedId()) or IsPedInAnyVehicle(PlayerPedId()) then
            if Config['USE_REDEMRP_FRAMEWORK_HUD'] == true then
                TriggerEvent('redemrp:showHUD')
            end
            DisplayRadar(true)
        else
            DisplayRadar(false)
        end
    end
end)
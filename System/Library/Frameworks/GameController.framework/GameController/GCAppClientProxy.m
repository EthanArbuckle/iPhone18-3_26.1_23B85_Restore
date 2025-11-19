@interface GCAppClientProxy
@end

@implementation GCAppClientProxy

void __48___GCAppClientProxy__initWithConnection_server___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _invalidate];
}

uint64_t __35___GCAppClientProxy_pingWithReply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __45___GCAppClientProxy_setSessionConfiguration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 48);
  v2 = (v1 + 48);
  if (!v3)
  {
    objc_storeStrong(v2, *(a1 + 40));
  }
}

void __64___GCAppClientProxy_connectToControllerServiceWithClient_reply___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    obj = *(a1 + 40);
    objc_sync_enter(obj);
    if (!*(*(a1 + 40) + 56))
    {
      v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v5 = *(a1 + 40);
      v6 = *(v5 + 72);
      *(v5 + 72) = v4;

      [*(*(a1 + 40) + 8) addObserver:*(a1 + 40) forKeyPath:@"activeControllerDevices" options:5 context:0];
      objc_storeStrong((*(a1 + 40) + 56), *(a1 + 32));
      *(*(a1 + 40) + 64) = 0;
      v7 = *(a1 + 40);
    }

    (*(*(a1 + 48) + 16))();
    objc_sync_exit(obj);
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

uint64_t __77___GCAppClientProxy_connectToPlayerIndicatorXPCProxyServiceWithClient_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4, 0);
}

uint64_t __67___GCAppClientProxy_connectToLightXPCProxyServiceWithClient_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4, 0);
}

uint64_t __78___GCAppClientProxy_connectToAdaptiveTriggersXPCProxyServiceWithClient_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4, 0);
}

uint64_t __68___GCAppClientProxy_connectToMotionXPCProxyServiceWithClient_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4, 0);
}

uint64_t __69___GCAppClientProxy_connectToBatteryXPCProxyServiceWithClient_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4, 0);
}

uint64_t __70___GCAppClientProxy_connectToSettingsXPCProxyServiceWithClient_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4, 0);
}

uint64_t __75___GCAppClientProxy_connectToSystemGestureXPCProxyServiceWithClient_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4, 0);
}

uint64_t __72___GCAppClientProxy_connectToPhotoVideoXPCProxyServiceWithClient_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4, 0);
}

void __38___GCAppClientProxy_settingsSuiteName__block_invoke()
{
  v0 = [&stru_1F4E3B4E0 stringByAppendingString:@"com.apple.gamecontroller.settings"];
  v1 = settingsSuiteName_suiteName;
  settingsSuiteName_suiteName = v0;
}

void __58___GCAppClientProxy_DeviceClient__addInvalidationHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = [v3 invalidationHandlers];
    v5 = [v4 mutableCopy];

    v6 = _Block_copy(*(a1 + 32));
    [v5 removeObject:v6];

    [v3 setInvalidationHandlers:v5];
    objc_sync_exit(v3);

    WeakRetained = v7;
  }
}

void __77___GCAppClientProxy_ControllerService__fetchControllerDescriptionsWithReply___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(*v2 + 72) objectEnumerator];
  v5 = [v4 allObjects];

  objc_sync_exit(v3);
  if (gc_isInternalBuild())
  {
    __77___GCAppClientProxy_ControllerService__fetchControllerDescriptionsWithReply___block_invoke_cold_1(v2);
  }

  (*(*(a1 + 40) + 16))();
}

void __111___GCAppClientProxy_PlayerIndicatorXPCProxyService__playerIndicatorXPCProxyServiceClientEndpointConnect_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __111___GCAppClientProxy_PlayerIndicatorXPCProxyService__playerIndicatorXPCProxyServiceClientEndpointConnect_reply___block_invoke_2;
  v5[3] = &unk_1E841AEF0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  v4 = v2;
  [v6 fetchObjectIdentifierWithReply:v5];
}

void __111___GCAppClientProxy_PlayerIndicatorXPCProxyService__playerIndicatorXPCProxyServiceClientEndpointConnect_reply___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 8) IPCObjectWithIdentifier:a2];
  v7 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_1F4EA88B8] && objc_msgSend(v7, "conformsToProtocol:", &unk_1F4E92AC0))
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = v7;
    [v6 acceptClient:v4 onConnection:v5 error:0];
    (*(a1[7] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void __91___GCAppClientProxy_LightXPCProxyService__lightXPCProxyServiceClientEndpointConnect_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91___GCAppClientProxy_LightXPCProxyService__lightXPCProxyServiceClientEndpointConnect_reply___block_invoke_2;
  v5[3] = &unk_1E841AEF0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  v4 = v2;
  [v6 fetchObjectIdentifierWithReply:v5];
}

void __91___GCAppClientProxy_LightXPCProxyService__lightXPCProxyServiceClientEndpointConnect_reply___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 8) IPCObjectWithIdentifier:a2];
  v7 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_1F4E9ED90] && objc_msgSend(v7, "conformsToProtocol:", &unk_1F4E92AC0))
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = v7;
    [v6 acceptClient:v4 onConnection:v5 error:0];
    (*(a1[7] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void __113___GCAppClientProxy_AdaptiveTriggersXPCProxyService__adaptiveTriggersXPCProxyServiceClientEndpointConnect_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __113___GCAppClientProxy_AdaptiveTriggersXPCProxyService__adaptiveTriggersXPCProxyServiceClientEndpointConnect_reply___block_invoke_2;
  v5[3] = &unk_1E841AEF0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  v4 = v2;
  [v6 fetchObjectIdentifierWithReply:v5];
}

void __113___GCAppClientProxy_AdaptiveTriggersXPCProxyService__adaptiveTriggersXPCProxyServiceClientEndpointConnect_reply___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 8) IPCObjectWithIdentifier:a2];
  v7 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_1F4EA5838] && objc_msgSend(v7, "conformsToProtocol:", &unk_1F4E92AC0))
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = v7;
    [v6 acceptClient:v4 onConnection:v5 error:0];
    (*(a1[7] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void __93___GCAppClientProxy_MotionXPCProxyService__motionXPCProxyServiceClientEndpointConnect_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93___GCAppClientProxy_MotionXPCProxyService__motionXPCProxyServiceClientEndpointConnect_reply___block_invoke_2;
  v5[3] = &unk_1E841AEF0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  v4 = v2;
  [v6 fetchObjectIdentifierWithReply:v5];
}

void __93___GCAppClientProxy_MotionXPCProxyService__motionXPCProxyServiceClientEndpointConnect_reply___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 8) IPCObjectWithIdentifier:a2];
  v7 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_1F4E99020] && objc_msgSend(v7, "conformsToProtocol:", &unk_1F4E92AC0))
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = v7;
    [v6 acceptClient:v4 onConnection:v5 error:0];
    (*(a1[7] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void __95___GCAppClientProxy_BatteryXPCProxyService__batteryXPCProxyServiceClientEndpointConnect_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95___GCAppClientProxy_BatteryXPCProxyService__batteryXPCProxyServiceClientEndpointConnect_reply___block_invoke_2;
  v5[3] = &unk_1E841AEF0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  v4 = v2;
  [v6 fetchObjectIdentifierWithReply:v5];
}

void __95___GCAppClientProxy_BatteryXPCProxyService__batteryXPCProxyServiceClientEndpointConnect_reply___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 8) IPCObjectWithIdentifier:a2];
  v7 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_1F4E92B40] && objc_msgSend(v7, "conformsToProtocol:", &unk_1F4E92AC0))
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = v7;
    [v6 acceptClient:v4 onConnection:v5 error:0];
    (*(a1[7] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void __107___GCAppClientProxy_SystemGestureXPCProxyService__systemGestureXPCProxyServiceClientEndpointConnect_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __107___GCAppClientProxy_SystemGestureXPCProxyService__systemGestureXPCProxyServiceClientEndpointConnect_reply___block_invoke_2;
  v5[3] = &unk_1E841AEF0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  v4 = v2;
  [v6 fetchObjectIdentifierWithReply:v5];
}

void __107___GCAppClientProxy_SystemGestureXPCProxyService__systemGestureXPCProxyServiceClientEndpointConnect_reply___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 8) IPCObjectWithIdentifier:a2];
  v7 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_1F4EA6EB8] && objc_msgSend(v7, "conformsToProtocol:", &unk_1F4E92AC0))
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = v7;
    [v6 acceptClient:v4 onConnection:v5 error:0];
    (*(a1[7] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void __97___GCAppClientProxy_SettingsXPCProxyService__settingsXPCProxyServiceClientEndpointConnect_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97___GCAppClientProxy_SettingsXPCProxyService__settingsXPCProxyServiceClientEndpointConnect_reply___block_invoke_2;
  v5[3] = &unk_1E841AEF0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v7 = v2;
  v8 = *(a1 + 48);
  v4 = v2;
  [v6 fetchObjectIdentifierWithReply:v5];
}

void __97___GCAppClientProxy_SettingsXPCProxyService__settingsXPCProxyServiceClientEndpointConnect_reply___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 8) IPCObjectWithIdentifier:a2];
  v7 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_1F4EA0C30] && objc_msgSend(v7, "conformsToProtocol:", &unk_1F4E92AC0))
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = v7;
    [v6 acceptClient:v4 onConnection:v5 error:0];
    (*(a1[7] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void __77___GCAppClientProxy_ControllerService__fetchControllerDescriptionsWithReply___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v5 = *(*a1 + 24);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v6, v7, OS_LOG_TYPE_DEBUG, v8, v9, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end
@interface GCControllerManagerServer
@end

@implementation GCControllerManagerServer

void __44___GCControllerManagerServer_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedManager;
  sharedInstance_sharedManager = v0;
}

uint64_t __61___GCControllerManagerServer_deviceManager_deviceDidConnect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onqueue_registerPhysicalDevice:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _onqueue_refreshLogicalDevices];
}

uint64_t __64___GCControllerManagerServer_deviceManager_deviceDidDisconnect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onqueue_unregisterPhysicalDevice:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _onqueue_refreshLogicalDevices];
}

uint64_t __72___GCControllerManagerServer_refreshActiveConfigurationsWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onqueue_refreshLogicalDevices];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __46___GCControllerManagerServer_setupHIDMonitor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) matchingHIDServiceAttributes];
  [v1 setMatchingMultiple:v2];
}

void __82___GCControllerManagerServer__hidqueue_pushPendingDriverConnection_forRegistryID___block_invoke(uint64_t a1)
{
  objc_setAssociatedObject(*(a1 + 48), "DriverConnectionInvalidationRegistrationKey", 0, 1);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___GCControllerManagerServer__hidqueue_pushPendingDriverConnection_forRegistryID___block_invoke_2;
  block[3] = &unk_1E8418C78;
  block[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, block);
}

void __82___GCControllerManagerServer__hidqueue_pushPendingDriverConnection_forRegistryID___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 168) objectForKey:a1[5]];
  [v2 removeObject:a1[6]];
  if (![v2 count])
  {
    [*(a1[4] + 168) removeObjectForKey:a1[5]];
  }
}

void __82___GCControllerManagerServer__hidqueue_pushPendingFilterConnection_forRegistryID___block_invoke(uint64_t a1)
{
  objc_setAssociatedObject(*(a1 + 48), "FilterConnectionInvalidationRegistrationKey", 0, 1);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___GCControllerManagerServer__hidqueue_pushPendingFilterConnection_forRegistryID___block_invoke_2;
  block[3] = &unk_1E8418C78;
  block[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, block);
}

void __82___GCControllerManagerServer__hidqueue_pushPendingFilterConnection_forRegistryID___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 176) objectForKey:a1[5]];
  [v2 removeObject:a1[6]];
  if (![v2 count])
  {
    [*(a1[4] + 176) removeObjectForKey:a1[5]];
  }
}

void __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 40);
    v8 = *(v7 + 16);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke_414;
    v10[3] = &unk_1E8418CC8;
    v10[4] = v7;
    v11 = v5;
    v12 = *(a1 + 32);
    v13 = a3;
    dispatch_async(v8, v10);
  }

  else
  {
    if (gc_isInternalBuild())
    {
      __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke_cold_1(a1);
    }

    v9 = [*(a1 + 32) remoteProxy];
    [v9 invalidate];

    [*(a1 + 32) invalidate];
  }
}

void __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke_414(void *a1)
{
  v2 = a1 + 5;
  v3 = [*(a1[4] + 152) member:a1[5]];
  v4 = [*(*(v2 - 1) + 160) objectForKey:v3];
  if (v4)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_12;
    }

    if (gc_isInternalBuild())
    {
      __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke_414_cold_1();
    }

    v5 = a1[6];
    if (a1[7] == 1)
    {
      if ([v4 acceptFilterConnection:v5 forHIDService:v3])
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    if (([v4 acceptDriverConnection:v5 forHIDService:v3] & 1) == 0)
    {
LABEL_12:
      if (gc_isInternalBuild())
      {
        __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke_414_cold_2();
      }

LABEL_14:
      [a1[6] invalidate];
    }
  }

  else
  {
    isInternalBuild = gc_isInternalBuild();
    if (v3)
    {
      if (isInternalBuild)
      {
        __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke_414_cold_3();
      }

      goto LABEL_14;
    }

    if (isInternalBuild)
    {
      __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke_414_cold_4();
    }

    v7 = a1[6];
    v8 = a1[4];
    v9 = a1[5];
    if (a1[7] == 1)
    {
      [v8 _hidqueue_pushPendingFilterConnection:v7 forRegistryID:v9];
    }

    else
    {
      [v8 _hidqueue_pushPendingDriverConnection:v7 forRegistryID:v9];
    }
  }

LABEL_15:
}

void __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke_414_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v2))
  {
    v4 = *(v1 + 48);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke_414_cold_2()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v2))
  {
    v3 = *(v1 + 48);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke_414_cold_3()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 48);
    v4 = *v0;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __74___GCControllerManagerServer_Connections__acceptIncomingDriverConnection___block_invoke_414_cold_4()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v10 = *(v2 + 48);
    [*v1 unsignedLongLongValue];
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end
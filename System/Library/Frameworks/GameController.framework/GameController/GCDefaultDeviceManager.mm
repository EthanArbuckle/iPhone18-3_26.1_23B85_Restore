@interface GCDefaultDeviceManager
@end

@implementation GCDefaultDeviceManager

void __62___GCDefaultDeviceManager_refreshPhysicalDeviceConfiguration___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v3 = [a1[4] object];
    v4 = [v13[5] allValues];
    v5 = [v4 containsObject:v3];

    if (v5)
    {
      v6 = [a1[5] configurationIdentifierForDevice:v3];
      v7 = [a1[5] deviceRegistry];
      v8 = [v7 deviceConfigurationRegistry];
      [v8 removeConfigurationWithIdentifier:v6];

      v9 = [a1[5] deviceRegistry];
      v10 = [v9 deviceConfigurationRegistry];
      [v10 refreshActiveConfigurations];

      [a1[5] _onqueue_registerDefaultConfigurationForDevice:v3 replaceExisting:1];
      v11 = [a1[5] deviceRegistry];
      v12 = [v11 deviceConfigurationRegistry];
      [v12 refreshActiveConfigurations];
    }

    WeakRetained = v13;
  }
}

void __43___GCDefaultDeviceManager_claimHIDService___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v3 deviceManager:*(a1 + 32) physicalDeviceForHIDDevice:*(a1 + 40)];
    v4 = [(_GCDefaultPhysicalDevice *)v7 manager];
    v5 = *(a1 + 32);

    if (v4 != v5)
    {
      __43___GCDefaultDeviceManager_claimHIDService___block_invoke_cold_1(a1, v2);
    }

    v6 = v7;
  }

  else
  {
    v6 = [[_GCDefaultPhysicalDevice alloc] initWithHIDDevice:*(a1 + 40) manager:*(a1 + 32)];
  }

  v8 = v6;
  [*(a1 + 32) _onqueue_registerPhysicalDevice:v6 serviceInfo:*(a1 + 40) checkForDuplicateDevice:1];
}

void __56___GCDefaultDeviceManager__onqueue_relinquishHIDDevice___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) identifier];
  v10 = [v8 identifier];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *a4 = 1;
  }
}

void __64___GCDefaultDeviceManager_acceptDriverConnection_forHIDService___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = objc_opt_respondsToSelector();
  isInternalBuild = gc_isInternalBuild();
  if (v3)
  {
    if (isInternalBuild)
    {
      __64___GCDefaultDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_2();
    }

    [v2 setDriverConnection:*(a1 + 48)];
  }

  else
  {
    if (isInternalBuild)
    {
      __64___GCDefaultDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_1();
    }

    [*(a1 + 48) invalidate];
  }
}

void __64___GCDefaultDeviceManager_acceptFilterConnection_forHIDService___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = objc_opt_respondsToSelector();
  isInternalBuild = gc_isInternalBuild();
  if (v3)
  {
    if (isInternalBuild)
    {
      __64___GCDefaultDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_2();
    }

    [v2 setFilterConnection:*(a1 + 48)];
  }

  else
  {
    if (isInternalBuild)
    {
      __64___GCDefaultDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_1();
    }

    [*(a1 + 48) invalidate];
  }
}

void __43___GCDefaultDeviceManager_claimHIDService___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:? lineNumber:? description:?];
}

void __64___GCDefaultDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v9 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v8 = *(v0 + 48);
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __64___GCDefaultDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v2))
  {
    v9 = *(v1 + 48);
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __64___GCDefaultDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v2))
  {
    v9 = *(v1 + 48);
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end
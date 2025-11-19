@interface GCNintendoJoyConDeviceManager
@end

@implementation GCNintendoJoyConDeviceManager

void __61___GCNintendoJoyConDeviceManager_device_fusionGestureActive___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = [*(a1 + 32) fusionDevice];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 leftDevice];
      v6 = *(a1 + 32);
      if (v5 == v6)
      {
        v24 = *(*(a1 + 40) + 56);
        v1 = [v4 rightDevice];
        v25 = [v24 member:v1];
        if (v25)
        {

LABEL_30:
          if (gc_isInternalBuild())
          {
            __61___GCNintendoJoyConDeviceManager_device_fusionGestureActive___block_invoke_cold_1();
          }

          v5 = [v4 configuration];
          if ([v5 isTransient])
          {
            v29 = [*(a1 + 40) deviceRegistry];
            v30 = [v29 deviceConfigurationRegistry];
            v31 = [v5 identifier];
            [v30 removeConfigurationWithIdentifier:v31];
          }

          else
          {
            v29 = [v5 mutableCopy];
            [v29 setPriority:0];
            v30 = [*(a1 + 40) deviceRegistry];
            v31 = [v30 deviceConfigurationRegistry];
            [v31 updateConfiguration:v29];
          }

          v32 = [*(a1 + 40) deviceRegistry];
          v33 = [v32 deviceConfigurationRegistry];
          [v33 refreshActiveConfigurationsWithCompletion:0];

LABEL_38:
          goto LABEL_39;
        }
      }

      v7 = [v4 rightDevice];
      v8 = v7;
      if (v7 == *(a1 + 32))
      {
        v26 = *(*(a1 + 40) + 56);
        v27 = [v4 leftDevice];
        v28 = [v26 member:v27];

        if (v5 == v6)
        {
        }

        if (v28)
        {
          goto LABEL_30;
        }

LABEL_24:
        [*(*(a1 + 40) + 56) addObject:*(a1 + 32)];
LABEL_39:

        return;
      }

      if (v5 == v6)
      {
      }
    }

    else
    {
      v5 = [*(*(a1 + 40) + 56) anyObject];
      if (v5 && ([*(a1 + 32) type] == 1 && objc_msgSend(v5, "type") == 2 || objc_msgSend(*(a1 + 32), "type") == 2 && objc_msgSend(v5, "type") == 1))
      {
        v11 = [*(a1 + 32) type];
        v12 = v5;
        if (v11 == 1)
        {
          v12 = *(a1 + 32);
        }

        v13 = v12;
        v14 = [*(a1 + 32) type];
        v15 = v5;
        if (v14 == 2)
        {
          v15 = *(a1 + 32);
        }

        v16 = v15;
        if (gc_isInternalBuild())
        {
          __61___GCNintendoJoyConDeviceManager_device_fusionGestureActive___block_invoke_cold_2();
        }

        v17 = [_GCNintendoFusedJoyConDevice identifierForFusedJoyConDeviceWithLeftDevice:v13 rightDevice:v16];
        v18 = [*(a1 + 40) deviceRegistry];
        v19 = [v18 deviceConfigurationRegistry];
        v20 = [v19 configurationWithIdentifier:v17];

        if (v20)
        {
          v21 = [v20 mutableCopy];
          [v21 setPriority:20];
          v22 = [*(a1 + 40) deviceRegistry];
          v23 = [v22 deviceConfigurationRegistry];
          [v23 updateConfiguration:v21];
        }

        else
        {
          [*(a1 + 40) _onqueue_registerFusionConfigurationWithLeftDevice:v13 rightDevice:v16];
        }

        v34 = [*(a1 + 40) deviceRegistry];
        v35 = [v34 deviceConfigurationRegistry];
        [v35 refreshActiveConfigurationsWithCompletion:0];

        goto LABEL_38;
      }
    }

    goto LABEL_24;
  }

  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 56);

  [v10 removeObject:v9];
}

void __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = (a1 + 32);
  v4 = [[_GCNintendoJoyConDevicePending alloc] initWithHIDService:*(a1 + 32) manager:*(a1 + 40)];
  if (gc_isInternalBuild())
  {
    __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_cold_1();
  }

  v5 = [*(*v2 + 4) objectForKey:*v3];

  if (v5)
  {
    __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_cold_2(a1, a1 + 40, (a1 + 32));
  }

  [*(*v2 + 4) setObject:v4 forKey:*v3];
  objc_initWeak(&location, *v2);
  v6 = [(_GCNintendoJoyConDevicePending *)v4 device];
  v7 = *(*v2 + 1);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_158;
  v8[3] = &unk_1E8419B70;
  objc_copyWeak(&v10, &location);
  v9 = *v3;
  [v6 observeSuccessOnQueue:v7 withBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_158(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (gc_isInternalBuild())
    {
      __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_158_cold_1();
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v5 = WeakRetained[5];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_159;
    v11 = &unk_1E8419B48;
    v6 = v3;
    v12 = v6;
    v13 = &v14;
    [v5 enumerateKeysAndObjectsWithOptions:0 usingBlock:&v8];
    if (v15[5])
    {
      [WeakRetained _onqueue_relinquishHIDService:{v8, v9, v10, v11}];
    }

    _Block_object_dispose(&v14, 8);
    [WeakRetained[5] setObject:v6 forKey:*(a1 + 32)];
    [WeakRetained[4] removeObjectForKey:*(a1 + 32)];
    [WeakRetained _onqueue_registerDefaultConfigurationsForDevice:v6];
    v7 = [WeakRetained deviceRegistry];
    [v7 deviceManager:WeakRetained deviceDidConnect:v6];
  }
}

void __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_159(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = [v8 identifier];
  v11 = [v9 identifier];

  LODWORD(v9) = [v10 isEqual:v11];
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __71___GCNintendoJoyConDeviceManager_acceptDriverConnection_forHIDService___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  isInternalBuild = gc_isInternalBuild();
  if (v2)
  {
    if (isInternalBuild)
    {
      __71___GCNintendoJoyConDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_1();
    }

    [v2 setDriverConnection:*(a1 + 48)];
  }

  else
  {
    if (isInternalBuild)
    {
      __71___GCNintendoJoyConDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_2();
    }

    [*(a1 + 48) invalidate];
  }
}

void __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = (a1 + 40);
  v4 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  if (v4)
  {
    v5 = objc_opt_respondsToSelector();
    isInternalBuild = gc_isInternalBuild();
    if (v5)
    {
      if (isInternalBuild)
      {
        __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_2();
      }

      [v4 setFilterConnection:*(a1 + 48)];
    }

    else
    {
      if (isInternalBuild)
      {
        __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_1();
      }

      [*(a1 + 48) invalidate];
    }
  }

  v7 = [*(*v2 + 32) objectForKey:*v3];
  if (v7)
  {
    if (gc_isInternalBuild())
    {
      __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_3();
    }

    [v7 setFilterConnection:*(a1 + 48)];
  }

  else if (!v4)
  {
    __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_4(a1, v2, v2 + 1);
  }
}

void __61___GCNintendoJoyConDeviceManager_device_fusionGestureActive___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __61___GCNintendoJoyConDeviceManager_device_fusionGestureActive___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v2))
  {
    v3 = *v1;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_cold_2(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_4();
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = *v3;
  [v6 handleFailureInMethod:*(v4 + 48) object:*v3 file:*a3 lineNumber:? description:?];
}

void __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_158_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __71___GCNintendoJoyConDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v2))
  {
    v4 = *v1;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_6(&dword_1D2CD5000, v5, v6, "%@: Passing driver connection to device %@.", v7, v8, v9, v10, v11);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __71___GCNintendoJoyConDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *v1;
    v5 = *v0;
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_ERROR, "%@: No device for %@", &v6, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v2))
  {
    v3 = *(v1 + 48);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v2))
  {
    v4 = *(v1 + 48);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_6(&dword_1D2CD5000, v5, v6, "Passing filter connection %@ to device %@.", v7, v8, v9, v10, v11);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v2))
  {
    v4 = *v1;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_6(&dword_1D2CD5000, v5, v6, "%@: Passing filter connection to device %@.", v7, v8, v9, v10, v11);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_4(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_4();
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(v4 + 56) object:*v3 file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:456 description:{@"No device for %@", *a3}];

  return [*(v4 + 48) invalidate];
}

@end
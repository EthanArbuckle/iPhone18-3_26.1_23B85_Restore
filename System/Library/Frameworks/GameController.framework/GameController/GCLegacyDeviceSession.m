@interface GCLegacyDeviceSession
@end

@implementation GCLegacyDeviceSession

void __40___GCLegacyDeviceSession_sharedInstance__block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  IsGameControllerDaemon = currentProcessIsGameControllerDaemon();
  v3 = _gc_log_session();
  v4 = v3;
  if (IsGameControllerDaemon)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __40___GCLegacyDeviceSession_sharedInstance__block_invoke_cold_1(v4);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_DEFAULT, "Creating the shared game controller session...", v13, 2u);
    }

    v4 = dispatch_queue_create("GameController.LegacyHIDQueue", 0);
    v5 = [_GCLegacyDeviceSession alloc];
    v6 = [*(a1 + 32) defaultConfiguration];
    v7 = [(_GCLegacyDeviceSession *)v5 initWithConfiguration:v6 environment:0];
    v8 = SharedManager;
    SharedManager = v7;

    [SharedManager setTargetQueue:MEMORY[0x1E69E96A0]];
    [SharedManager setEventTargetQueue:v4];
    v9 = [SharedManager deviceProviderTypes];
    v14[0] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v11 = [v9 arrayByAddingObjectsFromArray:v10];
    [SharedManager setDeviceProviderTypes:v11];

    [SharedManager activateWithCompletionHandler:&__block_literal_global_4];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __40___GCLegacyDeviceSession_sharedInstance__block_invoke_100(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    __40___GCLegacyDeviceSession_sharedInstance__block_invoke_100_cold_1(v2);
  }
}

BOOL __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 keyboard];
  v7 = [v5 mouse];
  v8 = [v5 controller];
  v9 = [v5 racingWheel];
  v10 = [v5 spatialAccessory];
  v11 = [v5 stylus];
  if (v6)
  {
    if ([v5 type] == 100)
    {
      v12 = _gc_log_session();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_2(v12);
      }

      v13 = &GCKeyboardDidConnectNotification;
    }

    else
    {
      if ([v5 type] != 101)
      {
        goto LABEL_11;
      }

      v12 = _gc_log_session();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_1(v12);
      }

      v13 = &GCKeyboardDidDisconnectNotification;
    }

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 postNotificationName:*v13 object:v6 userInfo:0];
  }

LABEL_11:
  if (!v7)
  {
    goto LABEL_20;
  }

  if ([v5 type] == 100)
  {
    if (v4)
    {
      [(_GCLegacyDeviceSession *)v4 _setCurrentMouse:v7];
    }

    v15 = _gc_log_session();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_4();
    }

    v16 = &GCMouseDidConnectNotification;
LABEL_18:

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 postNotificationName:*v16 object:v7 userInfo:0];

    goto LABEL_20;
  }

  if ([v5 type] == 101)
  {
    [(_GCLegacyDeviceSession *)v4 _resignCurrentMouse:v7];
    v15 = _gc_log_session();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_3();
    }

    v16 = &GCMouseDidDisconnectNotification;
    goto LABEL_18;
  }

LABEL_20:
  if (!v8)
  {
    goto LABEL_23;
  }

  if ([v5 type] == 100)
  {
    v29 = +[_GCLegacyDeviceSession sharedInstance];
    [(_GCLegacyDeviceSession *)v29 _becomeCurrentController:v8];

    v30 = +[GCAnalytics instance];
    [v30 publishController:v8];

    [v8 setPublished:1];
    v31 = _gc_log_session();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_6();
    }

    v32 = &GCControllerDidConnectNotification;
LABEL_63:

    v35 = [MEMORY[0x1E696AD88] defaultCenter];
    [v35 postNotificationName:*v32 object:v8 userInfo:0];

    if (!v9)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  if ([v5 type] == 101)
  {
    v33 = +[_GCLegacyDeviceSession sharedInstance];
    [(_GCLegacyDeviceSession *)v33 _resignCurrentController:v8];

    v34 = +[GCAnalytics instance];
    [v34 unpublishController:v8];

    [v8 setPublished:0];
    v31 = _gc_log_session();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_5();
    }

    v32 = &GCControllerDidDisconnectNotification;
    goto LABEL_63;
  }

LABEL_23:
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_24:
  if ([v5 type] == 100)
  {
    v18 = _gc_log_session();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_8();
    }

    v19 = &GCRacingWheelDidConnectNotification;
  }

  else
  {
    if ([v5 type] != 101)
    {
      goto LABEL_33;
    }

    v18 = _gc_log_session();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_7();
    }

    v19 = &GCRacingWheelDidDisconnectNotification;
  }

  v20 = [MEMORY[0x1E696AD88] defaultCenter];
  [v20 postNotificationName:*v19 object:v9 userInfo:0];

LABEL_33:
  if (!v10)
  {
    goto LABEL_43;
  }

  if ([v5 type] == 100)
  {
    v21 = _gc_log_session();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_10();
    }

    v22 = GCSpatialAccessoryDidConnectNotification;
  }

  else
  {
    if ([v5 type] != 101)
    {
      goto LABEL_43;
    }

    v21 = _gc_log_session();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_9();
    }

    v22 = &GCSpatialAccessoryDidDisconnectNotification;
  }

  v23 = [MEMORY[0x1E696AD88] defaultCenter];
  [v23 postNotificationName:*v22 object:v10 userInfo:0];

LABEL_43:
  if (!v11)
  {
    goto LABEL_53;
  }

  if ([v5 type] == 100)
  {
    v24 = _gc_log_session();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_12();
    }

    v25 = GCStylusDidConnectNotification;
  }

  else
  {
    if ([v5 type] != 101)
    {
      goto LABEL_53;
    }

    v24 = _gc_log_session();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_11();
    }

    v25 = GCStylusDidDisconnectNotification;
  }

  v26 = [MEMORY[0x1E696AD88] defaultCenter];
  [v26 postNotificationName:*v25 object:v11 userInfo:0];

LABEL_53:
  v27 = [v5 type] == 100 || objc_msgSend(v5, "type") == 101;

  return v27;
}

void __45___GCLegacyDeviceSession_becomeCurrentMouse___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(_GCLegacyDeviceSession *)v2 _setCurrentMouse:?];
  }
}

void __40___GCLegacyDeviceSession_sharedInstance__block_invoke_100_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _gc_log_session();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = a1;
    _os_log_fault_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_FAULT, "Failed to create the shared game controller session.  This is a #BUG! %{public}@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Posting GCMouseDidDisconnectNotification for %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Posting GCMouseDidConnectNotification for %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Posting GCControllerDidDisconnectNotification for: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Posting GCControllerDidConnectNotification for: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Posting GCRacingWheelDidDisconnectNotification for: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Posting GCRacingWheelDidConnectNotification for: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_9()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Posting GCSpatialAccessoryDidDisconnectNotification for: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_10()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Posting GCSpatialAccessoryDidConnectNotification for: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_11()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Posting GCStylusDidDisconnectNotification for: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60___GCLegacyDeviceSession_initWithConfiguration_environment___block_invoke_cold_12()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Posting GCStylusDidConnectNotification for: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
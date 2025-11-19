@interface GCDefaultLogicalDevice
@end

@implementation GCDefaultLogicalDevice

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_184(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 7, a2);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v6[9] objectEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) setStatuses:v4];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_214(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 18, a2);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v6[19] objectEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) setBattery:v4];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ((a2 & 1) == 0 && [WeakRetained[30] tryHandleButtonPress])
    {
      v5 = _gc_log_logical_device();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:

        goto LABEL_29;
      }

      v6 = [v4 identifier];
      *buf = 138412290;
      v26 = v6;
      v7 = "[%@] Handled by consumer.";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_1D2CD5000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
LABEL_27:

      goto LABEL_28;
    }

    v10 = [v4[31] stringForKey:@"homeButtonLongPressAction"];
    v5 = v10;
    if (!a2)
    {
      v6 = [getGPUserExperienceProxyClass() proxy];
      if (v5 && ![v5 isEqualToString:@"$GamesApp"])
      {
        v11 = _gc_log_logical_device();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v4 identifier];
          *buf = 138412290;
          v26 = v15;
          _os_log_impl(&dword_1D2CD5000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Try open game overlay.", buf, 0xCu);
        }

        v13 = 1;
      }

      else
      {
        v11 = _gc_log_logical_device();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v4 identifier];
          *buf = 138412290;
          v26 = v12;
          _os_log_impl(&dword_1D2CD5000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Try open game overlay or app.", buf, 0xCu);
        }

        v13 = 3;
      }

      v16 = [MEMORY[0x1E695DF00] date];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_239;
      v22[3] = &unk_1E841A600;
      v23 = v16;
      v24 = v5;
      v17 = v16;
      [v6 launchGameOverlayWithOptions:v13 reply:v22];

      goto LABEL_27;
    }

    if (!v10 || [v10 isEqualToString:@"$GamesApp"])
    {
      if (gc_isInternalBuild())
      {
        __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_5();
      }

      v6 = [getGPUserExperienceProxyClass() proxy];
      [v6 launchGamesApp];
      goto LABEL_27;
    }

    if ([v5 isEqualToString:@"$AppLibrary"])
    {
      if (gc_isInternalBuild())
      {
        __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_3();
      }

      v14 = GCLookupService();
      v6 = v14;
      if (v14)
      {
        [v14 togglePlatformGamesLibrary];
        goto LABEL_27;
      }

      if (!gc_isInternalBuild())
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = [v5 length];
      isInternalBuild = gc_isInternalBuild();
      if (!v19)
      {
        if (!isInternalBuild)
        {
          goto LABEL_28;
        }

        v6 = getGCLogger();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v7 = "No action.";
        v8 = v6;
        v9 = 2;
        goto LABEL_6;
      }

      if (isInternalBuild)
      {
        __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_1();
      }

      v21 = GCLookupService();
      v6 = v21;
      if (v21)
      {
        [v21 launchApplicationWithBundleIdentifier:v5];
        goto LABEL_27;
      }

      if (!gc_isInternalBuild())
      {
        goto LABEL_27;
      }
    }

    __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_2();
    goto LABEL_27;
  }

LABEL_29:

  v18 = *MEMORY[0x1E69E9840];
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_239(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  if (v6 <= 2.0)
  {
    isInternalBuild = gc_isInternalBuild();
    if (a2)
    {
      if (!isInternalBuild)
      {
        return;
      }

      v8 = getGCLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v15 = 0;
      v9 = "Handled by game policy.";
      v10 = &v15;
      goto LABEL_6;
    }

    if (isInternalBuild)
    {
      __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_239_cold_1();
    }

    v12 = *(a1 + 40);
    v11 = (a1 + 40);
    if ([v12 isEqualToString:@"$AppLibrary"])
    {
      if (gc_isInternalBuild())
      {
        __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_3();
      }

      v13 = GCLookupService();
      v8 = v13;
      if (v13)
      {
        [v13 togglePlatformGamesLibrary];
        goto LABEL_27;
      }

      if (!gc_isInternalBuild())
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (![*v11 length])
      {
        if (!gc_isInternalBuild())
        {
          return;
        }

        v8 = getGCLogger();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v16 = 0;
        v9 = "No action.";
        v10 = &v16;
LABEL_6:
        _os_log_impl(&dword_1D2CD5000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
LABEL_27:

        return;
      }

      if (!*v11)
      {
        return;
      }

      if (gc_isInternalBuild())
      {
        __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_239_cold_2(v11);
      }

      v14 = GCLookupService();
      v8 = v14;
      if (v14)
      {
        [v14 launchApplicationWithBundleIdentifier:*v11];
        goto LABEL_27;
      }

      if (!gc_isInternalBuild())
      {
        goto LABEL_27;
      }
    }

    __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_2();
    goto LABEL_27;
  }

  if (gc_isInternalBuild())
  {
    v8 = getGCLogger();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v17 = 0;
    v9 = "Game policy request timed out.";
    v10 = &v17;
    goto LABEL_6;
  }
}

void __38___GCDefaultLogicalDevice__addClient___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeClient:v2];
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_1_17(&dword_1D2CD5000, v2, v3, "No game intent launcher service", v4, v5, v6, v7, 0);
  }
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_3()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_11_5(v2, v3, v4, v5, v6);
  }
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_5()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_11_5(v2, v3, v4, v5, v6);
  }
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_239_cold_1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_11_5(v2, v3, v4, v5, v6);
  }
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_239_cold_2(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *a1;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end
@interface _GCLegacyDeviceSession
+ (id)defaultConfiguration;
+ (id)sharedInstance;
- (GCController)currentController;
- (GCExtendedGamepad)currentExtendedGamepad;
- (GCMicroGamepad)currentMicroGamepad;
- (GCMouse)currentMouse;
- (_GCLegacyDeviceSession)initWithConfiguration:(id)configuration environment:(id)environment;
- (void)_becomeCurrentController:(void *)controller;
- (void)_becomeCurrentMouse:(void *)mouse;
- (void)_resignCurrentController:(void *)controller;
- (void)_setCurrentController:(void *)controller;
- (void)_setCurrentExtendedGamepad:(void *)gamepad;
- (void)_setCurrentMicroGamepad:(void *)gamepad;
- (void)_setCurrentMouse:(void *)mouse;
- (void)becomeCurrentController:(id)controller;
- (void)becomeCurrentMouse:(id)mouse;
- (void)resignCurrentController:(id)controller;
- (void)resignCurrentMouse:(id)mouse;
@end

@implementation _GCLegacyDeviceSession

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___GCLegacyDeviceSession_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = SharedManager;

  return v2;
}

+ (id)defaultConfiguration
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [mainBundle objectForInfoDictionaryKey:@"_GCBypassUIKit"];

  if (v4)
  {
    [v2 setBypassUIKit:{objc_msgSend(v4, "BOOLValue")}];
  }

  v49 = v2;
  [v2 supportedGameControllers];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = v54 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v51 objects:v55 count:16];
  v7 = 0x1E696A000;
  if (v6)
  {
    v8 = v6;
    v9 = *v52;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 objectForKey:@"ProfileName"];
          v13 = [v12 isEqual:@"SpatialGamepad"];

          if (v13)
          {
            v14 = [v11 objectForKey:@"_WantsGCControllerProductCategoryWithChirality"];
            v7 = 0x1E696A000uLL;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }

            v48 = v15;

            v46 = 1;
            goto LABEL_18;
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v48 = 0;
    v46 = 0;
    v7 = 0x1E696A000;
  }

  else
  {
    v48 = 0;
    v46 = 0;
  }

LABEL_18:

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v17 = [standardUserDefaults objectForKey:@"WantsGCControllerSpatialGamepad"];
  v18 = *(v7 + 3480);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = [standardUserDefaults objectForKey:@"WantsGCControllerProductCategoryWithChirality"];
  v21 = *(v7 + 3480);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v47 = v20;
  }

  else
  {
    v47 = 0;
  }

  v22 = currentProcessBundleIdentifier();
  v23 = [v22 isEqualToString:@"com.apple.mobilesafari"];

  v24 = currentProcessBundleIdentifier();
  LODWORD(v22) = [v24 isEqualToString:@"com.apple.backboardd"];

  v25 = currentProcessBundleIdentifier();
  LODWORD(v24) = [v25 isEqualToString:@"com.apple.SurfBoard"];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  LODWORD(v25) = [processName isEqualToString:@"arviz"];

  processInfo2 = [MEMORY[0x1E696AE30] processInfo];
  processName2 = [processInfo2 processName];
  v30 = [processName2 isEqualToString:@"TouchToSound"];

  v31 = currentProcessBundleIdentifier();
  LODWORD(processName2) = [v31 isEqualToString:@"dev-apple.realitykit-spatial-tracking"];

  v32 = currentProcessBundleIdentifier();
  v33 = [v32 hasPrefix:@"com.apple."];

  v34 = v33 | processName2 | v30 | v25 | v24 | v22 | v23;
  v35 = v19;
  if (v19)
  {
    bOOLValue = [v19 BOOLValue];
    v38 = v48;
    v37 = v49;
    v39 = v47;
  }

  else
  {
    v38 = v48;
    v37 = v49;
    v39 = v47;
    if (v46)
    {
      bOOLValue = 1;
    }

    else
    {
      bOOLValue = (_os_feature_enabled_impl() ^ 1) & v34;
    }
  }

  [v37 setSpatialGamepadSupported:bOOLValue];
  if ([v37 spatialGamepadSupported])
  {
    v40 = _gc_log_session();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2CD5000, v40, OS_LOG_TYPE_DEFAULT, "Current process gets spatial GCController.", buf, 2u);
    }
  }

  if (v39)
  {
    v41 = v39;
LABEL_37:
    bOOLValue2 = [v41 BOOLValue];
    goto LABEL_38;
  }

  if (v38)
  {
    v41 = v38;
    goto LABEL_37;
  }

  if (v46)
  {
    bOOLValue2 = 0;
  }

  else
  {
    bOOLValue2 = (_os_feature_enabled_impl() ^ 1) & v34;
  }

LABEL_38:
  [v37 setSpatialGamepadProductCategoryIncludesChirality:bOOLValue2];
  if ([v37 spatialGamepadProductCategoryIncludesChirality])
  {
    v43 = _gc_log_session();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2CD5000, v43, OS_LOG_TYPE_DEFAULT, "Current process gets spatial GCController product category with chirality.", buf, 2u);
    }
  }

  v44 = *MEMORY[0x1E69E9840];

  return v37;
}

- (_GCLegacyDeviceSession)initWithConfiguration:(id)configuration environment:(id)environment
{
  v8.receiver = self;
  v8.super_class = _GCLegacyDeviceSession;
  v4 = [(GCDeviceSession *)&v8 initWithConfiguration:configuration environment:environment];
  v5 = v4;
  if (v4)
  {
    [(GCDeviceSession *)v4 setEventHandler:&__block_literal_global_152];
    v6 = v5;
  }

  return v5;
}

- (GCMouse)currentMouse
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentMouse;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setCurrentMouse:(void *)mouse
{
  v4 = a2;
  if (mouse)
  {
    mouseCopy = mouse;
    objc_sync_enter(mouseCopy);
    v6 = mouseCopy[25];
    if (v6 != v4)
    {
      if (v6)
      {
        v7 = _gc_log_session();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentMouse:mouseCopy];
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"GCMouseDidStopBeingCurrentNotification" object:mouseCopy[25] userInfo:0];
      }

      objc_storeStrong(mouseCopy + 25, a2);
      if (mouseCopy[25])
      {
        v9 = _gc_log_session();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentMouse:mouseCopy];
        }

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 postNotificationName:@"GCMouseDidBecomeCurrentNotification" object:mouseCopy[25] userInfo:0];
      }
    }

    objc_sync_exit(mouseCopy);
  }
}

- (void)becomeCurrentMouse:(id)mouse
{
  mouseCopy = mouse;
  mice = [(GCDeviceSession *)self mice];
  underlyingCollection = [(GCDeviceCollection *)mice underlyingCollection];
  v7 = [underlyingCollection containsObject:mouseCopy];

  if (v7)
  {
    targetQueue = [(GCDeviceSession *)self targetQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45___GCLegacyDeviceSession_becomeCurrentMouse___block_invoke;
    v9[3] = &unk_1E8418C50;
    v9[4] = self;
    v10 = mouseCopy;
    dispatch_async(targetQueue, v9);
  }
}

- (void)resignCurrentMouse:(id)mouse
{
  mouseCopy = mouse;
  targetQueue = [(GCDeviceSession *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45___GCLegacyDeviceSession_resignCurrentMouse___block_invoke;
  v7[3] = &unk_1E8418C50;
  v7[4] = self;
  v8 = mouseCopy;
  v6 = mouseCopy;
  dispatch_async(targetQueue, v7);
}

- (GCController)currentController
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentController;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setCurrentController:(void *)controller
{
  v4 = a2;
  if (controller)
  {
    controllerCopy = controller;
    objc_sync_enter(controllerCopy);
    v6 = controllerCopy[26];
    if (v6 != v4)
    {
      if (v6)
      {
        v7 = _gc_log_session();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentController:controllerCopy];
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"GCControllerDidStopBeingCurrentNotification" object:controllerCopy[26] userInfo:0];
      }

      objc_storeStrong(controllerCopy + 26, a2);
      if (controllerCopy[26])
      {
        v9 = _gc_log_session();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentController:controllerCopy];
        }

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 postNotificationName:@"GCControllerDidBecomeCurrentNotification" object:controllerCopy[26] userInfo:0];
      }
    }

    objc_sync_exit(controllerCopy);
  }
}

- (GCMicroGamepad)currentMicroGamepad
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentMicroGamepad;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setCurrentMicroGamepad:(void *)gamepad
{
  v4 = a2;
  if (gamepad)
  {
    gamepadCopy = gamepad;
    objc_sync_enter(gamepadCopy);
    v6 = gamepadCopy[27];
    if (v6 != v4)
    {
      if (v6)
      {
        v7 = _gc_log_session();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentMicroGamepad:gamepadCopy];
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"GCMicroGamepadDidStopBeingCurrentNotification" object:gamepadCopy[27] userInfo:0];
      }

      objc_storeStrong(gamepadCopy + 27, a2);
      if (gamepadCopy[27])
      {
        v9 = _gc_log_session();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentMicroGamepad:gamepadCopy];
        }

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 postNotificationName:@"GCMicroGamepadDidBecomeCurrentNotification" object:gamepadCopy[27] userInfo:0];
      }
    }

    objc_sync_exit(gamepadCopy);
  }
}

- (GCExtendedGamepad)currentExtendedGamepad
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentExtendedGamepad;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setCurrentExtendedGamepad:(void *)gamepad
{
  v4 = a2;
  if (gamepad)
  {
    gamepadCopy = gamepad;
    objc_sync_enter(gamepadCopy);
    v6 = gamepadCopy[28];
    if (v6 != v4)
    {
      if (v6)
      {
        v7 = _gc_log_session();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentExtendedGamepad:gamepadCopy];
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"GCExtendedGamepadDidStopBeingCurrentNotification" object:gamepadCopy[28] userInfo:0];
      }

      objc_storeStrong(gamepadCopy + 28, a2);
      if (gamepadCopy[28])
      {
        v9 = _gc_log_session();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentExtendedGamepad:gamepadCopy];
        }

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 postNotificationName:@"GCExtendedGamepadDidBecomeCurrentNotification" object:gamepadCopy[28] userInfo:0];
      }
    }

    objc_sync_exit(gamepadCopy);
  }
}

- (void)becomeCurrentController:(id)controller
{
  controllerCopy = controller;
  controllers = [(GCDeviceSession *)self controllers];
  underlyingCollection = [(GCDeviceCollection *)controllers underlyingCollection];
  v7 = [underlyingCollection containsObject:controllerCopy];

  if (v7)
  {
    targetQueue = [(GCDeviceSession *)self targetQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50___GCLegacyDeviceSession_becomeCurrentController___block_invoke;
    v9[3] = &unk_1E8418C50;
    v9[4] = self;
    v10 = controllerCopy;
    dispatch_async(targetQueue, v9);
  }
}

- (void)resignCurrentController:(id)controller
{
  controllerCopy = controller;
  targetQueue = [(GCDeviceSession *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___GCLegacyDeviceSession_resignCurrentController___block_invoke;
  v7[3] = &unk_1E8418C50;
  v7[4] = self;
  v8 = controllerCopy;
  v6 = controllerCopy;
  dispatch_async(targetQueue, v7);
}

- (void)_becomeCurrentMouse:(void *)mouse
{
  if (mouse)
  {
    [(_GCLegacyDeviceSession *)mouse _setCurrentMouse:a2];
  }
}

- (void)_becomeCurrentController:(void *)controller
{
  v9 = a2;
  if (controller)
  {
    [(_GCLegacyDeviceSession *)controller _setCurrentController:v9];
    extendedGamepad = [OUTLINED_FUNCTION_12_1() extendedGamepad];

    if (extendedGamepad)
    {
      [OUTLINED_FUNCTION_12_1() extendedGamepad];
      objc_claimAutoreleasedReturnValue();
      v4 = OUTLINED_FUNCTION_1_3();
      [(_GCLegacyDeviceSession *)v4 _setCurrentExtendedGamepad:v5];
    }

    microGamepad = [OUTLINED_FUNCTION_12_1() microGamepad];

    if (microGamepad)
    {
      [OUTLINED_FUNCTION_12_1() microGamepad];
      objc_claimAutoreleasedReturnValue();
      v7 = OUTLINED_FUNCTION_1_3();
      [(_GCLegacyDeviceSession *)v7 _setCurrentMicroGamepad:v8];
    }
  }
}

- (void)_resignCurrentController:(void *)controller
{
  v12 = a2;
  if (controller)
  {
    [(_GCLegacyDeviceSession *)controller _mostRecentlyActiveControllerIgnoring:v12];
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_1_3();
    [(_GCLegacyDeviceSession *)v4 _setCurrentController:v5];

    extendedGamepad = [v12 extendedGamepad];

    if (extendedGamepad)
    {
      [v12 extendedGamepad];
      objc_claimAutoreleasedReturnValue();
      v8 = OUTLINED_FUNCTION_1_3();
      v9 = [_GCLegacyDeviceSession _mostRecentlyActiveExtendedGamepadIgnoring:v8];
      [(_GCLegacyDeviceSession *)controller _setCurrentExtendedGamepad:v9];
    }

    microGamepad = [v12 microGamepad];

    if (microGamepad)
    {
      [v12 microGamepad];
      objc_claimAutoreleasedReturnValue();
      v10 = OUTLINED_FUNCTION_1_3();
      v11 = [_GCLegacyDeviceSession _mostRecentlyActiveMicroGamepadIgnoring:v10];
      [(_GCLegacyDeviceSession *)controller _setCurrentMicroGamepad:v11];
    }
  }
}

- (void)_setCurrentMouse:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 200);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v2, v3, "Posting GCMouseDidStopBeingCurrent for %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setCurrentMouse:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 200);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v2, v3, "Posting GCMouseDidBecomeCurrent for %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setCurrentController:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 208);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v2, v3, "Posting GCControllerDidStopBeingCurrentNotification: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setCurrentController:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 208);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v2, v3, "Posting GCControllerDidBecomeCurrentNotification: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setCurrentMicroGamepad:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 216);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v2, v3, "Posting GCMicroGamepadDidStopBeingCurrentNotification: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setCurrentMicroGamepad:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 216);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v2, v3, "Posting GCMicroGamepadDidBecomeCurrentNotification: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setCurrentExtendedGamepad:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 224);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v2, v3, "Posting GCExtendedGamepadDidStopBeingCurrentNotification: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setCurrentExtendedGamepad:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 224);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v2, v3, "Posting GCExtendedGamepadDidBecomeCurrentNotification: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

@end
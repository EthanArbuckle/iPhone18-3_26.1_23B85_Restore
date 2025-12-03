@interface SBSyncControllerAccessibility
- (void)_accessibilityWriteOutDataResetForAXSettings:(id)settings;
- (void)resetService:(id)service willBeginDataResetWithMode:(int64_t)mode;
@end

@implementation SBSyncControllerAccessibility

- (void)_accessibilityWriteOutDataResetForAXSettings:(id)settings
{
  v22 = *MEMORY[0x29EDCA608];
  settingsCopy = settings;
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C37A000, v4, OS_LOG_TYPE_DEFAULT, "Begin right out of ax settings data", buf, 2u);
  }

  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  if (([defaultManager fileExistsAtPath:@"/var/mobile/Library/Accessibility/DataResetAccessibilityFeatureReenablement"] & 1) == 0 && (objc_msgSend(defaultManager, "fileExistsAtPath:", @"/var/mobile/Library/Accessibility") & 1) == 0)
  {
    v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x29EDB9E88], *MEMORY[0x29EDB9E80], 0}];
    v19 = 0;
    [defaultManager createDirectoryAtPath:@"/var/mobile/Library/Accessibility" withIntermediateDirectories:1 attributes:v6 error:&v19];
    v7 = v19;
    v8 = AXLogCommon();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SBSyncControllerAccessibility _accessibilityWriteOutDataResetForAXSettings:];
      }

LABEL_32:
      goto LABEL_35;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C37A000, v9, OS_LOG_TYPE_DEFAULT, "Made directory to store data", buf, 2u);
    }
  }

  v10 = open([@"/var/mobile/Library/Accessibility/DataResetAccessibilityFeatureReenablement" fileSystemRepresentation], 1793, 384);
  v11 = AXLogCommon();
  v7 = v11;
  if ((v10 & 0x80000000) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = @"/var/mobile/Library/Accessibility/DataResetAccessibilityFeatureReenablement";
      _os_log_impl(&dword_29C37A000, v7, OS_LOG_TYPE_DEFAULT, "Opened file to store data: %@", buf, 0xCu);
    }

    v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x29EDB9E88], *MEMORY[0x29EDB9E80], 0}];
    v18 = 0;
    [defaultManager setAttributes:v6 ofItemAtPath:@"/var/mobile/Library/Accessibility/DataResetAccessibilityFeatureReenablement" error:&v18];
    v7 = v18;
    if (v7)
    {
      v12 = AXLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SBSyncControllerAccessibility _accessibilityWriteOutDataResetForAXSettings:];
      }
    }

    write(v10, [settingsCopy bytes], objc_msgSend(settingsCopy, "length"));
    fcntl(v10, 51, 0);
    close(v10);
    v13 = opendir([@"/var/mobile/Library/Accessibility" fileSystemRepresentation]);
    v14 = v13;
    if (!v13 || dirfd(v13) == -1)
    {
      v16 = AXLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SBSyncControllerAccessibility _accessibilityWriteOutDataResetForAXSettings:];
      }

      if (!v14)
      {
        goto LABEL_29;
      }
    }

    else if (fcntl(v10, 51, 0) == -1)
    {
      v15 = AXLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SBSyncControllerAccessibility _accessibilityWriteOutDataResetForAXSettings:];
      }
    }

    closedir(v14);
LABEL_29:
    v17 = AXLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = @"/var/mobile/Library/Accessibility/DataResetAccessibilityFeatureReenablement";
      _os_log_impl(&dword_29C37A000, v17, OS_LOG_TYPE_DEFAULT, "Finished writing data: %@", buf, 0xCu);
    }

    goto LABEL_32;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SBSyncControllerAccessibility _accessibilityWriteOutDataResetForAXSettings:];
  }

LABEL_35:
}

- (void)resetService:(id)service willBeginDataResetWithMode:(int64_t)mode
{
  v32 = *MEMORY[0x29EDCA608];
  serviceCopy = service;
  if ((mode - 3) <= 1)
  {
    if (MEMORY[0x29ED37A70](*MEMORY[0x29EDC8530], 0))
    {
      v7 = 1;
    }

    else
    {
      v7 = _AXSVoiceOverTouchEnabled() != 0;
    }

    v8 = MEMORY[0x29ED37A70](*MEMORY[0x29EDC8550], 0);
    if (_AXSAssistiveTouchEnabled())
    {
      v9 = _AXSAssistiveTouchHardwareEnabled() != 0;
    }

    else
    {
      v9 = 0;
    }

    v10 = _AXSAssistiveTouchScannerEnabled();
    v11 = AXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *v27 = v7;
      *&v27[4] = 1024;
      *&v27[6] = v8 != 0;
      v28 = 1024;
      v29 = v9;
      v30 = 1024;
      v31 = v10 != 0;
      _os_log_impl(&dword_29C37A000, v11, OS_LOG_TYPE_DEFAULT, "AX options will stay enabled: VO:%d, Zoom:%d, AST:%d, SC: %d", buf, 0x1Au);
    }

    v12 = v8 != 0;

    v24[0] = @"VoiceOverTouch";
    v13 = [MEMORY[0x29EDBA070] numberWithBool:v7];
    v25[0] = v13;
    v24[1] = @"ZoomTouch";
    v14 = [MEMORY[0x29EDBA070] numberWithBool:v12];
    v25[1] = v14;
    v24[2] = @"AssistiveTouch";
    v15 = [MEMORY[0x29EDBA070] numberWithBool:v9];
    v25[2] = v15;
    v24[3] = @"SwitchControl";
    v16 = [MEMORY[0x29EDBA070] numberWithBool:v10 != 0];
    v25[3] = v16;
    v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

    v23 = 0;
    v18 = [MEMORY[0x29EDB9FF8] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v23];
    v19 = v23;
    if (v19)
    {
      v20 = AXMediaLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [SBSyncControllerAccessibility resetService:willBeginDataResetWithMode:];
      }
    }

    v21 = AXLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v27 = v17;
      _os_log_impl(&dword_29C37A000, v21, OS_LOG_TYPE_DEFAULT, "Writing out ax settings: %@", buf, 0xCu);
    }

    [(SBSyncControllerAccessibility *)self _accessibilityWriteOutDataResetForAXSettings:v18];
  }

  v22.receiver = self;
  v22.super_class = SBSyncControllerAccessibility;
  [(SBSyncControllerAccessibility *)&v22 resetService:serviceCopy willBeginDataResetWithMode:mode];
}

- (void)_accessibilityWriteOutDataResetForAXSettings:.cold.3()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_29C37A000, v1, v2, "failed to F_FULLSYNC data reset state directory: %{public}s", v3, v4, v5, v6, v7);
}

- (void)_accessibilityWriteOutDataResetForAXSettings:.cold.4()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_29C37A000, v1, v2, "Failed to open data reset state directory: %{public}s", v3, v4, v5, v6, v7);
}

- (void)_accessibilityWriteOutDataResetForAXSettings:.cold.5()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_29C37A000, v1, v2, "Failed to open data reset State file. errno: %{public}s", v3, v4, v5, v6, v7);
}

@end
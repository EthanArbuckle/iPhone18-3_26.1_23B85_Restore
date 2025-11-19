@interface VCVisualAlert
+ (void)start;
+ (void)stop;
@end

@implementation VCVisualAlert

+ (void)start
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = start_visualAlertEnabled;
  if (!start_visualAlertEnabled)
  {
    v3 = [(NSString *)NSOpenStepRootDirectory() stringByAppendingPathComponent:@"usr/lib/libAccessibility.dylib"];
    v4 = dlopen([(NSString *)v3 UTF8String], 1);
    if (v4)
    {
      v2 = dlsym(v4, "_AXSVisualAlertEnabled");
      start_visualAlertEnabled = v2;
      if (!v2)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v24 = 136315906;
          v25 = v5;
          v26 = 2080;
          v27 = "+[VCVisualAlert start]";
          v28 = 1024;
          v29 = 30;
          v30 = 2080;
          v31 = [(NSString *)v3 UTF8String];
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cannot open libAccessibility.dylib (%s)", &v24, 0x26u);
        }
      }

      v2 = start_visualAlertEnabled;
      if (!start_visualAlertEnabled)
      {
LABEL_18:
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v24 = 136315650;
            v25 = v17;
            v26 = 2080;
            v27 = "+[VCVisualAlert start]";
            v28 = 1024;
            v29 = 56;
            v16 = " [%s] %s:%d VisualAlert not enabled or failed to load.";
            goto LABEL_21;
          }
        }

        return;
      }
    }
  }

  if (!(v2)())
  {
    goto LABEL_18;
  }

  v7 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  if ([(NSArray *)v7 count])
  {
    v8 = [-[NSArray objectAtIndexedSubscript:](v7 objectAtIndexedSubscript:{0), "stringByAppendingPathComponent:", @"PrivateFrameworks/VisualAlert.framework"}];
    v9 = [MEMORY[0x1E696AAE8] bundleWithPath:v8];
    if (([v9 isLoaded] & 1) == 0)
    {
      v18 = [v9 load];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v18)
      {
        if (ErrorLogLevelForModule < 7)
        {
          goto LABEL_12;
        }

        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        v24 = 136315650;
        v25 = v20;
        v26 = 2080;
        v27 = "+[VCVisualAlert start]";
        v28 = 1024;
        v29 = 43;
        v22 = " [%s] %s:%d VisualAlert framework bundle loaded.";
      }

      else
      {
        if (ErrorLogLevelForModule < 5)
        {
          goto LABEL_12;
        }

        v23 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        v24 = 136315650;
        v25 = v23;
        v26 = 2080;
        v27 = "+[VCVisualAlert start]";
        v28 = 1024;
        v29 = 45;
        v22 = " [%s] %s:%d Failed to load VisualAlert framework bundle.";
      }

      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v22, &v24, 0x1Cu);
    }
  }

LABEL_12:
  v10 = [NSClassFromString(&cfstr_Axvisualalertm.isa) sharedVisualAlertManager];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315906;
      v25 = v11;
      v26 = 2080;
      v27 = "+[VCVisualAlert start]";
      v28 = 1024;
      v29 = 50;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d visualAlertManager=%@", &v24, 0x26u);
    }
  }

  v13 = objc_alloc_init(VCCameraTorchManager);
  [v10 startForAlertTypes:2 cameraTorchManager:v13];

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315650;
      v25 = v14;
      v26 = 2080;
      v27 = "+[VCVisualAlert start]";
      v28 = 1024;
      v29 = 54;
      v16 = " [%s] %s:%d Started AXVisualAlertManager";
LABEL_21:
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v16, &v24, 0x1Cu);
    }
  }
}

+ (void)stop
{
  v10 = *MEMORY[0x1E69E9840];
  [-[objc_class sharedVisualAlertManager](NSClassFromString(&cfstr_Axvisualalertm.isa) "sharedVisualAlertManager")];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "+[VCVisualAlert stop]";
      v8 = 1024;
      v9 = 67;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stopped AXVisualAlertManager", &v4, 0x1Cu);
    }
  }
}

@end
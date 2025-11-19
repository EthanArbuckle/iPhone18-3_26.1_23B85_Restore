@interface NSBundle(VCAdditions)
+ (uint64_t)plistForClass:()VCAdditions withPath:defaultOverride:;
+ (uint64_t)plistFromDefaultOverride:()VCAdditions;
@end

@implementation NSBundle(VCAdditions)

+ (uint64_t)plistFromDefaultOverride:()VCAdditions
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = VCDefaults_CopyStringValueForKey(a3);
  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    [(NSBundle(VCAdditions) *)v3 plistFromDefaultOverride:v6];
LABEL_6:
    v4 = v6[0];
    goto LABEL_3;
  }

  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v3];
  if (!v4)
  {
    [(NSBundle(VCAdditions) *)v3 plistFromDefaultOverride:v6];
    goto LABEL_6;
  }

LABEL_3:

  return v4;
}

+ (uint64_t)plistForClass:()VCAdditions withPath:defaultOverride:
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [NSBundle(VCAdditions) plistForClass:v18 withPath:v19 defaultOverride:?];
      }
    }

    return 0;
  }

  if (a5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315906;
        v22 = v8;
        v23 = 2080;
        v24 = "+[NSBundle(VCAdditions) plistForClass:withPath:defaultOverride:]";
        v25 = 1024;
        v26 = 34;
        v27 = 2112;
        v28 = a5;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Loading plist from file: path=%@", &v21, 0x26u);
      }
    }

    v10 = [MEMORY[0x1E696AAE8] plistFromDefaultOverride:a5];
    if (v10)
    {
      return v10;
    }
  }

  v12 = [a4 copy];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315906;
      v22 = v13;
      v23 = 2080;
      v24 = "+[NSBundle(VCAdditions) plistForClass:withPath:defaultOverride:]";
      v25 = 1024;
      v26 = 39;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Loading plist from bundle: path=%@", &v21, 0x26u);
    }
  }

  v15 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{a3), "pathForResource:ofType:", v12, @"plist"}];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v15];

  if (!v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v21 = 136316162;
        v22 = v16;
        v23 = 2080;
        v24 = "+[NSBundle(VCAdditions) plistForClass:withPath:defaultOverride:]";
        v25 = 1024;
        v26 = 45;
        v27 = 2112;
        v28 = a4;
        v29 = 2112;
        v30 = a5;
        _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to load the resource at path=%@ defaultOverride=%@", &v21, 0x30u);
      }
    }

    return 0;
  }

  return v11;
}

+ (void)plistFromDefaultOverride:()VCAdditions .cold.1(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_4_15(&dword_1DB56E000, v3, v4, " [%s] %s:%d Configuration plist specified but the path is invalid: path=%@", v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
}

+ (void)plistFromDefaultOverride:()VCAdditions .cold.2(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_4_15(&dword_1DB56E000, v3, v4, " [%s] %s:%d Configuration plist specified but the file could not be loaded: path=%@", v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
}

+ (void)plistForClass:()VCAdditions withPath:defaultOverride:.cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "+[NSBundle(VCAdditions) plistForClass:withPath:defaultOverride:]";
  v6 = 1024;
  v7 = 29;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d resourcePath is nil", &v2, 0x1Cu);
}

@end
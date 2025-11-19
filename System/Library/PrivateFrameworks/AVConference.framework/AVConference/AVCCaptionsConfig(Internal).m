@interface AVCCaptionsConfig(Internal)
@end

@implementation AVCCaptionsConfig(Internal)

- (void)initWithServerConfig:()Internal .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)initWithServerConfig:()Internal .cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = v4;
      OUTLINED_FUNCTION_0();
      v8 = 60;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Nil server config", &v6, 0x1Cu);
    }
  }

  *a2 = a1;
}

+ (void)serializeLocale:()Internal .cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

+ (void)deserializeLocale:()Internal .cold.1(uint64_t a1, NSObject *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = 136316162;
  v6 = a1;
  v7 = 2080;
  v8 = "+[AVCCaptionsConfig(Internal) deserializeLocale:]";
  v9 = 1024;
  v10 = 147;
  v11 = 2112;
  v12 = 0;
  v13 = 2080;
  Name = class_getName(v4);
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d serializedLocale not deserialized into NSLocale, deserializedLocale=%@, class=%s", &v5, 0x30u);
}

+ (void)deserializeLocale:()Internal .cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 142;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d serializedLocale is nil", &v2, 0x1Cu);
}

+ (void)serializeConfiguration:()Internal .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

+ (void)serializeConfiguration:()Internal .cold.2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

@end
@interface AVConferenceXPCServer(XPCManagement)
@end

@implementation AVConferenceXPCServer(XPCManagement)

+ (BOOL)entitlementStatusForToken:()XPCManagement .cold.1(uint64_t *a1, const void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "+[AVConferenceXPCServer(XPCManagement) entitlementStatusForToken:]";
      v12 = 1024;
      v13 = 739;
      v14 = 2112;
      v15 = v7;
      v16 = 2080;
      v17 = "com.apple.videoconference.allow-conferencing";
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: error=%@ accessing entitlement=%s", &v8, 0x30u);
    }
  }

  CFShow(a2);
  return a2 == 0;
}

+ (void)entitlementStatusForToken:()XPCManagement .cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      OUTLINED_FUNCTION_0();
      v6 = 737;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, "AVConferenceXPCServer [%s] %s:%d Failed to create SecTask from audit token", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)_xpc_handle_incoming_request:()XPCManagement .cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 997;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "AVConferenceXPCServer [%s] %s:%d VCXPCServer: XPC Error, IGNORING INCOMING REQUEST", v1, 0x1Cu);
}

@end
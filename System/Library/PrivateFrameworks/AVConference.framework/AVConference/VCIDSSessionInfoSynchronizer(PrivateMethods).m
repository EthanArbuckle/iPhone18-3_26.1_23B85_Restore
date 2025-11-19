@interface VCIDSSessionInfoSynchronizer(PrivateMethods)
@end

@implementation VCIDSSessionInfoSynchronizer(PrivateMethods)

- (void)checkVCIDSSessionInfoNeedUpdate:()PrivateMethods .cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    v1 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v9 = 266;
        OUTLINED_FUNCTION_21_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d primary connection is nil", v4, v5, v6, v7, v8[0]);
      }
    }

    else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v9 = 266;
      _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d primary connection is nil", v8, 0x1Cu);
    }
  }
}

- (void)updateVCIDSSessionInfoResponse:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d No IDSSessionInfoResponse in the eventInfo!", v2, v3, v4, v5, v6);
}

- (void)optInStreamIDsForConnection:()PrivateMethods .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Primary connection is nil", v2, v3, v4, v5, v6);
}

- (void)optOutStreamIDsForNonPrimaryConnection:()PrivateMethods sentOnConnection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Connection is nil", v2, v3, v4, v5, v6);
}

@end
@interface _GCAppClientProxy(SettingsXPCProxyService)
@end

@implementation _GCAppClientProxy(SettingsXPCProxyService)

- (void)readBooleanValueWithName:()SettingsXPCProxyService .cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)readBooleanValueWithName:()SettingsXPCProxyService .cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end
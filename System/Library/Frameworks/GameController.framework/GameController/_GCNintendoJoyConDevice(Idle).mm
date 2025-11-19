@interface _GCNintendoJoyConDevice(Idle)
@end

@implementation _GCNintendoJoyConDevice(Idle)

- (void)requestIdleDisconnect:()Idle .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end
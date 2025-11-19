@interface _GCNintendoJoyConDevice(Components)
@end

@implementation _GCNintendoJoyConDevice(Components)

- (void)propagateBattery:()Components .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

@end
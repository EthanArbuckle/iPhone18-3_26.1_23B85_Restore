@interface _GCNintendoJoyConDevice(Client)
@end

@implementation _GCNintendoJoyConDevice(Client)

- (void)_addClient:()Client .cold.1(NSObject *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_removeClient:()Client .cold.1(NSObject *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end
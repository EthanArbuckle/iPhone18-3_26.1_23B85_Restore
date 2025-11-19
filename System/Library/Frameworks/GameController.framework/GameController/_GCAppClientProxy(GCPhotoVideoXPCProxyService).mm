@interface _GCAppClientProxy(GCPhotoVideoXPCProxyService)
@end

@implementation _GCAppClientProxy(GCPhotoVideoXPCProxyService)

- (void)onVideoRecordingStopWithURL:()GCPhotoVideoXPCProxyService reply:.cold.1()
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

- (void)generateURLFor:()GCPhotoVideoXPCProxyService withReply:.cold.1()
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

- (void)generateURLFor:()GCPhotoVideoXPCProxyService withReply:.cold.2()
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

- (void)generateURLFor:()GCPhotoVideoXPCProxyService withReply:.cold.3()
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

- (void)generateURLFor:()GCPhotoVideoXPCProxyService withReply:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)generateURLFor:()GCPhotoVideoXPCProxyService withReply:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)takeScreenshotWithReply:()GCPhotoVideoXPCProxyService .cold.1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

@end
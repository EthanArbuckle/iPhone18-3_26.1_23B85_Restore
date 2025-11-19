@interface AVCMediaStreamNegotiator(utils)
@end

@implementation AVCMediaStreamNegotiator(utils)

+ (void)clientAccessNetworkType:()utils .cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "+[AVCMediaStreamNegotiator(utils) clientAccessNetworkType:]";
  v6 = 1024;
  v7 = 97;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid connection type=%d", v3, 0x22u);
}

@end
@interface SOAuthorizationCore(Core)
@end

@implementation SOAuthorizationCore(Core)

- (void)beginAuthorizationWithRequestParameters:()Core completion:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 identifier];
  v7[0] = 136315650;
  OUTLINED_FUNCTION_2_0();
  v8 = a2;
  _os_log_debug_impl(&dword_1CA238000, a3, OS_LOG_TYPE_DEBUG, "%s requestIdentifier = %{public}@ on %@", v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)performBlockOnDelegateQueue:()Core .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)finishAuthorization:()Core completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createSecKeysFromSecKeyProxyEndpoints:()Core error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createSecKeysFromSecKeyProxyEndpoints:()Core error:.cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

@end
@interface ASWebAuthenticationSession(Shared)
@end

@implementation ASWebAuthenticationSession(Shared)

- (void)_validateAdditionalHeaderFieldsDryRun:()Shared .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1C8D000, a2, OS_LOG_TYPE_ERROR, "Cannot start ASWebAuthenticationSession: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
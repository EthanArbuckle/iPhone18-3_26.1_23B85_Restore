@interface AAFollowUpController(Convenience)
- (void)isRenewCredentialsCFUPosted;
- (void)pendingCFUTypes;
@end

@implementation AAFollowUpController(Convenience)

- (void)postFollowUpWithIdentifier:()Convenience forAccount:userInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)postFollowUpWithIdentifier:()Convenience forAccount:userInfo:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)dismissFollowUpWithIdentifier:()Convenience forAccount:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)dismissFollowUpWithIdentifier:()Convenience forAccount:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)dismissFollowUpsForAccount:()Convenience identifiers:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)dismissFollowUpsStartingWithIdentifierPrefix:()Convenience account:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)dismissFollowUpsStartingWithIdentifierPrefix:()Convenience account:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)dismissFollowUpsStartingWithIdentifierPrefix:()Convenience account:completion:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "Attempting to teardown followups starting with identifier %@ for account: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)pendingFollowUpsForAccount:()Convenience completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)_dismissFollowUpWithIdentifiers:()Convenience completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"uniqueIdentifiers" object:? file:? lineNumber:? description:?];
}

- (void)pendingCFUTypes
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)isRenewCredentialsCFUPosted
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)creationDateOfOldestFollowUpWithIdentifiers:()Convenience .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)creationDateOfOldestFollowUpWithIdentifiers:()Convenience .cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)creationDateOfOldestFollowUpWithIdentifiers:()Convenience .cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)pendingFollowUpItemUserInfosWithIdentifier:()Convenience completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)pendingFollowUpItemUserInfosWithIdentifier:()Convenience completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)pendingFollowUpItemUserInfosWithIdentifier:()Convenience .cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)pendingFollowUpItemUserInfosWithIdentifier:()Convenience .cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)reportPostCFUEvent:()Convenience .cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pendingFollowUpItemsWithIdentifier:()Convenience forAccount:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pendingFollowUpItemsWithIdentifier:()Convenience forAccount:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pendingFollowUpItemsWithIdentifier:()Convenience forAccount:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)sendPostCFUTelemetryEventWithAccount:()Convenience forIdentifier:success:error:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNumber *const getkCDPRTCEventCategoryAccountDataAccessRecovery(void)"];
  [v0 handleFailureInFunction:v1 file:@"AAFollowUpController.m" lineNumber:38 description:{@"%s", dlerror()}];

  __break(1u);
}

@end
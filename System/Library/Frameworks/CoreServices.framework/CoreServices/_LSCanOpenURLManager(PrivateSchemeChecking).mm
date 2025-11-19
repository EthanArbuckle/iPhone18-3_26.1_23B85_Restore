@interface _LSCanOpenURLManager(PrivateSchemeChecking)
@end

@implementation _LSCanOpenURLManager(PrivateSchemeChecking)

- (void)legacy_isBundleID:()PrivateSchemeChecking bundleData:context:allowedToCheckScheme:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3(&dword_18162D000, v3, v4, "LSTesting: app %@ has exceeded their schemes quota. Schemes queried:\n%@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)legacy_isBundleID:()PrivateSchemeChecking bundleData:context:allowedToCheckScheme:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3(&dword_18162D000, v0, v1, "LSTesting: app %@ has previously asked about %@, allowing");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)legacy_isBundleID:()PrivateSchemeChecking bundleData:context:allowedToCheckScheme:error:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3(&dword_18162D000, v0, v1, "LSTesting: app %@ has not asked about any schemes before %@, creating map and allowing");
  v2 = *MEMORY[0x1E69E9840];
}

@end
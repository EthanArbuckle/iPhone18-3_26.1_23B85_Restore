@interface _LSApplicationExtensionRecordEnumerator(Private)
@end

@implementation _LSApplicationExtensionRecordEnumerator(Private)

- (void)_evaluatePluginNoIO:()Private data:extensionPointID:context:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Skipping plugin %llx during enumeration because it is third-party", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_evaluatePluginNoIO:()Private data:extensionPointID:context:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Not skipping plugin %llx during enumeration because ep allows hidden plugins", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_evaluatePluginNoIO:()Private data:extensionPointID:context:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Skipping plugin %llx during enumeration because it is hidden by app protection", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_evaluatePluginNoIO:()Private data:extensionPointID:context:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Skipping plugin %llx during enumeration because it was filtered out", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
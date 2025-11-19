@interface NSFileProviderExtension(NSFileProviderActions)
@end

@implementation NSFileProviderExtension(NSFileProviderActions)

- (void)importDocumentAtURL:()NSFileProviderActions toParentItemIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v10 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_4_5();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setLastUsedDate:()NSFileProviderActions forItemIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v12 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_4_5();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_1(&dword_1AAAE1000, v4, v5, "[DEBUG] %@ must implement method %@ and not call super", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end
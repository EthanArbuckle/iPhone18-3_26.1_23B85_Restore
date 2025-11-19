@interface EXExtensionRequest(NSExtensionActiveWebPageAlternative)
@end

@implementation EXExtensionRequest(NSExtensionActiveWebPageAlternative)

- (void)applyActiveWebPageAlternativeIfNeededForExtension:()NSExtensionActiveWebPageAlternative .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 inputItems];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_1847D1000, a3, OS_LOG_TYPE_DEBUG, "Applying active web page alternative to items: %@ matching rule %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end
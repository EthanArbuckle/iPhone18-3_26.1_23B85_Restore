@interface FPXExtensionContext(LegacySupport)
@end

@implementation FPXExtensionContext(LegacySupport)

- (void)importDocumentAtURL:()LegacySupport intoFolderWithIdentifier:originalName:extensionInstance:reply:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] couldn't import filename %@; %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)importDocumentAtURL:()LegacySupport intoFolderWithIdentifier:originalName:extensionInstance:reply:.cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 path];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] fixed up filename to %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)importDocumentAtURL:()LegacySupport intoFolderWithIdentifier:originalName:extensionInstance:reply:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] importing item -> import document %@ in %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end
@interface NSFileProviderSearchQuery(NSFileProviderSearch_Private)
@end

@implementation NSFileProviderSearchQuery(NSFileProviderSearch_Private)

- (void)initWithSearchScopedToItemID:()NSFileProviderSearch_Private alternateItemID:.cold.1(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [a1 providerDomainID];
  v9 = [v8 fp_obfuscatedProviderDomainID];
  v10 = [a2 providerDomainID];
  v11 = [v10 fp_obfuscatedProviderDomainID];
  [v12 handleFailureInMethod:a3 object:a4 file:@"NSFileProviderSearchQuery.m" lineNumber:134 description:{@"domain mismatch, expected %@, got %@", v9, v11}];
}

- (void)initWithCoder:()NSFileProviderSearch_Private .cold.1(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] can't create instance from coder, required nonnull properties missing (%@, %@)", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end
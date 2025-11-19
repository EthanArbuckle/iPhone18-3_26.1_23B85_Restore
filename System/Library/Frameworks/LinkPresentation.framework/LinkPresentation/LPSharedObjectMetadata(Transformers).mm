@interface LPSharedObjectMetadata(Transformers)
@end

@implementation LPSharedObjectMetadata(Transformers)

- (void)_applicationFromURL:()Transformers .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1AE886000, log, OS_LOG_TYPE_ERROR, "LPSharedObjectMetadata: Failed to determine app link for URL (%@) with error (%@)", &v3, 0x16u);
}

@end
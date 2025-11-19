@interface EKCalendarItem(Shared)
@end

@implementation EKCalendarItem(Shared)

- (void)_structuredDataDictionaryFromData:()Shared local:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Failed to deserialize structured data. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_dataFromStructuredDataDictionary:()Shared local:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Failed to serialize structured data dictionary: %@. Error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end
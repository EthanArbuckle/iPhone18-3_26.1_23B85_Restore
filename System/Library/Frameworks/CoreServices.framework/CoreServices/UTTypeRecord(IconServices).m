@interface UTTypeRecord(IconServices)
@end

@implementation UTTypeRecord(IconServices)

- (void)iconResourceBundleURLWithContext:()IconServices tableID:unitID:unitBytes:.cold.1(uint64_t a1, unsigned int *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Cannot generate libraryURL for app %@ because it has no libraryPath path stored (%llx)", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end
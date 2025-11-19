@interface VSFileRemoveOperation
- (void)executionDidBegin;
@end

@implementation VSFileRemoveOperation

- (void)executionDidBegin
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error removing item: %@", &v2, 0xCu);
}

@end
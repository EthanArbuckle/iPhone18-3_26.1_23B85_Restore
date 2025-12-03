@interface ATXDocumentPredictionClient(Demo)
+ (void)_getDocumentsForDemoMode;
@end

@implementation ATXDocumentPredictionClient(Demo)

+ (void)_getDocumentsForDemoMode
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "[Demo] Could not load demo documents: %@", &v2, 0xCu);
}

@end
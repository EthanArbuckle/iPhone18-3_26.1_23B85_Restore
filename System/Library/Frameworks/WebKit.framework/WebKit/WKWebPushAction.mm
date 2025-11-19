@interface WKWebPushAction
@end

@implementation WKWebPushAction

void __50___WKWebPushAction_beginBackgroundTaskForHandling__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6410A8;
  if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "Took too long to handle Web Push action: '%@'", &v4, 0xCu);
  }
}

@end
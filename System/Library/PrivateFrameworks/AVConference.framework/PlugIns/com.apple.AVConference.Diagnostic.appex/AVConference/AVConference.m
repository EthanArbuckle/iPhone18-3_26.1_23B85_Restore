@interface AVConference
@end

@implementation AVConference

BOOL __89__com_apple_AVConference_DiagnosticExtension_copyDirectory_withPredicate_toSubDirectory___block_invoke(id a1, NSURL *a2, NSError *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __89__com_apple_AVConference_DiagnosticExtension_copyDirectory_withPredicate_toSubDirectory___block_invoke_cold_1(a2, a3);
  }

  return 1;
}

void __89__com_apple_AVConference_DiagnosticExtension_copyDirectory_withPredicate_toSubDirectory___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  [v2 cStringUsingEncoding:4];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end
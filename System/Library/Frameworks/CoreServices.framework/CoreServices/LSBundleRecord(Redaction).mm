@interface LSBundleRecord(Redaction)
- (void)redact;
@end

@implementation LSBundleRecord(Redaction)

- (void)redact
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end
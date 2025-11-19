@interface EKEvent(EKEvent_Shared)
- (void)_couldBeJunkCommon;
@end

@implementation EKEvent(EKEvent_Shared)

- (void)setIsJunk:()EKEvent_Shared shouldSave:.cold.1(char a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = @"junk";
  if ((a1 & 1) == 0)
  {
    v3 = @"not junk";
  }

  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Error saving event for reporting as %@. Error = %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_couldBeJunkCommon
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end
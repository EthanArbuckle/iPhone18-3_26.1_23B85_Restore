@interface AFRecordCoreDuetEventAtTimestamps
@end

@implementation AFRecordCoreDuetEventAtTimestamps

void ___AFRecordCoreDuetEventAtTimestamps_block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextEvent;
    if (os_log_type_enabled(AFSiriLogContextEvent, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "_AFRecordCoreDuetEventAtTimestamps_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Error recoding events: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end
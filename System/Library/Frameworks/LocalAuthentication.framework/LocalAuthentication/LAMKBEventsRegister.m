@interface LAMKBEventsRegister
@end

@implementation LAMKBEventsRegister

uint64_t ___LAMKBEventsRegister_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = +[_LAMKBLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "_LAMKBEventsRegister_block_invoke";
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = a3;
    _os_log_impl(&dword_1A784E000, v6, OS_LOG_TYPE_INFO, "%s:callback(type=%d, handle_state=%@", &v9, 0x1Cu);
  }

  result = (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end
@interface CFPrefsDirectMode
@end

@implementation CFPrefsDirectMode

void ___CFPrefsDirectMode_block_invoke()
{
  forceDirect = getenv("__CFPREFERENCES_AVOID_DAEMON") != 0;
  if (xpc_user_sessions_enabled())
  {
    xpc_user_sessions_get_session_uid();
  }

  getpid();
  v0 = *MEMORY[0x1E69E9BD0];
  v1 = sandbox_check();
  if (v1)
  {
    v2 = _CFPrefsClientLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      ___CFPrefsDirectMode_block_invoke_cold_1(v2);
    }
  }

  forceDirect |= v1 != 0;
}

void ___CFPrefsDirectMode_block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  _os_log_fault_impl(&dword_1830E6000, log, OS_LOG_TYPE_FAULT, "forcing direct access mode on for this process. It's slower, uses more memory, and doesn't respond to changes immediately. Update your sandbox profile to allow cfprefsd access!", v2, 2u);
  v1 = *MEMORY[0x1E69E9840];
}

@end
@interface FigRPCServer
@end

@implementation FigRPCServer

uint64_t __FigRPCServer_TimeoutCrashReport_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC338, 0, v12, &type);
  v3 = v12[0];
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v5 = v3;
  }

  else
  {
    v5 = v3 & 0xFFFFFFFE;
  }

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v12[1] = 136315650;
    v13 = "FigRPCServer_TimeoutCrashReport_block_invoke";
    v14 = 1024;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    v8 = _os_log_send_and_compose_impl();
    LOBYTE(v3) = v12[0];
  }

  else
  {
    v8 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC338, 0, 1, v8, v8 != &v18, v3, 0, v4);
  v9 = *(a1 + 32);
  if (v9)
  {
    CFRelease(v9);
  }

  return kill(*(a1 + 40), 9);
}

@end
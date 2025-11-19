@interface ReleaseInfo
@end

@implementation ReleaseInfo

void __receivedMemoryAllocator_ReleaseInfo_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, v9, &type);
  v4 = v9[0];
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFE;
  }

  if (v6)
  {
    v9[1] = 136315394;
    v10 = "receivedMemoryAllocator_ReleaseInfo_block_invoke";
    v11 = 2048;
    v12 = a2;
    v7 = _os_log_send_and_compose_impl();
    LOBYTE(v4) = v9[0];
  }

  else
  {
    v7 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v7, v7 != &v13, v4, 0, v5);
  receivedMemoryAllocator_disposeReceivedMemoryEntry(a2);
}

@end
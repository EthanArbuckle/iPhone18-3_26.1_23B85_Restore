@interface ActivatedEndpointsChangedNotificationCallback
@end

@implementation ActivatedEndpointsChangedNotificationCallback

void __endpointCentricPlugin_ActivatedEndpointsChangedNotificationCallback_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v8, &type);
  v3 = v8[0];
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
    v8[1] = 136315138;
    v9 = "endpointCentricPlugin_ActivatedEndpointsChangedNotificationCallback_block_invoke";
    v6 = _os_log_send_and_compose_impl();
    LOBYTE(v3) = v8[0];
  }

  else
  {
    v6 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v6, v6 != &v10, v3, 0, v4);
  endpointCentricPlugin_PeruseActivatedEndpoints(*(a1 + 32));
  CFRelease(*(a1 + 32));
}

@end
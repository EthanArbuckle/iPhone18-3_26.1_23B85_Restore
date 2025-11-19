@interface PeruseActivatedEndpoints
@end

@implementation PeruseActivatedEndpoints

void __endpointCentricPlugin_PeruseActivatedEndpoints_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v14, &type);
  v3 = v14;
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
    v6 = *(a1 + 41);
    v15 = 136315394;
    v16 = "endpointCentricPlugin_PeruseActivatedEndpoints_block_invoke";
    v17 = 1024;
    v18 = v6;
    v7 = _os_log_send_and_compose_impl();
    LOBYTE(v3) = v14;
  }

  else
  {
    v7 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v7, v7 != v19, v3, 0, v4);
  FigHALAudioPropertySendChanges(**(a1 + 48), 1, 2, "#vedbolg");
  v14 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v14, &type);
  v9 = v14;
  if (os_log_type_enabled(v8, type))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 0xFFFFFFFE;
  }

  if (v11)
  {
    v15 = 136315138;
    v16 = "endpointCentricPlugin_PeruseActivatedEndpoints_block_invoke";
    v12 = _os_log_send_and_compose_impl();
    LOBYTE(v9) = v14;
  }

  else
  {
    v12 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v12, v12 != v19, v9, 0, v10);
}

@end
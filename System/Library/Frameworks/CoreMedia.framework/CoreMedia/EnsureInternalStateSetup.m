@interface EnsureInternalStateSetup
@end

@implementation EnsureInternalStateSetup

void __remoteFigProcessStateMonitor_EnsureInternalStateSetup_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  Default = CFAllocatorGetDefault();
  v3 = FigCFWeakReferenceTableCreate(Default, 1, &qword_1ED4CDA38);
  v11 = *(a1 + 32);
  v10 = a1 + 32;
  *(*(v11 + 8) + 24) = v3;
  if (*(*(*v10 + 8) + 24))
  {
    v18 = 287;
  }

  else
  {
    qword_1ED4CDA20 = FigReentrantMutexCreate();
    if (qword_1ED4CDA20)
    {
      qword_1ED4CDA30 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
      if (qword_1ED4CDA30)
      {
        goto LABEL_4;
      }

      v18 = 294;
    }

    else
    {
      v18 = 290;
    }
  }

  __remoteFigProcessStateMonitor_EnsureInternalStateSetup_block_invoke_cold_1(v18, v10, v4, v5, v6, v7, v8, v9);
LABEL_4:
  if (dword_1ED4CC380 >= 2)
  {
    v20[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC378, 1, v20, &type);
    v13 = v20[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v16 = *(*(*v10 + 8) + 24);
      v20[1] = 136315394;
      v21 = "remoteFigProcessStateMonitor_EnsureInternalStateSetup_block_invoke";
      v22 = 1024;
      v23 = v16;
      v17 = _os_log_send_and_compose_impl();
      LOBYTE(v13) = v20[0];
    }

    else
    {
      v17 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC378, 1u, 1, v17, v17 != &v24, v13, 0, v14);
  }
}

size_t __remoteFigProcessStateMonitor_EnsureInternalStateSetup_block_invoke_cold_1(const CMBlockBufferCustomBlockSource *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC378, 0xFFFFB419uLL, "<<<< FigProcessStateMonitorRemote >>>>", a1, v8, a7, a8);
  *(*(*a2 + 8) + 24) = result;
  return result;
}

@end
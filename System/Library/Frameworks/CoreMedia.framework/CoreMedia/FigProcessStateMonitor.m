@interface FigProcessStateMonitor
@end

@implementation FigProcessStateMonitor

void __FigProcessStateMonitor_handleMessage_block_invoke(uint64_t a1)
{
  v75[16] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (v2 == 1685024867)
  {
    v4 = *(a1 + 48);
    uint64 = xpc_dictionary_get_uint64(*(a1 + 40), ".objectID");
    if (uint64)
    {
      v13 = FigCFWeakReferenceTableCopyValue(qword_1ED4CC400, uint64);
      if (v13)
      {
        v21 = v13;
        xpc_dictionary_set_int64(v4, "ProcessStateMonitorLastPurgeEvent", v13[9]);
        CFRelease(v21);
        v3 = 0;
        goto LABEL_23;
      }

      __FigProcessStateMonitor_handleMessage_block_invoke_cold_1(v75, v14, v15, v16, v17, v18, v19, v20);
    }

    else
    {
      __FigProcessStateMonitor_handleMessage_block_invoke_cold_2(v75, v6, v7, v8, v9, v10, v11, v12);
    }

    v3 = v75[0];
    goto LABEL_23;
  }

  if (v2 != 1701408885)
  {
    if (v2 == 1835954287)
    {
      v51 = *(a1 + 40);
      v75[0] = 0;
      v52 = xpc_dictionary_get_uint64(v51, ".objectID");
      if (v52)
      {
        v60 = FigCFWeakReferenceTableCopyValue(qword_1ED4CC400, v52);
        if (v60)
        {
          __FigProcessStateMonitor_handleMessage_block_invoke_cold_3(v51, v75, v60, v70);
        }

        else
        {
          __FigProcessStateMonitor_handleMessage_block_invoke_cold_4(v70, v61, v62, v63, v64, v65, v66, v67);
        }
      }

      else
      {
        __FigProcessStateMonitor_handleMessage_block_invoke_cold_5(v70, v53, v54, v55, v56, v57, v58, v59);
      }

      v3 = v70[0];
    }

    else
    {
      v3 = -16158;
    }

    goto LABEL_23;
  }

  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v24 = xpc_dictionary_get_uint64(v23, ".objectID");
  if (v24)
  {
    v32 = v24;
    v33 = FigCFWeakReferenceTableCopyValue(qword_1ED4CC400, v24);
    v41 = v33;
    if (v33)
    {
      v42 = FigXPCServerCopyMemoryRecipient(v22, v33 + 4);
      if (v42)
      {
        v3 = v42;
      }

      else
      {
        v43 = *MEMORY[0x1E695E480];
        v3 = FigMemoryRecipientCopyBlockBufferFromXPCMessage(*MEMORY[0x1E695E480], v41[4], v23, "ProcessStateMonitorShmem", v41 + 5);
        if (!v3)
        {
          v44 = *(v41 + 4);
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = __figProcessStateMonitorHandleEnrollInPurge_block_invoke;
          v70[3] = &__block_descriptor_40_e8_v12__0i8l;
          v70[4] = v32;
          FigPurgeAndRenewProcessStateTrackerStartTrackingPIDWithBlock(v44, v70);
          *(v41 + 80) = 1;
          Current = CFAbsoluteTimeGetCurrent();
          v41[11] = CFDateCreate(v43, Current);
        }
      }

      goto LABEL_13;
    }

    __FigProcessStateMonitor_handleMessage_block_invoke_cold_6(v75, v34, v35, v36, v37, v38, v39, v40);
  }

  else
  {
    __FigProcessStateMonitor_handleMessage_block_invoke_cold_7(v75, v25, v26, v27, v28, v29, v30, v31);
    v41 = 0;
  }

  v3 = v75[0];
LABEL_13:
  if (dword_1EAF1CC88)
  {
    v69 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, &v69, &type);
    v47 = v69;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v49 = v47;
    }

    else
    {
      v49 = v47 & 0xFFFFFFFE;
    }

    if (v49)
    {
      v71 = 136315394;
      v72 = "figProcessStateMonitorHandleEnrollInPurge";
      v73 = 2114;
      v74 = v41;
      v50 = _os_log_send_and_compose_impl();
      LOBYTE(v47) = v69;
    }

    else
    {
      v50 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 1u, 1, v50, v50 != v75, v47, 0, v48);
  }

  if (v41)
  {
    CFRelease(v41);
  }

LABEL_23:
  *(*(*(a1 + 56) + 8) + 24) = v3;
}

void __FigProcessStateMonitor_noReplyHandleMessage_block_invoke(uint64_t a1)
{
  v34[16] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  if (v1 == 1684632432)
  {
    v2 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(*(a1 + 40), ".objectID");
    FigXPCServerDisassociateObjectWithConnection(v2, uint64);
    if (dword_1EAF1CC88)
    {
      v28[0] = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CC80, 1, v28, &type);
      v5 = v28[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v7 = v5;
      }

      else
      {
        v7 = v5 & 0xFFFFFFFE;
      }

      if (v7)
      {
        pid = xpc_connection_get_pid(v2);
        v28[1] = 136315650;
        v29 = "figProcessStateMonitorHandleDispose";
        v30 = 1024;
        v31 = pid;
        v32 = 2048;
        v33 = uint64;
        v9 = _os_log_send_and_compose_impl();
        LOBYTE(v5) = v28[0];
      }

      else
      {
        v9 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CC80, 1u, 1, v9, v9 != v34, v5, 0, v6);
    }
  }

  else if (v1 == 1836082031)
  {
    v10 = *(a1 + 40);
    v34[0] = 0;
    v11 = xpc_dictionary_get_uint64(v10, ".objectID");
    if (v11)
    {
      v19 = FigCFWeakReferenceTableCopyValue(qword_1ED4CC400, v11);
      if (v19)
      {
        __FigProcessStateMonitor_noReplyHandleMessage_block_invoke_cold_1(v10, v34, v19);
      }

      else
      {
        __FigProcessStateMonitor_noReplyHandleMessage_block_invoke_cold_2(0, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    else
    {
      __FigProcessStateMonitor_noReplyHandleMessage_block_invoke_cold_3(0, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = -16158;
  }
}

size_t __FigProcessStateMonitor_handleMessage_block_invoke_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB418uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x261, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t __FigProcessStateMonitor_handleMessage_block_invoke_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorServer >>>>", 0x251, v8, a7, a8);
  *a1 = result;
  return result;
}

void __FigProcessStateMonitor_handleMessage_block_invoke_cold_3(void *a1, const void **a2, const void *a3, _DWORD *a4)
{
  MustNotPurgeClientObjects = FigXPCMessageCopyCFString(a1, "ProcessStateMonitorAssertion", a2);
  v14 = *a2;
  if (!MustNotPurgeClientObjects)
  {
    MustNotPurgeClientObjects = figProcessStateMonitorMustNotPurgeClientObjects(a3, v14, v8, v9, v10, v11, v12, v13);
    v14 = *a2;
  }

  *a4 = MustNotPurgeClientObjects;
  if (v14)
  {
    CFRelease(v14);
  }

  CFRelease(a3);
}

size_t __FigProcessStateMonitor_handleMessage_block_invoke_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB418uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x23C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t __FigProcessStateMonitor_handleMessage_block_invoke_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorServer >>>>", 0x239, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t __FigProcessStateMonitor_handleMessage_block_invoke_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB418uLL, "<<<< FigProcessStateMonitorServer >>>>", 0x1BC, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t __FigProcessStateMonitor_handleMessage_block_invoke_cold_7(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CC80, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorServer >>>>", 0x1B9, v8, a7, a8);
  *a1 = result;
  return result;
}

void __FigProcessStateMonitor_noReplyHandleMessage_block_invoke_cold_1(void *a1, const void **a2, const void *a3)
{
  v5 = FigXPCMessageCopyCFString(a1, "ProcessStateMonitorAssertion", a2);
  v12 = *a2;
  if (!v5)
  {
    figProcessStateMonitorMayPurgeClientObjects(a3, v12, v6, v7, v8, v9, v10, v11);
    v12 = *a2;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  CFRelease(a3);
}

@end
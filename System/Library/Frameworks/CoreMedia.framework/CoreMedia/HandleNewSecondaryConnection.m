@interface HandleNewSecondaryConnection
@end

@implementation HandleNewSecondaryConnection

void __figXPC_HandleNewSecondaryConnection_block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x19A8DA4F0](a2);
  v5 = FigCFWeakReferenceLoadAndRetain((*(a1 + 32) + 16));
  v6 = v5;
  if (v4 != MEMORY[0x1E69E9E80])
  {
    if (v4 == MEMORY[0x1E69E9E98])
    {
      v7 = FigXPCRetain(*(a1 + 48));
      v8 = FigXPCRetain(a2);
      v9 = *(a1 + 40);
      v10 = *(v9 + 128);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __figXPC_HandleNewSecondaryConnection_block_invoke_212;
      block[3] = &__block_descriptor_tmp_213;
      block[4] = v9;
      block[5] = v7;
      block[6] = v8;
      dispatch_async(v10, block);
    }

    if (!v6)
    {
      return;
    }

LABEL_8:
    CFRelease(v6);
    return;
  }

  if (v5)
  {
    figXPC_HandleMessage(*(a1 + 40), v5, *(a1 + 48), a2);
    goto LABEL_8;
  }

  v21[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, v21, &type);
  v12 = v21[0];
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 & 0xFFFFFFFE;
  }

  if (v14)
  {
    v15 = *(a1 + 48);
    v16 = *(*(a1 + 40) + 88);
    v21[1] = 136315906;
    v22 = "figXPC_HandleNewSecondaryConnection_block_invoke";
    v23 = 2080;
    v24 = v16;
    v25 = 2048;
    v26 = v15;
    v27 = 2048;
    v28 = a2;
    v17 = _os_log_send_and_compose_impl();
    v18 = v21[0];
  }

  else
  {
    v18 = v12;
    v17 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v17, v17 != &v29, v18, 0, v13);
}

void __figXPC_HandleNewSecondaryConnection_block_invoke_212(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2 == MEMORY[0x1E69E9E20])
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = xpc_connection_copy_invalidation_reason();
    pid = xpc_connection_get_pid(v3);
    FigSimpleMutexLock(*(v4 + 112));
    Value = CFDictionaryGetValue(*(v4 + 104), pid);
    if (Value)
    {
      v8 = Value;
      FigSimpleMutexLock(Value[10]);
      Count = CFArrayGetCount(v8[11]);
      if (Count >= 1)
      {
        v10 = Count;
        v11 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8[11], v11);
          if (ValueAtIndex[7] == v3)
          {
            v13 = ValueAtIndex;
            FigCFWeakReferenceTableRemoveValue(v8[6], ValueAtIndex[3]);
            figXPC_ForgetNotificationsForServedObject(v8[14], v13);
            CFArrayRemoveValueAtIndex(v8[11], v11);
            --v10;
          }

          else
          {
            ++v11;
          }
        }

        while (v11 < v10);
      }

      v14 = v8[18];
      v35.length = CFArrayGetCount(v14);
      v35.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v14, v35, v3);
      if (FirstIndexOfValue < 0 || (v16 = FirstIndexOfValue, FirstIndexOfValue >= CFArrayGetCount(v8[18])))
      {
        v25[0] = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, v25, &type);
        v18 = v25[0];
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v20 = v18;
        }

        else
        {
          v20 = v18 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v21 = *(v4 + 88);
          v22 = *(v8 + 4);
          v25[1] = 136315906;
          v26 = "figXPC_TerminateSecondaryConnection";
          v27 = 2048;
          v28 = v3;
          v29 = 2082;
          v30 = v21;
          v31 = 1024;
          v32 = v22;
          v23 = _os_log_send_and_compose_impl();
          LOBYTE(v18) = v25[0];
        }

        else
        {
          v23 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v23, v23 != &v33, v18, 0, v19);
        FigSimpleMutexUnlock(v8[10]);
      }

      else
      {
        CFArrayRemoveValueAtIndex(v8[18], v16);
        FigSimpleMutexUnlock(v8[10]);
        xpc_release(v3);
      }
    }

    FigSimpleMutexUnlock(*(v4 + 112));
    free(v5);
    v2 = *(a1 + 48);
  }

  FigXPCRelease(v2);
  FigXPCRelease(*(a1 + 40));
}

@end
@interface Start
@end

@implementation Start

uint64_t __tcp_Start_block_invoke(uint64_t result)
{
  v2 = result;
  v10 = *MEMORY[0x1E69E9840];
  if (!*(*(result + 40) + 48))
  {
    if (pipe(v9))
    {
      result = __error();
      *(*(v2[4] + 8) + 24) = *result;
      goto LABEL_9;
    }

    v3 = v2[5];
    v4 = v9[1];
    *(v3 + 104) = v9[0];
    *(v3 + 92) = v4;
    fcntl(v4, 4, 4);
    if (CFEqual(*(v2[5] + 24), @"Client"))
    {
      __tcp_Start_block_invoke_cold_1(v2, &v8);
    }

    else
    {
      if (!CFEqual(*(v2[5] + 24), @"Server"))
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFD0EEuLL, "<<< transporttcp >>>", 0x38B, v1, v6, v7);
LABEL_6:
        *(*(v2[4] + 8) + 24) = result;
        goto LABEL_7;
      }

      __tcp_Start_block_invoke_cold_2(v2, &v8);
    }

    result = v8;
    goto LABEL_6;
  }

LABEL_7:
  if (!*(*(v2[4] + 8) + 24))
  {
    ++*(v2[5] + 48);
  }

LABEL_9:
  if (*(*(v2[4] + 8) + 24))
  {
    return tcp_CleanupFileDescriptors(v2[6]);
  }

  return result;
}

void __usb_Start_block_invoke(void *a1)
{
  values[16] = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  if (!*(v3 + 88))
  {
    if (CFEqual(*(v3 + 72), @"Client"))
    {
      v4 = a1[6];
      DerivedStorage = CMBaseObjectGetDerivedStorage(v4);
      *(DerivedStorage + 40) = 0;
      *(DerivedStorage + 24) = 0;
      *(DerivedStorage + 200) = dispatch_semaphore_create(0);
      values[0] = @"FigTransportConnectionUSB.messagesending";
      v6 = *MEMORY[0x1E695E480];
      v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigThreadCreateKey_Identifier, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigThreadCreate(usb_messageSendingThreadMain, v4, 0x1Cu, 1, v7, (DerivedStorage + 192), v8, v9);
      if (v7)
      {
        CFRelease(v7);
      }

      values[0] = @"FigTransportConnectionUSB.client";
      v10 = CFDictionaryCreate(v6, &kFigThreadCreateKey_Identifier, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigThreadCreate(usb_clientThreadMain, v4, 0x1Cu, 1, v10, (DerivedStorage + 128), v11, v12);
      if (v10)
      {
        CFRelease(v10);
      }

      v13 = 0;
    }

    else if (CFEqual(*(a1[5] + 72), @"Server"))
    {
      v14 = a1[6];
      v15 = CMBaseObjectGetDerivedStorage(v14);
      v33 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v33, &type);
      v17 = v33;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v19 = v17;
      }

      else
      {
        v19 = v17 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v35 = 136315138;
        v36 = "usb_startServer";
        v20 = _os_log_send_and_compose_impl();
        LOBYTE(v17) = v33;
      }

      else
      {
        v20 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v20, v20 != values, v17, 0, v18);
      *(v15 + 40) = 0;
      *(v15 + 24) = 0;
      *(v15 + 200) = dispatch_semaphore_create(0);
      v34 = @"FigTransportConnectionUSB.messagesending";
      v24 = *MEMORY[0x1E695E480];
      v25 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigThreadCreateKey_Identifier, &v34, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigThreadCreate(usb_messageSendingThreadMain, v14, 0x1Cu, 1, v25, (v15 + 192), v26, v27);
      if (v25)
      {
        CFRelease(v25);
      }

      v28 = dispatch_semaphore_create(0);
      *(v15 + 144) = v28;
      if (v28)
      {
        v34 = @"FigTransportConnectionUSB.server";
        v29 = CFDictionaryCreate(v24, &kFigThreadCreateKey_Identifier, &v34, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigThreadCreate(usb_serverThreadMain, v14, 0x1Cu, 1, v29, (v15 + 128), v30, v31);
        if (v29)
        {
          CFRelease(v29);
        }

        dispatch_semaphore_wait(*(v15 + 144), 0xFFFFFFFFFFFFFFFFLL);
        v13 = *(v15 + 152);
        dispatch_release(*(v15 + 144));
        *(v15 + 144) = 0;
      }

      else
      {
        __usb_Start_block_invoke_cold_1(values);
        v13 = values[0];
      }
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFD0EEuLL, "<<< transportusb >>>", 0x74A, v1, v22, v23);
    }

    *(*(a1[4] + 8) + 24) = v13;
  }

  if (!*(*(a1[4] + 8) + 24))
  {
    ++*(a1[5] + 88);
  }
}

uint64_t __ids_Start_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage(v2);
  if (*DerivedStorage)
  {
    result = 4294955241;
    goto LABEL_7;
  }

  v4 = DerivedStorage;
  if (([*(DerivedStorage + 72) isActive] & 1) != 0 || *(v4 + 80))
  {
    result = 4294955243;
    goto LABEL_7;
  }

  v5 = *(v4 + 36);
  if (!v5)
  {
    *(v4 + 88) = 0;
    result = [*(v4 + 72) activateConnection];
    if (result)
    {
      goto LABEL_7;
    }

    values = @"FigTransportConnectionIDS.mainThread";
    v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigThreadCreateKey_Identifier, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigThreadCreate(ids_threadMain, v2, 0x1Cu, 1, v7, (v4 + 80), v8, v9);
    if (v7)
    {
      CFRelease(v7);
    }

    v5 = *(v4 + 36);
  }

  result = 0;
  *(v4 + 36) = v5 + 1;
LABEL_7:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __tcp_Start_block_invoke_cold_1(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(*(a1 + 48));
  if (*(DerivedStorage + 112))
  {
    v12 = -12053;
  }

  else
  {
    *(DerivedStorage + 120) = 0;
    values = @"FigTransportConnectionTCP.client";
    v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigThreadCreateKey_Identifier, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    OUTLINED_FUNCTION_1_56(v4, v5, v6, v7, v8, v9, v10, v11);
    if (v4)
    {
      CFRelease(v4);
    }

    v12 = 0;
  }

  *a2 = v12;
}

void __tcp_Start_block_invoke_cold_2(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(*(a1 + 48));
  if (*(DerivedStorage + 112))
  {
    v12 = -12053;
  }

  else
  {
    *(DerivedStorage + 120) = 0;
    values = @"FigTransportConnectionTCP.server";
    v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigThreadCreateKey_Identifier, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    OUTLINED_FUNCTION_1_56(v4, v5, v6, v7, v8, v9, v10, v11);
    if (v4)
    {
      CFRelease(v4);
    }

    v12 = 0;
  }

  *a2 = v12;
}

size_t __usb_Start_block_invoke_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFD0EDuLL, "<<< transportusb >>>", 0x66F, v1, v4, v5);
  *a1 = result;
  return result;
}

@end
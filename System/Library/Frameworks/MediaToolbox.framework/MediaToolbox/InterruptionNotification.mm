@interface InterruptionNotification
@end

@implementation InterruptionNotification

void __playerceleste_InterruptionNotification_block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v18 = 0;
  cf = 0;
  if (v1)
  {
    v19 = 0;
    if (FigCFDictionaryGetInt32IfPresent())
    {
      FigCFDictionaryGetBooleanIfPresent();
      if (dword_1EAF17958)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigSimpleMutexLock();
      if (*(a1[6] + 80))
      {
        Value = CFDictionaryGetValue(v1, *MEMORY[0x1E69AF9F8]);
        v5 = CFDictionaryGetValue(v1, *MEMORY[0x1E69AF9F0]);
        FigCFDictionaryGetBooleanIfPresent();
        if (*(a1[6] + 128))
        {
          playerceleste_notifyInterruptionWithInterruptorNameAndStatus(a1[5], @"PlaybackWasInterrupted", Value, 0);
          if (v5)
          {
            v6 = a1[5];
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            v8 = *MEMORY[0x1E695E480];
            if (v6)
            {
              v9 = (CMBaseObjectGetDerivedStorage() + 165);
            }

            else
            {
              v9 = "";
            }

            v10 = CFStringCreateWithFormat(v8, 0, @"%@_%s", @"PlayerInterrupted", v9);
            if (!*(DerivedStorage + 192))
            {
              FigGetCFPreferenceNumberWithDefault();
              FigProcessStateMonitorCreateExpiringAssertionOnBehalfOfProcessWithPID();
            }

            FigSimpleMutexUnlock();
            if (v10)
            {
              CFRelease(v10);
            }
          }
        }

        if (*(a1[6] + 130))
        {
          playerceleste_notifyImminentRateChange();
          FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 13, &cf);
          FigSimpleMutexLock();
          v11 = *(a1[6] + 80);
          v12 = cf;
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 104);
          if (!v13 || v13(v11, v12, 0.0) == -12782)
          {
            v14 = a1[5];
            v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v15)
            {
              v15(v14, 0.0);
            }
          }

          *(CMBaseObjectGetDerivedStorage() + 130) = 0;
          FigSimpleMutexUnlock();
        }

        if (playerceleste_canCallSetConnectionActive())
        {
          playerceleste_callSetConnectionActive(a1[5], 0);
        }

        v16 = a1[6];
        if (*(v16 + 128))
        {
          *(v16 + 128) = 256;
        }
      }

      FigSimpleMutexUnlock();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

@end
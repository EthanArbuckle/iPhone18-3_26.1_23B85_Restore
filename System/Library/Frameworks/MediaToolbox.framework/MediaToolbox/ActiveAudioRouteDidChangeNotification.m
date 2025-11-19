@interface ActiveAudioRouteDidChangeNotification
@end

@implementation ActiveAudioRouteDidChangeNotification

void __playerceleste_ActiveAudioRouteDidChangeNotification_block_invoke(uint64_t a1)
{
  v18[16] = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (*(a1 + 32))
  {
    if (dword_1EAF17958)
    {
      LODWORD(value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = *(a1 + 48);
    if (*(v3 + 128) && *(v3 + 130) && *(a1 + 56))
    {
      v4 = *MEMORY[0x1E695E4C0];
      value = *MEMORY[0x1E695E4C0];
      FigCFDictionaryGetIntIfPresent();
      CFDictionaryGetValue(*(a1 + 56), *MEMORY[0x1E69AED48]);
      CFDictionaryGetValue(*(a1 + 56), *MEMORY[0x1E69AED38]);
      if (CFDictionaryGetValueIfPresent(*(a1 + 56), *MEMORY[0x1E69AED58], &value) && CFBooleanGetValue(value))
      {
        if (*(*(a1 + 48) + 162))
        {
          v18[0] = 0;
          v5 = *(a1 + 32);
          v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v6)
          {
            v7 = v6(v5, 0, v18);
            v8 = 0;
            v9 = v18[0];
            if (!v7 && v18[0])
            {
              cf = 0;
              FigBaseObject = FigPlaybackItemGetFigBaseObject(v18[0]);
              v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v11)
              {
                v11(FigBaseObject, @"HasEnabledAudio", *MEMORY[0x1E695E480], &cf);
                v8 = cf == v4;
                if (cf)
                {
                  CFRelease(cf);
                }
              }

              else
              {
                v8 = v4 == 0;
              }

              v9 = v18[0];
            }

            if (v9)
            {
              CFRelease(v9);
            }
          }

          else
          {
            v8 = 0;
          }

          v12 = 0;
        }

        else
        {
          v12 = 0;
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
        v12 = 1;
      }

      if (v16 == 2)
      {
        if (dword_1EAF17958)
        {
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (((v12 | v8) & 1) == 0)
        {
          playerceleste_pauseCurrentlyPlayingMovie(*(a1 + 32), 12);
        }
      }

      if (playerceleste_shouldPauseAndResumeForAirPlayRouteChange_onceToken != -1)
      {
        __playerceleste_ActiveAudioRouteDidChangeNotification_block_invoke_cold_1();
      }
    }

    FigPlayerReevaluateRouteConfigurationForReason(*(a1 + 32), 0, @"ActiveAudioRouteDidChange from celeste player");
    v14 = *(a1 + 40);
    if (v14)
    {
      CFRelease(v14);
    }
  }
}

@end
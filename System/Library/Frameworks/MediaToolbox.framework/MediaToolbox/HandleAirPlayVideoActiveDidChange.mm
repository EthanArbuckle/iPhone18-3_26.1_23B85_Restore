@interface HandleAirPlayVideoActiveDidChange
@end

@implementation HandleAirPlayVideoActiveDidChange

void __fpic_HandleAirPlayVideoActiveDidChange_block_invoke(void *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E4C0];
  v43 = *MEMORY[0x1E695E4C0];
  FigBaseObject = FigPlayerGetFigBaseObject(a1[7]);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(FigBaseObject, @"IsAirPlayVideoActive", *MEMORY[0x1E695E480], &v43);
    v2 = v43;
  }

  *(*(a1[4] + 8) + 24) = v2 == *MEMORY[0x1E695E4D0];
  v5 = *(*(a1[4] + 8) + 24);
  v7 = a1 + 8;
  v6 = a1[8];
  if (v5 != *(v6 + 1256))
  {
    *(v6 + 1256) = v5;
    v8 = *(v6 + 1280);
    if (v8)
    {
      CFRelease(v8);
      *(*v7 + 1280) = 0;
    }

    if (dword_1EAF178D0)
    {
      LODWORD(v47.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = v47.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
      {
        v11 = value;
      }

      else
      {
        v11 = value & 0xFFFFFFFE;
      }

      if (v11)
      {
        v12 = a1[9];
        if (*(*(a1[4] + 8) + 24))
        {
          v13 = "active";
        }

        else
        {
          v13 = "not active";
        }

        *v48 = 136315650;
        *&v48[4] = "fpic_HandleAirPlayVideoActiveDidChange_block_invoke";
        *&v48[12] = 2048;
        *&v48[14] = v12;
        *&v48[22] = 2080;
        v49 = *&v13;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CFArrayGetCount(*(*v7 + 656)) >= 1)
    {
      if (*(*(a1[4] + 8) + 24))
      {
        if (fpic_ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy(a1[9]))
        {
          v14 = a1[9];
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (DerivedStorage[1143])
          {
            v16 = DerivedStorage;
            if (DerivedStorage[376] || DerivedStorage[377])
            {
              if (fpic_GetCurrentlyPlayingEvent())
              {
                v28 = CMBaseObjectGetDerivedStorage();
                *(v28 + 892) = FPSupport_IncrementSeekID(*(v28 + 892));
                memset(&v47, 0, sizeof(v47));
                v29 = CMBaseObjectGetDerivedStorage();
                if (*(v29 + 376))
                {
                  v47 = *(v29 + 344);
                }

                else if (*(v29 + 377))
                {
                  v36 = *(v29 + 368);
                  v37 = *(v29 + 320);
                  *time = *(v29 + 304);
                  *&time[16] = v37;
                  v51 = *(v29 + 336);
                  FigCreateTimeWithDateAndMoment(time, &v47, v36);
                }

                else
                {
                  v47 = **&MEMORY[0x1E6960C70];
                }

                *&time[16] = *(v16 + 53);
                *time = *(v16 + 408);
                fpic_AccumulateDuration(&v47, time);
                fpic_GetCurrentlyPlayingEventPlayoutDuration();
                fpic_AccumulateDuration(&v47, time);
                if (dword_1EAF178D0)
                {
                  *type = 0;
                  v46 = OS_LOG_TYPE_DEFAULT;
                  v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v39 = *type;
                  if (os_log_type_enabled(v38, v46))
                  {
                    v40 = v39;
                  }

                  else
                  {
                    v40 = v39 & 0xFFFFFFFE;
                  }

                  if (v40)
                  {
                    *time = v47;
                    Seconds = CMTimeGetSeconds(time);
                    *v48 = 136315650;
                    *&v48[4] = "fpic_SeekToInterstitialTimeOnPrimary";
                    *&v48[12] = 2048;
                    *&v48[14] = v14;
                    *&v48[22] = 2048;
                    v49 = Seconds;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                v42 = *(v16 + 20);
                *time = v47;
                *v48 = *MEMORY[0x1E6960C70];
                *&v48[16] = *(MEMORY[0x1E6960C70] + 16);
                *type = *v48;
                v45 = *&v48[16];
                FPSupport_SetCurrentTimeWithRangeIDAndReason(v42, time, 5, v48, type);
              }
            }
          }
        }
      }

      v17 = a1[8];
      v18 = MEMORY[0x1E6960C70];
      v19 = *(MEMORY[0x1E6960C70] + 16);
      *(v17 + 1080) = v19;
      v20 = *v18;
      *(v17 + 1064) = *v18;
      v21 = a1[8];
      *(v21 + 912) = v20;
      *(v21 + 928) = v19;
      if (fpic_GetCurrentlyPlayingEvent())
      {
        __fpic_HandleAirPlayVideoActiveDidChange_block_invoke_cold_1(a1 + 8);
      }

      fpic_RescheduleCurrentEvents(a1[9], (*(a1[6] + 8) + 24), *(*(a1[5] + 8) + 24));
    }

    if (*(*v7 + 1260) == 1)
    {
      if (*(*(a1[4] + 8) + 24) && fpic_ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy(a1[9]))
      {
        if (dword_1EAF178D0)
        {
          LODWORD(v47.value) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v26 = v47.value;
          if (os_log_type_enabled(v25, type[0]))
          {
            v27 = v26;
          }

          else
          {
            v27 = v26 & 0xFFFFFFFE;
          }

          if (v27)
          {
            v31 = a1[9];
            *v48 = 136315394;
            *&v48[4] = "fpic_HandleAirPlayVideoActiveDidChange_block_invoke";
            *&v48[12] = 2048;
            *&v48[14] = v31;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fpic_clearIntendedCurrentItemMoment();
        fpic_UngatePrimaryBuffering();
        fpic_UngatePrimaryPlayback(a1[9]);
        v32 = CMBaseObjectGetDerivedStorage();
        *(v32 + 256) = 0;
        *(v32 + 296) = 0;
        v33 = MEMORY[0x1E6960C70];
        v34 = *MEMORY[0x1E6960C70];
        *(v32 + 432) = *MEMORY[0x1E6960C70];
        v35 = *(v33 + 16);
        *(v32 + 448) = v35;
        *(v32 + 480) = v34;
        *(v32 + 496) = v35;
        *(v32 + 504) = v34;
        *(v32 + 520) = v35;
        *(v32 + 1144) = 0;
        *(v32 + 644) = v35;
        *(v32 + 628) = v34;
        *(v32 + 1147) = 0;
      }

      else if (dword_1EAF178D0)
      {
        LODWORD(v47.value) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v23 = v47.value;
        if (os_log_type_enabled(v22, type[0]))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          v30 = a1[9];
          *v48 = 136315394;
          *&v48[4] = "fpic_HandleAirPlayVideoActiveDidChange_block_invoke";
          *&v48[12] = 2048;
          *&v48[14] = v30;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fpic_PostNotification(a1[9], @"fpiEventsDidChange", 0);
      fpic_UpdatePlaybackItemEventList();
    }
  }
}

double __fpic_HandleAirPlayVideoActiveDidChange_block_invoke_cold_1(uint64_t *a1)
{
  v1 = *a1;
  fpic_GetCurrentlyPlayingEventPlayoutDuration();
  result = *&v3;
  *(v1 + 912) = v3;
  *(v1 + 928) = v4;
  return result;
}

@end
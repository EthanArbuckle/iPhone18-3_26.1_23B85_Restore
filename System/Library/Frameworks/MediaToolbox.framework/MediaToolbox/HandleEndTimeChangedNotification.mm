@interface HandleEndTimeChangedNotification
@end

@implementation HandleEndTimeChangedNotification

void __fpic_HandleEndTimeChangedNotification_block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  if (*(a1 + 40) == *(v1 + 160) && (*(a1 + 88) || *(a1 + 89)))
  {
    *time = *(v1 + 384);
    *&time[16] = *(v1 + 400);
    *rhs = *(a1 + 104);
    *&rhs[16] = *(a1 + 120);
    if (!faqrp_timeDifferenceIsWithinTolerance(time, rhs, &kMomentsAreCloseThreshold))
    {
      if (dword_1EAF178D0)
      {
        LODWORD(v35) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v4 = v35;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v5 = v4;
        }

        else
        {
          v5 = v4 & 0xFFFFFFFE;
        }

        if (v5)
        {
          v6 = *(a1 + 96);
          v7 = *(a1 + 48);
          *time = *(v7 + 384);
          *&time[16] = *(v7 + 400);
          Seconds = CMTimeGetSeconds(time);
          *time = *(a1 + 104);
          *&time[16] = *(a1 + 120);
          v9 = CMTimeGetSeconds(time);
          *rhs = 136315906;
          *&rhs[4] = "fpic_HandleEndTimeChangedNotification_block_invoke";
          *&rhs[12] = 2048;
          *&rhs[14] = v6;
          *&rhs[22] = 2048;
          *&rhs[24] = Seconds;
          LOWORD(v43) = 2048;
          *(&v43 + 2) = v9;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v10 = *(a1 + 48);
      v11 = *(a1 + 104);
      *(v10 + 400) = *(a1 + 120);
      *(v10 + 384) = v11;
      v12 = *(a1 + 96);
      v29 = *(a1 + 56);
      v30 = *(a1 + 72);
      v13 = *(a1 + 88);
      v14 = *(a1 + 89);
      v28 = *(a1 + 94);
      v27 = *(a1 + 90);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *time = v29;
      *&time[16] = v30;
      memset(&v31, 0, sizeof(v31));
      *rhs = *&kPostRollTimeToPausePlaybackBuffer.value;
      *&rhs[16] = 0;
      CMTimeAdd(&v31, time, rhs);
      v16 = CMBaseObjectGetDerivedStorage();
      v17 = *(v16 + 1146);
      if (!*(v16 + 1146))
      {
        goto LABEL_35;
      }

      if (!*(v16 + 256) || !v13)
      {
        v17 = 0;
        if (!*(v16 + 257) || !v14)
        {
          goto LABEL_35;
        }
      }

      v18 = *(v16 + 240);
      *time = *(v16 + 224);
      *&time[16] = v18;
      v34 = *(v16 + 256);
      *rhs = v29;
      *&rhs[16] = v30;
      LOBYTE(v43) = v13;
      BYTE1(v43) = v14;
      *(&v43 + 2) = v27;
      WORD3(v43) = v28;
      if (!fpic_MomentsAreCloseWithTolerance(time, rhs, &kMomentsAreCloseThreshold))
      {
        v19 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (!v19)
        {
          __fpic_HandleEndTimeChangedNotification_block_invoke_cold_1(time);
          v17 = *time;
          goto LABEL_35;
        }

        v20 = v19;
        if (!*(DerivedStorage + 1145))
        {
          v47 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          memset(rhs, 0, sizeof(rhs));
          v41 = 0;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          if (dword_1EAF178D0)
          {
            v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *(DerivedStorage + 224) = v29;
          *(DerivedStorage + 240) = v30;
          *(DerivedStorage + 256) = v13;
          *(DerivedStorage + 257) = v14;
          *(DerivedStorage + 262) = v28;
          *(DerivedStorage + 258) = v27;
        }

        if (*(DerivedStorage + 1076))
        {
          *time = *(DerivedStorage + 1064);
          *&time[16] = *(DerivedStorage + 1080);
          *rhs = v31;
          if (!faqrp_timeDifferenceIsWithinTolerance(time, rhs, &kMomentsAreCloseThreshold))
          {
            if (dword_1EAF178D0)
            {
              LODWORD(v35) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v22 = v35;
              if (os_log_type_enabled(v21, type[0]))
              {
                v23 = v22;
              }

              else
              {
                v23 = v22 & 0xFFFFFFFE;
              }

              if (v23)
              {
                *time = *(DerivedStorage + 1064);
                *&time[16] = *(DerivedStorage + 1080);
                v24 = CMTimeGetSeconds(time);
                *time = v31;
                v25 = CMTimeGetSeconds(time);
                *rhs = 136315906;
                *&rhs[4] = "fpic_updatePostrollStateForNewEndMoment";
                *&rhs[12] = 2048;
                *&rhs[14] = v12;
                *&rhs[22] = 2048;
                *&rhs[24] = v24;
                LOWORD(v43) = 2048;
                *(&v43 + 2) = v25;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            fpic_GatePrimaryPlaybackAtCurrentEvent(v12, v20);
          }
        }

        fpic_updateCurrentResumptionTimeIfPlayingPostroll();
        CFRelease(v20);
      }

      v17 = 0;
LABEL_35:
      *(*(*(a1 + 32) + 8) + 24) = v17;
    }
  }
}

uint64_t __fpic_HandleEndTimeChangedNotification_block_invoke_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end
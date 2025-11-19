@interface HandleSeekDidFinishNotification
@end

@implementation HandleSeekDidFinishNotification

void __fpic_HandleSeekDidFinishNotification_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  if (v2 == *(v3 + 888))
  {
    if ((*(a1 + 80) & 0x1D) == 1)
    {
      lhs = *(a1 + 68);
      v9 = *(v3 + 320);
      *v25 = *(v3 + 304);
      *&v25[16] = v9;
      v26 = *(v3 + 336);
      fpic_MakeMomentFromTime(&lhs, v25, time1);
      v10 = *&time1[16];
      *(v3 + 304) = *time1;
      *(v3 + 320) = v10;
      *(v3 + 336) = v24;
      v3 = *(a1 + 40);
    }

    v11 = *(v3 + 160);
    if (v11)
    {
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v12)
      {
        v12(v11, v3 + 556);
      }

      fpic_updateCurrentResumptionTimeIfPlayingPostroll();
      fpic_EnsureCurrentEventsHaveResolvedProperties(*(a1 + 48));
      v3 = *(a1 + 40);
    }

    *(v3 + 888) = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    fpic_clearIntendedCurrentItemMoment();
    v13 = *(a1 + 48);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    LastCurrentItem = fpic_GetLastCurrentItem();
    if (LastCurrentItem)
    {
      v16 = LastCurrentItem;
      memset(v25, 0, 24);
      fpic_GetItemEndTime();
      v28 = *time1;
      v17 = *&time1[12];
      v29 = *&time1[8];
      if (time1[12])
      {
        v18 = *&time1[16];
        lhs.value = v28;
        lhs.timescale = v29;
        lhs.flags = *&time1[12];
        lhs.epoch = *&time1[16];
        rhs = *gAudioTransitionScheduleAdvance;
        CMTimeSubtract(time1, &lhs, &rhs);
        rhs.value = *time1;
        v19 = *&time1[12];
        rhs.timescale = *&time1[8];
        v20 = *&time1[16];
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v21)
        {
          v21(v16, v25);
        }

        *time1 = rhs.value;
        *&time1[8] = __PAIR64__(v19, rhs.timescale);
        *&time1[16] = v20;
        lhs = *v25;
        if (CMTimeCompare(time1, &lhs) < 1)
        {
          *time1 = v28;
          *&time1[8] = __PAIR64__(v17, v29);
          *&time1[16] = v18;
          fpic_scheduleInterstitialAudioTransition(v13, time1, 0);
        }

        else
        {
          StopAndReleaseTimer((DerivedStorage + 832));
          *time1 = rhs.value;
          *&time1[8] = __PAIR64__(v19, rhs.timescale);
          *&time1[16] = v20;
          v24 = v19 & 1;
          fpic_CreateAndPrimeItemTimer();
        }
      }
    }

    v2 = *(a1 + 64);
    v3 = *(a1 + 40);
  }

  if (v2 == *(v3 + 1216))
  {
    fpic_recordSeekIDAndShowInterstitialLayer(*(a1 + 48), *(a1 + 56), -1, *(a1 + 92) == 0, *(a1 + 92));
    v2 = *(a1 + 64);
    v3 = *(a1 + 40);
  }

  if (v2 == *(v3 + 896))
  {
    fpic_FinishInitiatedSeek();
    v2 = *(a1 + 64);
    v3 = *(a1 + 40);
  }

  if (v2 == *(v3 + 900))
  {
    if (dword_1EAF178D0)
    {
      LODWORD(lhs.value) = 0;
      LOBYTE(rhs.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = lhs.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, rhs.value))
      {
        v6 = value;
      }

      else
      {
        v6 = value & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = *(a1 + 48);
        v8 = *(*(a1 + 40) + 900);
        *v25 = 136315650;
        *&v25[4] = "fpic_HandleSeekDidFinishNotification_block_invoke";
        *&v25[12] = 2048;
        *&v25[14] = v7;
        *&v25[22] = 1024;
        *&v25[24] = v8;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(CMBaseObjectGetDerivedStorage() + 900) = 0;
  }
}

@end
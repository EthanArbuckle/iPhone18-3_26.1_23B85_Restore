@interface EnsurePrimaryWillResumeBuffering
@end

@implementation EnsurePrimaryWillResumeBuffering

void __fpic_EnsurePrimaryWillResumeBuffering_block_invoke(void *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  if ((*(a1[5] + 1052) & 1) == 0)
  {
    return;
  }

  v2 = a1 + 6;
  v3 = a1[6];
  v4 = a1 + 7;
  v5 = a1[7];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 656));
  if (Count < 1 || (__fpic_EnsurePrimaryWillResumeBuffering_block_invoke_cold_1(DerivedStorage, v3, v5, Count) & 1) != 0)
  {
    v8 = a1[5];
    if (*(v8 + 256) || *(v8 + 257))
    {
      return;
    }
  }

  v9 = *(CMBaseObjectGetDerivedStorage() + 1144);
  memset(&v39, 0, sizeof(v39));
  v10 = 1;
  fpic_CurrentResumptionOffset(*v2, 1, *v4, 1, 1, 0, &v39);
  *time1 = v39;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(time1, &time2))
  {
    v10 = (*(a1[5] + 1076) & 1) == 0;
  }

  v11 = CMBaseObjectGetDerivedStorage();
  if (!*(v11 + 1142) || !*(v11 + 1141))
  {
    if (v9)
    {
      v17 = 1;
    }

    else
    {
      v17 = v10;
    }

    if (v17 != 1)
    {
      return;
    }

    goto LABEL_19;
  }

  v12 = CMBaseObjectGetDerivedStorage();
  v13 = v12 + 264;
  if (!*(v12 + 296) && !*(v12 + 297))
  {
    v13 = v12 + 224;
  }

  v14 = *(v13 + 24);
  v15 = *(v13 + 32);
  v16 = *(v13 + 33);
  memset(&v38, 0, sizeof(v38));
  if (v15)
  {
    goto LABEL_14;
  }

  if (!v16)
  {
    v13 = MEMORY[0x1E6960C70];
LABEL_14:
    v38 = *v13;
    goto LABEL_27;
  }

  v21 = a1[5];
  v22 = *(v21 + 320);
  *time1 = *(v21 + 304);
  *&time1[16] = v22;
  v53 = *(v21 + 336);
  FigCreateTimeWithDateAndMoment(time1, &v38, v14);
  if ((v38.flags & 1) == 0 || (v39.flags & 1) == 0 || !*(a1[5] + 160))
  {
    goto LABEL_65;
  }

LABEL_27:
  memset(&v37, 0, sizeof(v37));
  *time1 = v38;
  time2 = v39;
  CMTimeAdd(&v37, time1, &time2);
  v23 = *(a1[5] + 160);
  v36 = v37;
  memset(&v43, 0, sizeof(v43));
  memset(&type, 0, sizeof(type));
  fpic_GetSeekableRange(v23, 1, &v43, &type);
  if ((v43.flags & 0x1D) == 1 && (type.flags & 0x1D) == 1 && (*time1 = v43, time2 = v36, CMTimeCompare(time1, &time2) <= 0))
  {
    *time1 = type;
    time2 = v36;
    v24 = CMTimeCompare(time1, &time2) >= 0;
  }

  else
  {
    v24 = 0;
  }

  if (dword_1EAF178D0 >= 7)
  {
    v41 = 0;
    v40 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v41;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v40))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      *time1 = v36;
      Seconds = CMTimeGetSeconds(time1);
      if (v24)
      {
        v29 = "";
      }

      else
      {
        v29 = " not";
      }

      *time1 = v43;
      v30 = CMTimeGetSeconds(time1);
      *time1 = type;
      v31 = CMTimeGetSeconds(time1);
      LODWORD(time2.value) = 136316418;
      *(&time2.value + 4) = "fpic_SeekableRangeIncludesTime";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = Seconds;
      HIWORD(time2.epoch) = 2048;
      v45 = v23;
      v46 = 2080;
      v47 = v29;
      v48 = 2048;
      v49 = v30;
      v50 = 2048;
      v51 = v31;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v24)
  {
    v32 = 1;
  }

  else
  {
LABEL_65:
    if ((*(CMBaseObjectGetDerivedStorage() + 568) & 1) == 0 || *(CMBaseObjectGetDerivedStorage() + 888))
    {
      return;
    }

    v32 = fpic_GetCurrentlyPlayingEvent() != 0;
  }

  if (v9)
  {
    v33 = 1;
  }

  else
  {
    v33 = v10;
  }

  if (v32 && (v33 & 1) != 0)
  {
LABEL_19:
    if (dword_1EAF178D0)
    {
      LODWORD(v43.value) = 0;
      LOBYTE(type.value) = 0;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = v43.value;
      if (os_log_type_enabled(v18, type.value))
      {
        v20 = value;
      }

      else
      {
        v20 = value & 0xFFFFFFFE;
      }

      if (v20)
      {
        v34 = a1[6];
        v35 = *(a1[5] + 160);
        LODWORD(time2.value) = 136315650;
        *(&time2.value + 4) = "fpic_EnsurePrimaryWillResumeBuffering_block_invoke";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v34;
        HIWORD(time2.epoch) = 2048;
        v45 = v35;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a1[5] + 160))
    {
      __fpic_EnsurePrimaryWillResumeBuffering_block_invoke_cold_2(v2, v9);
    }

    else
    {
      __fpic_EnsurePrimaryWillResumeBuffering_block_invoke_cold_3();
    }
  }
}

uint64_t __fpic_EnsurePrimaryWillResumeBuffering_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_433();
  v6 = 0;
  IsItemBufferedToEnd = 1;
  do
  {
    v8 = OUTLINED_FUNCTION_284();
    PerEventTrackingCount = fpic_GetPerEventTrackingCount(v8, v9);
    if (PerEventTrackingCount < 1)
    {
      v18 = 1;
      return v18 & 1;
    }

    v11 = PerEventTrackingCount;
    v12 = 1;
    do
    {
      v13 = OUTLINED_FUNCTION_284();
      PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(v13, v14, v15, @"PlaybackItem");
      v17 = fpic_UnwrapPlaybackItem(v4, PerAssetPerEventTrackedObject, a3);
      if (PerAssetPerEventTrackedObject != @"DummyItem")
      {
        if (v17)
        {
          IsItemBufferedToEnd = fpic_IsItemBufferedToEnd(v4, v17);
        }

        else
        {
          IsItemBufferedToEnd = 0;
        }
      }

      if (v12 >= v11)
      {
        break;
      }

      ++v12;
    }

    while (IsItemBufferedToEnd);
    ++v6;
  }

  while (v6 < a4 && IsItemBufferedToEnd);
  if (IsItemBufferedToEnd)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

  return v18 & 1;
}

void __fpic_EnsurePrimaryWillResumeBuffering_block_invoke_cold_2(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  fpic_UngatePrimaryBuffering();
  if (v2)
  {
    OUTLINED_FUNCTION_245_2();
    fpic_ApplyResumptionOffset();
    OUTLINED_FUNCTION_12_7(v3);
  }
}

@end
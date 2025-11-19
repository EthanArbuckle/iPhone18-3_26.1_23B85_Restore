@interface WillSeekTo
@end

@implementation WillSeekTo

void __fpic_WillSeekTo_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 1216) >= 1 && dword_1EAF178D0 != 0)
  {
    LODWORD(v50.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v4 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_124_0(v4))
    {
      v5 = *(a1 + 56);
      v6 = *(*(a1 + 32) + 1216);
      LODWORD(v54[0]) = 136315650;
      *(v54 + 4) = "fpic_WillSeekTo_block_invoke";
      WORD6(v54[0]) = 1024;
      *(v54 + 14) = v5;
      WORD1(v54[1]) = 1024;
      DWORD1(v54[1]) = v6;
      LODWORD(v47) = 24;
      v46 = v54;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v7)
    {
      *(DerivedStorage + 1216) = -1;
      v10 = OUTLINED_FUNCTION_151_2();
      fpic_flipInterstitialAndPrimaryVisibility(v8, 0, v7, v10);
    }

    return;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  v48 = *(a1 + 60);
  v13 = CMBaseObjectGetDerivedStorage();
  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  v15 = *(v13 + 208);
  if (v15)
  {
    Count = CFArrayGetCount(v15);
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_33:
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM();
    return;
  }

  Count = 0;
  if (!v14)
  {
    goto LABEL_33;
  }

LABEL_13:
  HIDWORD(v47) = v12;
  if (!*(v13 + 336))
  {
    goto LABEL_39;
  }

  if (!*(v13 + 337) || Count < 1)
  {
    goto LABEL_39;
  }

  v18 = 0;
  v19 = MEMORY[0x1E6960C70];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v13 + 208), v18);
    v21 = (*(v13 + 88))(v11, v14, ValueAtIndex);
    v55 = 0;
    memset(v54, 0, sizeof(v54));
    fpic_EventDateTimeMoment(v21, v54);
    memset(&type, 0, sizeof(type));
    if (v55)
    {
      *&type.value = v54[0];
      v22 = *&v54[1];
LABEL_21:
      type.epoch = v22;
      goto LABEL_24;
    }

    if (!BYTE1(v55))
    {
      *&type.value = *v19;
      v22 = *(v19 + 16);
      goto LABEL_21;
    }

    v23 = *(v13 + 320);
    time[0] = *(v13 + 304);
    time[1] = v23;
    v53 = *(v13 + 336);
    FigCreateTimeWithDateAndMoment(time, &type, *(&v54[1] + 1));
LABEL_24:
    v24 = FigPlayerInterstitialEventCueOnce(v21);
    Int32IfPresent = FigPlayerInterstitialEventCopyIdentifier(v21);
    v33 = Int32IfPresent;
    if (!v24 || (LODWORD(time[0]) = 0, Int32IfPresent = FigCFDictionaryGetInt32IfPresent(), SLODWORD(time[0]) <= 0))
    {
      OUTLINED_FUNCTION_243_2(Int32IfPresent, v26, v27, v28, v29, v30, v31, v32, v46, v47, v48);
      v50 = type;
      if (faqrp_timeDifferenceIsWithinTolerance(time, &v50, &kMomentsAreCloseThreshold))
      {
        break;
      }
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (Count == ++v18)
    {
      goto LABEL_39;
    }
  }

  v34 = HIDWORD(v47);
  if (dword_1EAF178D0)
  {
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (v18)
    {
      OUTLINED_FUNCTION_243_2(v36, v37, v38, v39, v40, v41, v42, v43, v46, v47, v48);
      Seconds = CMTimeGetSeconds(time);
      LODWORD(v50.value) = 136315650;
      *(&v50.value + 4) = "fpic_showInterstitialLayerIfTimeAtAdBoundaryOnQueue";
      LOWORD(v50.flags) = 2048;
      *(&v50.flags + 2) = Seconds;
      HIWORD(v50.epoch) = 1024;
      v51 = v34;
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414();
  }

  *(CMBaseObjectGetDerivedStorage() + 1216) = v34;
  v45 = OUTLINED_FUNCTION_151_2();
  fpic_flipInterstitialAndPrimaryVisibility(v11, 1, v14, v45);
LABEL_39:
  CFRelease(v14);
}

void __fpirc_WillSeekTo_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 8);
  v1 = *(a1 + 48);
  CMBaseObjectGetDerivedStorage();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  v3 = v2;
  cf[0] = 0;
  if (v1)
  {
    if (!v2)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v4 = OUTLINED_FUNCTION_284();
    if (v5(v4))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 32))
      {
        v6 = OUTLINED_FUNCTION_265();
        v8 = v7(v6);
        if (!v8)
        {
          cf[0] = 0;
        }
      }

      else
      {
        v8 = -12782;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    v8 = FigSignalErrorAtGM();
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  CFRelease(v3);
LABEL_9:
  OUTLINED_FUNCTION_2_4();
  *(v9 + 24) = v8;
  OUTLINED_FUNCTION_2_4();
}

@end
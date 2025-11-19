uint64_t bufferedAudioEngine_audioTimerPause()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 544))
  {
    *(result + 544) = 0;
    v1 = *(result + 536);

    return MEMORY[0x28213C6E0](v1);
  }

  return result;
}

uint64_t __bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_defaultForwardPruningMarginMs = result;
  return result;
}

uint64_t __bufferedAudioEngine_pruneMessageRingToCurrentRemoteMediaTimeWithForwardMargin_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3)
  {
    v3 = *(result + 32);
    if (((*(a3 + 8) - v3) & 0x8000) != 0)
    {
      *(a3 + 8) = v3;
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_shouldSkipTranscodeForStartup()
{
  if ((*(CMBaseObjectGetDerivedStorage() + 884) - 5) > 2)
  {
    return 0;
  }

  return bufferedAudioEngine_engineBufferedToStartWaterMark();
}

uint64_t bufferedAudioEngine_enqueueMessageForSending(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 616);
  if (v8)
  {
    v14 = *a3;
    v15 = *(a3 + 16);
    v12 = *a4;
    v13 = *(a4 + 16);
    v9 = APMessageRingBufferedEnqueueMessageForSending(v8, a2, &v14, &v12);
    if (v9)
    {
      v10 = v9;
      bufferedAudioEngine_enqueueMessageForSending_cold_1();
    }

    else if (*(DerivedStorage + 653) || !bufferedAudioEngine_engineBufferedToStartWaterMark())
    {
      return 0;
    }

    else
    {
      CMSetAttachment(a2, *MEMORY[0x277CEA350], *MEMORY[0x277CBED28], 1u);
      v10 = 0;
      *(DerivedStorage + 653) = 1;
    }
  }

  else
  {
    bufferedAudioEngine_enqueueMessageForSending_cold_2();
    return 4294895205;
  }

  return v10;
}

uint64_t bufferedAudioEngine_createAndEnqueueEmptyMessageForSending(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  blockBufferOut = 0;
  v17 = 0;
  v16 = **&MEMORY[0x277CC0898];
  if (*(DerivedStorage + 616))
  {
    v5 = DerivedStorage;
    v6 = CMBlockBufferCreateEmpty(*MEMORY[0x277CBECE8], 0, 0, &blockBufferOut);
    if (v6)
    {
      value_low = v6;
      bufferedAudioEngine_createAndEnqueueEmptyMessageForSending_cold_1();
    }

    else
    {
      v7 = *(v5 + 616);
      EncodeMessageBackingSize = bufferedAudioEngine_getEncodeMessageBackingSize(a1, 0);
      NextFreeBacking = APMessageRingBufferedGetNextFreeBacking(v7, EncodeMessageBackingSize);
      if (NextFreeBacking)
      {
        v10 = NextFreeBacking;
        v16 = *(v5 + 756);
        APSAudioFormatDescriptionGetSampleRate();
        v15 = v16;
        CMTimeConvertScale(&v16, &v15, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v15 = v16;
        v12 = bufferedAudioEngine_encodeMessage(a1, v10, &v15, a2, blockBufferOut, &v17);
        if (v12)
        {
          value_low = v12;
          bufferedAudioEngine_createAndEnqueueEmptyMessageForSending_cold_2();
        }

        else
        {
          v15 = v16;
          value_low = bufferedAudioEngine_enqueueMessageForSending(a1, v17, &v15, MEMORY[0x277CC08F0]);
          if (value_low)
          {
            bufferedAudioEngine_createAndEnqueueEmptyMessageForSending_cold_3();
          }
        }
      }

      else
      {
        bufferedAudioEngine_createAndEnqueueEmptyMessageForSending_cold_4();
        value_low = 4294895201;
      }
    }
  }

  else
  {
    bufferedAudioEngine_createAndEnqueueEmptyMessageForSending_cold_5(&v15);
    value_low = LODWORD(v15.value);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return value_low;
}

uint64_t bufferedAudioEngine_enqueueMessagesFromBufferQueue(const void *a1, char a2, _DWORD *a3)
{
  v130 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v104 = 0u;
  v102 = 0u;
  memset(v103, 0, sizeof(v103));
  v101 = 0u;
  cf = 0;
  v7 = MEMORY[0x277CC0898];
  v120 = *MEMORY[0x277CC0898];
  v121 = *(MEMORY[0x277CC0898] + 8);
  v8 = *(MEMORY[0x277CC0898] + 16);
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  memset(v96, 0, sizeof(v96));
  v94 = 0;
  sizeOut = 0;
  v118 = v120;
  v119 = v121;
  v116 = v120;
  v117 = v121;
  v114 = v120;
  v115 = v121;
  v112 = v120;
  v113 = v121;
  v9 = *MEMORY[0x277CC0898];
  *&v93.value = *MEMORY[0x277CC0898];
  v93.epoch = v8;
  v110 = v120;
  v111 = v121;
  if (!*(DerivedStorage + 616))
  {
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_18(time);
    v25 = 0;
    v26 = 0;
    v14 = 0;
    v12 = 0;
    v28 = *time;
    goto LABEL_78;
  }

  v10 = DerivedStorage;
  v92 = v9;
  v11 = bufferedAudioEngine_processAndRetainSBufFromBufferQueue(a1, 0);
  if (!v11)
  {
    ++*(v10 + 980);
    if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_17();
    }

    v25 = 0;
    v26 = 0;
    v14 = 0;
    v12 = 0;
    goto LABEL_77;
  }

  v12 = v11;
  v13 = *(v7 + 12);
  if ((*(v10 + 1268) & 1) == 0)
  {
    v91 = a2;
    v90 = *(v7 + 12);
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v27 = CMBaseObjectGetDerivedStorage();
  *time = v92;
  *&time[16] = v8;
  if (CMGetAttachment(v12, *MEMORY[0x277CD62A8], 0))
  {
    *(v27 + 1256) = v92;
    *(v27 + 1272) = v8;
    *(v27 + 708) = v92;
    *(v27 + 724) = v8;
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_1();
    }

LABEL_28:
    v25 = 0;
    v26 = 0;
    v14 = 0;
    v28 = 0;
    *&v103[0] = 0;
    goto LABEL_78;
  }

  v91 = a2;
  CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v12);
  value = lhs.value;
  flags = lhs.flags;
  timescale = lhs.timescale;
  if (lhs.flags)
  {
    epoch = lhs.epoch;
    lhs = *(v27 + 780);
    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    CMTimeAdd(time, &lhs, &rhs);
    if (*(v27 + 744))
    {
      rhs = *time;
      __str = *(v27 + 732);
      CMTimeSubtract(&lhs, &rhs, &__str);
      *time = lhs;
    }

    v54 = (v27 + 1256);
    lhs.value = value;
    lhs.timescale = timescale;
    lhs.flags = flags;
    lhs.epoch = epoch;
    rhs = *(v27 + 1256);
    if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
    {
      if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        lhs.value = value;
        lhs.timescale = timescale;
        lhs.flags = flags;
        lhs.epoch = epoch;
        CMTimeGetSeconds(&lhs);
        lhs = *time;
        CMTimeGetSeconds(&lhs);
        *&lhs.value = *v54;
        lhs.epoch = *(v27 + 1272);
        CMTimeGetSeconds(&lhs);
        LogPrintF();
      }

      goto LABEL_28;
    }

    if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = epoch;
      CMTimeGetSeconds(&lhs);
      lhs = *time;
      CMTimeGetSeconds(&lhs);
      *&lhs.value = *v54;
      lhs.epoch = *(v27 + 1272);
      CMTimeGetSeconds(&lhs);
      LogPrintF();
    }
  }

  v90 = v13;
  CMSampleBufferGetOutputPresentationTimeStamp(time, v12);
  v116 = *time;
  v30 = *&time[12];
  v117 = *&time[8];
  v31 = *&time[16];
  CMSampleBufferGetOutputDuration(time, v12);
  v112 = *time;
  v32 = *&time[12];
  v113 = *&time[8];
  v33 = *&time[16];
  if (v30)
  {
    lhs.value = v116;
    lhs.timescale = v117;
    lhs.flags = v30;
    lhs.epoch = v31;
    rhs.value = v112;
    rhs.timescale = v113;
    rhs.flags = *&time[12];
    rhs.epoch = *&time[16];
    CMTimeAdd(time, &lhs, &rhs);
    v114 = *time;
    v34 = *&time[12];
    v115 = *&time[8];
    v87 = *&time[16];
  }

  else
  {
    v114 = v116;
    v115 = v117;
    v34 = v30;
    v87 = v31;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    *time = v116;
    *&time[8] = __PAIR64__(v30, v117);
    *&time[16] = v31;
    CMTimeGetSeconds(time);
    *time = v114;
    *&time[8] = __PAIR64__(v34, v115);
    *&time[16] = v87;
    CMTimeGetSeconds(time);
    *time = v112;
    *&time[8] = __PAIR64__(v32, v113);
    *&time[16] = v33;
    CMTimeGetSeconds(time);
    LogPrintF();
  }

  v14 = 0;
  if (v30 & 1) != 0 && (v34)
  {
    v55 = (v10 + 1256);
    *time = v116;
    *&time[8] = __PAIR64__(v30, v117);
    *&time[16] = v31;
    lhs = *(v10 + 1256);
    if ((CMTimeCompare(time, &lhs) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    *time = *v55;
    *&time[16] = *(v10 + 1272);
    lhs.value = v114;
    lhs.timescale = v115;
    lhs.flags = v34;
    lhs.epoch = v87;
    if ((CMTimeCompare(time, &lhs) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    *time = v114;
    *&time[8] = __PAIR64__(v34, v115);
    *&time[16] = v87;
    *&lhs.value = *v55;
    lhs.epoch = *(v10 + 1272);
    CMTimeSubtract(&v93, time, &lhs);
    v56 = *MEMORY[0x277CC0758];
    v57 = CMGetAttachment(v12, *MEMORY[0x277CC0758], 0);
    CMTimeMakeFromDictionary(time, v57);
    v110 = *time;
    v111 = *&time[8];
    if (time[12])
    {
      APSAudioFormatDescriptionGetSampleRate();
      lhs.value = v120;
      lhs.timescale = v121;
      lhs.flags = v90;
      lhs.epoch = v8;
      CMTimeConvertScale(time, &lhs, v58, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v111 = *&time[8];
      v110 = *time;
      lhs = *time;
      rhs = v93;
      CMTimeAdd(time, &lhs, &rhs);
      v93 = *time;
    }

    v59 = *MEMORY[0x277CBECE8];
    *time = v93;
    v14 = CMTimeCopyAsDictionary(time, v59);
    CMSetAttachment(v12, v56, v14, 1u);
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_2();
    }
  }

LABEL_6:
  v15 = CMGetAttachment(v12, *MEMORY[0x277CC1AB0], 0);
  v16 = *MEMORY[0x277CBED28];
  if (v15 == *MEMORY[0x277CBED28])
  {
    lhs = *(v10 + 756);
    rhs = *(v10 + 780);
    CMTimeSubtract(time, &lhs, &rhs);
    *(v10 + 1080) = *time;
    *(v10 + 1096) = *&time[16];
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_3();
    }
  }

  v17 = CMBaseObjectGetDerivedStorage();
  if (*(v17 + 616))
  {
    v18 = v17;
    v19 = *MEMORY[0x277CD62C0];
    v20 = CMGetAttachment(v12, *MEMORY[0x277CD62C0], 0);
    if (v20)
    {
      CFArrayAppendValue(*(v18 + 1248), v20);
      CMRemoveAttachment(v12, v19);
    }
  }

  else
  {
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_4();
  }

  v21 = CMGetAttachment(v12, *MEMORY[0x277CC1AA8], 0);
  if (v21)
  {
    v22 = v21;
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_5();
    }

    v23 = CMBaseObjectGetDerivedStorage();
    if (FigCFEqual())
    {
      goto LABEL_35;
    }

    if (CFDictionaryContainsKey(v22, *MEMORY[0x277CEFE08]))
    {
      v24 = 1464;
    }

    else
    {
      if (!CFDictionaryContainsKey(v22, *MEMORY[0x277CEFE18]))
      {
        goto LABEL_35;
      }

      v24 = 1472;
    }

    ++*(v23 + v24);
LABEL_35:
    v35 = *(v10 + 1232);
    *(v10 + 1232) = v22;
    CFRetain(v22);
    if (v35)
    {
      CFRelease(v35);
    }
  }

  v36 = CMGetAttachment(v12, *MEMORY[0x277CD62B0], 0);
  v37 = v36;
  if (v36)
  {
    v38 = *(v10 + 1024);
    *(v10 + 1024) = v36;
    CFRetain(v36);
    if (v38)
    {
      CFRelease(v38);
    }
  }

  v39 = CMBaseObjectGetDerivedStorage();
  value = 0;
  v128 = 0u;
  v129 = 0u;
  memset(time, 0, sizeof(time));
  lhs.value = 0;
  *&lhs.timescale = 0;
  *&rhs.timescale = 0;
  rhs.value = 0;
  *&__str.timescale = 0;
  __str.value = 0;
  if (v37)
  {
    v40 = v39;
    if (CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout())
    {
      value = CMAudioFormatDescriptionGetStreamBasicDescription(v37);
      if (!value)
      {
        goto LABEL_61;
      }
    }

    else if (!value)
    {
      goto LABEL_61;
    }

    FourCharCodeToCString();
    __strlcat_chk();
    snprintf(&lhs, 0x10uLL, "%llu", *value);
    __strlcat_chk();
    __strlcat_chk();
    v41 = value;
    v42 = *(value + 8);
    if (v42 > 1902928226)
    {
      if (v42 == 2053923171)
      {
        goto LABEL_51;
      }

      v43 = 1902928227;
    }

    else
    {
      if (v42 == 1634492771)
      {
        goto LABEL_51;
      }

      v43 = 1668047203;
    }

    if (v42 != v43)
    {
LABEL_55:
      snprintf(&rhs, 0x10uLL, "%u", *(v41 + 28));
      __strlcat_chk();
      v46 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], time, 0x8000100u);
      v47 = v46;
      v48 = *(v40 + 1456);
      *(v40 + 1456) = v46;
      if (v46)
      {
        CFRetain(v46);
      }

      if (v48)
      {
        CFRelease(v48);
      }

      if (v47)
      {
        CFRelease(v47);
      }

      goto LABEL_61;
    }

LABEL_51:
    v44 = *(value + 12) - 1;
    if (v44 > 3)
    {
      v45 = 0;
    }

    else
    {
      v45 = dword_222298530[v44];
    }

    snprintf(&__str, 0x10uLL, "%u", v45);
    __strlcat_chk();
    __strlcat_chk();
    v41 = value;
    goto LABEL_55;
  }

LABEL_61:
  if (CMGetAttachment(v12, *MEMORY[0x277CC0750], 0))
  {
    *&v97 = FigCFNumberGetUInt64();
    BYTE8(v97) = 1;
    bufferedAudioEngine_createAndEnqueueEmptyMessageForSending(a1, v96);
    v25 = 0;
    v26 = 0;
    v28 = 0;
    *&v103[0] = 1;
    goto LABEL_78;
  }

  if (!CMSampleBufferGetNumSamples(v12))
  {
    goto LABEL_76;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(v12);
  v50 = *MEMORY[0x277CBECE8];
  v51 = APSAudioFormatDescriptionCreateWithCMFormatDescription();
  if (v51)
  {
    v28 = v51;
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_6();
LABEL_235:
    v25 = 0;
    v26 = 0;
    goto LABEL_78;
  }

  allocator = v50;
  v88 = (v10 + 1024);
  if (APSAudioFormatDescriptionCreateWithCMFormatDescription() && gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_7();
  }

  APSAudioFormatDescriptionGetASBD();
  if (!APSAudioFormatDescriptionListContainsFormat())
  {
    *time = 0;
    if (gLogCategory_APAudioEngineBuffered < 91)
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
      {
        bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_15(&v107);
      }

      *time = 0;
      if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_16(v10 + 1000);
      }
    }

LABEL_76:
    v25 = 0;
    v26 = 0;
LABEL_77:
    v28 = 0;
    goto LABEL_78;
  }

  if (!FigCFEqual())
  {
    v60 = *(v10 + 1008);
    v61 = v107;
    *(v10 + 1008) = v107;
    if (v61)
    {
      CFRetain(v61);
    }

    if (v60)
    {
      CFRelease(v60);
    }

    *time = 0;
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      APSAudioFormatDescriptionCopyDebugString();
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LogPrintF();
      }

      if (*time)
      {
        CFRelease(*time);
      }
    }

    bufferedAudioEngine_updateMaxAudioBurstIfNecessary(a1);
  }

  v62 = CMGetAttachment(v12, *MEMORY[0x277CD62B8], 0);
  if (v62 && CFBooleanGetValue(v62))
  {
    v67 = *v88;
    *v88 = FormatDescription;
    if (FormatDescription)
    {
      CFRetain(FormatDescription);
    }

    if (v67)
    {
      CFRelease(v67);
    }
  }

  v63 = APSBadgingFormatInfoCopyBadgeType();
  if (v63)
  {
    v28 = v63;
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_8();
    goto LABEL_235;
  }

  if (FigCFEqual())
  {
    v26 = 0;
    v66 = allocator;
  }

  else
  {
    v64 = *(v10 + 1032);
    v65 = v94;
    *(v10 + 1032) = v94;
    v66 = allocator;
    if (v65)
    {
      CFRetain(v65);
    }

    if (v64)
    {
      CFRelease(v64);
    }

    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *time = *(v10 + 756);
      *&time[16] = *(v10 + 772);
      CMTimeGetSeconds(time);
      LogPrintF();
      v66 = allocator;
    }

    keys = @"ContentType";
    values = v94;
    v26 = CFDictionaryCreate(v66, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v26)
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_14();
      v25 = 0;
      v28 = 4294951816;
      goto LABEL_78;
    }

    *time = *(v10 + 756);
    *&time[16] = *(v10 + 772);
    APSTimedInfoManagerAddTimedInfo();
  }

  MagicCookie = CMAudioFormatDescriptionGetMagicCookie(FormatDescription, &sizeOut);
  if (MagicCookie)
  {
    v25 = CFDataCreate(v66, MagicCookie, sizeOut);
    if (!v25)
    {
      bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_9();
      goto LABEL_77;
    }
  }

  else
  {
    v25 = 0;
  }

  if (FigCFEqual())
  {
    goto LABEL_190;
  }

  v69 = *(v10 + 1048);
  *(v10 + 1048) = v25;
  if (v25)
  {
    CFRetain(v25);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  *(v10 + 1064) = 0;
  bufferedAudioEngine_setMagicCookieForAllHoses();
  if (v70)
  {
    v28 = v70;
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_10();
  }

  else
  {
LABEL_190:
    Decryptor = FigSampleBufferGetDecryptor();
    if (Decryptor != *(v10 + 1224))
    {
      *(v10 + 1224) = Decryptor;
      if (Decryptor)
      {
        if (CMBaseObjectCopyProperty(Decryptor, *MEMORY[0x277CC0980], allocator, &cf) || cf != v16)
        {
          if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_11();
          }

          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
        }

        else
        {
          v72 = bufferedAudioEngine_setCryptorForAllHoses(a1, *(v10 + 1224));
          if (v72)
          {
            v28 = v72;
            bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_12();
            goto LABEL_78;
          }
        }
      }
    }

    *(v103 + 8) = v92;
    *(&v103[1] + 1) = v8;
    v73 = CMGetAttachment(v12, *MEMORY[0x277CC0760], 0);
    if (v73)
    {
      CMTimeMakeFromDictionary(time, v73);
      v120 = *time;
      v74 = *&time[12];
      v121 = *&time[8];
      if (time[12])
      {
        v75 = *&time[16];
        APSAudioFormatDescriptionGetSampleRate();
        lhs.value = v120;
        lhs.timescale = v121;
        lhs.flags = v74;
        lhs.epoch = v75;
        CMTimeConvertScale(time, &lhs, v76, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v120 = *time;
        v77 = *&time[12];
        v121 = *&time[8];
        v78 = *&time[16];
        CMSampleBufferGetPresentationTimeStamp(time, v12);
        lhs.value = v120;
        lhs.timescale = v121;
        lhs.flags = v77;
        v89 = v77;
        lhs.epoch = v78;
        CMTimeAdd((v103 + 8), time, &lhs);
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *time = v120;
          *&time[8] = __PAIR64__(v77, v121);
          *&time[16] = v78;
          CMTimeGetSeconds(time);
          CMSampleBufferGetPresentationTimeStamp(time, v12);
          CMTimeGetSeconds(time);
          CMSampleBufferGetOutputPresentationTimeStamp(time, v12);
          CMTimeGetSeconds(time);
          CMSampleBufferGetDuration(time, v12);
          CMTimeGetSeconds(time);
          CMSampleBufferGetOutputDuration(time, v12);
          CMTimeGetSeconds(time);
          *time = *(v103 + 8);
          *&time[16] = *(&v103[1] + 1);
          CMTimeGetSeconds(time);
          LogPrintF();
        }

        v79 = (v10 + 756);
        lhs = *(v10 + 756);
        rhs.value = v120;
        rhs.timescale = v121;
        rhs.flags = v89;
        rhs.epoch = v78;
        CMTimeSubtract(time, &lhs, &rhs);
        *(v10 + 756) = *time;
        *(v10 + 772) = *&time[16];
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *&lhs.value = *v79;
          lhs.epoch = *(v10 + 772);
          rhs.value = v120;
          rhs.timescale = v121;
          rhs.flags = v89;
          rhs.epoch = v78;
          CMTimeAdd(time, &lhs, &rhs);
          CMTimeGetSeconds(time);
          *time = *v79;
          *&time[16] = *(v10 + 772);
          CMTimeGetSeconds(time);
          LogPrintF();
        }
      }
    }

    v104 = v92;
    v105 = v8;
    v80 = CMGetAttachment(v12, *MEMORY[0x277CC0758], 0);
    if (v80)
    {
      CMTimeMakeFromDictionary(time, v80);
      v120 = *time;
      v82 = *&time[12];
      v121 = *&time[8];
      v81 = v90;
      if (time[12])
      {
        v83 = *&time[16];
        APSAudioFormatDescriptionGetSampleRate();
        lhs.value = v120;
        lhs.timescale = v121;
        lhs.flags = v82;
        lhs.epoch = v83;
        CMTimeConvertScale(time, &lhs, v84, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v120 = *time;
        v81 = *&time[12];
        v121 = *&time[8];
        v8 = *&time[16];
        CMSampleBufferGetPresentationTimeStamp(&lhs, v12);
        CMSampleBufferGetDuration(&rhs, v12);
        CMTimeAdd(time, &lhs, &rhs);
        v104 = *time;
        v105 = *&time[16];
        lhs = *time;
        rhs.value = v120;
        rhs.timescale = v121;
        rhs.flags = v81;
        rhs.epoch = v8;
        CMTimeSubtract(time, &lhs, &rhs);
        v104 = *time;
        v105 = *&time[16];
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *time = v120;
          *&time[8] = __PAIR64__(v81, v121);
          *&time[16] = v8;
          CMTimeGetSeconds(time);
          *time = v104;
          *&time[16] = v105;
          CMTimeGetSeconds(time);
          CMSampleBufferGetPresentationTimeStamp(time, v12);
          CMTimeGetSeconds(time);
          CMSampleBufferGetDuration(time, v12);
          CMTimeGetSeconds(time);
          LogPrintF();
        }

        v118 = v120;
        v119 = v121;
      }
    }

    else
    {
      v81 = v90;
    }

    *&v101 = a1;
    *(&v101 + 1) = v107;
    *&v102 = v106;
    BYTE8(v102) = v91;
    *&v103[0] = 0;
    bufferedAudioEngine_recordPreparedAudioDataAndAudioFormatDuration(a1, v12);
    bufferedAudioEngine_adjustRemoteMediaTimeForDiscontinuity();
    v85 = bufferedAudioEngine_processAndEnqueueSampleBuffer(v12, &v101);
    if (!v85)
    {
      if (v81)
      {
        lhs = *(v10 + 756);
        rhs.value = v118;
        rhs.timescale = v119;
        rhs.flags = v81;
        rhs.epoch = v8;
        CMTimeSubtract(time, &lhs, &rhs);
        *(v10 + 756) = *time;
        *(v10 + 772) = *&time[16];
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *time = *(v10 + 756);
          *&time[16] = *(v10 + 772);
          CMTimeGetSeconds(time);
          *time = v118;
          *&time[8] = __PAIR64__(v81, v119);
          *&time[16] = v8;
          CMTimeGetSeconds(time);
          LogPrintF();
        }
      }

      goto LABEL_77;
    }

    v28 = v85;
    bufferedAudioEngine_enqueueMessagesFromBufferQueue_cold_13();
  }

LABEL_78:
  if (a3)
  {
    *a3 = v103[0];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v107)
  {
    CFRelease(v107);
  }

  if (v106)
  {
    CFRelease(v106);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v28;
}

double bufferedAudioEngine_getStartUpDelay@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (bufferedAudioEngine_getStartUpDelay_onceToken != -1)
  {
    bufferedAudioEngine_getStartUpDelay_cold_1();
  }

  v7 = bufferedAudioEngine_getStartUpDelay_defaultsWriteStartupDelayMS;
  if (bufferedAudioEngine_getStartUpDelay_defaultsWriteStartupDelayMS != -1234)
  {
    goto LABEL_6;
  }

  if (!*(DerivedStorage + 1800))
  {
    if (bufferedAudioEngine_isSpeakerPlayingBySelf())
    {
      v7 = 200;
    }

    else if (a2)
    {
      if (*(DerivedStorage + 437))
      {
        v7 = 600;
      }

      else
      {
        v7 = 750;
      }
    }

    else if (*(DerivedStorage + 437))
    {
      v7 = 300;
    }

    else
    {
      v7 = 400;
    }

LABEL_6:
    CMTimeMake(&v10, v7, 1000);
    *bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay = *&v10.value;
    epoch = v10.epoch;
    goto LABEL_7;
  }

  *bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay = *MEMORY[0x277CC08F0];
  epoch = *(MEMORY[0x277CC08F0] + 16);
LABEL_7:
  *&bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay[16] = epoch;
  if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_getStartUpDelay_cold_2(a1);
  }

  result = *bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay;
  *a3 = *bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay;
  *(a3 + 16) = *&bufferedAudioEngine_getStartUpDelay_bufferedStartUpDelay[16];
  return result;
}

uint64_t __bufferedAudioEngine_getStartUpDelay_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  bufferedAudioEngine_getStartUpDelay_defaultsWriteStartupDelayMS = result;
  return result;
}

uint64_t bufferedAudioEngine_getEncodeMessageBackingSize(uint64_t a1, uint64_t a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 576))
  {
    APSAPAPBBufEncodeGetMinBackingSize();
    return 0;
  }

  else
  {
    v3 = a2 + 11;
    v4 = *(CMBaseObjectGetDerivedStorage() + 608);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v5)
      {
        v6 = v5(v4);
      }

      else
      {
        v6 = 0;
      }

      v3 += v6;
    }
  }

  return v3;
}

uint64_t bufferedAudioEngine_encodeMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, OpaqueCMBlockBuffer *a5, CMBlockBufferRef *a6)
{
  if (*(CMBaseObjectGetDerivedStorage() + 576))
  {
    return APSAPAPBBufEncode();
  }

  v12 = *(a3 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v38 = 0;
  v37 = 0;
  DataLength = CMBlockBufferGetDataLength(a5);
  theBuffer = 0;
  v15 = *(DerivedStorage + 608);
  if (v15)
  {
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v16)
    {
      v15 = v16(v15);
    }

    else
    {
      v15 = 0;
    }
  }

  v34 = 0;
  v35 = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v31 = 0;
  if (*DerivedStorage)
  {
    goto LABEL_37;
  }

  if (v12 == bufferedAudioEngine_getSampleRateFromTransportAudioFormat())
  {
    if (a4 && *(a4 + 16) && gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_encodeMessage_cold_2();
    }

    v17 = APSTransportMessageSetBufferedAudioDataHeader();
    if (v17)
    {
      v10 = v17;
      bufferedAudioEngine_encodeMessage_cold_3();
    }

    else
    {
      BufferedAudioDataPointer = APSTransportMessageGetBufferedAudioDataPointer();
      if (BufferedAudioDataPointer)
      {
        v10 = BufferedAudioDataPointer;
        bufferedAudioEngine_encodeMessage_cold_4();
      }

      else if (v37 < v15 + DataLength)
      {
        bufferedAudioEngine_encodeMessage_cold_11();
        v10 = 4294960553;
      }

      else if (DataLength && (v19 = CMBlockBufferCopyDataBytes(a5, 0, DataLength, v38), v19))
      {
        v10 = v19;
        bufferedAudioEngine_encodeMessage_cold_5();
      }

      else
      {
        ReferencingBBufWithAudioDataLength = APSTransportMessageBufferedCreateReferencingBBufWithAudioDataLength();
        if (ReferencingBBufWithAudioDataLength)
        {
          v10 = ReferencingBBufWithAudioDataLength;
          bufferedAudioEngine_encodeMessage_cold_6();
        }

        else
        {
          if (!*(DerivedStorage + 608))
          {
            goto LABEL_33;
          }

          BufferedAudioAADPointer = APSTransportMessageGetBufferedAudioAADPointer();
          if (BufferedAudioAADPointer)
          {
            v10 = BufferedAudioAADPointer;
            bufferedAudioEngine_encodeMessage_cold_7();
          }

          else
          {
            if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
            {
              bufferedAudioEngine_encodeMessage_cold_8();
            }

            DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0xBuLL, &lengthAtOffsetOut, 0, &dataPointerOut);
            if (DataPointer)
            {
              v10 = DataPointer;
              bufferedAudioEngine_encodeMessage_cold_9();
            }

            else
            {
              if (!v15)
              {
                v24 = 0;
LABEL_31:
                v25 = *(DerivedStorage + 608);
                v27 = v34;
                v26 = v35;
                v28 = dataPointerOut;
                v29 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                if (v29)
                {
                  v30 = v29(v25, v26, v27, v28, DataLength, v28, DataLength, v24, v15);
                  if (!v30)
                  {
LABEL_33:
                    if (a6)
                    {
                      v10 = 0;
                      *a6 = theBuffer;
                      return v10;
                    }

LABEL_37:
                    v10 = 0;
                    goto LABEL_38;
                  }

                  v10 = v30;
                }

                else
                {
                  v10 = 4294954514;
                }

                APSLogErrorAt();
                goto LABEL_38;
              }

              v23 = CMBlockBufferGetDataPointer(theBuffer, DataLength + 11, 0, 0, &v31);
              if (!v23)
              {
                v24 = v31;
                goto LABEL_31;
              }

              v10 = v23;
              bufferedAudioEngine_encodeMessage_cold_10();
            }
          }
        }
      }
    }
  }

  else
  {
    bufferedAudioEngine_encodeMessage_cold_1();
    v10 = 4294960591;
  }

LABEL_38:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v10;
}

uint64_t bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, void *a3)
{
  v6 = a1(1, 8, a2);
  if (v6)
  {
    v24 = v6;
    bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_1();
  }

  else
  {
    v7 = a1(2, 8, a2);
    if (v7)
    {
      v24 = v7;
      bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_2();
    }

    else
    {
      v8 = a1(20, 8, a2);
      if (v8)
      {
        v24 = v8;
        bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_3();
      }

      else
      {
        v9 = a1(3, 8, a2);
        if (v9)
        {
          v24 = v9;
          bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_4();
        }

        else
        {
          v10 = a1(17, 8, a2);
          if (v10)
          {
            v24 = v10;
            bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_5();
          }

          else
          {
            v11 = a1(18, 8, a2);
            if (v11)
            {
              v24 = v11;
              bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_6();
            }

            else
            {
              v12 = a1(4, 12, a2);
              if (v12)
              {
                v24 = v12;
                bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_7();
              }

              else
              {
                v13 = a1(5, 12, a2);
                if (v13)
                {
                  v24 = v13;
                  bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_8();
                }

                else
                {
                  v14 = a1(13, 12, a2);
                  if (v14)
                  {
                    v24 = v14;
                    bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_9();
                  }

                  else
                  {
                    v15 = a1(12, 8, a2);
                    if (v15)
                    {
                      v24 = v15;
                      bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_10();
                    }

                    else
                    {
                      v16 = a1(11, 12, a2);
                      if (v16)
                      {
                        v24 = v16;
                        bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_11();
                      }

                      else
                      {
                        v17 = a1(7, 20 * *a3, a2);
                        if (v17)
                        {
                          v24 = v17;
                          bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_12();
                        }

                        else
                        {
                          v18 = a1(8, 4, a2);
                          if (v18)
                          {
                            v24 = v18;
                            bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_13();
                          }

                          else
                          {
                            v19 = a1(14, 4, a2);
                            if (v19)
                            {
                              v24 = v19;
                              bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_14();
                            }

                            else
                            {
                              v20 = a1(15, 4, a2);
                              if (v20)
                              {
                                v24 = v20;
                                bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_15();
                              }

                              else
                              {
                                v21 = a1(16, 4, a2);
                                if (v21)
                                {
                                  v24 = v21;
                                  bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_16();
                                }

                                else
                                {
                                  v22 = a1(9, 16, a2);
                                  if (v22)
                                  {
                                    v24 = v22;
                                    bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_17();
                                  }

                                  else
                                  {
                                    v23 = a1(10, 8, a2);
                                    if (v23)
                                    {
                                      v24 = v23;
                                      bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_18();
                                    }

                                    else
                                    {
                                      v24 = a1(19, 20, a2);
                                      if (v24)
                                      {
                                        bufferedAudioEngine_encodeMaxExtensionItemSizesAPAP_cold_19();
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v24;
}

opaqueCMSampleBuffer *bufferedAudioEngine_processAndRetainSBufFromBufferQueue(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 1192));
  v6 = v5;
  if (v5)
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&time1, v5);
    value = time1.value;
    flags = time1.flags;
    timescale = time1.timescale;
    epoch = time1.epoch;
    CMSampleBufferGetOutputDuration(&time1, v6);
    v17 = time1.value;
    v18 = time1.timescale;
    if (flags & 1) != 0 && (*(DerivedStorage + 720))
    {
      time1.value = v17;
      time1.timescale = v18;
      time2 = **&MEMORY[0x277CC08F0];
      v9 = CMTimeCompare(&time1, &time2);
      if (!a2 && v9 >= 1)
      {
        v10 = (DerivedStorage + 708);
        time1.value = value;
        time1.timescale = timescale;
        time1.flags = flags;
        time1.epoch = epoch;
        time2 = *(DerivedStorage + 708);
        if (CMTimeCompare(&time1, &time2))
        {
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *&time1.value = *v10;
            time1.epoch = *(DerivedStorage + 724);
            CMTimeGetSeconds(&time1);
            time1.value = value;
            time1.timescale = timescale;
            time1.flags = flags;
            time1.epoch = epoch;
            CMTimeGetSeconds(&time1);
            LogPrintF();
          }

          v12 = *MEMORY[0x277CBECE8];
          time1.value = value;
          time1.timescale = timescale;
          time1.flags = flags;
          time1.epoch = epoch;
          v11 = CMTimeCopyAsDictionary(&time1, v12);
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
        }

        else
        {
          v11 = 0;
        }

        time1.value = value;
        time1.timescale = timescale;
        time1.flags = flags;
        time1.epoch = epoch;
        *&time2.value = *v10;
        time2.epoch = *(DerivedStorage + 724);
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *&time1.value = *v10;
            time1.epoch = *(DerivedStorage + 724);
            CMTimeGetSeconds(&time1);
            time1.value = value;
            time1.timescale = timescale;
            time1.flags = flags;
            time1.epoch = epoch;
            CMTimeGetSeconds(&time1);
            LogPrintF();
          }

          v13 = MEMORY[0x277CC0898];
          *v10 = *MEMORY[0x277CC0898];
          *(DerivedStorage + 724) = *(v13 + 16);
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  return v6;
}

uint64_t bufferedAudioEngine_processAndEnqueueSampleBuffer(opaqueCMSampleBuffer *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  packetDescriptionsSizeOut = 0;
  packetDescriptionsPointerOut = 0;
  blockBufferOut = 0;
  v2 = MEMORY[0x277CC0898];
  memset(&v32, 0, sizeof(v32));
  value = *MEMORY[0x277CC0898];
  timescale = *(MEMORY[0x277CC0898] + 8);
  sbuf = 0;
  if (!a2)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_12();
LABEL_40:
    v27 = 4294954516;
    goto LABEL_27;
  }

  v4 = a1;
  if (CMSampleBufferGetSampleSize(a1, 0))
  {
    v5 = 0;
    goto LABEL_23;
  }

  NumSamples = CMSampleBufferGetNumSamples(v4);
  if (CMSampleBufferGetAudioStreamPacketDescriptionsPtr(v4, &packetDescriptionsPointerOut, &packetDescriptionsSizeOut) || !packetDescriptionsSizeOut)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_11();
    goto LABEL_40;
  }

  if (NumSamples != packetDescriptionsSizeOut >> 4)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_1();
    goto LABEL_40;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(v4);
  if (!DataBuffer)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_10();
    goto LABEL_40;
  }

  v8 = DataBuffer;
  v9 = CMSampleBufferGetFormatDescription(v4);
  if (!v9)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_9();
    goto LABEL_40;
  }

  v10 = v9;
  v11 = *MEMORY[0x277CBECE8];
  v12 = MEMORY[0x223DAFDB0](*MEMORY[0x277CBECE8], 8 * NumSamples, 0x100004000313F17, 0);
  if (!v12)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_8();
    v27 = 4294954510;
    goto LABEL_27;
  }

  v5 = v12;
  v13 = CMBlockBufferCreateEmpty(v11, NumSamples, 0, &blockBufferOut);
  if (v13)
  {
    v27 = v13;
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_2();
    goto LABEL_26;
  }

  formatDescription = v10;
  if (NumSamples)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = &packetDescriptionsPointerOut[v14];
      mDataByteSize = packetDescriptionsPointerOut[v14].mDataByteSize;
      v5[v15] = mDataByteSize;
      appended = CMBlockBufferAppendBufferReference(blockBufferOut, v8, v16->mStartOffset, mDataByteSize, 0);
      if (appended)
      {
        break;
      }

      ++v15;
      ++v14;
      if (NumSamples == v15)
      {
        goto LABEL_15;
      }
    }

    v27 = appended;
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_3();
    goto LABEL_26;
  }

LABEL_15:
  CMSampleBufferGetPresentationTimeStamp(&v30, v4);
  value = v30.value;
  timescale = v30.timescale;
  if ((v30.flags & 1) == 0)
  {
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_7();
    v27 = 4294954516;
    goto LABEL_25;
  }

  v32.presentationTimeStamp.value = value;
  v32.presentationTimeStamp.timescale = timescale;
  v32.presentationTimeStamp.flags = v30.flags;
  v32.presentationTimeStamp.epoch = v30.epoch;
  FramesPerPacket = APSAudioFormatDescriptionGetFramesPerPacket();
  APSAudioFormatDescriptionGetSampleRate();
  CMTimeMake(&v32.duration, FramesPerPacket, v20);
  v32.decodeTimeStamp = *v2;
  v21 = CMSampleBufferCreateReady(v11, blockBufferOut, formatDescription, NumSamples, 1, &v32, NumSamples, v5, &sbuf);
  if (v21)
  {
    v27 = v21;
    bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_4();
    goto LABEL_25;
  }

  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v4, 0);
  if (SampleAttachmentsArray)
  {
    v23 = SampleAttachmentsArray;
    v24 = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
    if (!v24)
    {
      bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_5();
      v27 = 4294954510;
      goto LABEL_25;
    }

    if (NumSamples)
    {
      v25 = v24;
      for (i = 0; i != NumSamples; ++i)
      {
        CFArrayGetValueAtIndex(v25, i);
        CFArrayGetValueAtIndex(v23, i);
        FigCFDictionarySetAllValuesFromDictionary();
      }
    }
  }

  v4 = sbuf;
LABEL_23:
  v27 = CMSampleBufferCallForEachSample(v4, bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback, a2);
  if (!v27)
  {
    if (!v5)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  bufferedAudioEngine_processAndEnqueueSampleBuffer_cold_6();
  if (v5)
  {
LABEL_25:
    v11 = *MEMORY[0x277CBECE8];
LABEL_26:
    CFAllocatorDeallocate(v11, v5);
  }

LABEL_27:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }

  return v27;
}

void bufferedAudioEngine_setAudioFormatDurationDict(CMTime *a1, __CFDictionary *a2, const void *a3)
{
  v12 = **&MEMORY[0x277CC0898];
  if (FigCFDictionaryGetCMTimeIfPresent())
  {
    lhs = *a1;
    v9 = v12;
    CMTimeAdd(&time, &lhs, &v9);
    *a1 = time;
  }

  v6 = *MEMORY[0x277CBECE8];
  time = *a1;
  v7 = CMTimeCopyAsDictionary(&time, v6);
  if (v7)
  {
    v8 = v7;
    CFDictionarySetValue(a2, a3, v7);
    CFRelease(v8);
  }

  else
  {
    bufferedAudioEngine_setAudioFormatDurationDict_cold_1();
  }
}

uint64_t bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback(opaqueCMSampleBuffer *a1, uint64_t a2, uint64_t a3)
{
  v124 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(a3 + 24);
  cf = 0;
  v111 = 0;
  v121 = *(MEMORY[0x277CC0898] + 12);
  epoch_high = *(MEMORY[0x277CC0898] + 20);
  v119 = v121;
  v120 = epoch_high;
  v109 = 0u;
  memset(v110, 0, sizeof(v110));
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  v117 = v121;
  v118 = epoch_high;
  v8 = *(MEMORY[0x277CC0918] + 48);
  *&timingInfoOut.presentationTimeStamp.timescale = *(MEMORY[0x277CC0918] + 32);
  *&timingInfoOut.decodeTimeStamp.value = v8;
  timingInfoOut.decodeTimeStamp.epoch = *(MEMORY[0x277CC0918] + 64);
  v9 = *(MEMORY[0x277CC0918] + 16);
  *&timingInfoOut.duration.value = *MEMORY[0x277CC0918];
  *&timingInfoOut.duration.epoch = v9;
  if (!a1)
  {
    bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_17();
LABEL_144:
    v19 = time1.value;
    value_low = LODWORD(time.value);
    goto LABEL_129;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  if (!DataBuffer)
  {
    bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_16();
    goto LABEL_144;
  }

  v11 = DataBuffer;
  TotalSampleSize = CMSampleBufferGetTotalSampleSize(a1);
  if (!TotalSampleSize)
  {
    bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_15();
    goto LABEL_144;
  }

  v13 = TotalSampleSize;
  CMSampleBufferGetPresentationTimeStamp(&time1, a1);
  v121 = *&time1.flags;
  timescale = time1.timescale;
  value = time1.value;
  epoch_high = HIDWORD(time1.epoch);
  CMSampleBufferGetOutputPresentationTimeStamp(&time1, a1);
  v85 = time1.value;
  v119 = *&time1.flags;
  v14 = time1.timescale;
  v120 = HIDWORD(time1.epoch);
  FramesPerPacket = APSAudioFormatDescriptionGetFramesPerPacket();
  v15 = *(DerivedStorage + 1048);
  if (v15)
  {
    CFDataGetLength(v15);
  }

  if (FigCFDictionaryGetValue())
  {
    APSAudioFormatDescriptionGetChannelCount();
  }

  EncodeMessageBackingSize = bufferedAudioEngine_getEncodeMessageBackingSize(v5, v13);
  v100 = v5;
  if (v7)
  {
    NextFreeBacking = APMessageRingBufferedGetNextFreeBacking(*(DerivedStorage + 616), EncodeMessageBackingSize);
    if (NextFreeBacking)
    {
      cf = CFRetain(NextFreeBacking);
      if (cf)
      {
        v81 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      cf = 0;
    }

    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_1();
    }
  }

  if (!bufferedAudioEngine_createMessageBackingBBuf(*(DerivedStorage + 360), EncodeMessageBackingSize, &cf))
  {
    v81 = 0;
LABEL_22:
    v20 = DerivedStorage + 756;
    v21 = *(DerivedStorage + 756);
    v22 = *(DerivedStorage + 772);
    v23 = *(DerivedStorage + 764);
    APSAudioFormatDescriptionGetSampleRate();
    time.value = v21;
    *&time.timescale = v23;
    time.epoch = v22;
    CMTimeConvertScale(&time1, &time, v24, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v98 = time1.timescale;
    v99 = time1.value;
    flags = time1.flags;
    epoch = time1.epoch;
    CMSampleBufferGetDuration(&time1, a1);
    time.value = value;
    *&time.flags = v121;
    time.timescale = timescale;
    HIDWORD(time.epoch) = epoch_high;
    v96 = time1.value;
    rhs = time1;
    v93 = time1.timescale;
    v94 = time1.epoch;
    v95 = time1.flags;
    CMTimeAdd(&time1, &time, &rhs);
    v117 = *&time1.flags;
    v83 = time1.timescale;
    v84 = time1.value;
    v118 = HIDWORD(time1.epoch);
    if (*(DerivedStorage + 1208) >= *(DerivedStorage + 408))
    {
      v25 = 20;
    }

    else
    {
      v25 = 50;
    }

    v82 = v11;
    if (v25 >= gLogCategory_APAudioEngineBuffered && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (v100)
      {
        CMBaseObjectGetDerivedStorage();
      }

      time1.value = value;
      *&time1.flags = v121;
      time1.timescale = timescale;
      HIDWORD(time1.epoch) = epoch_high;
      CMTimeGetSeconds(&time1);
      time1.value = v85;
      *&time1.flags = v119;
      time1.timescale = v14;
      HIDWORD(time1.epoch) = v120;
      CMTimeGetSeconds(&time1);
      time1.value = v96;
      time1.timescale = v93;
      time1.flags = v95;
      time1.epoch = v94;
      CMTimeGetSeconds(&time1);
      time1.value = v84;
      *&time1.flags = v117;
      time1.timescale = v83;
      HIDWORD(time1.epoch) = v118;
      CMTimeGetSeconds(&time1);
      time1.value = v99;
      time1.timescale = v98;
      time1.flags = flags;
      time1.epoch = epoch;
      CMTimeGetSeconds(&time1);
      LogPrintF();
      v20 = DerivedStorage + 756;
    }

    *&v102 = APSAudioFormatDescriptionGetAudioFormatIndex();
    *(&v102 + 1) = APSAudioFormatDescriptionGetAudioFormatIndex();
    LOBYTE(v103) = 0;
    BYTE8(v110[0]) = 0;
    v26 = *(DerivedStorage + 1224);
    if (v26)
    {
      *(&v103 + 1) = bufferedAudioEngine_getCryptorIDForCryptor(v26);
    }

    v27 = *(DerivedStorage + 1048);
    if (v27)
    {
      *&v104 = bufferedAudioEngine_getMagicCookieIDForMagicCookieData(v27);
      v33 = *(DerivedStorage + 1064);
      if (v33 <= 9)
      {
        *(&v104 + 1) = *(DerivedStorage + 1048);
        *(DerivedStorage + 1064) = v33 + 1;
      }
    }

    v80 = *MEMORY[0x277CC0898];
    v86 = *(MEMORY[0x277CC0898] + 8);
    v88 = *(MEMORY[0x277CC0898] + 12);
    v28 = *(MEMORY[0x277CC0898] + 16);
    if (CFArrayGetCount(*(DerivedStorage + 1248)) >= 1)
    {
      *(&v110[2] + 1) = CFArrayGetValueAtIndex(*(DerivedStorage + 1248), 0);
      CMSetAttachment(a1, *MEMORY[0x277CD62C0], *(&v110[2] + 1), 1u);
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 1248), 0);
      FigEndpointStreamAudioEngineSbufTracerDebugPrint();
    }

    if (*(a3 + 52))
    {
      time1 = *(a3 + 40);
      time.value = v84;
      *&time.flags = v117;
      time.timescale = v83;
      HIDWORD(time.epoch) = v118;
      v29 = v96;
      v30 = v94;
      v31 = v93;
      v32 = v95;
      if (CMTimeCompare(&time1, &time) < 0)
      {
        time1 = *(a3 + 40);
        time.value = value;
        *&time.flags = v121;
        time.timescale = timescale;
        HIDWORD(time.epoch) = epoch_high;
        v29 = v80;
        v31 = v86;
        v32 = v88;
        v30 = v28;
        if (CMTimeCompare(&time1, &time) >= 1)
        {
          time1 = *(a3 + 40);
          time.value = v84;
          *&time.flags = v117;
          time.timescale = v83;
          HIDWORD(time.epoch) = v118;
          v29 = v80;
          v31 = v86;
          v32 = v88;
          v30 = v28;
          if (CMTimeCompare(&time1, &time) < 0)
          {
            time = *(a3 + 40);
            rhs.value = value;
            *&rhs.flags = v121;
            rhs.timescale = timescale;
            HIDWORD(rhs.epoch) = epoch_high;
            CMTimeSubtract(&time1, &time, &rhs);
            v29 = time1.value;
            v31 = time1.timescale;
            v32 = time1.flags;
            v30 = time1.epoch;
          }
        }
      }

      if (v32)
      {
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (v100)
          {
            CMBaseObjectGetDerivedStorage();
          }

          time1.value = v29;
          time1.timescale = v31;
          time1.flags = v32;
          time1.epoch = v30;
          CMTimeGetSeconds(&time1);
          time1.value = v99;
          time1.timescale = v98;
          time1.flags = flags;
          time1.epoch = epoch;
          CMTimeGetSeconds(&time1);
          LogPrintF();
        }

        *&v105 = v29;
        *(&v105 + 1) = __PAIR64__(v32, v31);
        *&v106 = v30;
      }
    }

    if (*(a3 + 76))
    {
      time1 = *(a3 + 64);
      time.value = value;
      *&time.flags = v121;
      time.timescale = timescale;
      HIDWORD(time.epoch) = epoch_high;
      v34 = CMTimeCompare(&time1, &time);
      v35 = v96;
      v36 = v94;
      v37 = v93;
      v38 = v95;
      if (v34 >= 1)
      {
        time1 = *(a3 + 64);
        time.value = value;
        *&time.flags = v121;
        time.timescale = timescale;
        HIDWORD(time.epoch) = epoch_high;
        if (CMTimeCompare(&time1, &time) < 1)
        {
          v35 = v80;
          v37 = v86;
          v38 = v88;
          v36 = v28;
        }

        else
        {
          time1 = *(a3 + 64);
          time.value = v84;
          *&time.flags = v117;
          time.timescale = v83;
          HIDWORD(time.epoch) = v118;
          v39 = CMTimeCompare(&time1, &time);
          v35 = v80;
          v37 = v86;
          v38 = v88;
          v36 = v28;
          if (v39 < 0)
          {
            time.value = v84;
            *&time.flags = v117;
            time.timescale = v83;
            HIDWORD(time.epoch) = v118;
            rhs = *(a3 + 64);
            CMTimeSubtract(&time1, &time, &rhs);
            v35 = time1.value;
            v37 = time1.timescale;
            v38 = time1.flags;
            v36 = time1.epoch;
          }
        }
      }

      if (v38)
      {
        if (gLogCategory_APAudioEngineBuffered <= 50)
        {
          if (gLogCategory_APAudioEngineBuffered != -1 || (v41 = v35, v42 = _LogCategory_Initialize(), v35 = v41, v42))
          {
            if (v100)
            {
              v40 = v35;
              CMBaseObjectGetDerivedStorage();
              v35 = v40;
            }

            v89 = v35;
            time1.value = v35;
            time1.timescale = v37;
            time1.flags = v38;
            time1.epoch = v36;
            CMTimeGetSeconds(&time1);
            time1.value = v99;
            time1.timescale = v98;
            time1.flags = flags;
            time1.epoch = epoch;
            CMTimeGetSeconds(&time1);
            LogPrintF();
            v35 = v89;
          }
        }

        *(&v106 + 1) = v35;
        *&v107 = __PAIR64__(v38, v37);
        *(&v107 + 1) = v36;
      }
    }

    if (CMSampleBufferGetSampleTimingInfo(a1, 0, &timingInfoOut))
    {
      *(v110 + 12) = *MEMORY[0x277CC0898];
      *(&v110[1] + 12) = v28;
      APSSignalErrorAt();
    }

    else
    {
      *(v110 + 12) = *&timingInfoOut.duration.value;
      *(&v110[1] + 12) = timingInfoOut.duration.epoch;
    }

    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
    v19 = SampleAttachmentsArray;
    if (SampleAttachmentsArray)
    {
      if (CFArrayGetCount(SampleAttachmentsArray) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v19, 0), (v45 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC1A90])) != 0))
      {
        v19 = CFUUIDCreateFromString(*MEMORY[0x277CBECE8], v45);
        *(&v109 + 1) = v19;
      }

      else
      {
        v19 = 0;
      }
    }

    if (*(DerivedStorage + 1232))
    {
      *&v108 = *(DerivedStorage + 1232);
    }

    *(&v108 + 1) = APSAudioFormatDescriptionGetFramesPerPacket();
    *&v109 = 0;
    APSAudioFormatDescriptionGetSampleRate();
    v47 = v46;
    v48 = CMBaseObjectGetDerivedStorage();
    *&time1.value = *MEMORY[0x277CC0898];
    time1.epoch = v28;
    *&time.value = *&time1.value;
    time.epoch = v28;
    if (flags)
    {
      v49 = v48;
      v50 = v100;
      if (CFArrayGetCount(*(v48 + 1104)) < 1 || (rhs.value = v99, rhs.timescale = v98, rhs.flags = flags, rhs.epoch = epoch, time2 = *(v49 + 780), CMTimeSubtract(&time, &rhs, &time2), CMTimeMake(&time2, FramesPerPacket, v47), lhs = time, CMTimeAdd(&rhs, &lhs, &time2), time = rhs, CFArrayGetCount(*(v49 + 1104)) < 1))
      {
        v51 = 0;
      }

      else
      {
        v51 = 0;
        v52 = 0;
        do
        {
          v53 = CFArrayGetValueAtIndex(*(v49 + 1104), v52);
          CMTimeMakeFromDictionary(&time1, v53);
          rhs = time;
          time2 = time1;
          if (CMTimeCompare(&rhs, &time2) < 0)
          {
            ++v52;
          }

          else
          {
            CFArrayRemoveValueAtIndex(*(v49 + 1104), v52);
            v51 = 1;
          }
        }

        while (v52 < CFArrayGetCount(*(v49 + 1104)));
      }
    }

    else
    {
      bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_3();
      v51 = 0;
      v50 = v100;
    }

    LOBYTE(v103) = v103 | v51;
    time1.value = v99;
    time1.timescale = v98;
    time1.flags = flags;
    time1.epoch = epoch;
    v54 = bufferedAudioEngine_encodeMessage(v50, cf, &time1, &v102, v82, &v111);
    if (v54)
    {
      value_low = v54;
      bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_4();
      goto LABEL_129;
    }

    APSAudioFormatDescriptionGetSampleRate();
    CMTimeMake(&time1, FramesPerPacket, v55);
    time.value = v96;
    time.timescale = v93;
    time.flags = v95;
    time.epoch = v94;
    v56 = CMTimeCompare(&time, &time1);
    v57 = *v20;
    time.epoch = *(v20 + 16);
    *&time.value = v57;
    rhs.value = v96;
    rhs.timescale = v93;
    rhs.flags = v95;
    rhs.epoch = v94;
    CMTimeAdd(&time1, &time, &rhs);
    v58 = *&time1.value;
    *(v20 + 16) = time1.epoch;
    *v20 = v58;
    if (v56 < 0)
    {
      v59 = 50;
    }

    else
    {
      v59 = 30;
    }

    if (v59 >= gLogCategory_APAudioEngineBuffered && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (v50)
      {
        v60 = v50;
        CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v60 = 0;
      }

      time1.value = v96;
      time1.timescale = v93;
      time1.flags = v95;
      time1.epoch = v94;
      CMTimeGetSeconds(&time1);
      v61 = *v20;
      time1.epoch = *(v20 + 16);
      *&time1.value = v61;
      CMTimeGetSeconds(&time1);
      LogPrintF();
      v50 = v60;
    }

    if (*(DerivedStorage + 1224))
    {
      v62 = *MEMORY[0x277CBECE8];
      time1.value = v99;
      time1.timescale = v98;
      time1.flags = flags;
      time1.epoch = epoch;
      v63 = CMTimeCopyAsDictionary(&time1, v62);
      if (v63)
      {
        v64 = v63;
        if (!CFDictionaryContainsKey(*(DerivedStorage + 1216), *(DerivedStorage + 1224)))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          v65 = FigNotificationCenterAddWeakListener();
          if (v65)
          {
            value_low = v65;
            bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_5();
            goto LABEL_128;
          }
        }

        CFDictionarySetValue(*(DerivedStorage + 1216), *(DerivedStorage + 1224), v64);
        v66 = *(DerivedStorage + 1048);
        if (!v66)
        {
LABEL_110:
          if (v81)
          {
            ++*(DerivedStorage + 984);
            time1.value = v99;
            time1.timescale = v98;
            time1.flags = flags;
            time1.epoch = epoch;
            time.value = v96;
            time.timescale = v93;
            time.flags = v95;
            time.epoch = v94;
            value_low = bufferedAudioEngine_enqueueMessageForSending(v50, v111, &time1, &time);
            if (value_low)
            {
              goto LABEL_112;
            }

LABEL_127:
            *(a3 + 32) += FramesPerPacket;
            ++*(DerivedStorage + 1208);
            if (!v64)
            {
              goto LABEL_129;
            }

            goto LABEL_128;
          }

          v69 = v111;
          v70 = CMBaseObjectGetDerivedStorage();
          if (v69)
          {
            v71 = v70;
            v72 = *MEMORY[0x277CBECE8];
            if (*(v70 + 624) || (Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]), (*(v71 + 624) = Mutable) != 0))
            {
              time1.value = v99;
              time1.timescale = v98;
              time1.flags = flags;
              time1.epoch = epoch;
              v74 = CMTimeCopyAsDictionary(&time1, v72);
              if (v74)
              {
                v75 = v74;
                time1.value = v96;
                time1.timescale = v93;
                time1.flags = v95;
                time1.epoch = v94;
                v76 = CMTimeCopyAsDictionary(&time1, v72);
                if (v76)
                {
                  v77 = v76;
                  time1.value = v69;
                  *&time1.timescale = v75;
                  time1.epoch = v76;
                  v78 = CFArrayCreate(v72, &time1, 3, MEMORY[0x277CBF128]);
                  if (v78)
                  {
                    CFArrayAppendValue(*(v71 + 624), v78);
                    value_low = 0;
                  }

                  else
                  {
                    bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_8();
                    value_low = 4294951816;
                  }

                  CFRelease(v77);
                  CFRelease(v75);
                  if (v78)
                  {
                    CFRelease(v78);
                  }

LABEL_123:
                  if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
                  {
                    bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_13();
                    if (!value_low)
                    {
                      goto LABEL_127;
                    }
                  }

                  else if (!value_low)
                  {
                    goto LABEL_127;
                  }

LABEL_112:
                  bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_14();
                  if (!v64)
                  {
                    goto LABEL_129;
                  }

LABEL_128:
                  CFRelease(v64);
                  goto LABEL_129;
                }

                bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_9(v75);
              }

              else
              {
                bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_10();
              }
            }

            else
            {
              bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_11();
            }

            value_low = 4294951816;
            goto LABEL_123;
          }

          bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_12();
          value_low = 4294951815;
          goto LABEL_123;
        }

LABEL_109:
        CFDictionarySetValue(*(DerivedStorage + 1056), v66, v64);
        goto LABEL_110;
      }

      bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_6();
    }

    else
    {
      if (!*(DerivedStorage + 1048))
      {
        v64 = 0;
        goto LABEL_110;
      }

      v67 = *MEMORY[0x277CBECE8];
      time1.value = v99;
      time1.timescale = v98;
      time1.flags = flags;
      time1.epoch = epoch;
      v68 = CMTimeCopyAsDictionary(&time1, v67);
      if (v68)
      {
        v64 = v68;
        v66 = *(DerivedStorage + 1048);
        goto LABEL_109;
      }

      bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_7();
    }

    value_low = 4294951816;
    goto LABEL_129;
  }

  value_low = 4294895201;
  if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_enqueueSingleSampleCompressedSBufCallback_cold_2();
  }

  v19 = 0;
LABEL_129:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return value_low;
}

uint64_t bufferedAudioEngine_startPlaybackIfNecessary(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (!*(DerivedStorage + 881))
  {
    if (gLogCategory_APAudioEngineBuffered <= 10 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_startPlaybackIfNecessary_cold_13();
    }

    return 0;
  }

  v6 = *(DerivedStorage + 884);
  if (v6 == 7)
  {
    if (*(DerivedStorage + 936))
    {
      v10 = *(DerivedStorage + 928);
      if (v10 <= mach_absolute_time())
      {
        HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose();
        if (!HoseDecriptorFromHose || !*(HoseDecriptorFromHose + 176))
        {
          *(v5 + 936) = 0;
          *(v5 + 928) = 0;
          if (bufferedAudioEngine_shouldUseReceiverChoosesAnchor())
          {
            if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
            {
              bufferedAudioEngine_startPlaybackIfNecessary_cold_4();
            }

            v9 = bufferedAudioEngine_handleSetRateToOneWithReceiverAnchor(a1);
            if (v9)
            {
              bufferedAudioEngine_startPlaybackIfNecessary_cold_5();
            }
          }

          else
          {
            v14 = *(v5 + 944);
            if (v14)
            {
              CFRelease(v14);
              *(v5 + 944) = 0;
            }

            if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
            {
              bufferedAudioEngine_startPlaybackIfNecessary_cold_6();
            }

            bufferedAudioEngine_updatePlaybackState(a1, 6);
            v9 = bufferedAudioEngine_handleSetRateToOne(a1);
            if (v9)
            {
              bufferedAudioEngine_startPlaybackIfNecessary_cold_7();
            }
          }

          return v9;
        }

        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_startPlaybackIfNecessary_cold_3();
        }

        *(v5 + 936) = 0;
        *(v5 + 928) = 0;
        if (a1)
        {
          CFRetain(a1);
        }

        APSAudioProtocolDriverHoseControlGetAnchor(*(v5 + 944), a1);
      }
    }

    return 0;
  }

  if (v6 == 8)
  {
    if (a2 || *(DerivedStorage + 840) || *(DerivedStorage + 936) && (v12 = *(DerivedStorage + 928), v12 <= mach_absolute_time()))
    {
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_startPlaybackIfNecessary_cold_1();
      }

      v9 = bufferedAudioEngine_handleSetRateToOne_sendAnchorToAllHoses(a1);
      if (v9)
      {
        bufferedAudioEngine_startPlaybackIfNecessary_cold_2();
      }

      return v9;
    }

    return 0;
  }

  if (v6 != 5)
  {
    return 0;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_startPlaybackIfNecessary_cold_8();
  }

  if (*(v5 + 916))
  {
    v8 = gLogCategory_APAudioEngineBuffered;
  }

  else
  {
    shouldUseReceiverChoosesAnchor = bufferedAudioEngine_shouldUseReceiverChoosesAnchor();
    v8 = gLogCategory_APAudioEngineBuffered;
    if (shouldUseReceiverChoosesAnchor)
    {
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_startPlaybackIfNecessary_cold_9();
      }

      bufferedAudioEngine_updatePlaybackState(a1, 7);
      v9 = bufferedAudioEngine_handleSetRateToOneWithReceiverAnchor(a1);
      if (v9)
      {
        bufferedAudioEngine_startPlaybackIfNecessary_cold_10();
      }

      return v9;
    }
  }

  if (v8 <= 50 && (v8 != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_startPlaybackIfNecessary_cold_11();
  }

  bufferedAudioEngine_updatePlaybackState(a1, 6);
  v9 = bufferedAudioEngine_handleSetRateToOne(a1);
  if (v9)
  {
    bufferedAudioEngine_startPlaybackIfNecessary_cold_12();
  }

  return v9;
}

void bufferedAudioEngine_updateHosesPrimed(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v41 = mach_absolute_time();
  v8 = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v9 = 888;
  if ((*(v8 + 884) - 5) < 3)
  {
    v9 = 896;
  }

  v10 = *(v8 + v9);
  v44 = **&MEMORY[0x277CC0898];
  v11 = *(DerivedStorage + 640);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v38 = (DerivedStorage + 1080);
    v16 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
    v39 = a2;
    while (1)
    {
      v17 = v16[594];
      if (v17 <= 10 && (v17 != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_updateHosesPrimed_cold_1(a1 == 0);
      }

      bufferedAudioEngine_getBufferLevelTimeEstimateForHose(v11, &v44);
      if (v11[9].n128_u32[1])
      {
        goto LABEL_41;
      }

      v42 = v13;
      v43 = v14;
      v18 = v11[5].n128_u64[0];
      if (*(DerivedStorage + 1092))
      {
        time1 = v44;
        *&time2.value = *v38;
        time2.epoch = *(DerivedStorage + 1096);
        v19 = CMTimeCompare(&time1, &time2) >= 0;
      }

      else
      {
        v19 = 0;
      }

      if (*(DerivedStorage + 1224))
      {
        v20 = v11[13].n128_u8[4] != 0;
      }

      else
      {
        v20 = 1;
      }

      v22 = v10 != 0.0 && v41 - v18 >= a2;
      v23 = CMBaseObjectGetDerivedStorage();
      v24 = (v11[9].n128_u32[0] >= v11[10].n128_u32[1] || (v36 = v23, bufferedAudioEngine_getBufferLevelTimeEstimateForHose(v11, &time1), time2 = *(v36 + 160), CMTimeCompare(&time1, &time2) >= 1)) && v20;
      v25 = v24 || v19 && v20;
      v13 = v42;
      if (a3)
      {
        v26 = 0;
        v27 = v25 | v22;
        a2 = v39;
        v14 = v43;
        v16 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        if ((v27 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v26 = v22 & ~v25 & 1;
        a2 = v39;
        v14 = v43;
        v16 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        if ((v25 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v37 = v26;
      v11[9].n128_u32[1] = 1;
      v28 = v16[594];
      if (v28 <= 50 && (v28 != -1 || _LogCategory_Initialize()))
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        bufferedAudioEngine_getBufferLevelTimeEstimateForHose(v11, &time1);
        CMTimeGetSeconds(&time1);
        time1 = *(DerivedStorage + 160);
        CMTimeGetSeconds(&time1);
        UpTicksToMilliseconds();
        if (v10 != 0.0)
        {
          UpTicksToMilliseconds();
        }

        bufferedAudioEngine_getSentBufferLevelTime(v11, &time1);
        CMTimeGetSeconds(&time1);
        *&time1.value = *v38;
        time1.epoch = *(DerivedStorage + 1096);
        CMTimeGetSeconds(&time1);
        LogPrintF();
        a2 = v39;
      }

      v29 = LogCategoryCopyOSLogHandle();
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = MEMORY[0x277D86220];
      }

      v32 = CUObfuscatedPtr();
      if (v32)
      {
        v33 = v32;
        if (os_signpost_enabled(v31))
        {
          LOWORD(time1.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_221FFA000, v31, OS_SIGNPOST_EVENT, v33, "AIRPLAY_SIGNPOST_AUDIOENGINE_HOSE_PRIMED", &unk_2222A918B, &time1, 2u);
        }
      }

      v13 = v42;
      if (v30)
      {
        os_release(v30);
      }

      CUObfuscatedPtr();
      bufferedAudioEngine_getSentBufferLevelTime(v11, &time1);
      CMTimeGetSeconds(&time1);
      kdebug_trace();
      v14 = v43;
      v16 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
      v26 = v37;
LABEL_40:
      if (!v11[9].n128_u32[1])
      {
        v13 += v26;
        time1 = v44;
        Seconds = CMTimeGetSeconds(&time1);
        UpTicksToSecondsF();
        if (Seconds < v35)
        {
          ++v14;
        }

        goto LABEL_42;
      }

LABEL_41:
      ++v12;
LABEL_42:
      v11 = v11->n128_u64[0];
      ++v15;
      if (!v11)
      {
        goto LABEL_55;
      }
    }
  }

  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
LABEL_55:
  if (a4)
  {
    *a4 = v12;
    a4[1] = v13;
    a4[2] = v14;
    a4[3] = v15;
  }
}

uint64_t APSAudioProtocolDriverHoseControlGetAnchor(uint64_t a1, const void *a2)
{
  APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 64);
      if (v7)
      {

        return v7(a1, 1, bufferedAudioEngine_hoseGetAnchorCallbackCompletionHandler, a2);
      }

      else
      {
        v8 = MEMORY[0x277CEA038];
        v9 = MEMORY[0x277CEA280];

        return bufferedAudioEngine_hoseGetAnchorCallbackCompletionHandler(a1, v8, v9, 4294954514, a2);
      }
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_hoseGetAnchorCallbackCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  APSPriorityDispatcherSyncF();
  if (a5)
  {
    CFRelease(a5);
  }

  return 0;
}

uint64_t bufferedAudioEngine_hoseSetRateCallbackCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  APSPriorityDispatcherSyncF();
  if (a5)
  {
    CFRelease(a5);
  }

  return 0;
}

void bufferedAudioEngine_handleErrorWithReceiverAnchor(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose();
  if (HoseDecriptorFromHose)
  {
    if (*(HoseDecriptorFromHose + 43) < 0x32u)
    {
      if (*(DerivedStorage + 884) == 7 && !*(DerivedStorage + 936))
      {
        v9 = MicrosecondsToUpTicks();
        *(DerivedStorage + 928) = mach_absolute_time() + v9;
        *(DerivedStorage + 936) = 1;
      }
    }

    else
    {
      *(HoseDecriptorFromHose + 43) = 0;
      bufferedAudioEngine_callSetRateAndAnchorTimeClientCompletionCallback(a1, a3, MEMORY[0x277CC0898], MEMORY[0x277CC0898], 0);
      *(DerivedStorage + 952) = 0u;
      bufferedAudioEngine_handleTerminalSetRateError(a1, a2, a3);
      v8 = *(DerivedStorage + 944);
      if (v8)
      {
        CFRelease(v8);
        *(DerivedStorage + 944) = 0;
      }
    }
  }

  else
  {
    bufferedAudioEngine_handleErrorWithReceiverAnchor_cold_1();
  }
}

uint64_t bufferedAudioEngine_hoseSetRateAndAnchorTimeCallbackCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  CMBaseObjectGetDerivedStorage();
  APSPriorityDispatcherSyncF();
  if (a8)
  {
    CFRelease(a8);
  }

  return 0;
}

void bufferedAudioEngine_handleTerminalSetRateError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  HoseDecriptorFromHose = bufferedAudioEngine_getHoseDecriptorFromHose();
  if (HoseDecriptorFromHose)
  {
    v7 = HoseDecriptorFromHose;
    if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_handleTerminalSetRateError_cold_1();
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      FigCFDictionarySetInt32();
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC17E0], @"Too many retries setting the rate to 1");
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (a3 == -71976)
    {
      v9 = @"SetRate 1 failed due to not agreeing on grandmaster";
    }

    else
    {
      v9 = @"SetRate 1 failed due to error";
    }

    bufferedAudioEngine_sendSessionFailureEvent(a1, v9);
    bufferedAudioEngine_maybeTriggerTTR(a1, a2, v7[33], a3);
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }

  else if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_handleTerminalSetRateError_cold_2();
  }
}

CMTime *bufferedAudioEngine_getPlaybackStartupTime@<X0>(CMTime *a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x277CC0898];
  *&a1->value = *MEMORY[0x277CC0898];
  a1->epoch = *(v3 + 16);
  result = *(DerivedStorage + 968);
  if (result)
  {
    result = FigCFDictionaryGetInt64IfPresent();
    if (result)
    {
      result = FigCFDictionaryGetInt64IfPresent();
      if (result)
      {
        v5 = UpTicksToMilliseconds();
        return CMTimeMake(a1, v5, 1000);
      }
    }
  }

  return result;
}

void bufferedAudioEngine_getStreamInfoForStartup(uint64_t a1, float *a2, float *a3, float *a4, _WORD *a5, char *a6, _WORD *a7, _WORD *a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = *(DerivedStorage + 640);
  cf[0] = 0;
  v14 = 0.0;
  if (v13)
  {
    v28 = a5;
    v29 = a6;
    v30 = a7;
    v31 = a8;
    v15 = 0;
    Mutable = 0;
    v17 = 0;
    v18 = 0;
    v32 = *MEMORY[0x277CE9F70];
    v19 = 0.0;
    v20 = 99999.0;
    v21 = -99999.0;
    do
    {
      memset(&v38, 0, sizeof(v38));
      bufferedAudioEngine_getSentBufferLevelTime(v13, &v38);
      time = v38;
      Seconds = CMTimeGetSeconds(&time);
      time = v38;
      time2 = *(DerivedStorage + 160);
      v23 = CMTimeCompare(&time, &time2);
      if (v20 >= Seconds)
      {
        v20 = Seconds;
      }

      if (v21 <= Seconds)
      {
        v21 = Seconds;
      }

      if (v13[2].n128_u8[0])
      {
        v17 = 1;
      }

      isHoseInStereoPair = bufferedAudioEngine_isHoseInStereoPair();
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      v25 = v13[1].n128_u64[0];
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v26)
      {
        v26(v25, v32, 0, cf);
      }

      if (isHoseInStereoPair)
      {
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
        }

        if (CFDictionaryContainsKey(Mutable, cf[0]))
        {
          CFDictionarySetValue(Mutable, cf[0], 2);
          ++v15;
        }

        else
        {
          CFDictionarySetValue(Mutable, cf[0], 1);
        }
      }

      v19 = v19 + Seconds;
      v18 += v23 >> 31;
      v13 = v13->n128_u64[0];
    }

    while (v13);
    LOWORD(v13) = v15;
    a7 = v30;
    a8 = v31;
    a5 = v28;
    a6 = v29;
  }

  else
  {
    LOWORD(v18) = 0;
    v17 = 0;
    Mutable = 0;
    v21 = -99999.0;
    v20 = 99999.0;
    v19 = 0.0;
  }

  v27 = *(DerivedStorage + 648);
  if (v27)
  {
    v14 = v19 / v27;
  }

  *a2 = v14;
  *a3 = v20;
  *a4 = v21;
  *a5 = v18;
  *a6 = v17;
  *a7 = FigCFDictionaryGetCount();
  *a8 = FigCFDictionaryGetCount() - v13;
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void bufferedAudioEngine_setEndpointStreamInternalStage1(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setEndpointStreamInternalStage1_cold_1(a1);
  }

  if (!*(DerivedStorage + 528))
  {
    bufferedAudioEngine_setEndpointStreamInternalStage1_cold_10();
    v27 = -15485;
LABEL_81:
    *(a1 + 32) = v27;
    goto LABEL_82;
  }

  v3 = *(a1 + 8);
  if (*(DerivedStorage + 592) == v3)
  {
LABEL_82:
    v28 = *(DerivedStorage + 344);

    dispatch_async_f(v28, a1, bufferedAudioEngine_setEndpointStreamInternalStageEnd);
    return;
  }

  if (v3)
  {
    v4 = FigEndpointStreamSuspend();
    if (v4)
    {
      v27 = v4;
      bufferedAudioEngine_setEndpointStreamInternalStage1_cold_2();
      goto LABEL_81;
    }
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setEndpointStreamInternalStage1_cold_3(a1);
  }

  if (!*(DerivedStorage + 592))
  {
    goto LABEL_16;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v5 = FigNotificationCenterRemoveWeakListeners();
  if (v5)
  {
    v27 = v5;
    bufferedAudioEngine_setEndpointStreamInternalStage1_cold_4();
    goto LABEL_81;
  }

  v6 = FigEndpointStreamSuspend();
  if (v6)
  {
    v27 = v6;
    bufferedAudioEngine_setEndpointStreamInternalStage1_cold_5();
    goto LABEL_81;
  }

  v7 = *(DerivedStorage + 592);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 592) = 0;
  }

LABEL_16:
  v8 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setEndpointStreamInternalStage1_cold_6(a1);
  }

  if (*(a1 + 8))
  {
    v9 = APSGetFBOPropertyInt64();
    v10 = APSGetFBOPropertyInt64();
    v11 = *(v8 + 576);
    if (APSSettingsGetIntWithDefault())
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12;
    if (v11 == v13)
    {
      if (*(v8 + 64))
      {
        v14 = v10 == 0;
      }

      else
      {
        v14 = 1;
      }

      v15 = !v14;
      if (*(v8 + 577) == v15)
      {
        v29 = 0;
        if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_setEndpointStreamInternalStage1_cold_8(v8, &v29, a1);
        }

        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          v17 = *MEMORY[0x277CBED28];
          v18 = *MEMORY[0x277CBED10];
          if (*(v8 + 576))
          {
            v19 = *MEMORY[0x277CBED28];
          }

          else
          {
            v19 = *MEMORY[0x277CBED10];
          }

          CFDictionarySetValue(Mutable, @"UseAPAP", v19);
          if (APSSettingsGetIntWithDefault())
          {
            v20 = v17;
          }

          else
          {
            v20 = v18;
          }

          CFDictionarySetValue(Mutable, @"PrefersAPAP", v20);
          if (*(v8 + 577))
          {
            v21 = v17;
          }

          else
          {
            v21 = v18;
          }

          CFDictionarySetValue(Mutable, @"UseAPAT", v21);
          if (*(v8 + 64))
          {
            v22 = v17;
          }

          else
          {
            v22 = v18;
          }

          CFDictionarySetValue(Mutable, @"PrefersAPAT", v22);
          FigCFDictionarySetValue();
          kdebug_trace();
          v23 = *(a1 + 8);
          v24 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v24)
          {
            v25 = v24(v23, Mutable, bufferedAudioEngine_setEndpointStreamInternalStage4, a1);
            if (!v25)
            {
LABEL_74:
              CFRelease(Mutable);
              return;
            }

            v26 = v25;
          }

          else
          {
            v26 = -12782;
          }

          APSLogErrorAt();
        }

        else
        {
          bufferedAudioEngine_setEndpointStreamInternalStage1_cold_9();
          v26 = -12786;
        }

LABEL_73:
        *(a1 + 32) = v26;
        dispatch_async_f(*(v8 + 344), a1, bufferedAudioEngine_setEndpointStreamInternalStageEnd);
        if (!Mutable)
        {
          return;
        }

        goto LABEL_74;
      }

      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (*a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LogPrintF();
      }
    }

    else if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_setEndpointStreamInternalStage1_cold_7(a1);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    Mutable = 0;
    v26 = -6734;
    goto LABEL_73;
  }

  bufferedAudioEngine_setEndpointStreamInternalStage5(a1);
}

void bufferedAudioEngine_setEndpointStreamInternalStageEnd(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  v2 = LogCategoryCopyOSLogHandle();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  v5 = CUObfuscatedPtr();
  if (v5)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v4, OS_SIGNPOST_INTERVAL_END, v6, "AIRPLAY_SIGNPOST_AUDIOENGINE_SETENDPOINTSTREAM_INTERVAL", &unk_2222A918B, v9, 2u);
    }
  }

  if (v3)
  {
    os_release(v3);
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setEndpointStreamInternalStageEnd_cold_1(a1);
  }

  v7 = a1[2];
  if (v7)
  {
    v7(*a1, *(a1 + 8), a1[3]);
  }

  APSDispatchSectionLeave();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v8 = a1[1];
  if (v8)
  {
    CFRelease(v8);
  }

  free(a1);
}

void bufferedAudioEngine_setEndpointStreamInternalStage4(uint64_t a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setEndpointStreamInternalStage4_cold_1(a3);
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else if (a2)
  {
LABEL_5:
    *(a3 + 32) = a2;
    v6 = *(DerivedStorage + 344);

    dispatch_async_f(v6, a3, bufferedAudioEngine_setEndpointStreamInternalStageEnd);
    return;
  }

  APSPriorityDispatcherAsyncF();
}

void bufferedAudioEngine_setEndpointStreamInternalStage5(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_setEndpointStreamInternalStage5_cold_1(a1);
  }

  if (*(a1 + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v3 = FigNotificationCenterAddWeakListeners();
    if (v3)
    {
      v14 = v3;
      bufferedAudioEngine_setEndpointStreamInternalStage5_cold_2();
      goto LABEL_39;
    }

    v4 = APSGetFBOPropertyInt64();
    v5 = *(DerivedStorage + 576);
    if (APSSettingsGetIntWithDefault())
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = !v6;
    if (v5 == v7)
    {
      v8 = APSGetFBOPropertyInt64();
      if (*(DerivedStorage + 64))
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      v10 = !v9;
      if (*(DerivedStorage + 577) == v10)
      {
        v11 = *(a1 + 8);
        v12 = (DerivedStorage + 592);
        v13 = *(DerivedStorage + 592);
        *(DerivedStorage + 592) = v11;
        if (v11)
        {
          CFRetain(v11);
        }

        goto LABEL_23;
      }

      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        bufferedAudioEngine_setEndpointStreamInternalStage5_cold_4();
      }
    }

    else if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_setEndpointStreamInternalStage5_cold_3();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    FigEndpointStreamSuspend();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    v14 = -6734;
    goto LABEL_39;
  }

  v12 = (DerivedStorage + 592);
  v13 = *(DerivedStorage + 592);
  *(DerivedStorage + 592) = 0;
LABEL_23:
  if (v13)
  {
    CFRelease(v13);
  }

  if (*v12 && APSGetFBOPropertyInt64() && *(DerivedStorage + 392) && !strstr((DerivedStorage + 392), "-SP"))
  {
    *(strlen((DerivedStorage + 392)) + DerivedStorage + 392 - 1) = 0;
    __strlcat_chk();
    __strlcat_chk();
  }

  v14 = 0;
LABEL_39:
  *(a1 + 32) = v14;
  dispatch_async_f(*(DerivedStorage + 344), a1, bufferedAudioEngine_setEndpointStreamInternalStageEnd);
}

uint64_t __bufferedAudioEngine_flushInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = 0;
  *(a3 + 4) = APMessageRingBufferedGetFirstValidReadIndex(*(*(a1 + 40) + 616), 0);
  v5 = *a3;
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v7(v5, &v9);
    }
  }

  result = FigCFEqual();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = v9;
  }

  return result;
}

uint64_t bufferedAudioEngine_flushHose(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  if (*(a2 + 72) == 0.0)
  {
    if (*(DerivedStorage + 577))
    {
      v11 = APSGetFBOPropertyInt64();
    }

    else
    {
      v11 = *(a2 + 152);
    }

    v10 = v11 != 0;
  }

  else
  {
    v10 = 1;
  }

  v24[0] = *MEMORY[0x277CEA038];
  v22 = v24[0];
  *(v24 + 12) = *(MEMORY[0x277CEA038] + 12);
  v21 = *(v24 + 12);
  v12 = MEMORY[0x277CC08F0];
  *(a2 + 72) = 0;
  v20 = *v12;
  *(a2 + 96) = *v12;
  v13 = *(v12 + 2);
  *(a2 + 112) = v13;
  *(a2 + 40) = v20;
  *(a2 + 56) = v13;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 64) = 256;
  *(a2 + 88) = 0;
  result = mach_absolute_time();
  *(a2 + 80) = result;
  *(a2 + 184) = v22;
  *(a2 + 196) = v21;
  *(a2 + 212) = 0;
  *(a2 + 272) = 0;
  *(a2 + 120) = v20;
  *(a2 + 136) = v13;
  *(a2 + 176) = 0;
  if (v10)
  {
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *time = *a4;
      *&time[16] = *(a4 + 16);
      CMTimeGetSeconds(time);
      LogPrintF();
    }

    if (*(v9 + 576))
    {
      *time = *a4;
      *&time[16] = *(a4 + 16);
      APSAudioTransportTimeMakeWithMediaTime();
      if (!a1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat();
      *v23 = *a4;
      *&v23[16] = *(a4 + 16);
      CMTimeConvertScale(time, v23, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      *a4 = *time;
      *(a4 + 16) = *&time[16];
      APSAudioTransportTimeMakeWithRTPTime();
      if (!a1)
      {
LABEL_22:
        v15 = *(a2 + 16);
        *v23 = v24[0];
        *&v23[12] = *(v24 + 12);
        APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (ProtocolVTable)
        {
          v17 = *(ProtocolVTable + 16);
          if (v17)
          {
            v18 = *(v17 + 24);
            if (v18)
            {
              *time = *v23;
              *&time[12] = *&v23[12];
              v18(v15, a3, time, bufferedAudioEngine_hoseFlushCallbackCompletionHandler, a1);
            }

            else
            {
              bufferedAudioEngine_hoseFlushCallbackCompletionHandler(v15, 0, MEMORY[0x277CEA038], 4294954514, a1);
            }
          }
        }

        ++*(a2 + 180);
        return FigCFDictionaryApplyBlock();
      }
    }

    CFRetain(a1);
    goto LABEL_22;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50)
  {
    if (gLogCategory_APAudioEngineBuffered != -1)
    {
      return bufferedAudioEngine_flushHose_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return bufferedAudioEngine_flushHose_cold_1();
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_hoseFlushCallbackCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  APSPriorityDispatcherSyncF();
  if (a5)
  {
    CFRelease(a5);
  }

  return 0;
}

uint64_t __bufferedAudioEngine_flushHose_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(*(a1 + 32) + 24);
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v9 = v10;
  if (v10)
  {
    v11 = *(v9 + 48);
    if (v11)
    {
      result = v11(v5, v6);
      if (result)
      {
        v12 = *a3;
        v13 = *(*(a1 + 32) + 24);
        v14 = CMBaseObjectGetVTable();
        v16 = *(v14 + 16);
        result = v14 + 16;
        v15 = v16;
        if (v16)
        {
          v17 = *(v15 + 88);
          if (v17)
          {

            return v17(v12, v13);
          }
        }
      }
    }
  }

  return result;
}

uint64_t __bufferedAudioEngine_hoseFlushCallbackCompletionHandlerInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(*(a1 + 32) + 24);
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v9 = v10;
  if (v10)
  {
    v11 = *(v9 + 48);
    if (v11)
    {
      result = v11(v5, v6);
      if (result)
      {
        v12 = *a3;
        v13 = *(*(a1 + 32) + 24);
        v14 = CMBaseObjectGetVTable();
        v16 = *(v14 + 16);
        result = v14 + 16;
        v15 = v16;
        if (v16)
        {
          v17 = *(v15 + 96);
          if (v17)
          {

            return v17(v12, v13);
          }
        }
      }
    }
  }

  return result;
}

uint64_t bufferedAudioEngine_flushWithinSampleRangeInternal(void *a1)
{
  v102 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = MEMORY[0x277CC0898];
  v90 = 0;
  v4 = *MEMORY[0x277CC0898];
  v100 = v4;
  v5 = *(MEMORY[0x277CC0898] + 8);
  v101 = v5;
  v6 = *(MEMORY[0x277CC0898] + 16);
  v89 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2000000000;
  v88 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2000000000;
  v84 = 0;
  v98 = *MEMORY[0x277CC08C8];
  v99 = *(MEMORY[0x277CC08C8] + 8);
  duration = *(MEMORY[0x277CC08C8] + 24);
  v79 = 0;
  v78 = 0;
  *&v77.value = *MEMORY[0x277CC0898];
  v77.epoch = v6;
  v94 = v4;
  v95 = v5;
  *&v76.value = *&v77.value;
  v76.epoch = v6;
  *&start.value = *&v77.value;
  start.epoch = v6;
  if (*DerivedStorage)
  {
    goto LABEL_158;
  }

  v7 = DerivedStorage;
  if (!*(DerivedStorage + 536))
  {
    goto LABEL_158;
  }

  v68 = a1;
  v62 = v6;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (*a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    *&time.start.value = *(a1 + 1);
    time.start.epoch = a1[3];
    CMTimeGetSeconds(&time.start);
    v8 = *(a1 + 3);
    *&time.start.value = *(a1 + 1);
    *&time.start.epoch = v8;
    *&time.duration.timescale = *(a1 + 5);
    CMTimeRangeGetEnd(&lhs, &time);
    CMTimeGetSeconds(&lhs);
    *&time.start.value = *(v7 + 708);
    time.start.epoch = *(v7 + 724);
    CMTimeGetSeconds(&time.start);
    LogPrintF();
  }

  if ((*(v7 + 744) & 1) == 0)
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_13();
LABEL_158:
    bufferedAudioEngine_wakeUpHosesAndAudioTimer(*a1);
    goto LABEL_149;
  }

  v61 = v5;
  v9 = (v7 + 780);
  lhs = *(v7 + 780);
  rhs = *(a1 + 1);
  CMTimeAdd(&time.start, &lhs, &rhs);
  timescale = time.start.timescale;
  value = time.start.value;
  lhs = time.start;
  rhs = *(v7 + 732);
  v70 = (v7 + 732);
  CMTimeSubtract(&time.start, &lhs, &rhs);
  value = time.start.value;
  timescale = time.start.timescale;
  if ((time.start.flags & 0x1D) != 1)
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_1(&v90 + 1);
    goto LABEL_158;
  }

  lhs.value = value;
  lhs.timescale = timescale;
  lhs.flags = time.start.flags;
  lhs.epoch = time.start.epoch;
  rhs = *(a1 + 4);
  CMTimeRangeMake(&time, &lhs, &rhs);
  v99 = time.start.timescale;
  v98 = time.start.value;
  duration = time.duration;
  flags = time.start.flags;
  epoch = time.start.epoch;
  APSTimedInfoManagerFlushWithinTimeRange();
  HIDWORD(v90) = 0;
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (*a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    time.start.value = v98;
    time.start.timescale = v99;
    time.start.flags = flags;
    time.start.epoch = epoch;
    CMTimeGetSeconds(&time.start);
    time.start.value = v98;
    time.start.timescale = v99;
    time.start.flags = flags;
    time.duration = duration;
    time.start.epoch = epoch;
    CMTimeRangeGetEnd(&lhs, &time);
    CMTimeGetSeconds(&lhs);
    LogPrintF();
  }

  bufferedAudioEngine_getCurrentRemoteMediaTimeInternal(&v90 + 1, &time.start);
  v94 = time.start.value;
  v95 = time.start.timescale;
  if (HIDWORD(v90))
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_2();
    goto LABEL_158;
  }

  v59 = v7;
  v10 = v7 + 756;
  v11 = time.start.flags;
  v66 = time.start.epoch;
  v12 = *v10;
  time.start.epoch = *(v10 + 16);
  *&time.start.value = v12;
  lhs.value = v98;
  lhs.timescale = v99;
  lhs.flags = flags;
  lhs.epoch = epoch;
  v13 = CMTimeCompare(&time.start, &lhs);
  if (v13 < 1)
  {
    v65 = *(v3 + 12);
    v14 = flags;
    goto LABEL_33;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_3();
  }

  v15 = *(v59 + 616);
  time.start.value = v98;
  time.start.timescale = v99;
  time.start.flags = flags;
  time.start.epoch = epoch;
  HIDWORD(v90) = APMessageRingBufferedPruneMessagesFromTimestamp(v15, &time, &v79, &v89, &v90);
  if (HIDWORD(v90))
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_4();
    goto LABEL_158;
  }

  APMessageRingBufferedGetLastValidReadIndexAndTimestamp(*(v59 + 616), 0, &v76);
  lhs = v76;
  rhs = *v9;
  CMTimeSubtract(&time.start, &lhs, &rhs);
  lhs = *v70;
  CMTimeAdd(&start, &time.start, &lhs);
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (*a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    time.start = v76;
    CMTimeGetSeconds(&time.start);
    time.start = start;
    CMTimeGetSeconds(&time.start);
    LogPrintF();
  }

  *(v59 + 976) = 0;
  v65 = *(v59 + 768);
  v14 = flags;
  if ((v65 & 0x1D) != 1)
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_5(&v90 + 1);
    goto LABEL_158;
  }

  v61 = *(v59 + 764);
  v62 = *(v10 + 16);
  v4 = *v10;
  FigCFDictionaryApplyBlock();
LABEL_33:
  v100 = v98;
  v101 = v99;
  v60 = v4;
  v57 = v10;
  if ((v14 & 0x1D) != 1)
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_6(&v90 + 1);
LABEL_155:
    cf = 0;
    v27 = v61;
    v26 = v62;
    goto LABEL_105;
  }

  v16 = *MEMORY[0x277CBECE8];
  keys = *MEMORY[0x277CD61F0];
  values = *MEMORY[0x277CD61D8];
  v17 = CFDictionaryCreate(v16, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v17)
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_11(&v90 + 1);
    goto LABEL_155;
  }

  v18 = v17;
  CMNotificationCenterGetDefaultLocalCenter();
  cf = v18;
  FigDispatchAsyncPostNotification();
  if (*(v59 + 1112))
  {
    bufferedAudioEngine_setTranscodeIsRestingAndUpdateConsumer(*a1, 0);
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    bufferedAudioEngine_flushWithinSampleRangeInternal_cold_7();
  }

  v19 = *v10;
  time.start.epoch = *(v10 + 16);
  *&time.start.value = v19;
  lhs.value = v98;
  lhs.timescale = v99;
  lhs.flags = flags;
  lhs.epoch = epoch;
  v20 = 0;
  if (CMTimeCompare(&time.start, &lhs) < 0)
  {
    while (1)
    {
      HIDWORD(v90) = bufferedAudioEngine_prepareOneMessageForSending(*a1, 1, &v78);
      if (HIDWORD(v90) == -72095)
      {
        goto LABEL_103;
      }

      if (!v78)
      {
        break;
      }

      ++v20;
      v21 = *v10;
      time.start.epoch = *(v10 + 16);
      *&time.start.value = v21;
      lhs.value = v98;
      lhs.timescale = v99;
      lhs.flags = flags;
      lhs.epoch = epoch;
      if ((CMTimeCompare(&time.start, &lhs) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }
    }

    v24 = *(a1 + 1);
    *(v59 + 1272) = a1[3];
    *(v59 + 1256) = v24;
    v25 = *v10;
    time.start.epoch = *(v10 + 16);
    *&time.start.value = v25;
    rhs = *v9;
    CMTimeSubtract(&lhs, &time.start, &rhs);
    rhs = *v70;
    CMTimeAdd(&time.start, &lhs, &rhs);
    start = time.start;
    if (gLogCategory_APAudioEngineBuffered > 90)
    {
LABEL_103:
      v27 = v61;
      v26 = v62;
      goto LABEL_104;
    }

    v27 = v61;
    v26 = v62;
    if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
    {
      if (*a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v44 = *v57;
      time.start.epoch = *(v57 + 2);
      *&time.start.value = v44;
      CMTimeGetSeconds(&time.start);
      time.start = start;
      CMTimeGetSeconds(&time.start);
      *&time.start.value = *(v59 + 1256);
      time.start.epoch = *(v59 + 1272);
      CMTimeGetSeconds(&time.start);
      LogPrintF();
      goto LABEL_103;
    }

LABEL_104:
    v14 = flags;
  }

  else
  {
LABEL_45:
    v22 = *v10;
    time.start.epoch = *(v10 + 16);
    *&time.start.value = v22;
    rhs = *v9;
    CMTimeSubtract(&lhs, &time.start, &rhs);
    rhs = *v70;
    CMTimeAdd(&time.start, &lhs, &rhs);
    start = time.start;
    if (gLogCategory_APAudioEngineBuffered >= 51)
    {
      v23 = *v10;
      v77.epoch = *(v10 + 16);
      *&v77.value = v23;
    }

    else
    {
      if (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize())
      {
        if (*a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v28 = *v10;
        time.start.epoch = *(v10 + 16);
        *&time.start.value = v28;
        CMTimeGetSeconds(&time.start);
        time.start = start;
        CMTimeGetSeconds(&time.start);
        LogPrintF();
      }

      v29 = *(v10 + 16);
      *&v77.value = *v10;
      v77.epoch = v29;
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (*a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        time.start = v77;
        CMTimeGetSeconds(&time.start);
        time.start.value = v98;
        time.start.timescale = v99;
        time.start.flags = flags;
        time.duration = duration;
        time.start.epoch = epoch;
        CMTimeRangeGetEnd(&lhs, &time);
        CMTimeGetSeconds(&lhs);
        LogPrintF();
      }
    }

    for (i = 0; ; ++i)
    {
      time.start.value = v98;
      time.start.timescale = v99;
      v14 = flags;
      time.start.flags = flags;
      time.start.epoch = epoch;
      time.duration = duration;
      CMTimeRangeGetEnd(&lhs, &time);
      time.start = v77;
      if ((CMTimeCompare(&time.start, &lhs) & 0x80000000) == 0)
      {
        break;
      }

      v31 = *a1;
      v32 = CMBaseObjectGetDerivedStorage();
      if (*v32 || !CMBufferQueueGetBufferCount(*(v32 + 1192)))
      {
        goto LABEL_84;
      }

      v33 = bufferedAudioEngine_processAndRetainSBufFromBufferQueue(v31, 1);
      if (!v33)
      {
        if (gLogCategory_APAudioEngineBuffered <= 30 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          bufferedAudioEngine_flushWithinSampleRangeInternal_cold_9();
        }

LABEL_84:
        HIDWORD(v90) = 0;
        v40 = a1[3];
        *(v59 + 1256) = *(a1 + 1);
        *(v59 + 1272) = v40;
        time.start = v77;
        rhs = *v9;
        CMTimeSubtract(&lhs, &time.start, &rhs);
        rhs = *v70;
        CMTimeAdd(&time.start, &lhs, &rhs);
        start = time.start;
        v27 = v61;
        if (gLogCategory_APAudioEngineBuffered <= 90 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
        {
          if (*a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          time.start = v77;
          CMTimeGetSeconds(&time.start);
          time.start = start;
          CMTimeGetSeconds(&time.start);
          *&time.start.value = *(v59 + 1256);
          time.start.epoch = *(v59 + 1272);
          CMTimeGetSeconds(&time.start);
          LogPrintF();
        }

        *v10 = v100;
        *(v10 + 8) = v101;
        v14 = flags;
        *(v59 + 768) = flags;
        *(v10 + 16) = epoch;
        v4 = v60;
        v26 = v62;
        goto LABEL_105;
      }

      v34 = v33;
      FormatDescription = CMSampleBufferGetFormatDescription(v33);
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
      if (StreamBasicDescription)
      {
        p_mSampleRate = &StreamBasicDescription->mSampleRate;
        v38 = CMSampleBufferGetNumSamples(v34) * StreamBasicDescription->mFramesPerPacket;
        if (v38)
        {
          CMTimeMake(&time.start, v38, *p_mSampleRate);
          lhs = v77;
          CMTimeAdd(&v77, &lhs, &time.start);
        }

        v39 = 0;
      }

      else
      {
        bufferedAudioEngine_flushWithinSampleRangeInternal_cold_8();
        v39 = -72091;
      }

      CFRelease(v34);
      HIDWORD(v90) = v39;
    }

    time.start = v77;
    rhs = *v9;
    CMTimeSubtract(&lhs, &time.start, &rhs);
    rhs = *v70;
    CMTimeAdd(&time.start, &lhs, &rhs);
    start = time.start;
    v27 = v61;
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      if (*a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      time.start = v77;
      CMTimeGetSeconds(&time.start);
      time.start = start;
      CMTimeGetSeconds(&time.start);
      LogPrintF();
      v14 = flags;
    }

    v26 = v62;
    if ((v11 & 0x1D) == 1)
    {
      v4 = v60;
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (*a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        time.start.value = v94;
        time.start.timescale = v95;
        time.start.flags = v11;
        time.start.epoch = v66;
        CMTimeGetSeconds(&time.start);
        v41 = *v57;
        time.start.epoch = *(v57 + 2);
        *&time.start.value = v41;
        CMTimeGetSeconds(&time.start);
        LogPrintF();
        v14 = flags;
      }

      *(v59 + 992) = 1;
      *(v59 + 653) = 0;
      v42 = v100;
      *v57 = v100;
      v43 = v101;
      *(v57 + 2) = v101;
      *(v59 + 768) = v14;
      *(v57 + 2) = epoch;
      time.start.value = v42;
      time.start.timescale = v43;
      time.start.flags = v14;
      time.start.epoch = epoch;
      bufferedAudioEngine_updateNextTranscodeBurstTimeAndUnRest();
    }

    else
    {
      bufferedAudioEngine_flushWithinSampleRangeInternal_cold_10(&v90 + 1);
      v4 = v60;
    }
  }

LABEL_105:
  if (v13 >= 1)
  {
    v45 = *a1;
    v46 = v79;
    v47 = v90;
    v71 = v89;
    v63 = *(v82 + 6);
    v64 = *(v86 + 6);
    v67 = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
    {
      bufferedAudioEngine_flushWithinSampleRangeInternal_cold_12();
    }

    v48 = *(v67 + 640);
    if (!v48)
    {
LABEL_111:
      HIDWORD(v90) = 0;
      a1 = v68;
      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (*v68)
        {
          CMBaseObjectGetDerivedStorage();
        }

        time.start.value = v4;
        time.start.timescale = v27;
        time.start.flags = v65;
        time.start.epoch = v26;
        CMTimeGetSeconds(&time.start);
        v54 = *v57;
        time.start.epoch = *(v57 + 2);
        *&time.start.value = v54;
        CMTimeGetSeconds(&time.start);
        LogPrintF();
      }

      goto LABEL_147;
    }

    while (1)
    {
      if ((v48[2].n128_u16[1] - v46) >= 1)
      {
        v48[2].n128_u16[1] = v46;
      }

      if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
      {
        if (v45)
        {
          CMBaseObjectGetDerivedStorage();
        }

        bufferedAudioEngine_getSentBufferLevelTime(v48, &time.start);
        CMTimeGetSeconds(&time.start);
        LogPrintF();
        v4 = v60;
        v27 = v61;
        v26 = v62;
        v14 = flags;
      }

      if (v48[2].n128_u8[0])
      {
        v49 = 1;
      }

      else
      {
        v49 = *(v67 + 577) == 0;
      }

      if (v71 == v47 || !v49)
      {
        v53 = v63;
        v52 = v64;
        if (v64 == v63)
        {
          LOBYTE(v49) = 1;
        }

        if (v49)
        {
          if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
          {
            if (v45)
            {
              CMBaseObjectGetDerivedStorage();
            }

            LogPrintF();
          }

          goto LABEL_140;
        }

        time.start.value = v100;
        time.start.timescale = v101;
        time.start.flags = v14;
        time.start.epoch = epoch;
        lhs.value = v4;
        lhs.timescale = v27;
        lhs.flags = v65;
        lhs.epoch = v26;
        v50 = v45;
        v51 = v48;
      }

      else
      {
        time.start.value = v100;
        time.start.timescale = v101;
        time.start.flags = v14;
        time.start.epoch = epoch;
        lhs.value = v4;
        lhs.timescale = v27;
        lhs.flags = v65;
        lhs.epoch = v26;
        v50 = v45;
        v51 = v48;
        v52 = v71;
        v53 = v47;
      }

      bufferedAudioEngine_flushHoseWithinSampleRange(v50, v51, v52, &time.start.value, v53, &lhs);
LABEL_140:
      v48 = v48->n128_u64[0];
      if (!v48)
      {
        goto LABEL_111;
      }
    }
  }

LABEL_147:
  bufferedAudioEngine_wakeUpHosesAndAudioTimer(*a1);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_149:
  v55 = HIDWORD(v90);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v85, 8);
  return v55;
}

uint64_t __bufferedAudioEngine_flushWithinSampleRangeInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  *(a3 + 4) = *(a1 + 96);
  v4 = *a3;
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  v5 = *(CMBaseObjectGetVTable() + 16);
  if (v5)
  {
    v6 = *(v5 + 24);
    if (v6)
    {
      v11 = v8;
      v12 = v9;
      v6(v4, &v11, &v10 + 2, &v10);
    }
  }

  result = FigCFEqual();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = HIWORD(v10);
    *(*(*(a1 + 40) + 8) + 24) = v10;
  }

  return result;
}

uint64_t bufferedAudioEngine_flushHoseWithinSampleRange(const void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = *MEMORY[0x277CC08F0];
  *&v30.value = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  v30.epoch = v11;
  v29[0] = *MEMORY[0x277CEA038];
  v12 = v29[0];
  *(v29 + 12) = *(MEMORY[0x277CEA038] + 12);
  v28[0] = v12;
  *(v28 + 12) = *(v29 + 12);
  v26 = 0uLL;
  v27 = 0;
  bufferedAudioEngine_getLastSentRemoteMediaTimeForHose(a2, &v26);
  memset(&v25, 0, sizeof(v25));
  bufferedAudioEngine_getSentBufferLevelTime(a2, &v25);
  *lhs = v26;
  *&lhs[16] = v27;
  *rhs = *a4;
  *&rhs[16] = *(a4 + 2);
  CMTimeSubtract(&v30, lhs, rhs);
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    *lhs = v25;
    CMTimeGetSeconds(lhs);
    LogPrintF();
  }

  *rhs = v25;
  *v24 = v30;
  CMTimeSubtract(lhs, rhs, v24);
  *(a2 + 96) = *lhs;
  *(a2 + 112) = *&lhs[16];
  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    *lhs = v30;
    CMTimeGetSeconds(lhs);
    *lhs = v25;
    CMTimeGetSeconds(lhs);
    LogPrintF();
  }

  *(a2 + 64) = 256;
  *(a2 + 88) = 0;
  *(a2 + 80) = mach_absolute_time();
  *(a2 + 272) = 0;
  *(a2 + 120) = v22;
  *(a2 + 136) = v11;
  *lhs = *a4;
  *&lhs[16] = *(a4 + 2);
  *rhs = v26;
  *&rhs[16] = v27;
  if (CMTimeCompare(lhs, rhs) < 0)
  {
    v13 = *a4;
    *(a2 + 56) = *(a4 + 2);
    *(a2 + 40) = v13;
  }

  if (gLogCategory_APAudioEngineBuffered <= 50 && (gLogCategory_APAudioEngineBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    *lhs = *a4;
    *&lhs[16] = *(a4 + 2);
    CMTimeGetSeconds(lhs);
    *lhs = *a6;
    *&lhs[16] = *(a6 + 16);
    CMTimeGetSeconds(lhs);
    LogPrintF();
  }

  if (!*(DerivedStorage + 576))
  {
    SampleRateFromTransportAudioFormat = bufferedAudioEngine_getSampleRateFromTransportAudioFormat();
    *rhs = *a4;
    *&rhs[16] = *(a4 + 2);
    CMTimeConvertScale(lhs, rhs, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *a4 = *lhs;
    *(a4 + 2) = *&lhs[16];
    APSAudioTransportTimeMakeWithRTPTime();
    *rhs = *a6;
    *&rhs[16] = *(a6 + 16);
    CMTimeConvertScale(lhs, rhs, SampleRateFromTransportAudioFormat, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *a6 = *lhs;
    *(a6 + 16) = *&lhs[16];
    APSAudioTransportTimeMakeWithRTPTime();
    if (!a1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  *lhs = *a4;
  *&lhs[16] = *(a4 + 2);
  APSAudioTransportTimeMakeWithMediaTime();
  *lhs = *a6;
  *&lhs[16] = *(a6 + 16);
  APSAudioTransportTimeMakeWithMediaTime();
  if (a1)
  {
LABEL_26:
    CFRetain(a1);
  }

LABEL_27:
  v14 = *(a2 + 16);
  *v24 = v29[0];
  *&v24[12] = *(v29 + 12);
  *v23 = v28[0];
  *&v23[12] = *(v28 + 12);
  APSAudioProtocolDriverHoseControlProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v16 = *(ProtocolVTable + 16);
    if (v16)
    {
      v17 = *(v16 + 32);
      if (v17)
      {
        *lhs = *v24;
        *&lhs[12] = *&v24[12];
        *rhs = *v23;
        *&rhs[12] = *&v23[12];
        v17(v14, a3, lhs, a5, rhs, bufferedAudioEngine_hoseFlushWithinSampleRangeCallbackCompletionHandler, a1);
      }

      else
      {
        bufferedAudioEngine_hoseFlushWithinSampleRangeCallbackCompletionHandler(v14, 0, MEMORY[0x277CEA038], 0, MEMORY[0x277CEA038], 4294954514, a1);
      }
    }
  }

  ++*(a2 + 180);
  FigCFDictionaryApplyBlock();
  result = APMessageRingBufferedGetByteCountAtIndex(*(DerivedStorage + 616), (*(a2 + 34) + 1), (a2 + 144));
  if (result)
  {
    return bufferedAudioEngine_flushHoseWithinSampleRange_cold_1();
  }

  return result;
}

uint64_t bufferedAudioEngine_hoseFlushWithinSampleRangeCallbackCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  CMBaseObjectGetDerivedStorage();
  APSPriorityDispatcherSyncF();
  if (a7)
  {
    CFRelease(a7);
  }

  return 0;
}

uint64_t __bufferedAudioEngine_flushHoseWithinSampleRange_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(*(a1 + 32) + 24);
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v9 = v10;
  if (v10)
  {
    v11 = *(v9 + 48);
    if (v11)
    {
      result = v11(v5, v6);
      if (result)
      {
        v12 = *a3;
        v13 = *(*(a1 + 32) + 24);
        v14 = CMBaseObjectGetVTable();
        v16 = *(v14 + 16);
        result = v14 + 16;
        v15 = v16;
        if (v16)
        {
          v17 = *(v15 + 88);
          if (v17)
          {

            return v17(v12, v13);
          }
        }
      }
    }
  }

  return result;
}

uint64_t __bufferedAudioEngine_hoseFlushWithinSampleRangeCallbackCompletionHandlerInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(*(a1 + 32) + 24);
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v9 = v10;
  if (v10)
  {
    v11 = *(v9 + 48);
    if (v11)
    {
      result = v11(v5, v6);
      if (result)
      {
        v12 = *a3;
        v13 = *(*(a1 + 32) + 24);
        v14 = CMBaseObjectGetVTable();
        v16 = *(v14 + 16);
        result = v14 + 16;
        v15 = v16;
        if (v16)
        {
          v17 = *(v15 + 96);
          if (v17)
          {

            return v17(v12, v13);
          }
        }
      }
    }
  }

  return result;
}

double OUTLINED_FUNCTION_30_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24)
{
  *(v24 - 160) = a23;
  *(v24 - 144) = a24;

  return CMTimeGetSeconds((v24 - 160));
}

void OUTLINED_FUNCTION_35_0()
{
  *(v2 - 208) = *(v2 - 136);
  *(v2 - 200) = *(v2 - 128);
  *(v2 - 196) = v0;
  *(v2 - 192) = v1;
}

double OUTLINED_FUNCTION_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int128 a45, uint64_t a46)
{
  *(v46 - 240) = a45;
  *(v46 - 224) = a46;

  return CMTimeGetSeconds((v46 - 240));
}

double OUTLINED_FUNCTION_51@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 - 224) = a1;
  *(v2 - 240) = a2;

  return CMTimeGetSeconds((v2 - 240));
}

__n128 OUTLINED_FUNCTION_53@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_56@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *&STACK[0x280] = *a1;
  STACK[0x290] = a1[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_58()
{
  v2 = *(v1 - 160);
  *(v1 - 232) = v0;
  *(v1 - 220) = v2;
}

__n128 OUTLINED_FUNCTION_64()
{
  result = *(v0 - 192);
  *(v0 - 256) = result;
  *(v0 - 240) = *(v0 - 176);
  return result;
}

__n128 OUTLINED_FUNCTION_66()
{
  result = *(v0 - 160);
  *(v0 - 240) = result;
  *(v0 - 224) = *(v0 - 144);
  return result;
}

void OUTLINED_FUNCTION_74()
{

  bufferedAudioEngine_startRemoteMediaTimebaseWithReceiverAnchor();
}

double OUTLINED_FUNCTION_75@<D0>(int a1@<W8>)
{
  *(v2 - 232) = v1;
  *(v2 - 220) = a1;

  return CMTimeGetSeconds((v2 - 240));
}

CMTime *OUTLINED_FUNCTION_76@<X0>(CMTime *a1@<X8>)
{

  return CMTimeConvertScale(a1, &STACK[0x280], v1, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

CMTime *OUTLINED_FUNCTION_79@<X0>(CMTime *a1@<X8>, __int128 a2, uint64_t a3, uint64_t a4, CMTime *lhs, uint64_t lhs_8, CMTime *lhs_16, uint64_t a8, uint64_t a9)
{
  lhs_16 = a1;
  a2 = *(v9 - 64);
  a3 = *(v9 - 48);

  return CMTimeAdd(&a9, &lhs, &a2);
}

double OUTLINED_FUNCTION_81@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 224) = a1;

  return CMTimeGetSeconds((v1 - 240));
}

void OUTLINED_FUNCTION_82(void *a1, int a2, int a3, os_signpost_id_t a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v21, OS_SIGNPOST_INTERVAL_END, a4, a5, a6, &buf, 2u);
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44)
{
  *&v47[24] = a44;
  *&v47[16] = a43;
  *&v47[8] = a42;
  *v47 = a41;
  *(v45 - 240) = *v47;
  *(v44 + 60) = *&v47[12];
  return v45 - 240;
}

uint64_t OUTLINED_FUNCTION_84@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2C0] = a1;

  return CMTimeCompare(&STACK[0x2D0], &STACK[0x2B0]);
}

void OUTLINED_FUNCTION_85()
{
  *(v3 - 240) = v0;
  *(v2 + 60) = *(v3 - 160);
  v4 = *(v3 - 152);
  *(v3 - 232) = v1;
  *(v3 - 220) = v4;
}

uint64_t OUTLINED_FUNCTION_86(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31)
{
  *(v32 + 896) = 0xBFF0000000000000;
  *(v33 + 24) = a31;
  *(v33 + 40) = v34;
  return v31;
}

void *OUTLINED_FUNCTION_88()
{

  return malloc_type_calloc(v0, 8uLL, v1);
}

__n128 OUTLINED_FUNCTION_90@<Q0>(__n128 *a1@<X8>)
{
  *&STACK[0x330] = *(v1 - 192);
  STACK[0x340] = *(v1 - 176);
  result = *a1;
  *&STACK[0x310] = *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_92()
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMTime *time2, CMTime *time1, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 time2a, uint64_t time2_16, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, __int128 a21, uint64_t a22)
{
  time2a = a21;
  time2_16 = a22;
  time1a = v22;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_96()
{
  *&STACK[0x310] = *(v0 - 256);
  STACK[0x320] = *(v0 - 240);

  return CMTimeCompare(&STACK[0x310], &STACK[0x330]);
}

Float64 OUTLINED_FUNCTION_106@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CMTime *time, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

double OUTLINED_FUNCTION_107()
{
  *(v0 - 144) = *(v0 - 240);
  *(v0 - 128) = *(v0 - 224);

  return CMTimeGetSeconds((v0 - 144));
}

void OUTLINED_FUNCTION_108(uint64_t a1, __CFDictionary *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18)
{
  a17 = *(v18 - 64);
  a18 = *(v18 - 48);

  bufferedAudioEngine_setAudioFormatDurationDict(&a17, a2, a3);
}

uint64_t OUTLINED_FUNCTION_109@<X0>(unint64_t a1@<X8>)
{
  STACK[0x340] = a1;

  return CMTimeCompare((v1 - 256), &STACK[0x330]);
}

double OUTLINED_FUNCTION_110()
{
  *(v1 - 256) = *v0;
  *(v1 - 240) = *(v0 + 16);

  return CMTimeGetSeconds((v1 - 256));
}

uint64_t OUTLINED_FUNCTION_111()
{

  return CMBaseObjectGetProtocolVTable();
}

void *OUTLINED_FUNCTION_112()
{

  return bufferedAudioEngine_getHoseDecriptorFromHose();
}

__n128 OUTLINED_FUNCTION_113()
{
  result = *(v0 - 240);
  *(v0 - 160) = result;
  *(v0 - 144) = *(v0 - 224);
  return result;
}

__n128 OUTLINED_FUNCTION_116()
{
  result = *&STACK[0x250];
  *&STACK[0x280] = *&STACK[0x250];
  STACK[0x290] = STACK[0x260];
  return result;
}

__n128 OUTLINED_FUNCTION_118()
{
  result = *v0;
  *(v1 + 200) = *v0;
  *(v2 - 224) = *(v2 - 144);
  return result;
}

__n128 OUTLINED_FUNCTION_119()
{
  result = *v0;
  *(v1 + 232) = *v0;
  *(v2 - 192) = *(v2 - 144);
  return result;
}

__n128 OUTLINED_FUNCTION_120@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 + 200) = *a1;
  *(v2 - 224) = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_121@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 224) = *a1;
  *(v1 - 208) = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_122()
{
  result = *(v0 - 224);
  *&STACK[0x330] = result;
  STACK[0x340] = *(v0 - 208);
  return result;
}

__n128 OUTLINED_FUNCTION_124()
{
  result = *v0;
  *(v1 - 192) = *v0;
  *(v1 - 176) = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_125()
{
  result = *v0;
  *(v1 - 160) = *v0;
  *(v1 - 144) = v0[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_140(void *a1, int a2, int a3, os_signpost_id_t a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v21, OS_SIGNPOST_INTERVAL_END, a4, a5, a6, &buf, 2u);
}

uint64_t OUTLINED_FUNCTION_142()
{

  return CMBaseObjectGetDerivedStorage();
}

BOOL OUTLINED_FUNCTION_143()
{

  return os_signpost_enabled(v0);
}

uint64_t hidClient_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APHIDClientCreate(const __CFAllocator *a1, const __CFArray *a2, void *a3)
{
  if (a2)
  {
    if (_MergedGlobals_13 != -1)
    {
      APHIDClientCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      Instance[2] = 0;
      Instance[3] = 0;
      Instance[4] = 0;
      Instance[2] = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
      v8 = MEMORY[0x277CBF138];
      v9 = MEMORY[0x277CBF150];
      v7[3] = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v7[4] = CFDictionaryCreateMutable(a1, 0, v8, v9);
      CFArrayGetCount(a2);
      CFArrayApplyBlock();
      if (gLogCategory_APHIDClient <= 30 && (gLogCategory_APHIDClient != -1 || _LogCategory_Initialize()))
      {
        APHIDClientCreate_cold_2();
      }

      v10 = 0;
      *a3 = v7;
    }

    else
    {
      APHIDClientCreate_cold_3();
      return 4294895256;
    }
  }

  else
  {
    v10 = 4294895253;
    APHIDClientCreate_cold_4();
  }

  return v10;
}

void __APHIDClientCreate_block_invoke(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 32);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    CFDictionarySetValue(Mutable, @"Category", @"Automotive");
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      CFDictionarySetValue(v5, @"CountryCode", TypedValue);
    }

    CFDataGetTypeID();
    v7 = CFDictionaryGetTypedValue();
    CFDictionarySetValue(v5, @"ReportDescriptor", v7);
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    CFDictionarySetValue(v5, @"SerialNumber", v8);
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      CFDictionarySetValue(v5, @"Product", v9);
    }

    CFNumberGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      CFDictionarySetValue(v5, @"ProductID", v10);
    }

    CFDictionarySetValue(v5, @"Transport", @"AirPlay");
    CFNumberGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    if (v11)
    {
      CFDictionarySetValue(v5, @"VendorID", v11);
    }

    CFDictionarySetInt64();
    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    if (v12)
    {
      CFDictionarySetValue(v5, @"displayUUID", v12);
    }

    v13 = IOHIDUserDeviceCreate();
    if (v13)
    {
      v14 = v13;
      CFDictionarySetValue(v3[3], v8, v13);
      CFNumberGetTypeID();
      v15 = CFDictionaryGetTypedValue();
      if (v15)
      {
        CFDictionarySetValue(v3[4], v8, v15);
      }

      else
      {
        CFDictionarySetInt64();
      }

      CFArrayAppendValue(v3[2], a2);
      if (gLogCategory_APHIDClient <= 40 && (gLogCategory_APHIDClient != -1 || _LogCategory_Initialize()))
      {
        __APHIDClientCreate_block_invoke_cold_3(a2);
      }

      CFRelease(v14);
    }

    else
    {
      __APHIDClientCreate_block_invoke_cold_4();
    }

    CFRelease(v5);
  }

  else
  {
    __APHIDClientCreate_block_invoke_cold_5();
    if (gLogCategory_APHIDClient <= 60 && (gLogCategory_APHIDClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

uint64_t APHIDClientCopyHIDs(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a3 = v4;
  return 0;
}

uint64_t APHIDClientCopyInputModeForUUID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  CFNumberGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    *a3 = CFRetain(TypedValue);
  }

  else
  {
    APHIDClientCopyInputModeForUUID_cold_2();
  }

  return 0;
}

uint64_t APHIDClientSetInputModeForUUID(uint64_t a1, const void *a2, const void *a3)
{
  if (CFDictionaryContainsKey(*(a1 + 32), a2))
  {
    CFDictionarySetValue(*(a1 + 32), a2, a3);
    return 0;
  }

  else
  {
    APHIDClientSetInputModeForUUID_cold_1();
    return 4294895254;
  }
}

void hidClient_Finalize(void *a1)
{
  if (gLogCategory_APHIDClient <= 30 && (gLogCategory_APHIDClient != -1 || _LogCategory_Initialize()))
  {
    hidClient_Finalize_cold_1();
  }

  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }
}

uint64_t APCarPlayBTPairingInfoHelperGetTypeID()
{
  if (APCarPlayBTPairingInfoHelperGetTypeID_initOnce != -1)
  {
    APCarPlayBTPairingInfoHelperGetTypeID_cold_1();
  }

  return APCarPlayBTPairingInfoHelperGetTypeID_typeID;
}

uint64_t __APCarPlayBTPairingInfoHelperGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APCarPlayBTPairingInfoHelperGetTypeID_typeID = result;
  return result;
}

void _APCarPlayBTPairingInfoHelperFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t APCarPlayBTPairingInfoHelperCreate()
{
  if (APCarPlayBTPairingInfoHelperGetTypeID_initOnce != -1)
  {
    APCarPlayBTPairingInfoHelperGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v1 = Instance;
  if (!Instance)
  {
    APCarPlayBTPairingInfoHelperCreate_cold_5();
    goto LABEL_10;
  }

  Instance[2] = 0;
  Instance[3] = 0;
  v2 = Instance + 2;
  Instance[4] = 0;
  v3 = dispatch_queue_create("APCarPlayBTPairingInfoHelper", 0);
  *v2 = v3;
  if (!v3)
  {
    APCarPlayBTPairingInfoHelperCreate_cold_4();
LABEL_18:
    CFRelease(v1);
    v1 = 0;
    goto LABEL_10;
  }

  v4 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v4)
  {
    APCarPlayBTPairingInfoHelperCreate_cold_3();
    goto LABEL_18;
  }

  v5 = v4;
  v6 = *v2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v7 = getBTSessionAttachWithQueueSymbolLoc_ptr;
  v14 = getBTSessionAttachWithQueueSymbolLoc_ptr;
  if (!getBTSessionAttachWithQueueSymbolLoc_ptr)
  {
    v8 = MobileBluetoothLibrary();
    v12[3] = dlsym(v8, "BTSessionAttachWithQueue");
    getBTSessionAttachWithQueueSymbolLoc_ptr = v12[3];
    v7 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v7)
  {
    appended = apsession_appendControlSetupRequest_cold_9();
    return APCarPlayBTPairingInfoHelperIsPaired(appended);
  }

  v7("APCarPlayBTPairingInfoHelper", &callbacks, v5, v6);
LABEL_10:
  if (gLogCategory_APCarPlayBTPairingInfoHelper <= 30 && (gLogCategory_APCarPlayBTPairingInfoHelper != -1 || _LogCategory_Initialize()))
  {
    APCarPlayBTPairingInfoHelperCreate_cold_6();
  }

  return v1;
}

uint64_t APCarPlayBTPairingInfoHelperIsPaired(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (!a1)
  {
    APCarPlayBTPairingInfoHelperIsPaired_cold_3();
LABEL_10:
    v6 = 4294960591;
    goto LABEL_6;
  }

  if (!a2)
  {
    APCarPlayBTPairingInfoHelperIsPaired_cold_2();
    goto LABEL_10;
  }

  if (!a3)
  {
    APCarPlayBTPairingInfoHelperIsPaired_cold_1();
    goto LABEL_10;
  }

  v4 = *(a1 + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __APCarPlayBTPairingInfoHelperIsPaired_block_invoke;
  v8[3] = &unk_27849DB30;
  v8[6] = a1;
  v8[7] = a2;
  v8[4] = &v9;
  v8[5] = &v13;
  dispatch_sync(v4, v8);
  v5 = v14;
  v6 = *(v14 + 6);
  if (!v6)
  {
    *a3 = *(v10 + 24);
    v6 = *(v5 + 6);
  }

LABEL_6:
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void __APCarPlayBTPairingInfoHelperIsPaired_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 48) + 32))
  {
    return;
  }

  v27 = 0;
  memset(v23, 0, 512);
  v2 = *(*(MEMORY[0x28223BE20]() + 48) + 32);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v3 = getBTLocalDeviceGetPairedDevicesSymbolLoc_ptr;
  v31 = getBTLocalDeviceGetPairedDevicesSymbolLoc_ptr;
  if (!getBTLocalDeviceGetPairedDevicesSymbolLoc_ptr)
  {
    *&v37 = MEMORY[0x277D85DD0];
    *(&v37 + 1) = 0x40000000;
    *&v38 = __getBTLocalDeviceGetPairedDevicesSymbolLoc_block_invoke;
    *(&v38 + 1) = &unk_27849DBE0;
    *&v39 = &v28;
    v4 = MobileBluetoothLibrary();
    v5 = dlsym(v4, "BTLocalDeviceGetPairedDevices");
    *(*(v39 + 8) + 24) = v5;
    getBTLocalDeviceGetPairedDevicesSymbolLoc_ptr = *(*(v39 + 8) + 24);
    v3 = *(v29 + 24);
  }

  _Block_object_dispose(&v28, 8);
  if (v3)
  {
    v6 = v3(v2, v23, &v27, 256);
    v24[1] = v24;
    if (!v6)
    {
      v7 = *(a1 + 56);
      if (!v7)
      {
        return;
      }

      Count = CFArrayGetCount(v7);
      if (Count < 1)
      {
        return;
      }

      v8 = 0;
      v26 = &v30;
      v9 = *MEMORY[0x277CBECE8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v8);
        if (ValueAtIndex && v27 != 0)
        {
          break;
        }

        v12 = *(a1 + 32);
LABEL_32:
        ++v8;
        if (*(*(v12 + 8) + 24))
        {
          v21 = 1;
        }

        else
        {
          v21 = v8 == Count;
        }

        if (v21)
        {
          return;
        }
      }

      v13 = ValueAtIndex;
      v14 = 0;
      while (1)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v15 = v23[v14];
        v37 = 0u;
        v38 = 0u;
        v33 = 0;
        v34 = &v33;
        v35 = 0x2000000000;
        v16 = getBTDeviceGetAddressStringSymbolLoc_ptr;
        v36 = getBTDeviceGetAddressStringSymbolLoc_ptr;
        if (!getBTDeviceGetAddressStringSymbolLoc_ptr)
        {
          v28 = MEMORY[0x277D85DD0];
          v29 = 0x40000000;
          v30 = __getBTDeviceGetAddressStringSymbolLoc_block_invoke;
          v31 = &unk_27849DC08;
          v32 = &v33;
          v17 = MobileBluetoothLibrary();
          v18 = dlsym(v17, "BTDeviceGetAddressString");
          *(v32[1] + 24) = v18;
          getBTDeviceGetAddressStringSymbolLoc_ptr = *(v32[1] + 24);
          v16 = v34[3];
        }

        _Block_object_dispose(&v33, 8);
        if (!v16)
        {
          break;
        }

        appended = v16(v15, &v37, 256);
        if (appended)
        {
          goto LABEL_39;
        }

        v20 = CFStringCreateWithCString(v9, &v37, 0x8000100u);
        if (gLogCategory_APCarPlayBTPairingInfoHelper <= 50 && (gLogCategory_APCarPlayBTPairingInfoHelper != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (CFStringCompare(v13, v20, 1uLL) == kCFCompareEqualTo)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          if (gLogCategory_APCarPlayBTPairingInfoHelper <= 50 && (gLogCategory_APCarPlayBTPairingInfoHelper != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        if (v20)
        {
          CFRelease(v20);
        }

        v12 = *(a1 + 32);
        if (!*(*(v12 + 8) + 24) && ++v14 < v27)
        {
          continue;
        }

        goto LABEL_32;
      }

      appended = apsession_appendControlSetupRequest_cold_9();
LABEL_39:
      v22 = appended;
      __APCarPlayBTPairingInfoHelperIsPaired_block_invoke_cold_2();
      goto LABEL_40;
    }
  }

  else
  {
    v6 = apsession_appendControlSetupRequest_cold_9();
  }

  v22 = v6;
  __APCarPlayBTPairingInfoHelperIsPaired_block_invoke_cold_1();
LABEL_40:
  *(*(*(a1 + 40) + 8) + 24) = v22;
  if (gLogCategory_APCarPlayBTPairingInfoHelper <= 90 && (gLogCategory_APCarPlayBTPairingInfoHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t APCarPlayBTPairingInfoHelperDissociate(uint64_t a1)
{
  if (!a1)
  {
    APCarPlayBTPairingInfoHelperDissociate_cold_2();
    return 4294960591;
  }

  v1 = (a1 + 24);
  if (*(a1 + 24))
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2000000000;
    v2 = getBTSessionDetachWithQueueSymbolLoc_ptr;
    v9 = getBTSessionDetachWithQueueSymbolLoc_ptr;
    if (!getBTSessionDetachWithQueueSymbolLoc_ptr)
    {
      v3 = MobileBluetoothLibrary();
      v7[3] = dlsym(v3, "BTSessionDetachWithQueue");
      getBTSessionDetachWithQueueSymbolLoc_ptr = v7[3];
      v2 = v7[3];
    }

    _Block_object_dispose(&v6, 8);
    if (!v2)
    {
      appended = apsession_appendControlSetupRequest_cold_9();
      return __getBTSessionAttachWithQueueSymbolLoc_block_invoke(appended);
    }

    v2(v1);
  }

  result = 0;
  *v1 = 0;
  return result;
}

void *__getBTSessionAttachWithQueueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileBluetoothLibrary();
  result = dlsym(v2, "BTSessionAttachWithQueue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBTSessionAttachWithQueueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileBluetoothLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MobileBluetoothLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 0x40000000;
    v3[3] = __MobileBluetoothLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_tmp_11;
    v3[5] = v3;
    v4 = xmmword_27849DB78;
    v5 = 0;
    MobileBluetoothLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MobileBluetoothLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!MobileBluetoothLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MobileBluetoothLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileBluetoothLibraryCore_frameworkLibrary = result;
  return result;
}

void BluetoothSessionEvent(uint64_t a1, int a2, int a3, const void *a4)
{
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    v9 = v8;
    if ((a2 - 1) >= 3)
    {
      if (a2)
      {
LABEL_22:
        CFRelease(v9);
        return;
      }

      if (!a3)
      {
        if (*(v8 + 24) != a1)
        {
          *(v8 + 24) = a1;
          v13 = 0;
          v14 = &v13;
          v15 = 0x2000000000;
          v10 = getBTLocalDeviceGetDefaultSymbolLoc_ptr;
          v16 = getBTLocalDeviceGetDefaultSymbolLoc_ptr;
          if (!getBTLocalDeviceGetDefaultSymbolLoc_ptr)
          {
            v11 = MobileBluetoothLibrary();
            v14[3] = dlsym(v11, "BTLocalDeviceGetDefault");
            getBTLocalDeviceGetDefaultSymbolLoc_ptr = v14[3];
            v10 = v14[3];
          }

          _Block_object_dispose(&v13, 8);
          if (!v10)
          {
            appended = apsession_appendControlSetupRequest_cold_9();
            __getBTLocalDeviceGetDefaultSymbolLoc_block_invoke(appended);
            return;
          }

          if (v10(a1, v9 + 32) && gLogCategory_APCarPlayBTPairingInfoHelper <= 90 && (gLogCategory_APCarPlayBTPairingInfoHelper != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        goto LABEL_22;
      }

      if (gLogCategory_APCarPlayBTPairingInfoHelper <= 90 && (gLogCategory_APCarPlayBTPairingInfoHelper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
    }

    if (a4)
    {
      CFRelease(a4);
    }

    goto LABEL_22;
  }
}

void *__getBTLocalDeviceGetDefaultSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileBluetoothLibrary();
  result = dlsym(v2, "BTLocalDeviceGetDefault");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBTLocalDeviceGetDefaultSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBTLocalDeviceGetPairedDevicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileBluetoothLibrary();
  result = dlsym(v2, "BTLocalDeviceGetPairedDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBTLocalDeviceGetPairedDevicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBTDeviceGetAddressStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileBluetoothLibrary();
  result = dlsym(v2, "BTDeviceGetAddressString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBTDeviceGetAddressStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBTSessionDetachWithQueueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileBluetoothLibrary();
  result = dlsym(v2, "BTSessionDetachWithQueue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBTSessionDetachWithQueueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t APEndpointPlaybackSessionAirPlayCreate(uint64_t a1, const void *a2, const void *a3, const __CFDictionary *a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  *label = 0u;
  v26 = 0u;
  if (!a2)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_11();
    return 4294950556;
  }

  if (!a3)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_10();
    return 4294950556;
  }

  FigEndpointPlaybackSessionGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v23 = v10;
    APEndpointPlaybackSessionAirPlayCreate_cold_1();
    return v23;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = FigSimpleMutexCreate();
  *(DerivedStorage + 48) = v12;
  if (!v12)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_9();
    return 4294950555;
  }

  *(DerivedStorage + 57) = 0;
  v13 = FigSimpleMutexCreate();
  *(DerivedStorage + 168) = v13;
  if (!v13)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_8();
    return 4294950555;
  }

  *(DerivedStorage + 152) = 1;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 160) = Mutable;
  if (!Mutable)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_7();
    return 4294950555;
  }

  SNPrintF();
  v15 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 120) = v15;
  if (!v15)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_6();
    return 4294950555;
  }

  SNPrintF();
  v16 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 176) = v16;
  if (!v16)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_5();
    return 4294950555;
  }

  SNPrintF();
  v17 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 40) = v17;
  if (!v17)
  {
    APEndpointPlaybackSessionAirPlayCreate_cold_4();
    return 4294950555;
  }

  if (a1)
  {
    v18 = a1;
  }

  else
  {
    v18 = @"unnamed APEndpointPlaybackSessionAirPlay";
  }

  *DerivedStorage = v18;
  CFRetain(v18);
  if (CFDictionaryContainsKey(a4, @"VolumeDB"))
  {
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    apPlayback_setPropertyInternal(0, @"VolumeDB", TypedValue);
  }

  *(DerivedStorage + 16) = CFRetain(a2);
  *(DerivedStorage + 32) = CFRetain(a3);
  if (CFDictionaryContainsKey(a4, @"MetadataSource"))
  {
    Value = CFDictionaryGetValue(a4, @"MetadataSource");
    *(DerivedStorage + 96) = CFRetain(Value);
  }

  if (CFDictionaryContainsKey(a4, @"NetworkClock"))
  {
    v21 = CFDictionaryGetValue(a4, @"NetworkClock");
    *(DerivedStorage + 24) = CFRetain(v21);
  }

  v22 = APEndpointPlaybackSessionStatsCreate(@"AP", a1, a4, (DerivedStorage + 224));
  if (v22)
  {
    v23 = v22;
    APEndpointPlaybackSessionAirPlayCreate_cold_2();
  }

  else
  {
    if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      APEndpointPlaybackSessionAirPlayCreate_cold_3();
    }

    v23 = 0;
    *a5 = 0;
  }

  return v23;
}

void apPlayback_setPropertyInternal(void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"VolumeDB"))
  {
    CFGetDouble();
    v8 = v7;
    v9 = CMBaseObjectGetDerivedStorage();
    if (*(v9 + 88) != v8)
    {
      v10 = v9;
      *(v9 + 88) = v8;
      *(v9 + 92) = 1;
      if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (*(v10 + 72))
      {
        CFRetain(a1);
        v15 = *(v10 + 176);

        dispatch_async_f(v15, a1, apPlayback_processPendingAudioVolumeChanges);
      }
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CC10B8]))
  {
    v11 = *(DerivedStorage + 80);
    *(DerivedStorage + 80) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (FigCFEqual())
    {
      v12 = @"moviePlayback";
    }

    else
    {
      v12 = @"default";
    }

    apPlayback_SetProxiedProperty(a1, @"audioMode", 0, v12);
  }

  else if (CFEqual(a2, *MEMORY[0x277CC10D0]))
  {
    Value = CFBooleanGetValue(a3);
    v14 = *(DerivedStorage + 224);

    APEndpointPlaybackSessionSetIsParticipatingInCoordinatedPlayback(v14, Value);
  }

  else if (CFEqual(a2, *MEMORY[0x277CC1108]))
  {
    memset(&v18, 0, sizeof(v18));
    CMTimeMakeFromDictionary(&v18, a3);
    v16 = *(DerivedStorage + 224);
    v17 = v18;
    APEndpointPlaybackSessionSetVideoSyncTime(v16, &v17);
  }

  else if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_setPropertyInternal_cold_1();
  }
}

uint64_t apPlayback_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (!*(DerivedStorage + 57))
  {
    *(DerivedStorage + 57) = 1;
    APEndpointPlaybackSessionStatsUpdateAtInvalidate(*(DerivedStorage + 224));
    apPlayback_unsubscribeMetadataEvents();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  v2 = *(v1 + 8);
  if (v2)
  {

    *(v1 + 8) = 0;
  }

  return 0;
}

void apPlayback_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_Finalize_cold_1();
  }

  *(DerivedStorage + 72) = 0;
  *(DerivedStorage + 92) = 0;
  v1 = *(DerivedStorage + 80);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 80) = 0;
  }

  v2 = *(DerivedStorage + 96);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 96) = 0;
  }

  v3 = *(DerivedStorage + 64);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 64) = 0;
  }

  v4 = *(DerivedStorage + 112);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 112) = 0;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_Finalize_cold_2();
  }

  if (v5[23])
  {
    v6 = v5[25];
    if (v6)
    {
      CFRetain(v6);
    }

    v7 = v5[2];
    if (v7)
    {
      CFRetain(v7);
    }

    v5[23] = 0;
    APSDispatchAsyncFHelper();
  }

  if (v5[24])
  {
    v5[24] = 0;
    v5[26] = 0;
    APSDispatchAsyncFHelper();
  }

  v8 = *(DerivedStorage + 216);
  if (v8)
  {
    APLocalPlaybackServerDestroy(v8);
    *(DerivedStorage + 216) = 0;
  }

  *(DerivedStorage + 128) = 0;
  *(DerivedStorage + 136) = 0;
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v9 = *(DerivedStorage + 16);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 16) = 0;
  }

  v10 = *(DerivedStorage + 24);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 24) = 0;
  }

  v11 = *(DerivedStorage + 32);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 32) = 0;
  }

  v12 = *(DerivedStorage + 200);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 200) = 0;
  }

  v13 = *(DerivedStorage + 144);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 144) = 0;
  }

  v14 = *(DerivedStorage + 120);
  if (v14)
  {
    dispatch_release(v14);
    *(DerivedStorage + 120) = 0;
  }

  FigSimpleMutexDestroy();
  v15 = *(DerivedStorage + 160);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 160) = 0;
  }

  v16 = *(DerivedStorage + 176);
  if (v16)
  {
    dispatch_release(v16);
    *(DerivedStorage + 176) = 0;
  }

  v17 = *(DerivedStorage + 40);
  if (v17)
  {
    dispatch_release(v17);
    *(DerivedStorage + 40) = 0;
  }

  FigSimpleMutexDestroy();
  APEndpointPlaybackSessionStatsDestroy((DerivedStorage + 224));
}

uint64_t apPlayback_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDictionaryRef *a4)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"RTCStats"))
  {
    if (*(DerivedStorage + 57))
    {
      apPlayback_CopyProperty_cold_2(&v11);
      return v11;
    }

    if (CFEqual(a2, *MEMORY[0x277CC10E0]))
    {
      goto LABEL_6;
    }

    if (!CFEqual(a2, *MEMORY[0x277CC1100]) && !CFEqual(a2, *MEMORY[0x277CC10F8]))
    {
      if (CFEqual(a2, *MEMORY[0x277CC10E8]))
      {
        if (!*(DerivedStorage + 32) || !APSGetFBOPropertyInt64())
        {
LABEL_6:
          v7 = MEMORY[0x277CBED10];
LABEL_10:
          *a4 = CFRetain(*v7);
          return v11;
        }
      }

      else if (!CFEqual(a2, *MEMORY[0x277CC10F0]))
      {
        if (!CFEqual(a2, *MEMORY[0x277CC10D8]))
        {
          if (CFEqual(a2, @"Activated"))
          {
            v7 = MEMORY[0x277CBED28];
            v10 = *(DerivedStorage + 56);
          }

          else if (CFEqual(a2, @"IsPlaying"))
          {
            v7 = MEMORY[0x277CBED28];
            v10 = *(DerivedStorage + 58);
          }

          else
          {
            if (!CFEqual(a2, *MEMORY[0x277CC10C0]))
            {
              return -12787;
            }

            v7 = MEMORY[0x277CBED28];
            v10 = *(DerivedStorage + 72);
          }

          if (!v10)
          {
            v7 = MEMORY[0x277CBED10];
          }

          goto LABEL_10;
        }

        if (*(DerivedStorage + 32))
        {
          v9 = APSGetFBOPropertyInt64() > 2413299 && v11 == 0;
          v7 = MEMORY[0x277CBED28];
          if (!v9)
          {
            v7 = MEMORY[0x277CBED10];
          }

          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }

    v7 = MEMORY[0x277CBED28];
    goto LABEL_10;
  }

  APEndpointPlaybackSessionCopyRTCStats(*(DerivedStorage + 224), a4);
  if (!*a4)
  {
    apPlayback_CopyProperty_cold_1(&v11);
  }

  return v11;
}

uint64_t apPlayback_SetProperty(void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  apPlayback_setPropertyInternal(a1, a2, a3);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t apPlayback_unsubscribeMetadataEvents()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 96) && *(DerivedStorage + 104))
  {
    if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      apPlayback_unsubscribeMetadataEvents_cold_1();
    }

    APMetadataSourceRemoveEventCallback(*(DerivedStorage + 96), *(DerivedStorage + 104));
    *(DerivedStorage + 104) = 0;
  }

  return FigSimpleMutexUnlock();
}

void apPlayback_teardownTransportStream(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v3)
  {
    v3(v2, 1937010544, 0, 0);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v6)
    {
      v6(v4, 120, v5);
    }
  }

  CMBaseObject = FigTransportStreamGetCMBaseObject();
  if (CMBaseObject)
  {
    v8 = CMBaseObject;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v9)
    {
      v9(v8);
    }
  }

  CFRelease(*(a1 + 16));
  v10 = *(a1 + 8);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *a1;
  if (*a1)
  {

    CFRelease(v11);
  }
}

void apPlayback_invalidateTransportEventStream(const void **a1)
{
  v2 = *a1;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v3)
  {
    v3(v2, 0, 0, 0);
  }

  CMBaseObject = FigTransportStreamGetCMBaseObject();
  if (CMBaseObject)
  {
    v5 = CMBaseObject;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v6)
    {
      v6(v5);
    }
  }

  v7 = a1[1];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *a1;

  CFRelease(v8);
}

uint64_t apPlayback_AuthorizeItem(const void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_Play(const void *a1, const __CFDictionary *a2)
{
  v6[9] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6[0] = 0;
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_Play_cold_1(a2);
  }

  if (!*(DerivedStorage + 8))
  {
    SNPrintF();
    *(DerivedStorage + 8) = os_transaction_create();
  }

  APEndpointPlaybackSessionStatsUpdateAtPlay(*(DerivedStorage + 224), a2);
  CFRetain(a1);
  APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds(a2, v6);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_InsertPlayQueueItem(const void *a1, const __CFDictionary *a2, const __CFDictionary *a3)
{
  CMBaseObjectGetDerivedStorage();
  v7 = 0;
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_InsertPlayQueueItem_cold_1(a2, a3);
  }

  APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds(a2, &v7);
  if (a1)
  {
    CFRetain(a1);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_RemovePlayQueueItem(const void *a1, const __CFDictionary *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay > 50 || gLogCategory_APEndpointPlaybackSessionAirPlay == -1 && !_LogCategory_Initialize())
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  apPlayback_RemovePlayQueueItem_cold_1(a2);
  if (a1)
  {
LABEL_5:
    CFRetain(a1);
  }

LABEL_6:
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_Stop(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_Stop_cold_1();
  }

  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_GetPlaybackInfo(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_GetPlaybackInfo_cold_1();
  }

  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_SeekToTime(const void *a1, CMTime *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_SeekToTime_cold_1(a2);
  }

  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_SeekToDate(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_SetRate(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_GetProxiedProperty(const void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_SetProxiedProperty(const void *a1, const void *a2, const void *a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_PerformRemoteAction(const void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_SetEventHandler(const void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t apPlayback_BroadcastCoordinatedPlaybackState()
{
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 90 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_BroadcastCoordinatedPlaybackState_cold_1();
  }

  return 4294954514;
}

void apPlayback_authorizeItemInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = apPlayback_ensureTransportStreamsCreated();
  if (v2)
  {
    v7 = v2;
    apPlayback_authorizeItemInternal_cold_1();
  }

  else
  {
    CFDataGetBytePtr(*(a1 + 8));
    CFDataGetLength(*(a1 + 8));
    v3 = Base64EncodeCopyEx();
    if (v3)
    {
      v7 = v3;
      apPlayback_authorizeItemInternal_cold_2();
    }

    else
    {
      ASPrintF();
      apPlayback_authorizeItemInternal_cold_13();
      v7 = 4294950555;
    }
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v4(0, 0, v7, *(a1 + 32));
  }

  free(0);
  free(0);
  CFRelease(*a1);
  v5 = *(a1 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t apPlayback_sendSpecialMessageCreatingReply(uint64_t a1, uint64_t a2, __CFDictionary *a3, const void *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    apPlayback_sendSpecialMessageCreatingReply_cold_3();
    return 4294950556;
  }

  v10 = DerivedStorage;
  if (a4)
  {
    CFDictionarySetValue(a3, *MEMORY[0x277CEA360], a4);
  }

  Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], a3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    apPlayback_sendSpecialMessageCreatingReply_cold_2();
    return 4294950555;
  }

  v12 = Data;
  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (BlockBufferWithCFDataNoCopy)
  {
    v16 = BlockBufferWithCFDataNoCopy;
    apPlayback_sendSpecialMessageCreatingReply_cold_1();
    goto LABEL_11;
  }

  v14 = *(v10 + 184);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v15)
  {
    v16 = 4294954514;
LABEL_10:
    APSLogErrorAt();
    goto LABEL_11;
  }

  v16 = v15(v14, a2, 0, a5);
  if (v16)
  {
    goto LABEL_10;
  }

LABEL_11:
  CFRelease(v12);
  return v16;
}

uint64_t apPlayback_handleMessageCreatingReply(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  data = 0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    goto LABEL_15;
  }

  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 != 1702260340)
  {
    goto LABEL_18;
  }

  v9 = DerivedStorage;
  v10 = *MEMORY[0x277CBECE8];
  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  *(v21 + 6) = CFDataWithBlockBufferNoCopy;
  if (CFDataWithBlockBufferNoCopy)
  {
    APSLogErrorAt();
    v13 = 0;
    goto LABEL_11;
  }

  v12 = CFPropertyListCreateWithData(v10, data, 0, 0, 0);
  v13 = v12;
  if (!v12)
  {
LABEL_18:
    APSLogErrorAt();
    v13 = 0;
LABEL_20:
    *(v21 + 6) = -16740;
    goto LABEL_11;
  }

  v14 = CFGetTypeID(v12);
  if (v14 != CFDictionaryGetTypeID())
  {
    APSLogErrorAt();
    goto LABEL_20;
  }

  v15 = *(v9 + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __apPlayback_handleMessageCreatingReply_block_invoke;
  block[3] = &unk_27849DD00;
  block[4] = &v20;
  block[5] = v7;
  block[6] = v13;
  block[7] = v9;
  dispatch_sync(v15, block);
  *a5 = 0;
LABEL_11:
  CFRelease(v7);
  if (data)
  {
    CFRelease(data);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_15:
  v16 = *(v21 + 6);
  _Block_object_dispose(&v20, 8);
  return v16;
}

void __apPlayback_handleMessageCreatingReply_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  CMBaseObjectGetDerivedStorage();
  value = 0;
  v4 = &unk_27CFF1000;
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    FigSimpleMutexLock();
    apPlayback_handlePlaybackStateChanged(v3, TypedValue);
    FigSimpleMutexUnlock();
  }

  v6 = CFDictionaryContainsKey(v2, @"messageID");
  v7 = MEMORY[0x277CBECE8];
  if (v6)
  {
    LODWORD(v39[0]) = 0;
    if (!v2)
    {
      __apPlayback_handleMessageCreatingReply_block_invoke_cold_8();
      goto LABEL_48;
    }

    v8 = CFDictionaryGetValue(v2, @"messageID");
    if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v8)
    {
      if (!CFDictionaryGetValue(v2, @"type"))
      {
        __apPlayback_handleMessageCreatingReply_block_invoke_cold_7();
        goto LABEL_48;
      }

      if (!FigCFEqual())
      {
        goto LABEL_48;
      }

      if (CFDictionaryGetValue(v2, @"error"))
      {
        FigCFDictionaryGetInt32IfPresent();
        v9 = LODWORD(v39[0]);
      }

      else
      {
        v9 = 0;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v37 = v9;
      v11 = *v7;
      Mutable = CFArrayCreateMutable(*v7, 0, MEMORY[0x277CBF128]);
      if (!Mutable)
      {
        __apPlayback_handleMessageCreatingReply_block_invoke_cold_6();
        goto LABEL_48;
      }

      v13 = Mutable;
      FigSimpleMutexLock();
      if (CFDictionaryContainsKey(*(DerivedStorage + 160), v8))
      {
        v14 = CFDictionaryGetValue(*(DerivedStorage + 160), v8);
        CFArrayAppendValue(v13, v14);
        CFDictionaryRemoveValue(*(DerivedStorage + 160), v8);
      }

      if (CFDictionaryGetCount(*(DerivedStorage + 160)) < 1)
      {
        FigSimpleMutexUnlock();
        v4 = &unk_27CFF1000;
        if (apPlayback_sendResultsSeekToTimeRequests(v13, v37, v2))
        {
          v16 = 0;
LABEL_96:
          APSLogErrorAt();
          CFRelease(v13);
          if (v16)
          {
LABEL_46:
            v23 = v16;
            goto LABEL_47;
          }

          goto LABEL_48;
        }

LABEL_36:
        v23 = v13;
LABEL_47:
        CFRelease(v23);
        goto LABEL_48;
      }

      v36 = v13;
      v15 = CMBaseObjectGetDerivedStorage();
      v16 = CFArrayCreateMutable(v11, 0, MEMORY[0x277CBF128]);
      if (v16)
      {
        Count = CFDictionaryGetCount(*(v15 + 160));
        v18 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
        if (!v18)
        {
          __apPlayback_handleMessageCreatingReply_block_invoke_cold_1(v16);
LABEL_94:
          __apPlayback_handleMessageCreatingReply_block_invoke_cold_5();
          v4 = &unk_27CFF1000;
          v13 = v36;
          goto LABEL_36;
        }

        v19 = v18;
        CFDictionaryGetKeysAndValues(*(v15 + 160), v18, 0);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            v21 = v19[i];
            if (CFNumberCompare(v21, v8, 0) == kCFCompareLessThan)
            {
              v22 = CFDictionaryGetValue(*(v15 + 160), v21);
              CFArrayAppendValue(v16, v22);
              CFDictionaryRemoveValue(*(v15 + 160), v21);
            }
          }

          v7 = MEMORY[0x277CBECE8];
        }
      }

      else
      {
        __apPlayback_handleMessageCreatingReply_block_invoke_cold_2();
        v19 = 0;
      }

      free(v19);
      FigSimpleMutexUnlock();
      if (v16)
      {
        v13 = v36;
        v4 = &unk_27CFF1000;
        if (!apPlayback_sendResultsSeekToTimeRequests(v36, v37, v2))
        {
          if (CFArrayGetCount(v16) >= 1)
          {
            if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
            {
              __apPlayback_handleMessageCreatingReply_block_invoke_cold_3(v16);
            }

            if (apPlayback_sendResultsSeekToTimeRequests(v16, 4294960574, v2))
            {
              __apPlayback_handleMessageCreatingReply_block_invoke_cold_4();
            }
          }

          CFRelease(v36);
          goto LABEL_46;
        }

        goto LABEL_96;
      }

      goto LABEL_94;
    }
  }

LABEL_48:
  CFDictionaryGetValue(v2, *MEMORY[0x277CC0E50]);
  if (FigCFDictionaryGetInt32IfPresent())
  {
    APEndpointPlaybackSessionStatsSetLastError();
  }

  CFStringGetTypeID();
  CFDictionaryGetTypedValue();
  if (FigCFEqual())
  {
    v24 = v4[44];
    if (v24 > 30)
    {
      v25 = 5;
      goto LABEL_64;
    }

    if (v24 == -1)
    {
      v25 = 5;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_64;
      }
    }

    else
    {
      v25 = 5;
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      goto LABEL_68;
    }

    v26 = v4[44];
    if (v26 > 30)
    {
      v25 = 4;
      goto LABEL_64;
    }

    if (v26 == -1)
    {
      v25 = 4;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_64;
      }
    }

    else
    {
      v25 = 4;
    }
  }

  LogPrintF();
LABEL_64:
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v27 = getMRMediaRemoteSendCommandSymbolLoc_ptr;
  v43 = getMRMediaRemoteSendCommandSymbolLoc_ptr;
  if (!getMRMediaRemoteSendCommandSymbolLoc_ptr)
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __getMRMediaRemoteSendCommandSymbolLoc_block_invoke;
    v39[3] = &unk_27849ACC8;
    v39[4] = &v40;
    __getMRMediaRemoteSendCommandSymbolLoc_block_invoke(v39);
    v27 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v27)
  {
    __apPlayback_handleMessageCreatingReply_block_invoke_cold_9();
  }

  v27(v25, 0);
LABEL_68:
  if (!FigCFEqual())
  {
    v29 = CFRetain(v2);
    goto LABEL_74;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*v7, 0, v2);
  v29 = MutableCopy;
  if (!MutableCopy)
  {
    __apPlayback_handleMessageCreatingReply_block_invoke_cold_11();
    v33 = -16741;
    goto LABEL_75;
  }

  v30 = *MEMORY[0x277CC0DD0];
  v31 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x277CC0DD0]);
  if (!v31)
  {
LABEL_74:
    v33 = 0;
    goto LABEL_75;
  }

  PlayPlaybackInfoTimesInCMTime = APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime(v31, &value);
  v33 = PlayPlaybackInfoTimesInCMTime;
  if (PlayPlaybackInfoTimesInCMTime)
  {
    __apPlayback_handleMessageCreatingReply_block_invoke_cold_10(PlayPlaybackInfoTimesInCMTime, v29);
    v29 = 0;
  }

  else
  {
    CFDictionarySetValue(v29, v30, value);
  }

LABEL_75:
  if (value)
  {
    CFRelease(value);
  }

  *(*(a1[4] + 8) + 24) = v33;
  if (*(*(a1[4] + 8) + 24))
  {
    __apPlayback_handleMessageCreatingReply_block_invoke_cold_12();
    if (v29)
    {
LABEL_81:
      CFRelease(v29);
    }
  }

  else
  {
    v34 = a1[7];
    v35 = v34[16];
    if (v35)
    {
      v35(a1[5], v29, v34[17], v34[18]);
    }

    if (v29)
    {
      goto LABEL_81;
    }
  }
}

void apPlayback_handlePlaybackStateChanged(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CFEqual(a2, *MEMORY[0x277CC11B8]);
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = *(v5 + 112);
  if (v4)
  {
    if (v6)
    {
      if (gLogCategory_APEndpointPlaybackSessionAirPlay > 30 || gLogCategory_APEndpointPlaybackSessionAirPlay == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v7 = APSPowerAssertionCreate();
    *(v5 + 112) = v7;
    if (v7)
    {
      APSPowerAssertionRaiseTemporary();
      if (gLogCategory_APEndpointPlaybackSessionAirPlay > 30 || gLogCategory_APEndpointPlaybackSessionAirPlay == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

LABEL_13:
      LogPrintF();
      goto LABEL_19;
    }

    apPlayback_handlePlaybackStateChanged_cold_1();
  }

  else if (v6)
  {
    if (gLogCategory_APEndpointPlaybackSessionAirPlay > 30)
    {
      goto LABEL_18;
    }

    if (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    v6 = *(v5 + 112);
    if (v6)
    {
LABEL_18:
      CFRelease(v6);
      *(v5 + 112) = 0;
    }
  }

LABEL_19:
  if (CFEqual(a2, *MEMORY[0x277CC11B0]))
  {
    v8 = 1;
  }

  else
  {
    v8 = CFEqual(a2, *MEMORY[0x277CC11C0]) != 0;
  }

  if (*(DerivedStorage + 58) != v8)
  {
    APSWiFiTransactionUpdateTransaction();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v10 = Mutable;
    v11 = MEMORY[0x277CBED10];
    if (v8)
    {
      v11 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"Playing", *v11);
    *(DerivedStorage + 58) = v8;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v10);
  }
}

uint64_t apPlayback_sendResultsSeekToTimeRequests(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (CFArrayGetCount(a1) < 1)
    {
      return 0;
    }

    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      BytePtr = CFDataGetBytePtr(ValueAtIndex);
      if (!BytePtr || !*BytePtr)
      {
        break;
      }

      (*BytePtr)(a3, a2, *(BytePtr + 1));
      if (++v6 >= CFArrayGetCount(a1))
      {
        return 0;
      }
    }
  }

  apPlayback_sendResultsSeekToTimeRequests_cold_1();
  return 4294950556;
}

void *__getMRMediaRemoteSendCommandSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaRemoteLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27849DD20;
    v6 = 0;
    MediaRemoteLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = MediaRemoteLibraryCore_frameworkLibrary_0;
  if (!MediaRemoteLibraryCore_frameworkLibrary_0)
  {
    MediaRemoteLibrary_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MRMediaRemoteSendCommand");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteSendCommandSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaRemoteLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void apPlayback_appendCommonPlayParamsToMessage(uint64_t a1, int a2, uint64_t a3, const void *a4, __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    APSVolumeConvertDBToClampedSliderValue();
  }

  CFDictionarySetDouble();
  GetDeviceModelString();
  CFDictionarySetCString();
  GetSystemBuildVersionString();
  CFDictionarySetCString();
  CFDictionarySetInt64();
  if (a4)
  {
    CFDictionarySetValue(a5, @"audioMode", a4);
  }
}

uint64_t apPlayback_sendPlistMessageCreatingReply(uint64_t a1, uint64_t a2, CFDataRef a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  cf = 0;
  if (a3)
  {
    Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], a3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!Data)
    {
      apPlayback_sendPlistMessageCreatingReply_cold_2();
      v14 = 0;
      v13 = 4294950555;
      goto LABEL_19;
    }

    a3 = Data;
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v13 = BlockBufferWithCFDataNoCopy;
      apPlayback_sendPlistMessageCreatingReply_cold_1();
      v14 = 0;
      goto LABEL_18;
    }

    v10 = cf;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(DerivedStorage + 184);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v12)
  {
    v13 = 4294954514;
    goto LABEL_15;
  }

  v13 = v12(v11, a2, v10, &v20);
  if (v13)
  {
LABEL_15:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v14 = 0;
  if (!a4 || !v20)
  {
LABEL_17:
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v15 = *MEMORY[0x277CBECE8];
  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  if (CFDataWithBlockBufferNoCopy)
  {
    v13 = CFDataWithBlockBufferNoCopy;
    apPlayback_sendPlistMessageCreatingReply_cold_3();
    goto LABEL_16;
  }

  v17 = CFPropertyListCreateWithData(v15, 0, 0, 0, 0);
  v14 = v17;
  if (v17)
  {
    v18 = CFGetTypeID(v17);
    if (v18 == CFDictionaryGetTypeID())
    {
      v13 = 0;
      *a4 = v14;
LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }

    apPlayback_sendPlistMessageCreatingReply_cold_4();
  }

  else
  {
    apPlayback_sendPlistMessageCreatingReply_cold_5();
  }

  v13 = 4294950556;
  if (a3)
  {
LABEL_18:
    CFRelease(a3);
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v13;
}

void apPlayback_handleMetadataEvent(uint64_t a1, const void *a2, int a3, const void *a4)
{
  if (!a4)
  {
    apPlayback_handleMetadataEvent_cold_2();
    return;
  }

  if (a3 > 1836217186)
  {
    if (a3 > 1886547814)
    {
      if (a3 == 1886547815)
      {
        return;
      }

      v4 = 1952807028;
    }

    else
    {
      if (a3 == 1836217187)
      {
        return;
      }

      v4 = 1852860704;
    }

    goto LABEL_11;
  }

  if (a3 != 1634629920)
  {
    if (a3 == 1634890784)
    {
      return;
    }

    v4 = 1836216435;
LABEL_11:
    if (a3 != v4 && gLogCategory_APEndpointPlaybackSessionAirPlay <= 90 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      apPlayback_handleMetadataEvent_cold_1();
    }

    return;
  }

  apPlayback_SetProxiedProperty(a2, @"metaData", 0, a4);
}

void apPlayback_seekToTimeInternal(uint64_t a1)
{
  v19 = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 184))
  {
    MutableCopy = 0;
    v13 = 0;
    Mutable = 0;
    v8 = 0;
    goto LABEL_26;
  }

  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    apPlayback_seekToTimeInternal_cold_7();
LABEL_42:
    MutableCopy = 0;
    goto LABEL_50;
  }

  time = *(a1 + 8);
  CMTimeGetSeconds(&time);
  ASPrintF();
  if (!v19)
  {
    apPlayback_seekToTimeInternal_cold_6();
    goto LABEL_42;
  }

  CFDictionarySetCString();
  v4 = *(a1 + 32);
  if (v4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, v4);
    if (!MutableCopy)
    {
      apPlayback_seekToTimeInternal_cold_1();
LABEL_50:
      v8 = 0;
      v13 = 4294950555;
      goto LABEL_26;
    }
  }

  else
  {
    MutableCopy = 0;
  }

  if (!APSGetFBOPropertyInt64())
  {
    v8 = 0;
    goto LABEL_22;
  }

  if (!MutableCopy)
  {
    MutableCopy = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!MutableCopy)
    {
      apPlayback_seekToTimeInternal_cold_5();
      goto LABEL_50;
    }
  }

  v17 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apPlayback_seekToTimeInternal_cold_2();
  }

  UInt64 = FigCFNumberCreateUInt64();
  if (!UInt64)
  {
    apPlayback_seekToTimeInternal_cold_4();
LABEL_49:
    apPlayback_seekToTimeInternal_cold_9();
    goto LABEL_50;
  }

  v8 = UInt64;
  ++*(DerivedStorage + 152);
  *&time.value = v17;
  v9 = CFDataCreate(v2, &time, 16);
  if (!v9)
  {
    apPlayback_seekToTimeInternal_cold_3(v8);
    goto LABEL_49;
  }

  v10 = v9;
  FigSimpleMutexLock();
  CFDictionarySetValue(*(DerivedStorage + 160), v8, v10);
  CFDictionaryGetCount(*(DerivedStorage + 160));
  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 50 && (gLogCategory_APEndpointPlaybackSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRelease(v10);
  CFDictionarySetValue(MutableCopy, @"messageID", v8);
LABEL_22:
  v11 = apPlayback_sendSpecialPlistMessageCreatingReply(*a1, 1936024939, Mutable, MutableCopy, 0);
  if (!v11)
  {
    if (v8)
    {
      free(v19);
      v12 = 0;
LABEL_30:
      CFRelease(Mutable);
      goto LABEL_31;
    }

    v13 = 0;
    goto LABEL_26;
  }

  v13 = v11;
  APSLogErrorAt();
  if (!v8)
  {
LABEL_26:
    v12 = 1;
    goto LABEL_27;
  }

  v16 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointPlaybackSessionAirPlay <= 30)
  {
    apPlayback_seekToTimeInternal_cold_8(gLogCategory_APEndpointPlaybackSessionAirPlay);
  }

  FigSimpleMutexLock();
  CFDictionaryRemoveValue(*(v16 + 160), v8);
  FigSimpleMutexUnlock();
  v12 = 0;
LABEL_27:
  v14 = *(a1 + 40);
  if (v14)
  {
    v14(0, v13, *(a1 + 48));
  }

  free(v19);
  if (Mutable)
  {
    goto LABEL_30;
  }

LABEL_31:
  CFRelease(*a1);
  v15 = *(a1 + 32);
  if (v15)
  {
    CFRelease(v15);
  }

  if ((v12 & 1) == 0)
  {
    CFRelease(v8);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

uint64_t apPlayback_sendSpecialPlistMessageCreatingReply(uint64_t a1, uint64_t a2, __CFDictionary *a3, CFDataRef Data, void *a5)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a3)
  {
    v10 = MEMORY[0x277CBECE8];
    if (Data && (Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], Data, kCFPropertyListBinaryFormat_v1_0, 0, 0)) == 0)
    {
      apPlayback_sendSpecialPlistMessageCreatingReply_cold_1();
      v12 = 0;
      v11 = 4294950555;
    }

    else
    {
      v11 = apPlayback_sendSpecialMessageCreatingReply(a1, a2, a3, Data, &cf);
      if (v11)
      {
        apPlayback_sendSpecialPlistMessageCreatingReply_cold_2();
        goto LABEL_11;
      }

      v12 = 0;
      if (!a5 || !cf)
      {
LABEL_12:
        if (!Data)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v13 = *v10;
      CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
      if (CFDataWithBlockBufferNoCopy)
      {
        v11 = CFDataWithBlockBufferNoCopy;
        apPlayback_sendSpecialPlistMessageCreatingReply_cold_3();
        goto LABEL_11;
      }

      v15 = CFPropertyListCreateWithData(v13, 0, 0, 0, 0);
      v12 = v15;
      if (v15)
      {
        v16 = CFGetTypeID(v15);
        if (v16 == CFDictionaryGetTypeID())
        {
          v11 = 0;
          *a5 = v12;
LABEL_11:
          v12 = 0;
          goto LABEL_12;
        }

        apPlayback_sendSpecialPlistMessageCreatingReply_cold_4();
      }

      else
      {
        apPlayback_sendSpecialPlistMessageCreatingReply_cold_5();
      }

      v11 = 4294950556;
      if (Data)
      {
LABEL_13:
        CFRelease(Data);
      }
    }
  }

  else
  {
    apPlayback_sendSpecialPlistMessageCreatingReply_cold_6();
    v12 = 0;
    v11 = 4294950556;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

void apPlayback_SetEventHandlerInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 128) = *(a1 + 8);
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(DerivedStorage + 144);
    *(DerivedStorage + 144) = v3;
    CFRetain(v3);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = *(a1 + 24);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t __APSRTPPacketHandlerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_280FB1B18 = result;
  return result;
}

unsigned int *APSRTPPacketHandlerReadExtendedHeader(unsigned int *result, _DWORD *a2, unsigned int **a3)
{
  if (!a2)
  {
    return APSRTPPacketHandlerReadExtendedHeader_cold_1();
  }

  v3 = *result;
  v4 = *result;
  *a2 = v4;
  if (v3 < 0)
  {
    v5 = bswap32(*result);
    v4 |= (v5 >> 2) & 0x3FFF00 | (v5 << 22);
    *a2 = v4;
  }

  if (a3)
  {
    v6 = (v4 & 0x80) == 0;
    v7 = result + 1;
    if (v6)
    {
      v7 = (result + 1);
    }

    *a3 = v7;
  }

  return result;
}

uint64_t APSRTPPacketHandlerGetSeqNumOfPacket(uint64_t a1, int a2)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    return (a2 - *(a1 + 1656) + (bswap32(*(v2 + 2)) >> 16) + 1);
  }

  else
  {
    APSRTPPacketHandlerGetSeqNumOfPacket_cold_1();
    LOWORD(v3) = 0;
  }

  return v3;
}

unsigned int *APSRTPPacketHandlerGetExtendedHeaderOfPacket(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v4 = *(a1 + 168);
  if (!v4)
  {
    return APSRTPPacketHandlerGetExtendedHeaderOfPacket_cold_1();
  }

  return APSRTPPacketHandlerReadExtendedHeader((v4 + 4 * a2 + 12), a3, 0);
}

uint64_t APAuthenticationClientFairPlayCreate(uint64_t a1, const void *a2, void *a3)
{
  if (a2)
  {
    APAuthenticationClientGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v6 = v5;
      APSLogErrorAt();
    }

    else
    {
      *(CMBaseObjectGetDerivedStorage() + 8) = a2;
      CFRetain(a2);
      if (gLogCategory_APAuthenticationClientFairPlay <= 30 && (gLogCategory_APAuthenticationClientFairPlay != -1 || _LogCategory_Initialize()))
      {
        APAuthenticationClientFairPlayCreate_cold_1();
      }

      v6 = 0;
      *a3 = 0;
    }
  }

  else
  {
    APAuthenticationClientFairPlayCreate_cold_2();
    return 4294895495;
  }

  return v6;
}

void fpAuthentication_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientFairPlay <= 30 && (gLogCategory_APAuthenticationClientFairPlay != -1 || _LogCategory_Initialize()))
  {
    fpAuthentication_Finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    IPaI1oem5iL();
    *DerivedStorage = 0;
  }

  v1 = DerivedStorage[1];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[1] = 0;
  }
}

__CFString *fpAuthentication_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAuthenticationClientFairPlay %p>", a1);
  return Mutable;
}

uint64_t fpAuthentication_AuthenticateEndpoint()
{
  dataPointerOut[4] = *MEMORY[0x277D85DE8];
  lengthAtOffsetOut = 0;
  dataPointerOut[0] = 0;
  v14 = 0;
  v13 = -1;
  v11 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  if (gLogCategory_APAuthenticationClientFairPlay <= 40 && (gLogCategory_APAuthenticationClientFairPlay != -1 || _LogCategory_Initialize()))
  {
    fpAuthentication_AuthenticateEndpoint_cold_1();
  }

  memset(&dataPointerOut[1], 0, 24);
  v1 = APCUGetFairPlayHWInfoEx();
  if (v1)
  {
    v4 = v1;
    fpAuthentication_AuthenticateEndpoint_cold_2();
  }

  else
  {
    if (*DerivedStorage)
    {
      IPaI1oem5iL();
      *DerivedStorage = 0;
    }

    cp2g1b9ro();
    if (v2)
    {
      v4 = v2;
      fpAuthentication_AuthenticateEndpoint_cold_3();
    }

    else
    {
      lengthAtOffsetOut = 0;
      dataPointerOut[0] = 0;
      Mib5yocT();
      if (v3)
      {
LABEL_21:
        v4 = v3;
LABEL_23:
        APSLogErrorAt();
      }

      else
      {
        while (1)
        {
          v4 = v13;
          if (!v13)
          {
            break;
          }

          if (v13 != 1)
          {
            APSLogErrorAt();
            v4 = 4294895494;
            break;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v11)
          {
            CFRelease(v11);
            v11 = 0;
          }

          BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
          if (BlockBufferCopyingMemoryBlock)
          {
            v4 = BlockBufferCopyingMemoryBlock;
            fpAuthentication_AuthenticateEndpoint_cold_4();
            break;
          }

          if (v15)
          {
            jEHf8Xzsv8K(v15);
            v15 = 0;
          }

          v6 = DerivedStorage[1];
          v7 = cf;
          v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v8)
          {
            v4 = 4294954514;
            goto LABEL_23;
          }

          v9 = v8(v6, 1718628917, v7, &v11);
          if (v9)
          {
            v4 = v9;
            goto LABEL_23;
          }

          CMBlockBufferGetDataPointer(v11, 0, &lengthAtOffsetOut, 0, dataPointerOut);
          Mib5yocT();
          if (v3)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v15)
  {
    jEHf8Xzsv8K(v15);
    v15 = 0;
  }

  if (v4)
  {
    if (*DerivedStorage)
    {
      IPaI1oem5iL();
      *DerivedStorage = 0;
    }

    if (gLogCategory_APAuthenticationClientFairPlay <= 60 && (gLogCategory_APAuthenticationClientFairPlay != -1 || _LogCategory_Initialize()))
    {
      fpAuthentication_AuthenticateEndpoint_cold_5();
    }
  }

  return v4;
}

uint64_t fpAuthentication_CreateEncryptedKey(uint64_t a1, const __CFData *a2, const __CFAllocator *a3, CFDataRef *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*CMBaseObjectGetDerivedStorage())
  {
    v14.location = 0;
    v14.length = 16;
    CFDataGetBytes(a2, v14, buffer);
    U4HBs();
    if (v7)
    {
      v9 = v7;
      fpAuthentication_CreateEncryptedKey_cold_1();
    }

    else
    {
      v8 = CFDataCreate(a3, 0, 0);
      if (v8)
      {
        v9 = 0;
        *a4 = v8;
      }

      else
      {
        fpAuthentication_CreateEncryptedKey_cold_2();
        v9 = 4294895496;
      }
    }
  }

  else
  {
    v9 = 4294895493;
    fpAuthentication_CreateEncryptedKey_cold_3();
  }

  jEHf8Xzsv8K(0);
  for (i = 0; i != 16; ++i)
  {
    buffer[i] = 0;
  }

  return v9;
}

uint64_t APEndpointStreamAggregateAudioCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, const void *a12, void *a13)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    APEndpointStreamAggregateAudioCreate_cold_22();
    return 4294950536;
  }

  if (!a5)
  {
    APEndpointStreamAggregateAudioCreate_cold_21();
    return 4294950536;
  }

  FigEndpointStreamAirPlayGetClassID();
  v19 = CMDerivedObjectCreate();
  if (v19)
  {
    v43 = v19;
    APEndpointStreamAggregateAudioCreate_cold_1();
    return v43;
  }

  v46 = a7;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 192) = CFRetain(a2);
  *(DerivedStorage + 200) = a8;
  *(DerivedStorage + 201) = a9;
  *(DerivedStorage + 202) = a10;
  *(DerivedStorage + 203) = a11;
  if (a12)
  {
    v21 = CFRetain(a12);
  }

  else
  {
    v21 = 0;
  }

  *(DerivedStorage + 216) = v21;
  v22 = FigSimpleMutexCreate();
  *DerivedStorage = v22;
  if (!v22)
  {
    APEndpointStreamAggregateAudioCreate_cold_20();
    return 4294950535;
  }

  if (!a4)
  {
    APEndpointStreamAggregateAudioCreate_cold_19();
    return 4294950536;
  }

  *(DerivedStorage + 176) = CFRetain(a4);
  *(DerivedStorage + 184) = CFRetain(a5);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v24 = CFStringCreateWithFormat(a1, 0, @"%@-%llu-%@", a3, UpTimeNanoseconds, a2);
  *(DerivedStorage + 24) = v24;
  if (!v24)
  {
    APEndpointStreamAggregateAudioCreate_cold_18();
    return 4294950535;
  }

  v25 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 32) = Mutable;
  if (!Mutable)
  {
    APEndpointStreamAggregateAudioCreate_cold_17();
    return 4294950535;
  }

  v27 = CFArrayCreateMutable(v25, 0, MEMORY[0x277CBF128]);
  *(DerivedStorage + 40) = v27;
  if (!v27)
  {
    APEndpointStreamAggregateAudioCreate_cold_16();
    return 4294950535;
  }

  v28 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 112) = v28;
  if (!v28)
  {
    APEndpointStreamAggregateAudioCreate_cold_15();
    return 4294950535;
  }

  v29 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 120) = v29;
  if (!v29)
  {
    APEndpointStreamAggregateAudioCreate_cold_14();
    return 4294950535;
  }

  *(DerivedStorage + 48) = 0;
  v30 = CMSimpleQueueCreate(v25, 32, (DerivedStorage + 88));
  if (v30)
  {
    v43 = v30;
    APEndpointStreamAggregateAudioCreate_cold_2();
    return v43;
  }

  SNPrintF();
  v31 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 208) = v31;
  if (!v31)
  {
    APEndpointStreamAggregateAudioCreate_cold_13();
    return 4294950535;
  }

  SNPrintF();
  v32 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 96) = v32;
  if (!v32)
  {
    APEndpointStreamAggregateAudioCreate_cold_12();
    return 4294950535;
  }

  v33 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 104) = v33;
  if (!v33)
  {
    APEndpointStreamAggregateAudioCreate_cold_11();
    return 4294950535;
  }

  *(DerivedStorage + 144) = 1065353216;
  *(DerivedStorage + 148) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 153) = 0;
  if (*(DerivedStorage + 203))
  {
    *(DerivedStorage + 153) = APSSettingsIsFeatureEnabled();
  }

  v34 = APSAudioFormatDescriptionListCreate();
  if (v34)
  {
    v43 = v34;
    APEndpointStreamAggregateAudioCreate_cold_3();
    return v43;
  }

  *(DerivedStorage + 18) = FigCFEqual();
  *(DerivedStorage + 19) = FigCFEqual();
  *(DerivedStorage + 20) = FigCFEqual();
  *(DerivedStorage + 152) = FigCFEqual();
  if (a6)
  {
    FigSimpleMutexLock();
    streamAggregateAudio_addSubStreamFromEndpoint();
    FigSimpleMutexUnlock();
  }

  else
  {
    if (!*(DerivedStorage + 202))
    {
      APEndpointStreamAggregateAudioCreate_cold_10(handler);
      return LODWORD(handler[0]);
    }

    v45 = streamAggregateAudio_enableLocalPlayback(0, v46);
    if (v45)
    {
      v43 = v45;
      APEndpointStreamAggregateAudioCreate_cold_4();
      return v43;
    }
  }

  if (!FigCFDictionaryGetCount())
  {
    APEndpointStreamAggregateAudioCreate_cold_9(handler);
    return LODWORD(handler[0]);
  }

  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    APEndpointStreamAggregateAudioCreate_cold_5();
  }

  SNPrintF();
  v35 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 160) = v35;
  if (!v35)
  {
    APEndpointStreamAggregateAudioCreate_cold_8();
    return 4294950535;
  }

  v36 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v36)
  {
    APEndpointStreamAggregateAudioCreate_cold_7(handler);
    return LODWORD(handler[0]);
  }

  v37 = v36;
  v38 = *(DerivedStorage + 160);
  v39 = CFRetain(v36);
  dispatch_set_context(v38, v39);
  dispatch_set_finalizer_f(*(DerivedStorage + 160), streamAggregateAudio_darwinQueueFinalizer);
  *(DerivedStorage + 168) = -1;
  v40 = CMBaseObjectGetDerivedStorage();
  if ((APSIsAPMSpeaker() || IsAppleTV()) && (v41 = *(v40 + 160), handler[0] = MEMORY[0x277D85DD0], handler[1] = 0x40000000, handler[2] = __streamAggregateAudio_registerForAirPlayPrefsChangedNotification_block_invoke, handler[3] = &__block_descriptor_tmp_121, handler[4] = v41, v42 = notify_register_dispatch("com.apple.airplay.prefsChanged", (v40 + 168), v41, handler), v42))
  {
    v43 = v42;
    APEndpointStreamAggregateAudioCreate_cold_6();
  }

  else
  {
    v43 = 0;
    *a13 = 0;
  }

  CFRelease(v37);
  return v43;
}

void streamAggregateAudio_addSubStreamFromEndpoint()
{
  CMBaseObjectGetDerivedStorage();
  if (FigEndpointCopyFirstStreamOfType())
  {
    streamAggregateAudio_addSubStreamFromEndpoint_cold_1();
  }
}

void streamAggregateAudio_darwinQueueFinalizer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t streamAggregateAudio_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 208);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 208) = 0;
  }

  FigSimpleMutexDestroy();
  v2 = *(DerivedStorage + 176);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 176) = 0;
  }

  v3 = *(DerivedStorage + 184);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 184) = 0;
  }

  v4 = *(DerivedStorage + 216);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 216) = 0;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }

  v6 = *(DerivedStorage + 32);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 32) = 0;
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 40) = 0;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  v9 = *(DerivedStorage + 112);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 112) = 0;
  }

  v10 = *(DerivedStorage + 120);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 120) = 0;
  }

  v11 = *(DerivedStorage + 128);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 128) = 0;
  }

  v12 = *(DerivedStorage + 136);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 136) = 0;
  }

  v13 = *(DerivedStorage + 80);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 80) = 0;
  }

  v14 = *(DerivedStorage + 8);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 8) = 0;
  }

  v16 = (DerivedStorage + 88);
  v15 = *(DerivedStorage + 88);
  if (v15)
  {
    v17 = CMSimpleQueueDequeue(v15);
    if (v17)
    {
      v18 = v17;
      do
      {
        if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
        {
          streamAggregateAudio_Finalize_cold_1();
        }

        free(v18);
        v18 = CMSimpleQueueDequeue(*v16);
      }

      while (v18);
    }

    if (*v16)
    {
      CFRelease(*v16);
      *v16 = 0;
    }

    v19 = *(DerivedStorage + 104);
    if (v19)
    {
      CFRelease(v19);
      *(DerivedStorage + 104) = 0;
    }
  }

  v20 = *(DerivedStorage + 96);
  if (v20)
  {
    dispatch_release(v20);
    *(DerivedStorage + 96) = 0;
  }

  v21 = *(DerivedStorage + 160);
  if (v21)
  {
    dispatch_release(v21);
    *(DerivedStorage + 160) = 0;
  }

  result = *(DerivedStorage + 168);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(DerivedStorage + 168) = -1;
  }

  return result;
}

uint64_t streamAggregateAudio_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  v26 = 0;
  cf = 0;
  v24 = 0;
  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 10 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_CopyProperty_cold_1();
  }

  if (CFEqual(a2, *MEMORY[0x277CC1900]))
  {
    v9 = *(DerivedStorage + 192);
    if (!v9)
    {
      streamAggregateAudio_CopyProperty_cold_2();
      ASRDArrayPCM = 4294954516;
      goto LABEL_42;
    }

LABEL_17:
    UInt32 = CFRetain(v9);
    if (UInt32)
    {
LABEL_18:
      ASRDArrayPCM = 0;
      *a4 = UInt32;
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1880]))
  {
    v11 = *(DerivedStorage + 48);
    if (v11 == 4 || v11 == 2)
    {
      v12 = MEMORY[0x277CBED28];
    }

    else
    {
      v12 = MEMORY[0x277CBED10];
    }

LABEL_16:
    v9 = *v12;
    goto LABEL_17;
  }

  if (CFEqual(a2, @"IsInUse"))
  {
    v13 = streamAggregateAudio_isInUse(*(DerivedStorage + 48));
    v12 = MEMORY[0x277CBED28];
    if (!v13)
    {
      v12 = MEMORY[0x277CBED10];
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1878]))
  {
    v9 = *(DerivedStorage + 24);
    goto LABEL_17;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18C8]))
  {
    ASRDArrayPCM = APSAudioFormatDescriptionListCreateASRDArrayPCM();
    if (ASRDArrayPCM)
    {
      streamAggregateAudio_CopyProperty_cold_3();
    }

    else
    {
      *a4 = cf;
      cf = 0;
    }

    goto LABEL_42;
  }

  if (FigCFEqual())
  {
    APSAudioFormatDescriptionListGetMaxChannelCount();
LABEL_27:
    UInt32 = FigCFNumberCreateUInt32();
    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    v15 = streamAggregateAudio_copySupportedAudioFormats(a1, &v25);
    if (v15)
    {
      ASRDArrayPCM = v15;
      streamAggregateAudio_CopyProperty_cold_4();
    }

    else
    {
      ASRDArrayPCM = APSAudioFormatDescriptionListCreateFigEndpointStreamAudioFormatDescriptionArray();
      if (ASRDArrayPCM)
      {
        streamAggregateAudio_CopyProperty_cold_5();
      }

      else
      {
        *a4 = v26;
        v26 = 0;
      }
    }

    goto LABEL_42;
  }

  if (FigCFEqual())
  {
    v16 = streamAggregateAudio_copySupportedAudioFormats(a1, &v25);
    if (v16)
    {
      ASRDArrayPCM = v16;
      streamAggregateAudio_CopyProperty_cold_6();
    }

    else
    {
      ASRDArrayPCM = APSAudioFormatDescriptionListCopyRichestFormatAsFigEndpointStreamAudioFormatDescription();
      if (ASRDArrayPCM)
      {
        streamAggregateAudio_CopyProperty_cold_7();
      }

      else
      {
        *a4 = v24;
        v24 = 0;
      }
    }

    goto LABEL_42;
  }

  if (FigCFEqual())
  {
    UInt32 = *(DerivedStorage + 8);
    if (!UInt32)
    {
      goto LABEL_18;
    }

LABEL_38:
    UInt32 = CFRetain(UInt32);
    goto LABEL_18;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      ASRDArrayPCM = streamAggregateAudio_copySupportedAudioCapabilities(a1, a4);
      if (ASRDArrayPCM)
      {
        streamAggregateAudio_CopyProperty_cold_9();
      }

      goto LABEL_42;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1840]))
    {
      ASRDArrayPCM = APAudioEngineVendorVend(*(DerivedStorage + 176), a4);
      if (ASRDArrayPCM)
      {
        streamAggregateAudio_CopyProperty_cold_10();
      }

      goto LABEL_42;
    }

    if (CFEqual(a2, @"HoseRegistrar"))
    {
      UInt32 = *(DerivedStorage + 80);
      if (!UInt32)
      {
        goto LABEL_18;
      }

      goto LABEL_38;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1870]))
    {
      IsCluster = streamAggregateAudio_subStreamHasRemoteStreamOrIsCluster();
      v20 = MEMORY[0x277CBED10];
      if (IsCluster)
      {
        v20 = MEMORY[0x277CBED28];
      }

      goto LABEL_61;
    }

    if (CFEqual(a2, @"SupportsAPAP"))
    {
      v21 = MEMORY[0x277CBED28];
      v22 = *(DerivedStorage + 18);
      goto LABEL_73;
    }

    if (CFEqual(a2, @"SupportsAPAT"))
    {
      v21 = MEMORY[0x277CBED28];
      v22 = *(DerivedStorage + 19);
      goto LABEL_73;
    }

    if (CFEqual(a2, *MEMORY[0x277CC18E0]))
    {
      v21 = MEMORY[0x277CBED28];
      v22 = *(DerivedStorage + 20);
      goto LABEL_73;
    }

    if (CFEqual(a2, @"EndpointIDs"))
    {
      ASRDArrayPCM = streamAggregateAudio_copyNonLocalEndpointIDs(a1, a4);
      if (ASRDArrayPCM)
      {
        streamAggregateAudio_CopyProperty_cold_11();
      }

      goto LABEL_42;
    }

    if (CFEqual(a2, *MEMORY[0x277CC18D8]))
    {
      if (APSSettingsIsFeatureEnabled())
      {
        v21 = MEMORY[0x277CBED28];
        v22 = *(DerivedStorage + 152);
LABEL_73:
        if (!v22)
        {
          v21 = MEMORY[0x277CBED10];
        }

        UInt32 = *v21;
        if (!*v21)
        {
          goto LABEL_18;
        }

        goto LABEL_38;
      }
    }

    else if (!CFEqual(a2, @"IsSidePlayStream"))
    {
      if (CFEqual(a2, @"NumberOfSubStreams"))
      {
        streamAggregateAudio_getTotalNumberOfAudioStreams();
        goto LABEL_27;
      }

      if (!CFEqual(a2, *MEMORY[0x277CC1838]))
      {
        ASRDArrayPCM = 4294954512;
        goto LABEL_42;
      }

      if (!*(DerivedStorage + 153) || streamAggregateAudio_getTotalNumberOfAudioStreams() < 3)
      {
        v20 = MEMORY[0x277CBED28];
        goto LABEL_61;
      }
    }

    v20 = MEMORY[0x277CBED10];
LABEL_61:
    UInt32 = *v20;
    goto LABEL_38;
  }

  valuePtr = APSAudioFormatDescriptionListGetLegacyFormatMask();
  v17 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
  *a4 = v17;
  if (v17)
  {
LABEL_41:
    ASRDArrayPCM = 0;
    goto LABEL_42;
  }

  streamAggregateAudio_CopyProperty_cold_8();
  ASRDArrayPCM = 4294950535;
LABEL_42:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return ASRDArrayPCM;
}

uint64_t streamAggregateAudio_isInUse(unsigned int a1)
{
  if (a1 >= 5)
  {
    if (gLogCategory_APEndpointStreamAggregateAudio <= 90 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_isInUse_cold_1();
    }

    LOBYTE(v1) = 0;
  }

  else
  {
    return (0x101010000uLL >> (8 * a1));
  }

  return v1;
}

uint64_t streamAggregateAudio_copySupportedAudioFormats(uint64_t a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    streamAggregateAudio_copySupportedAudioFormats_cold_4();
    return 4294950536;
  }

  if (CFEqual(*(DerivedStorage + 192), *MEMORY[0x277CC1968]))
  {
    v5 = streamAggregateAudio_copySupportedAudioFormatForBufferAudio(a1, &cf);
    if (!v5)
    {
      if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        streamAggregateAudio_copySupportedAudioFormats_cold_2();
      }

      goto LABEL_9;
    }

    v7 = v5;
    streamAggregateAudio_copySupportedAudioFormats_cold_1();
  }

  else
  {
    Copy = APSAudioFormatDescriptionListCreateCopy();
    if (!Copy)
    {
LABEL_9:
      v7 = 0;
      *a2 = cf;
      return v7;
    }

    v7 = Copy;
    streamAggregateAudio_copySupportedAudioFormats_cold_3();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t streamAggregateAudio_subStreamHasRemoteStreamOrIsCluster()
{
  if (*(CMBaseObjectGetDerivedStorage() + 200))
  {
    return 1;
  }

  v1 = FigCFDictionaryCopyArrayOfValues();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  if (Count < 1)
  {
LABEL_8:
    v0 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v2, v5);
      if (APSGetFBOPropertyInt64())
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_8;
      }
    }

    v0 = 1;
  }

  CFRelease(v2);
  return v0;
}

uint64_t streamAggregateAudio_copyNonLocalEndpointIDs(uint64_t a1, CFTypeRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (!a2)
  {
    streamAggregateAudio_copyNonLocalEndpointIDs_cold_2();
    return 4294950536;
  }

  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    streamAggregateAudio_copyNonLocalEndpointIDs_cold_1();
    return 4294950535;
  }

  v5 = Mutable;
  v6 = FigCFDictionaryCopyArrayOfValues();
  if (CFArrayGetCount(v6) < 1)
  {
LABEL_11:
    v12 = 0;
    *a2 = CFRetain(v5);
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v7 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v6, v7);
    if (!APSGetFBOPropertyInt64())
    {
      break;
    }

LABEL_10:
    if (++v7 >= CFArrayGetCount(v6))
    {
      goto LABEL_11;
    }
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v12 = 4294954514;
    goto LABEL_17;
  }

  v10 = v9(CMBaseObject, @"EndpointIDs", v3, &theArray);
  if (!v10)
  {
    v11 = theArray;
    v15.length = CFArrayGetCount(theArray);
    v15.location = 0;
    CFArrayAppendArray(v5, v11, v15);
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    goto LABEL_10;
  }

  v12 = v10;
LABEL_17:
  APSLogErrorAt();
  if (v6)
  {
LABEL_12:
    CFRelease(v6);
  }

LABEL_13:
  CFRelease(v5);
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v12;
}

uint64_t streamAggregateAudio_getTotalNumberOfAudioStreams()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFDictionaryCopyArrayOfValues();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Count = CFArrayGetCount(v0);
  if (Count < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = Count;
    v4 = 0;
    for (i = 0; i != v3; ++i)
    {
      CFArrayGetValueAtIndex(v1, i);
      if (APSGetFBOPropertyInt64())
      {
        v4 = (v4 + 1);
      }

      else if (APSGetFBOPropertyInt64())
      {
        v6 = APSGetFBOPropertyInt64();
        v4 = (v4 + v6);
      }
    }
  }

  CFRelease(v1);
  return v4;
}

uint64_t streamAggregateAudio_copySupportedAudioFormatForBufferAudio(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v8 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v6 = 0;
  CMBaseObjectGetDerivedStorage();
  FigGetCFPreferenceNumberWithDefault();
  CFDictionaryApplyBlock();
  if (*(v10 + 6))
  {
    streamAggregateAudio_copySupportedAudioFormatForBufferAudio_cold_1();
  }

  else if (a2)
  {
    APSAudioFormatDescriptionListCopyFilterFormatsForCurrentBufferedSenderWithEndpointStreamsInfo();
  }

  v3 = *(v10 + 6);
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v9, 8);
  return v3;
}

uint64_t streamAggregateAudio_setPropertyForAllSubStreamsInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionarySetValue();
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_setPropertyForAllSubStreamsInternal_cold_1();
  }

  context[1] = a3;
  v8 = 0;
  context[0] = a2;
  CFDictionaryApplyFunction(*(DerivedStorage + 32), streamAggregateAudio_setPropertyForSubStreamsIterator, context);
  return v8;
}

uint64_t streamAggregateAudio_removeSubStreamNotificationListeners()
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

void streamAggregateAudio_updateDynamicProperties(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v37 = 0;
  v35 = 0;
  v4 = FigCFEqual();
  v5 = FigCFEqual();
  v6 = FigCFEqual();
  v7 = FigCFEqual();
  v8 = FigCFEqual();
  if (*(DerivedStorage + 52))
  {
    streamAggregateAudio_updateDynamicProperties_cold_1();
    v28 = 0;
    v10 = 0;
    goto LABEL_160;
  }

  v9 = v8;
  v10 = FigCFDictionaryCopyArrayOfValues();
  Count = CFArrayGetCount(v10);
  if (Count >= 1)
  {
    v30 = v9;
    v31 = DerivedStorage;
    v32 = a2;
    v12 = v10;
    cf = 0;
    v13 = 0;
    v14 = 0;
    v33 = *MEMORY[0x277CBECE8];
    while (1)
    {
      CFArrayGetValueAtIndex(v12, v13);
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if ((!v16 || v16(CMBaseObject, @"SupportedAudioFormatList", v33, &v35)) && gLogCategory_APEndpointStreamAggregateAudio <= 30 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = v35;
      if (!v35)
      {
        v18 = FigEndpointStreamGetCMBaseObject();
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19)
        {
          v19(v18, @"SupportedAPAudioFormats", v33, &v37);
        }

        if (v37)
        {
          CFNumberGetValue(v37, kCFNumberSInt64Type, &valuePtr);
          APSAudioFormatDescriptionListCreateWithLegacyAudioFormatMask();
        }

        v17 = v35;
        if (!v35)
        {
          if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_27;
        }
      }

      if (v14)
      {
        if (!APSAudioFormatDescriptionListCreateIntersectionList())
        {
          if (APSAudioFormatDescriptionListGetFormatCount() >= 1)
          {
            v40[0] = 0;
            if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
            {
              streamAggregateAudio_updateDynamicProperties_cold_2();
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }

          v14 = 1;
          cf = 0;
          goto LABEL_27;
        }
      }

      else
      {
        cf = CFRetain(v17);
      }

      v14 = 1;
LABEL_27:
      if (v4)
      {
        v4 = APSGetFBOPropertyInt64() != 0;
      }

      else
      {
        v4 = 0;
      }

      if (v5)
      {
        v5 = APSGetFBOPropertyInt64() != 0;
      }

      else
      {
        v5 = 0;
      }

      if (v6)
      {
        v6 = APSGetFBOPropertyInt64() != 0;
      }

      else
      {
        v6 = 0;
      }

      if (v7)
      {
        v7 = APSGetFBOPropertyInt64() != 0;
      }

      else
      {
        v7 = 0;
      }

      if (v35)
      {
        CFRelease(v35);
        v35 = 0;
      }

      if (v37)
      {
        CFRelease(v37);
        v37 = 0;
      }

      if (Count == ++v13)
      {
        v10 = v12;
        DerivedStorage = v31;
        a2 = v32;
        v9 = v30;
        goto LABEL_52;
      }
    }
  }

  cf = 0;
LABEL_52:
  v40[0] = 0;
  if (gLogCategory_APEndpointStreamAggregateAudio < 51)
  {
    if (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize())
    {
      APSAudioFormatDescriptionListCopyDebugString();
      if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v40[0])
      {
        CFRelease(v40[0]);
      }
    }

    v40[0] = 0;
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_updateDynamicProperties_cold_3(DerivedStorage, v40);
    }
  }

  if (v4 == *(DerivedStorage + 18) || (*(DerivedStorage + 18) = v4, (*(DerivedStorage + 48) - 2) > 2))
  {
    v22 = 0;
  }

  else
  {
    if (v4)
    {
      v20 = 1;
    }

    else
    {
      v20 = *(DerivedStorage + 16) == 0;
    }

    v21 = !v20;
    if (v20)
    {
      v22 = 0;
    }

    else
    {
      if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        streamAggregateAudio_updateDynamicProperties_cold_4();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      v22 = 1;
    }

    if (CFDictionaryGetInt64() && !*(DerivedStorage + 16))
    {
      v29 = *(DerivedStorage + 18) ? v21 : 1;
      if ((v29 & 1) == 0)
      {
        if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
        {
          streamAggregateAudio_updateDynamicProperties_cold_5();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        v22 = 1;
      }
    }
  }

  if (v5 != *(DerivedStorage + 19))
  {
    *(DerivedStorage + 19) = v5;
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_updateDynamicProperties_cold_6();
    }

    if ((*(DerivedStorage + 48) - 2) <= 2)
    {
      if (*(DerivedStorage + 17) && !(*(DerivedStorage + 19) | v22))
      {
        if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
        {
          streamAggregateAudio_updateDynamicProperties_cold_7();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        v22 = 1;
      }

      if (CFDictionaryGetInt64() && !*(DerivedStorage + 17) && !v22 && *(DerivedStorage + 19))
      {
        if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
        {
          streamAggregateAudio_updateDynamicProperties_cold_8();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        v22 = 1;
      }
    }
  }

  if (v6 != *(DerivedStorage + 20))
  {
    *(DerivedStorage + 20) = v6;
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_updateDynamicProperties_cold_9();
    }

    v23 = *(DerivedStorage + 48);
    if ((v23 & 0xFFFFFFFE) == 2)
    {
      if (v22)
      {
LABEL_111:
        v22 = 1;
        goto LABEL_112;
      }

LABEL_107:
      if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
      {
        streamAggregateAudio_updateDynamicProperties_cold_10();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      goto LABEL_111;
    }

    if (!v22 && v23 == 4)
    {
      goto LABEL_107;
    }
  }

LABEL_112:
  if (v7 == *(DerivedStorage + 152))
  {
    goto LABEL_126;
  }

  *(DerivedStorage + 152) = v7;
  if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
  {
    streamAggregateAudio_updateDynamicProperties_cold_11();
  }

  v24 = *(DerivedStorage + 48);
  if ((v24 & 0xFFFFFFFE) == 2)
  {
    if (v22)
    {
LABEL_125:
      LOBYTE(v22) = 1;
      goto LABEL_126;
    }

LABEL_121:
    if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
    {
      streamAggregateAudio_updateDynamicProperties_cold_10();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    goto LABEL_125;
  }

  if (!v22 && v24 == 4)
  {
    goto LABEL_121;
  }

LABEL_126:
  v25 = (DerivedStorage + 8);
  if (!FigCFEqual())
  {
    v39 = 0;
    v40[0] = 0;
    v38 = 0;
    if (APSAudioFormatDescriptionListCreateFilteredListWithTranscodeFormats())
    {
      streamAggregateAudio_updateDynamicProperties_cold_13();
    }

    else if (APSAudioFormatDescriptionListCopyChannelLayoutTags())
    {
      streamAggregateAudio_updateDynamicProperties_cold_14();
    }

    else
    {
      if (v40[0])
      {
        CFRelease(v40[0]);
        v40[0] = 0;
      }

      if (APSAudioFormatDescriptionListCreateFilteredListWithTranscodeFormats())
      {
        streamAggregateAudio_updateDynamicProperties_cold_15();
      }

      else
      {
        if (!APSAudioFormatDescriptionListCopyChannelLayoutTags())
        {
          v26 = FigCFEqual() != 0;
LABEL_134:
          if (v40[0])
          {
            CFRelease(v40[0]);
          }

          if (v39)
          {
            CFRelease(v39);
          }

          if (v38)
          {
            CFRelease(v38);
          }

          if (!v26)
          {
            if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
            {
              streamAggregateAudio_updateDynamicProperties_cold_17();
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
          }

          v27 = *v25;
          *v25 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          if (v27)
          {
            CFRelease(v27);
          }

          v40[0] = 0;
          if (gLogCategory_APEndpointStreamAggregateAudio < 51)
          {
            if (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize())
            {
              streamAggregateAudio_updateDynamicProperties_cold_18(DerivedStorage + 8, v40);
            }

            if (gLogCategory_APEndpointStreamAggregateAudio <= 50 && (gLogCategory_APEndpointStreamAggregateAudio != -1 || _LogCategory_Initialize()))
            {
              streamAggregateAudio_updateDynamicProperties_cold_19();
            }
          }

          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          LOBYTE(v22) = 1;
          goto LABEL_156;
        }

        streamAggregateAudio_updateDynamicProperties_cold_16();
      }
    }

    v26 = 1;
    goto LABEL_134;
  }

LABEL_156:
  if (a2 && v9)
  {
    *a2 = v22;
  }

  v28 = cf;
LABEL_160:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}
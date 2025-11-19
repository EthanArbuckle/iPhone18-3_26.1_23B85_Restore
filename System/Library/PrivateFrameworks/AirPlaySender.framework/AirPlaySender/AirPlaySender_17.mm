uint64_t audioEngineBufferedAdapter_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48))
  {
    audioEngineBufferedAdapter_Invalidate_cold_1();
  }

  else
  {
    *(DerivedStorage + 48) = 1;
    v1 = *(DerivedStorage + 144);
    if (v1)
    {
      v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v2)
      {
        v2(v1);
      }
    }

    audioEngineBufferedAdapter_Suspend_Guts(DerivedStorage);
    *(DerivedStorage + 49) = 0;
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      audioEngineBufferedAdapter_Invalidate_cold_2();
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

void audioEngineBufferedAdapter_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v1 = CFRetain(*DerivedStorage);
  }

  else
  {
    v1 = 0;
  }

  audioEngineBufferedAdapter_Invalidate();
  CFRelease((DerivedStorage + 8));
  CFRelease(DerivedStorage);
  CFRelease((DerivedStorage + 32));
  CFRelease((DerivedStorage + 176));
  v2 = *(DerivedStorage + 160);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 160) = 0;
  }

  v3 = *(DerivedStorage + 168);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 168) = 0;
  }

  CFRelease((DerivedStorage + 192));
  v4 = *(DerivedStorage + 184);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 184) = 0;
  }

  FigSimpleMutexDestroy();
  CFRelease((DerivedStorage + 152));
  CFRelease((DerivedStorage + 144));
  CFRelease((DerivedStorage + 104));
  CFRelease((DerivedStorage + 200));
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Finalize_cold_1();
    if (!v1)
    {
      return;
    }
  }

  else if (!v1)
  {
    return;
  }

  CFRelease(v1);
}

__CFString *audioEngineBufferedAdapter_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioEngineBufferedAdapter>");
  return Mutable;
}

uint64_t audioEngineBufferedAdapter_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    audioEngineBufferedAdapter_CopyProperty_cold_5();
    return 4294951815;
  }

  if (!a4)
  {
    audioEngineBufferedAdapter_CopyProperty_cold_4();
    return 4294951815;
  }

  v8 = DerivedStorage;
  if (gLogCategory_APAudioEngineBufferedAdapter <= 30 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, @"audioLatencyMs"))
  {
    SInt32 = FigCFNumberCreateSInt32();
    *a4 = SInt32;
    if (!SInt32)
    {
      audioEngineBufferedAdapter_CopyProperty_cold_1();
      return 4294951816;
    }
  }

  else if (CFEqual(a2, @"outputLatency"))
  {
    CMTimeMake(&time, ((*(v8 + 16) + *(v8 + 28)) * 1000.0), 1000);
    v10 = CMTimeCopyAsDictionary(&time, a3);
    *a4 = v10;
    if (!v10)
    {
      audioEngineBufferedAdapter_CopyProperty_cold_2();
      return 4294951816;
    }
  }

  else
  {
    if (!CFEqual(a2, @"dynamicLatencyOffsetMs"))
    {
      if (!CFEqual(a2, @"currentRTPTime"))
      {
        return 4294954509;
      }

      time.value = 0;
      CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v12 = v15(CMBaseObject, @"currentRTPTime", a3, &time);
        if (!v12)
        {
          *a4 = time.value;
          return v12;
        }
      }

      else
      {
        v12 = 4294954514;
      }

      APSLogErrorAt();
      return v12;
    }

    v11 = FigCFNumberCreateSInt32();
    *a4 = v11;
    if (!v11)
    {
      audioEngineBufferedAdapter_CopyProperty_cold_3();
      return 4294951816;
    }
  }

  return 0;
}

uint64_t audioEngineBufferedAdapter_SetProperty(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    audioEngineBufferedAdapter_SetProperty_cold_3();
    return 4294951815;
  }

  if (gLogCategory_APAudioEngineBufferedAdapter <= 30 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (FigCFEqual())
  {
    memset(&v29, 0, sizeof(v29));
    CMTimeMakeFromDictionary(&v29, a3);
    if ((v29.flags & 0x1D) == 1)
    {
      v28 = v29;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v32 = **&MEMORY[0x277CC0898];
      v31 = v32;
      FigSimpleMutexLock();
      if (*(DerivedStorage + 48))
      {
        v17 = 4294951809;
      }

      else if (*(DerivedStorage + 49))
      {
        if (FigCFDictionaryGetDictionaryValue())
        {
          mach_absolute_time();
          FigCFDictionarySetInt64();
          APSAudioFormatDescriptionGetSampleRate();
          v7 = v6;
          v8 = (*(DerivedStorage + 24) * v6);
          CMTimeMake(&v31, (*(DerivedStorage + 16) * v6), v6);
          CMTimeMake(&rhs, v8, v7);
          lhs = v31;
          CMTimeAdd(&time, &lhs, &rhs);
          v31 = time;
          rhs = v28;
          CMTimeConvertScale(&time, &rhs, v7, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          value = time.value;
          v33 = *&time.timescale;
          v10 = *(DerivedStorage + 80);
          HostTimeClock = CMClockGetHostTimeClock();
          time.value = value;
          *&time.timescale = v33;
          CMSyncConvertTime(&v32, &time, v10, HostTimeClock);
          rhs = v32;
          lhs = v31;
          CMTimeAdd(&time, &rhs, &lhs);
          v32 = time;
          epoch = time.epoch;
          v13 = *&time.value;
          v14 = *(DerivedStorage + 80);
          time.value = value;
          *&time.timescale = v33;
          *&rhs.value = v13;
          rhs.epoch = epoch;
          v15 = CMTimebaseSetRateAndAnchorTime(v14, 1.0, &time, &rhs);
          if (!v15)
          {
            *(DerivedStorage + 112) = value;
            *(DerivedStorage + 120) = value;
            if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
            {
              time.value = value;
              *&time.timescale = v33;
              CMTimeGetSeconds(&time);
              CMTimebaseGetTime(&time, *(DerivedStorage + 80));
              CMTimeGetSeconds(&time);
              time = v32;
              CMTimeGetSeconds(&time);
              v16 = CMClockGetHostTimeClock();
              CMClockGetTime(&time, v16);
              CMTimeGetSeconds(&time);
              LogPrintF();
            }

            mach_absolute_time();
            FigCFDictionarySetInt64();
            v18 = *(DerivedStorage + 144);
            v19 = *(DerivedStorage + 200);
            if (v19)
            {
              v20 = CFRetain(v19);
            }

            else
            {
              v20 = 0;
            }

            v21 = *(DerivedStorage + 104);
            lhs = v32;
            VTable = CMBaseObjectGetVTable();
            v25 = *(VTable + 16);
            v24 = VTable + 16;
            v26 = *(v25 + 48);
            if (v26)
            {
              time.value = value;
              *&time.timescale = v33;
              rhs = lhs;
              v26(v18, &time, &rhs, audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1, v20, v21, 1.0);
            }

            else
            {
              audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1(v24, -12782, MEMORY[0x277CC0898], MEMORY[0x277CC0898], v23, v20);
            }

            FigSimpleMutexUnlock();
            return 0;
          }

          v17 = v15;
          APSLogErrorAt();
          FigSimpleMutexUnlock();
          if (v17 == -15486)
          {
            if (gLogCategory_APAudioEngineBufferedAdapter <= 90 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
            {
              audioEngineBufferedAdapter_SetProperty_cold_2();
            }

            return 0;
          }

LABEL_33:
          APSLogErrorAt();
          return v17;
        }

        v17 = 4294951815;
      }

      else
      {
        v17 = 4294951811;
      }

      APSLogErrorAt();
      FigSimpleMutexUnlock();
      goto LABEL_33;
    }

    audioEngineBufferedAdapter_SetProperty_cold_1();
    return 4294951815;
  }

  return 4294954509;
}

void audioEngineBufferedAdapter_Suspend_Guts(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {
      v3(v2);
    }

    v4 = *(a1 + 136);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v5)
    {
      v5(v4, 0, 0);
    }

    v6 = *(a1 + 136);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 136) = 0;
    }
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 72) = 0;
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 56) = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 64) = 0;
  }

  *(a1 + 128) = 0;
  v11 = *(a1 + 88);
  if (v11)
  {
    *(a1 + 88) = 0;

    free(v11);
  }
}

uint64_t FigEndpointAudioSourceSetWriteHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1(uint64_t a1, int a2, CMTime *a3, CMTime *a4, uint64_t a5, const void *a6)
{
  if (a6)
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v10)
    {
      v11 = v10;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a2)
      {
        if (gLogCategory_APAudioEngineBufferedAdapter <= 90 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
        {
          audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1_cold_1(DerivedStorage, a2);
        }
      }

      else if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
      {
        time = *a3;
        CMTimeGetSeconds(&time);
        CMTimebaseGetTime(&time, *(DerivedStorage + 80));
        CMTimeGetSeconds(&time);
        time = *a4;
        CMTimeGetSeconds(&time);
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&time, HostTimeClock);
        CMTimeGetSeconds(&time);
        LogPrintF();
      }

      CFRelease(v11);
    }

    else
    {
      audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1_cold_2();
    }

    CFRelease(a6);
  }

  else
  {
    audioEngineBufferedAdapter_SetRateAndAnchorTime_Stage1_cold_3();
  }
}

void audioEngineBufferedAdapter_Resume(const void *a1, const void *a2, void (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      audioEngineBufferedAdapter_Resume_cold_1();
    }

    v7 = malloc_type_malloc(0x30uLL, 0x10E004091CD38EAuLL);
    if (v7)
    {
      v8 = v7;
      if (a1)
      {
        v9 = CFRetain(a1);
      }

      else
      {
        v9 = 0;
      }

      *v8 = v9;
      *(v8 + 1) = CFRetain(a2);
      *(v8 + 2) = a3;
      *(v8 + 4) = a4;
      *(v8 + 10) = 0;
      v10 = APSDispatchSectionEnter();
      if (!v10)
      {
        return;
      }

      v11 = v10;
      audioEngineBufferedAdapter_Resume_cold_2(v10, v8, v8 + 1);
    }

    else
    {
      audioEngineBufferedAdapter_Resume_cold_3();
      v11 = 4294951816;
    }
  }

  else
  {
    audioEngineBufferedAdapter_Resume_cold_4();
    v11 = 4294951815;
  }

  if (a3)
  {

    a3(a1, v11, a4);
  }
}

void audioEngineBufferedAdapter_Suspend(const void *a1, const void *a2, void (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Suspend_cold_1();
  }

  v7 = malloc_type_malloc(0x30uLL, 0x10E004091CD38EAuLL);
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      v9 = CFRetain(a1);
    }

    else
    {
      v9 = 0;
    }

    *v8 = v9;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    *(v8 + 1) = v10;
    *(v8 + 3) = a3;
    *(v8 + 4) = a4;
    *(v8 + 10) = 0;
    v11 = APSDispatchSectionEnter();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    audioEngineBufferedAdapter_Suspend_cold_2(v11, v8, v8 + 1);
  }

  else
  {
    audioEngineBufferedAdapter_Suspend_cold_3();
    v12 = 4294951816;
  }

  if (a3)
  {

    a3(a1, v12, a4);
  }
}

void audioEngineBufferedAdapter_SetEndpointStream(const void *a1, const void *a2, void (*a3)(const void *, uint64_t, uint64_t), uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = malloc_type_malloc(0x28uLL, 0x10A0040DE786E1EuLL);
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      v9 = CFRetain(a1);
    }

    else
    {
      v9 = 0;
    }

    *v8 = v9;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    *(v8 + 1) = v10;
    *(v8 + 2) = a3;
    *(v8 + 3) = a4;
    *(v8 + 8) = 0;
    v11 = APSDispatchSectionEnter();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    audioEngineBufferedAdapter_SetEndpointStream_cold_1(v11, v8, v8 + 1);
  }

  else
  {
    audioEngineBufferedAdapter_SetEndpointStream_cold_2();
    v12 = 4294951816;
  }

  if (a3)
  {

    a3(a1, v12, a4);
  }
}

void audioEngineBufferedAdapter_Resume_Stage1(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a1 + 8);
  v28 = 0;
  v29 = 0;
  memset(&layout, 0, sizeof(layout));
  v26 = **&MEMORY[0x277CC0898];
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48))
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_1(v30);
LABEL_74:
    v6 = 0;
    goto LABEL_75;
  }

  if (*(DerivedStorage + 49))
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_2(v30);
    goto LABEL_74;
  }

  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_3();
  }

  if (!FigCFDictionaryGetDictionaryValue())
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_27();
    goto LABEL_74;
  }

  Value = CFDictionaryGetValue(v4, *MEMORY[0x277CD62A0]);
  v6 = Value;
  if (!Value)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_26();
LABEL_75:
    v22 = 0;
    goto LABEL_44;
  }

  if (CFDataGetLength(Value) <= 0x27)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_25();
    goto LABEL_74;
  }

  BytePtr = CFDataGetBytePtr(v6);
  v8 = *MEMORY[0x277CBECE8];
  v9 = *BytePtr;
  v10 = *(BytePtr + 1);
  v25 = *(BytePtr + 4);
  immediateSourceTime[0] = v9;
  immediateSourceTime[1] = v10;
  v30[0] = APSAudioFormatDescriptionCreateWithASBD();
  if (v30[0])
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_4();
    goto LABEL_56;
  }

  *&immediateSourceTime[0] = 0;
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_5(DerivedStorage + 56, immediateSourceTime);
  }

  layout.mChannelLayoutTag = APSAudioFormatDescriptionGetChannelLayoutTag();
  v30[0] = CMAudioFormatDescriptionCreate(v8, BytePtr, 0x20uLL, &layout, 0, 0, 0, (DerivedStorage + 64));
  if (v30[0])
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_6();
    goto LABEL_56;
  }

  if (!*(DerivedStorage + 72))
  {
    CMBaseObject = APSNetworkClockGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v30[0] = v12(CMBaseObject, *MEMORY[0x277CEA258], v8, DerivedStorage + 72);
      if (!v30[0])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v30[0] = -12782;
    }

    audioEngineBufferedAdapter_Resume_Stage1_cold_24();
    goto LABEL_56;
  }

LABEL_17:
  v13 = CFGetAllocator(v2);
  v30[0] = CMTimebaseCreateWithSourceClock(v13, *(DerivedStorage + 72), (DerivedStorage + 80));
  if (v30[0])
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_7();
    goto LABEL_56;
  }

  FigCFDictionaryGetCMTimeIfPresent();
  if ((v26.flags & 0x1D) != 1)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_8();
    goto LABEL_74;
  }

  v14 = *(DerivedStorage + 80);
  HostTimeClock = CMClockGetHostTimeClock();
  v16 = *(DerivedStorage + 72);
  time = v26;
  CMSyncConvertTime(immediateSourceTime, &time, HostTimeClock, v16);
  time = **&MEMORY[0x277CC08F0];
  v30[0] = CMTimebaseSetRateAndAnchorTime(v14, 1.0, &time, immediateSourceTime);
  if (v30[0])
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_9();
    goto LABEL_56;
  }

  *(DerivedStorage + 112) = 0;
  *(DerivedStorage + 120) = 0;
  *(DerivedStorage + 128) = 0;
  v17 = CFDictionaryGetValue(v4, *MEMORY[0x277CD6280]);
  if (!v17)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_23(v30);
    goto LABEL_74;
  }

  v18 = v17;
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v30[0] = APAudioSourceCompressionCreate(v8, v18, BytePtr, (DerivedStorage + 136));
  if (v30[0])
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_10();
    goto LABEL_56;
  }

  if (FigGetCFPreferenceNumberWithDefault() <= 0)
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_22(v30);
    goto LABEL_74;
  }

  v30[0] = APSSetFBOPropertyInt64();
  if (v30[0])
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_11();
    goto LABEL_56;
  }

  v30[0] = FigEndpointAudioSourceSetWriteHandler(*(DerivedStorage + 136), audioEngineBufferedAdapter_CompressionSourceWriteDataCallback, DerivedStorage);
  if (v30[0])
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_12();
    goto LABEL_56;
  }

  *&immediateSourceTime[0] = 0;
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_13(DerivedStorage + 56, immediateSourceTime);
  }

  v30[0] = FigEndpointAudioSourceResume_0(*(DerivedStorage + 136));
  if (v30[0])
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_14();
    goto LABEL_56;
  }

  v30[0] = FigEndpointAudioSourceCopyProperty(*(DerivedStorage + 136), @"MaximumOutputPacketSize", v8, &v28);
  if (v30[0])
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_15();
    goto LABEL_56;
  }

  v19 = CFGetInt64Ranged();
  *(DerivedStorage + 96) = v19;
  if (v30[0])
  {
    audioEngineBufferedAdapter_Resume_Stage1_cold_16();
    goto LABEL_56;
  }

  v20 = malloc_type_malloc(v19, 0x9221D882uLL);
  *(DerivedStorage + 88) = v20;
  if (v20)
  {
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      audioEngineBufferedAdapter_Resume_Stage1_cold_17();
    }

    v30[0] = APSAudioFormatDescriptionCopyFigEndpointStreamAudioFormatDescription();
    if (!v30[0])
    {
      Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x277CBF128]);
      v22 = Mutable;
      if (Mutable)
      {
        CFArrayAppendValue(Mutable, v29);
        v6 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v6)
        {
          FigCFDictionaryGetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          mach_absolute_time();
          FigCFDictionarySetInt64();
          FigEndpointStreamAudioEngineResumeWithCompletionCallback(*(DerivedStorage + 144), v6, a1);
          goto LABEL_43;
        }

        audioEngineBufferedAdapter_Resume_Stage1_cold_19();
      }

      else
      {
        audioEngineBufferedAdapter_Resume_Stage1_cold_20();
        v6 = 0;
      }

LABEL_44:
      audioEngineBufferedAdapter_Suspend_Guts(DerivedStorage);
      *(a1 + 40) = v30[0];
      audioEngineBufferedAdapter_Resume_Complete(a1);
      goto LABEL_45;
    }

    audioEngineBufferedAdapter_Resume_Stage1_cold_18();
LABEL_56:
    v22 = 0;
    v6 = 0;
LABEL_43:
    if (!v30[0])
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  audioEngineBufferedAdapter_Resume_Stage1_cold_21(v30, immediateSourceTime);
  v22 = 0;
  v6 = 0;
  if (LODWORD(immediateSourceTime[0]))
  {
    goto LABEL_44;
  }

LABEL_45:
  FigSimpleMutexUnlock();
  if (v29)
  {
    CFRelease(v29);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v28)
  {
    CFRelease(v28);
  }
}

uint64_t FigEndpointAudioSourceResume_0(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigEndpointAudioSourceCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointAudioSourceGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

void FigEndpointStreamAudioEngineResumeWithCompletionCallback(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  v7 = VTable + 16;
  v9 = *(v8 + 8);
  if (v9)
  {

    v9(a1, a2, audioEngineBufferedAdapter_Resume_Stage2, a3);
  }

  else
  {

    audioEngineBufferedAdapter_Resume_Stage2(v7, -12782, a3);
  }
}

void audioEngineBufferedAdapter_Resume_Stage2(uint64_t a1, int a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Resume_Stage2_cold_1();
  }

  a3[10] = a2;
  v6 = *(DerivedStorage + 168);

  dispatch_async_f(v6, a3, audioEngineBufferedAdapter_Resume_Stage3);
}

void audioEngineBufferedAdapter_Resume_Complete(uint64_t a1)
{
  v2 = *a1;
  CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 16);
  if (v3)
  {
    v3(v2, *(a1 + 40), *(a1 + 32));
  }

  APSDispatchSectionLeave();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void audioEngineBufferedAdapter_SendData(const void *a1)
{
  sampleBufferOut = 0;
  blockBufferOut = 0;
  v28[0] = 0;
  v28[1] = 0;
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  dataLength = 0;
  v26 = 0;
  if (a1)
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(DerivedStorage + 48))
      {
        audioEngineBufferedAdapter_SendData_cold_1();
      }

      else if (*(DerivedStorage + 49))
      {
        APSAudioFormatDescriptionGetSampleRate();
        v5 = v4;
        v6 = *MEMORY[0x277CBECE8];
        v7 = *MEMORY[0x277CD62B0];
        while (1)
        {
          v8 = *(DerivedStorage + 152);
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v9)
          {
            if (v9(v8))
            {
              break;
            }
          }

          v10 = *(DerivedStorage + 136);
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 104);
          if (!v11 || !v11(v10, 0))
          {
            goto LABEL_30;
          }

          v12 = *(DerivedStorage + 136);
          v13 = *(DerivedStorage + 88);
          v14 = *(DerivedStorage + 96);
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 112);
          if (!v15)
          {
LABEL_29:
            APSLogErrorAt();
            goto LABEL_30;
          }

          v16 = v15(v12, v13, v14, v28, 1, &dataLength, &v26, 0, 0);
          if (v16 == -16774)
          {
            if (gLogCategory_APAudioEngineBufferedAdapter <= 30 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
            {
              audioEngineBufferedAdapter_SendData_cold_8();
            }

            goto LABEL_30;
          }

          if (v16)
          {
            goto LABEL_29;
          }

          v17 = dataLength;
          if (!dataLength)
          {
            if (gLogCategory_APAudioEngineBufferedAdapter <= 30 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
            {
              audioEngineBufferedAdapter_SendData_cold_7();
            }

            goto LABEL_30;
          }

          DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
          if (CMBlockBufferCreateWithMemoryBlock(v6, 0, v17, DefaultAirPlayMallocZoneCFAllocator, 0, 0, dataLength, 1u, &blockBufferOut))
          {
            audioEngineBufferedAdapter_SendData_cold_3();
            goto LABEL_30;
          }

          if (CMBlockBufferReplaceDataBytes(*(DerivedStorage + 88), blockBufferOut, 0, dataLength))
          {
            audioEngineBufferedAdapter_SendData_cold_4();
            goto LABEL_30;
          }

          v19 = v26;
          v20 = v19 * APSAudioFormatDescriptionGetFramesPerPacket();
          CMTimeMake(&v24, v20, v5);
          sampleTimingArray.duration = v24;
          CMTimeMake(&v24, *(DerivedStorage + 120), v5);
          sampleTimingArray.presentationTimeStamp = v24;
          sampleTimingArray.decodeTimeStamp = **&MEMORY[0x277CC0898];
          *(DerivedStorage + 120) += v20;
          if (CMSampleBufferCreateReady(v6, blockBufferOut, *(DerivedStorage + 64), 1, 1, &sampleTimingArray, 1, &dataLength, &sampleBufferOut))
          {
            audioEngineBufferedAdapter_SendData_cold_5();
            goto LABEL_30;
          }

          if (!*(DerivedStorage + 128))
          {
            CMSetAttachment(sampleBufferOut, v7, *(DerivedStorage + 64), 1u);
            *(DerivedStorage + 128) = 1;
          }

          v21 = *(DerivedStorage + 152);
          v22 = sampleBufferOut;
          v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v23 || v23(v21, v22))
          {
            audioEngineBufferedAdapter_SendData_cold_6();
            goto LABEL_30;
          }

          if (sampleBufferOut)
          {
            CFRelease(sampleBufferOut);
            sampleBufferOut = 0;
          }

          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
            blockBufferOut = 0;
          }
        }

        if (gLogCategory_APAudioEngineBufferedAdapter <= 30 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
        {
          audioEngineBufferedAdapter_SendData_cold_2();
        }
      }

      else
      {
        audioEngineBufferedAdapter_SendData_cold_9();
      }

LABEL_30:
      FigSimpleMutexUnlock();
      if (sampleBufferOut)
      {
        CFRelease(sampleBufferOut);
      }
    }

    else
    {
      audioEngineBufferedAdapter_SendData_cold_10();
    }
  }

  else
  {
    audioEngineBufferedAdapter_SendData_cold_11();
    v2 = 0;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

void audioEngineBufferedAdapter_Resume_Stage3(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(a1 + 40))
  {
    audioEngineBufferedAdapter_Suspend_Guts(DerivedStorage);
  }

  else
  {
    *(DerivedStorage + 49) = 1;
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      audioEngineBufferedAdapter_Resume_Stage3_cold_1();
    }
  }

  FigSimpleMutexUnlock();

  audioEngineBufferedAdapter_Resume_Complete(a1);
}

void audioEngineBufferedAdapter_Suspend_Stage1(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48) || !*(DerivedStorage + 49))
  {
    audioEngineBufferedAdapter_Suspend_Stage1_cold_2();
  }

  else
  {
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      audioEngineBufferedAdapter_Suspend_Stage1_cold_1();
    }

    v3 = *(DerivedStorage + 144);
    v4 = *(a1 + 8);
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    v6 = VTable + 16;
    v8 = *(v7 + 16);
    if (v8)
    {
      v8(v3, v4, audioEngineBufferedAdapter_Suspend_Stage2, a1);
    }

    else
    {
      audioEngineBufferedAdapter_Suspend_Stage2(v6, -12782, a1);
    }

    audioEngineBufferedAdapter_Suspend_Guts(DerivedStorage);

    FigSimpleMutexUnlock();
  }
}

void audioEngineBufferedAdapter_Suspend_Stage2(uint64_t a1, int a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_Suspend_Stage2_cold_1();
  }

  a3[10] = a2;
  v6 = *(DerivedStorage + 168);

  dispatch_async_f(v6, a3, audioEngineBufferedAdapter_Suspend_Stage3);
}

void audioEngineBufferedAdapter_Suspend_Complete(uint64_t a1)
{
  v2 = *a1;
  CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 24);
  if (v3)
  {
    v3(v2, *(a1 + 40), *(a1 + 32));
  }

  APSDispatchSectionLeave();
  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void audioEngineBufferedAdapter_Suspend_Stage3(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(a1 + 40))
  {
    *(DerivedStorage + 49) = 0;
    if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
    {
      audioEngineBufferedAdapter_Suspend_Stage3_cold_1();
    }
  }

  FigSimpleMutexUnlock();

  audioEngineBufferedAdapter_Suspend_Complete(a1);
}

void audioEngineBufferedAdapter_SetEndpointStream_Stage1(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 8);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48) || !*(DerivedStorage + 49))
  {
    goto LABEL_16;
  }

  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_SetEndpointStream_Stage1_cold_1();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else if (!v3)
  {
    goto LABEL_11;
  }

  if (!FigCFDictionaryGetDictionaryValue())
  {
LABEL_16:
    audioEngineBufferedAdapter_SetEndpointStream_Stage1_cold_2();
    return;
  }

  mach_absolute_time();
  FigCFDictionarySetInt64();
  v4 = *(DerivedStorage + 144);
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 16);
  v6 = VTable + 16;
  v8 = *(v7 + 24);
  if (v8)
  {
    v8(v4, v3, audioEngineBufferedAdapter_SetEndpointStream_Stage2, a1);
  }

  else
  {
    audioEngineBufferedAdapter_SetEndpointStream_Stage2(v6, -12782, a1);
  }

LABEL_11:

  FigSimpleMutexUnlock();
}

void audioEngineBufferedAdapter_SetEndpointStream_Stage2(uint64_t a1, int a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_SetEndpointStream_Stage2_cold_1();
  }

  a3[8] = a2;
  v6 = *(DerivedStorage + 168);

  dispatch_async_f(v6, a3, audioEngineBufferedAdapter_SetEndpointStream_Stage3);
}

void audioEngineBufferedAdapter_SetEndpointStream_Complete(uint64_t a1)
{
  v2 = *a1;
  CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 16);
  if (v3)
  {
    v3(v2, *(a1 + 32), *(a1 + 24));
  }

  APSDispatchSectionLeave();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void audioEngineBufferedAdapter_SetEndpointStream_Stage3(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (!*(a1 + 32) && gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    audioEngineBufferedAdapter_SetEndpointStream_Stage3_cold_1();
  }

  audioEngineBufferedAdapter_SetEndpointStream_Complete(a1);
}

uint64_t audioEngineBufferedAdapter_FlushData(uint64_t a1)
{
  if (a1)
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      if (*(DerivedStorage + 48))
      {
        audioEngineBufferedAdapter_FlushData_cold_1();
      }

      else if (*(DerivedStorage + 49))
      {
        v5 = *(DerivedStorage + 136);
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v6 || v6(v5))
        {
          audioEngineBufferedAdapter_FlushData_cold_6();
        }

        else if (*(*(CMBaseObjectGetVTable() + 16) + 72) && ((v7 = *(DerivedStorage + 152), (v8 = *(*(CMBaseObjectGetVTable() + 16) + 72)) == 0) || v8(v7)))
        {
          audioEngineBufferedAdapter_FlushData_cold_2();
        }

        else
        {
          v9 = *MEMORY[0x277CBECE8];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v11 = Mutable;
            time = *a1;
            v12 = CMTimeCopyAsDictionary(&time, v9);
            if (v12)
            {
              CFDictionarySetValue(v11, *MEMORY[0x277CD61E0], v12);
              FigCFDictionarySetBoolean();
              v13 = *(DerivedStorage + 144);
              v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v14)
              {
                v14(v13, v11);
              }

              if (*(a1 + 24))
              {
                APSAudioFormatDescriptionGetSampleRate();
                v18 = *a1;
                CMTimeConvertScale(&time, &v18, v15, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                *(DerivedStorage + 120) = time.value;
              }

              if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
              {
                audioEngineBufferedAdapter_FlushData_cold_3();
              }
            }

            else
            {
              audioEngineBufferedAdapter_FlushData_cold_4();
            }

            FigSimpleMutexUnlock();
            CFRelease(v11);
            if (v12)
            {
              CFRelease(v12);
            }

            goto LABEL_24;
          }

          audioEngineBufferedAdapter_FlushData_cold_5();
        }
      }

      else
      {
        audioEngineBufferedAdapter_FlushData_cold_7();
      }

      FigSimpleMutexUnlock();
LABEL_24:
      CFRelease(v3);
      goto LABEL_25;
    }

    audioEngineBufferedAdapter_FlushData_cold_8();
  }

  else
  {
    audioEngineBufferedAdapter_FlushData_cold_9();
  }

LABEL_25:
  v16 = *(a1 + 32);
  if (v16)
  {
    CFRelease(v16);
  }

  return APSRealTimeAllocatorDeallocate();
}

uint64_t _AirPlayRSA_Init(uint64_t *a1)
{
  RSAPublicKey = SecKeyCreateRSAPublicKey();
  *a1 = RSAPublicKey;
  if (RSAPublicKey)
  {
    return 0;
  }

  _AirPlayRSA_Init_cold_1();
  return 4294960596;
}

uint64_t AirPlayRSA_PublicEncrypt(const uint8_t *a1, size_t a2, uint8_t *a3, size_t a4, size_t *a5)
{
  __len = 0;
  key = 0;
  v10 = _AirPlayRSA_Init(&key);
  if (v10)
  {
    v15 = v10;
    AirPlayRSA_PublicEncrypt_cold_1();
  }

  else if (a4 <= 0xFF)
  {
    AirPlayRSA_PublicEncrypt_cold_3();
    v15 = 4294960553;
  }

  else
  {
    __len = a4;
    v11 = key;
    v12 = SecKeyEncrypt(key, 2u, a1, a2, a3, &__len);
    if (v12)
    {
      v15 = v12;
      AirPlayRSA_PublicEncrypt_cold_2();
      if (!v11)
      {
        return v15;
      }

      goto LABEL_8;
    }

    v13 = __len;
    if (__len <= 0xFF)
    {
      v14 = 256 - __len;
      memmove(&a3[256 - __len], a3, __len);
      bzero(a3, v14);
      __len = 256;
      v13 = 256;
    }

    v15 = 0;
    *a5 = v13;
  }

  v11 = key;
  if (key)
  {
LABEL_8:
    CFRelease(v11);
  }

  return v15;
}

uint64_t AirPlayRSA_PublicDecrypt(const uint8_t *a1, size_t a2, void *a3, unint64_t a4, unint64_t *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  plainTextLen = 0;
  key = 0;
  v10 = _AirPlayRSA_Init(&key);
  if (v10)
  {
    v15 = v10;
    APSLogErrorAt();
    v11 = key;
  }

  else
  {
    plainTextLen = 256;
    v11 = key;
    v12 = SecKeyDecrypt(key, 0, a1, a2, plainText, &plainTextLen);
    if (v12)
    {
      v15 = v12;
      AirPlayRSA_PublicDecrypt_cold_1();
    }

    else
    {
      v13 = plainTextLen;
      if (plainTextLen <= 0xFF)
      {
        v14 = 256 - plainTextLen;
        memmove(&plainText[256 - plainTextLen], plainText, plainTextLen);
        bzero(plainText, v14);
        plainTextLen = 256;
        v13 = 256;
      }

      v15 = _AirPlayRSA_PKCS1v1pt5_Decode(plainText, v13, 2048, 1, a3, a4, a5);
      if (v15)
      {
        AirPlayRSA_PublicDecrypt_cold_2();
      }
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v15;
}

uint64_t _AirPlayRSA_PKCS1v1pt5_Decode(_BYTE *a1, uint64_t a2, uint64_t a3, int a4, void *__dst, unint64_t a6, unint64_t *a7)
{
  if ((a3 + 7) < 0x58)
  {
    return 4294960546;
  }

  if (a2 != (a3 + 7) >> 3)
  {
    return 4294960553;
  }

  if (*a1)
  {
    return 4294960579;
  }

  if (a1[1] != a4)
  {
    return 4294960540;
  }

  v9 = &a1[a2];
  v10 = a1 + 2;
  if (a4 == 1)
  {
    v11 = a1 + 2;
    do
    {
      if (*v11 != 255)
      {
        break;
      }

      ++v11;
    }

    while (v11 < v9);
    result = 4294960546;
    if (v11 >= v9 || v11 - v10 < 8)
    {
      return result;
    }

    if (*v11)
    {
      return 4294960554;
    }

    goto LABEL_27;
  }

  if (a4 != 2)
  {
    return 4294960561;
  }

  v11 = a1 + 2;
  do
  {
    if (!*v11)
    {
      break;
    }

    ++v11;
  }

  while (v11 < v9);
  result = 4294960546;
  if (v11 < v9 && v11 - v10 >= 8)
  {
    if (*v11)
    {
      return 4294960579;
    }

LABEL_27:
    v12 = v9 - (v11 + 1);
    if (__dst)
    {
      if (v12 > a6)
      {
        _AirPlayRSA_PKCS1v1pt5_Decode_cold_1();
        return 4294960553;
      }

      memcpy(__dst, v11 + 1, v9 - (v11 + 1));
    }

    result = 0;
    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

uint64_t policyMonitorEndpointStateChanged(int a1, void *a2, CFTypeRef cf1)
{
  result = CFEqual(cf1, *MEMORY[0x277CC0CF8]);
  if (result)
  {

    return [a2 endpointAuthenticationSucceeded];
  }

  return result;
}

void sub_222165AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void policyMonitorEndpointDeactivated(int a1, int a2, int a3, int a4, dispatch_semaphore_t dsema)
{
  dispatch_semaphore_signal(dsema);

  dispatch_release(dsema);
}

Class __getCRVehiclePolicyMonitorClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CarKitLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2784A0818;
    v5 = 0;
    CarKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!CarKitLibraryCore_frameworkLibrary_1)
  {
    __getCRVehiclePolicyMonitorClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CRVehiclePolicyMonitor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCRVehiclePolicyMonitorClass_block_invoke_cold_1();
  }

  getCRVehiclePolicyMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

uint64_t APEndpointCreateWithTransportDevice(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  cf = 0;
  if (a2)
  {
    v11 = APEndpointDescriptionAirPlayCreateWithTransportDevice(a1, a2, 0, &cf);
    if (v11)
    {
      v12 = v11;
      APEndpointCreateWithTransportDevice_cold_1();
    }

    else
    {
      v12 = APEndpointCreateWithEndpointDescription(a1, cf, a3, a4, a5, a6);
      if (v12)
      {
        APEndpointCreateWithTransportDevice_cold_2();
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    APEndpointCreateWithTransportDevice_cold_3();
    return 4294950576;
  }

  return v12;
}

__CFString *endpoint_CopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  cf = 0;
  CFStringAppendFormat(Mutable, 0, @"<APEndpoint %p>", a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, @"EndpointShowInfo", v2, &cf);
    v7 = cf;
    if (!v6)
    {
      ASPrintF();
      v8 = strlen(0);
      if (v8 && *(v8 - 1) == 10)
      {
        *(v8 - 1) = 0;
      }

      CFStringAppendFormat(Mutable, 0, @"%s", 0);
      free(0);
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return Mutable;
}

uint64_t endpoint_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2)
  {
    endpoint_SetProperty_cold_1();
    return 4294950576;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 120))
  {
    v12 = 4294950573;
    goto LABEL_54;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, *MEMORY[0x277CC15C0]))
  {
    CFGetDouble();
    APSVolumeConvertDBToSliderValue();
LABEL_9:
    v9 = a1;
    v10 = 1;
LABEL_12:
    IsMuted = endpointdelegate_setVolumeSliderInternal(v9, 1, 1, v10, v8);
    goto LABEL_13;
  }

  if (CFEqual(a2, @"HALVolumeDB"))
  {
    CFGetDouble();
    APSVolumeConvertDBToSliderValue();
    v9 = a1;
    v10 = 0;
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC15A8]))
  {
    CFGetDouble();
    v8 = v14;
    goto LABEL_9;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13D0]))
  {
    if (a3)
    {
      v15 = CFGetTypeID(a3);
      if (v15 == CFBooleanGetTypeID())
      {
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v20 = *MEMORY[0x277CBED28] == a3;
        if (*(v7 + 51) || endpoint_isThirdPartyTVFamily())
        {
          v21 = a1;
          v22 = v20;
          v23 = 1;
LABEL_38:
          v24 = 0;
LABEL_44:
          IsMuted = endpointdelegate_setIsMuted(v21, v22, v23, v24);
          goto LABEL_13;
        }

        if (gLogCategory_APEndpoint > 50 || gLogCategory_APEndpoint == -1 && !_LogCategory_Initialize())
        {
LABEL_51:
          FigSimpleMutexUnlock();
          return 0;
        }

LABEL_41:
        LogPrintF();
        goto LABEL_51;
      }
    }

    v12 = 4294950576;
    goto LABEL_54;
  }

  if (CFEqual(a2, @"IsHALMuted"))
  {
    v16 = *MEMORY[0x277CBED28] == a3;
    IsHALMuteForUser = APEndpointIsHALMuteForUser();
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v21 = a1;
    v22 = v16;
    v23 = IsHALMuteForUser;
    v24 = 1;
    goto LABEL_44;
  }

  v18 = *MEMORY[0x277CC13D8];
  if (CFEqual(a2, *MEMORY[0x277CC13D8]) || CFEqual(a2, *MEMORY[0x277CC13E0]))
  {
    if (a3)
    {
      v19 = CFGetTypeID(a3);
      if (v19 == CFBooleanGetTypeID())
      {
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v25 = *MEMORY[0x277CBED28] == a3;
        v23 = CFEqual(a2, v18);
        v21 = a1;
        v22 = v25;
        goto LABEL_38;
      }
    }

    v12 = 4294950576;
    goto LABEL_54;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1488]) || CFEqual(a2, *MEMORY[0x277CC1480]))
  {
    IsMuted = endpoint_setAuthorizationString(a1, a3);
    goto LABEL_13;
  }

  if (!CFEqual(a2, @"PermanentSpeakerGroupingInfo"))
  {
    if (CFEqual(a2, @"ScreenUsageMode"))
    {
      v27 = *(v7 + 472);
      *(v7 + 472) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      goto LABEL_51;
    }

    if (CFEqual(a2, @"StartSilentAudio"))
    {
      if (a3)
      {
        v28 = CFGetTypeID(a3);
        if (v28 == CFBooleanGetTypeID())
        {
          *(v7 + 481) = CFBooleanGetValue(a3);
          goto LABEL_51;
        }
      }

      v12 = 4294950576;
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CC1278]))
      {
        if (CFEqual(a2, @"EndpointStatus"))
        {
          *(v7 + 148) = CFGetInt64();
          if (gLogCategory_APEndpoint > 50 || gLogCategory_APEndpoint == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_51;
          }

          goto LABEL_41;
        }

        v12 = 4294954512;
LABEL_55:
        FigSimpleMutexUnlock();
        goto LABEL_56;
      }

      if (a3)
      {
        v29 = CFGetTypeID(a3);
        if (v29 == CFBooleanGetTypeID())
        {
          *(v7 + 480) = CFBooleanGetValue(a3);
          goto LABEL_51;
        }
      }

      v12 = 4294950576;
    }

LABEL_54:
    APSLogErrorAt();
    goto LABEL_55;
  }

  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(v7 + 40));
  IsMuted = CMBaseObjectSetProperty(CMBaseObject, @"PermanentSpeakerGroupingInfo", a3);
LABEL_13:
  v12 = IsMuted;
  FigSimpleMutexUnlock();
  if (v12)
  {
LABEL_56:
    APSLogErrorAt();
  }

  return v12;
}

uint64_t __introspector_getCollectionOfActiveEndpoints_block_invoke()
{
  result = IsAppleInternalBuild();
  if (result)
  {
    _MergedGlobals_24 = malloc_type_calloc(1uLL, 0x18uLL, 0xF00401F3BCE50uLL);
    *_MergedGlobals_24 = dispatch_queue_create("CollectionOfActiveEndpoints", 0);
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v2 = _MergedGlobals_24;
    *(_MergedGlobals_24 + 8) = Mutable;
    *(v2 + 16) = "ActiveEndpoints";

    return APSIntrospectorAddCommand();
  }

  return result;
}

uint64_t endpoint_copyPropertyForFirstDisplay(const void *a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 40);
  v7 = CFGetAllocator(a1);
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(v6);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v11 = 4294954514;
LABEL_10:
    APSLogErrorAt();
    goto LABEL_11;
  }

  v10 = v9(CMBaseObject, @"DisplayDescriptionArray", v7, &cf);
  v11 = v10;
  if (v10 == -71754)
  {
    goto LABEL_11;
  }

  if (v10)
  {
    goto LABEL_10;
  }

  if (!cf || (v12 = CFGetTypeID(cf), v12 != CFArrayGetTypeID()))
  {
    endpoint_copyPropertyForFirstDisplay_cold_3();
LABEL_16:
    v11 = 4294950576;
    goto LABEL_11;
  }

  if (CFArrayGetCount(cf) <= 0)
  {
    endpoint_copyPropertyForFirstDisplay_cold_2();
    goto LABEL_16;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
  v14 = CFGetAllocator(a1);
  v11 = APEndpointDisplayDescriptionCopyProperty(ValueAtIndex, a2, v14, a3);
  if (v11)
  {
    endpoint_copyPropertyForFirstDisplay_cold_1();
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void endpoint_getBooleanFromExternalPlaybackCapabilitiesIfPresent()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, @"ExternalPlaybackCapabilities", *MEMORY[0x277CBECE8], &cf);
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (cf)
  {
    CFRelease(cf);
  }
}

BOOL endpoint_isInLocalCluster()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v1 = *(DerivedStorage + 88);
  if (v1)
  {
    return v1 == *MEMORY[0x277CBED28];
  }

  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(CMBaseObject, @"ClusterUUID", *MEMORY[0x277CBECE8], &cf);
  }

  v2 = APSHasSamePersistentGroupUUID();
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t endpoint_copyStreams(uint64_t a1, const __CFAllocator *a2, CFMutableArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = *(DerivedStorage + 160);
    if (v8)
    {
      CFDictionaryApplyFunction(v8, endpoint_copyStreamsDictionaryEntry, v7);
    }

    result = 0;
    *a3 = v7;
  }

  else
  {
    endpoint_copyStreams_cold_1();
    return 4294950575;
  }

  return result;
}

uint64_t endpoint_copyVolumeControlType(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    endpoint_copyVolumeControlType_cold_1();
    return 4294950576;
  }

  v4 = *(DerivedStorage + 492) - 1;
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_222298910[v4];
  }

  *a2 = v5;
  if (gLogCategory_APEndpoint > 30)
  {
    return 0;
  }

  if (gLogCategory_APEndpoint != -1 || (result = _LogCategory_Initialize(), result))
  {
    APSGetFigEndpointVolumeControlTypeName();
    APSGetAPVolumeControlTypeName();
    LogPrintF();
    return 0;
  }

  return result;
}

CFTypeRef endpoint_copyAuthorizationType(uint64_t a1, const void **a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 260) || !APSGetFBOPropertyInt64())
  {
    v3 = MEMORY[0x277CC0A78];
  }

  else
  {
    v3 = MEMORY[0x277CC0A80];
  }

  v4 = *v3;
  *a2 = *v3;

  return CFRetain(v4);
}

void endpoint_copyShowInfoDictionary(uint64_t a1, __CFDictionary **a2)
{
  v39 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v36 = 0;
  cf[0] = 0;
  value = 0;
  v35 = 0;
  v38 = 0;
  cf[1] = 0;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    SNPrintF();
    CFDictionarySetCString();
    v7 = *MEMORY[0x277CBED28];
    v8 = *MEMORY[0x277CBED10];
    if (*(DerivedStorage + 216))
    {
      v9 = *MEMORY[0x277CBED28];
    }

    else
    {
      v9 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v6, @"Activated", v9);
    CFDictionarySetValue(v6, @"Name", *(DerivedStorage + 440));
    CFDictionarySetValue(v6, @"DeviceID", *(DerivedStorage + 448));
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, @"TransportDevice", v4, cf);
    }

    if (cf[0])
    {
      APTransportDeviceGetDiscoveryID();
      FigCFDictionarySetValue();
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }
    }

    v12 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, @"Model", v4, &v36);
    }

    FigCFDictionarySetValue();
    if (v36)
    {
      CFRelease(v36);
      v36 = 0;
    }

    v14 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(v14, @"SourceVersion", v4, &v36);
    }

    FigCFDictionarySetValue();
    if (v36)
    {
      CFRelease(v36);
      v36 = 0;
    }

    v16 = *(DerivedStorage + 40);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v17)
    {
      v17(v16, &v35);
    }

    FigCFDictionarySetValue();
    if (v35)
    {
      CFRelease(v35);
      v35 = 0;
    }

    v18 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(v18, @"StatusFlags", v4, &v36);
    }

    FigCFDictionarySetValue();
    if (v36)
    {
      CFRelease(v36);
      v36 = 0;
    }

    v20 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v21(v20, @"IsClusterLeader", v4, &v36);
    }

    FigCFDictionarySetValue();
    if (v36)
    {
      CFRelease(v36);
      v36 = 0;
    }

    v22 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v23(v22, @"AccessControlType", v4, &v36);
    }

    FigCFDictionarySetValue();
    if (v36)
    {
      CFRelease(v36);
      v36 = 0;
    }

    v24 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v25)
    {
      v25(v24, @"HKAccessControlLevel", v4, &v36);
    }

    FigCFDictionarySetValue();
    if (v36)
    {
      CFRelease(v36);
      v36 = 0;
    }

    v26 = *(DerivedStorage + 160);
    if (v26)
    {
      CFDictionaryApplyFunction(v26, endpoint_copyShowInfoForStreamsDictionaryEntry, v6);
    }

    v27 = *(DerivedStorage + 216);
    if (v27 && (v28 = APSenderSessionGetCMBaseObject(v27), (v29 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
    {
      v29(v28, @"ShowInfo", v4, &value);
      v30 = v8;
      if (value)
      {
        CFDictionarySetValue(v6, @"SenderSessionInfo", value);
        FigCFDictionaryGetBooleanIfPresent();
        v30 = v8;
      }
    }

    else
    {
      v30 = v8;
    }

    CFDictionarySetValue(v6, @"Started", v30);
    CFDictionarySetInt64();
    if (*(DerivedStorage + 480))
    {
      v31 = v7;
    }

    else
    {
      v31 = v8;
    }

    CFDictionarySetValue(v6, @"AutoconnectEnabled", v31);
    if (*(DerivedStorage + 48))
    {
      v32 = v7;
    }

    else
    {
      v32 = v8;
    }

    CFDictionarySetValue(v6, @"IsRemoteControlEndpoint", v32);
    if (*(DerivedStorage + 49))
    {
      v33 = v7;
    }

    else
    {
      v33 = v8;
    }

    CFDictionarySetValue(v6, @"IsLocal", v33);
    *a2 = v6;
    if (value)
    {
      CFRelease(value);
    }
  }

  else
  {
    endpoint_copyShowInfoDictionary_cold_1();
  }

  if (v36)
  {
    CFRelease(v36);
  }
}

uint64_t endpoint_isConnected()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 216);
  if (!v1)
  {
    return *(DerivedStorage + 312);
  }

  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return *(DerivedStorage + 312);
  }

  result = v2(v1);
  if (!result)
  {
    return *(DerivedStorage + 312);
  }

  return result;
}

uint64_t endpoint_copyUsesExternalPlaybackByDefault(uint64_t a1, void *a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 216))
  {
    Value = FigCFDictionaryGetValue();
    if (FigCFEqual())
    {
      v5 = 0;
    }

    else
    {
      v5 = Value == 0;
    }

    v6 = MEMORY[0x277CBED28];
    if (!v5)
    {
      v6 = MEMORY[0x277CBED10];
    }

    v7 = CFRetain(*v6);
    result = 0;
    *a2 = v7;
  }

  else
  {
    endpoint_copyUsesExternalPlaybackByDefault_cold_1(a1, &v9);
    return v9;
  }

  return result;
}

CFArrayRef endpoint_copyExternalPlaybackCompetingStreams(uint64_t a1, CFArrayRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  values = FigCFDictionaryGetValue();
  if (!values)
  {
    return endpoint_copyExternalPlaybackCompetingStreams_cold_1();
  }

  result = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF128]);
  *a2 = result;
  return result;
}

uint64_t endpointdelegate_setVolumeSliderInternal(const void *a1, int a2, int a3, int a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v11 = *(DerivedStorage + 50) == 0;
  }

  else
  {
    v11 = 1;
  }

  v13 = !v11 && a2 != 0;
  if (*(DerivedStorage + 48))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpointdelegate_setVolumeSliderInternal_cold_1();
    }

    return 0;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpointdelegate_setVolumeSliderInternal_cold_2();
  }

  if (!APSGetFBOPropertyInt64())
  {
    return 0;
  }

  v14 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpointdelegate_setVolumeSliderInternal_cold_3();
  }

  if (*(v14 + 51) && (*(v14 + 504) - 5) < 0xFFFFFFFE)
  {
    if (a3 && *(v14 + 516))
    {
      *(v14 + 516) = 0;
LABEL_27:
      v15 = 0;
      v16 = (v14 + 512);
      goto LABEL_30;
    }
  }

  else if (a3 && (*(v14 + 516) || *(v14 + 517)))
  {
    *(v14 + 516) = 0;
    goto LABEL_27;
  }

  if (vabds_f32(a5, *(v14 + 512)) < 0.00000011921)
  {
    return 0;
  }

  v16 = (v14 + 512);
  v15 = 1;
LABEL_30:
  *v16 = a5;
  if (v13)
  {
LABEL_39:
    endpointdelegate_sendCurrentVolumeToReceiver(a1);
    return 0;
  }

  v17 = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpointdelegate_setVolumeSliderInternal_cold_5();
    v21 = 4294960568;
LABEL_50:
    APSLogErrorAt();
    return v21;
  }

  v19 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC1368], *(v17 + 448));
  FigCFDictionarySetFloat();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  CFRelease(v19);
  if ((v15 & 1) == 0)
  {
    v20 = endpoint_postMuteDidChangeNotification();
    if (v20)
    {
      v21 = v20;
      endpointdelegate_setVolumeSliderInternal_cold_4();
      goto LABEL_50;
    }
  }

  if (a2)
  {
    goto LABEL_39;
  }

  return 0;
}

uint64_t endpointdelegate_setIsMuted(const void *a1, int a2, int a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  v9 = *(DerivedStorage + 504);
  v10 = (v9 - 1) < 2;
  v11 = v9 == 2;
  v12 = (v9 - 3) < 2;
  v13 = v9 == 4;
  if (a3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (a3)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = (DerivedStorage + 516);
  v17 = (DerivedStorage + 517);
  if (a3)
  {
    v18 = (DerivedStorage + 516);
  }

  else
  {
    v18 = (DerivedStorage + 517);
  }

  if (*(DerivedStorage + 516))
  {
    v19 = 1;
  }

  else
  {
    v19 = *v17 != 0;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*v18 == a2)
  {
    return 0;
  }

  *v18 = a2;
  if (v14)
  {
    if (a3)
    {
      v27 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        endpointdelegate_setIsMuted_cold_4();
        return 0;
      }

      v27 = Mutable;
      CFDictionarySetValue(Mutable, @"muteIsProgrammatic", *MEMORY[0x277CBED28]);
    }

    if (a2 == 1)
    {
      v30 = @"mute";
    }

    else
    {
      v30 = @"unmute";
    }

    if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v31 = apEndpoint_sendCommandInternal(a1, v30, v27);
    if (v31)
    {
      v20 = v31;
      endpointdelegate_setIsMuted_cold_2();
      goto LABEL_44;
    }

    if (!a3)
    {
LABEL_41:
      v20 = 0;
      goto LABEL_44;
    }

    *(v8 + 528) = a2;
  }

  else
  {
    if (v15)
    {
      if (*v16)
      {
        v21 = 1;
      }

      else
      {
        v21 = *v17;
        if (*v17)
        {
          v21 = *(v8 + 504) == 4;
        }
      }

      if (v21 != v19)
      {
        v22 = CMBaseObjectGetDerivedStorage();
        APSVolumeConvertDBToSliderValue();
        if (a2 == 1)
        {
          APSVolumeConvertDBToSliderValue();
          v24 = v23;
          v25 = *(v22 + 512);
        }

        else
        {
          v24 = *(v22 + 520);
          APSVolumeConvertDBToSliderValue();
        }

        *(v22 + 520) = v25;
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v28 = endpointdelegate_setVolumeSliderInternal(a1, 1, 0, a4 == 0, v24);
        if (v28)
        {
          v20 = v28;
          endpointdelegate_setIsMuted_cold_1();
          return v20;
        }
      }
    }

    v27 = 0;
  }

  v20 = 0;
  if (a3 && *(v8 + 51))
  {
    if (!*(v8 + 50))
    {
      v20 = endpoint_postMuteDidChangeNotification();
      if (v20)
      {
        endpointdelegate_setIsMuted_cold_3();
      }

      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_44:
  if (v27)
  {
    CFRelease(v27);
  }

  return v20;
}

uint64_t endpoint_setAuthorizationString(uint64_t a1, const void *a2)
{
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  endpoint_copyAuthorizationType(a1, &v12);
  if (a2)
  {
    v5 = *(DerivedStorage + 464);
    *(DerivedStorage + 464) = a2;
    CFRetain(a2);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = v12;
  if (FigCFEqual())
  {
    v9 = 0;
    if (!v10)
    {
      return v9;
    }

    goto LABEL_15;
  }

  v5 = *(DerivedStorage + 464);
  *(DerivedStorage + 464) = 0;
  if (v5)
  {
LABEL_3:
    CFRelease(v5);
  }

LABEL_4:
  v6 = *(DerivedStorage + 216);
  if (v6)
  {
    CMBaseObject = APSenderSessionGetCMBaseObject(v6);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v9 = v8(CMBaseObject, @"AuthorizationString", a2);
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = 4294954514;
    }

    APSLogErrorAt();
  }

  else
  {
    v9 = 0;
  }

LABEL_14:
  v10 = v12;
  if (v12)
  {
LABEL_15:
    CFRelease(v10);
  }

  return v9;
}

uint64_t endpointdelegate_sendCurrentVolumeToReceiver(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 120))
  {
    return endpointdelegate_sendCurrentVolumeToReceiver_cold_1();
  }

  CMBaseObjectGetDerivedStorage();
  APSVolumeConvertSliderValueToDB();
  valuePtr = v3;
  if (*(DerivedStorage + 304))
  {
    v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
    CFSetApplyFunction(*(DerivedStorage + 304), endpoint_setVolumePropertyOnPlaybackSessions, v4);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpointdelegate_sendCurrentVolumeToReceiver_cold_2(&valuePtr);
  }

  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

uint64_t endpoint_postMuteDidChangeNotification()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v2 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC1368], *(DerivedStorage + 448));
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v2);
    return 0;
  }

  else
  {
    endpoint_postMuteDidChangeNotification_cold_1();
    return 4294960568;
  }
}

uint64_t endpoint_setVolumePropertyOnPlaybackSessions(uint64_t a1, uint64_t a2)
{
  CMBaseObject = FigEndpointPlaybackSessionGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {

    return v7(CMBaseObject, @"VolumeDB", a2);
  }

  return result;
}

void endpointdelegate_sendSetVolumeMessageIfNeeded(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 12);
  v3 = a1 + 8;
  v4 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((v4 < -30.0 || v4 > 0.0) && APSVolumeDBValuesAreNoticeablyDifferent())
  {
    v4 = -20.0;
  }

  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  APSVolumeConvertSliderValueToDB();
  v7 = v6;
  v8 = *(DerivedStorage + 528);
  v9 = *(DerivedStorage + 216);
  if (v9)
  {
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
  }

  if (APSGetFBOPropertyInt64() && APSSettingsGetIntWithDefault())
  {
    if (!APSVolumeDBValuesAreNoticeablyDifferent())
    {
      v4 = -144.0;
    }

    if (!APSVolumeDBValuesAreNoticeablyDifferent())
    {
      v7 = -144.0;
    }
  }

  FigSimpleMutexUnlock();
  if (v10)
  {
    if (vabds_f32(v4, v7) >= 0.00000011921)
    {
      endpointdelegate_sendSetVolumeMessageIfNeeded_cold_4();
    }

    else if (APSVolumeDBValuesAreNoticeablyDifferent() || v8 || v2)
    {
      FigSimpleMutexLock();
      *(DerivedStorage + 524) = v4;
      *(DerivedStorage + 528) = 0;
      FigSimpleMutexUnlock();
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v11 && v11(v10))
      {
        if (!APSVolumeDBValuesAreNoticeablyDifferent() && (*(DerivedStorage + 532) & 0x20) != 0)
        {
          if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
          {
            endpointdelegate_sendSetVolumeMessageIfNeeded_cold_1();
          }

          endpoint_sendSetVolumeMessage(-30.0, v1, v10);
        }

        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        endpoint_sendSetVolumeMessage(v4, v1, v10);
      }

      else
      {
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          endpointdelegate_sendSetVolumeMessageIfNeeded_cold_2(v3);
        }

        APSSetFBOPropertyDouble();
      }
    }

    else
    {
      endpointdelegate_sendSetVolumeMessageIfNeeded_cold_3();
    }
  }

  else
  {
    endpointdelegate_sendSetVolumeMessageIfNeeded_cold_5();
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v10)
  {

    CFRelease(v10);
  }
}

void endpoint_sendSetVolumeMessage(float a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (Mutable)
  {
    v7 = Mutable;
    CFStringAppendFormat(Mutable, 0, @"volume: %f\r\n", a1);
    if (FigCreateBlockBufferWithCFString())
    {
      endpoint_sendSetVolumeMessage_cold_1();
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      cf = 0;
      if (a3)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v8 && v8(a3))
        {
          CMBaseObject = APSenderSessionGetCMBaseObject(a3);
          v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v10)
          {
            v11 = v10(CMBaseObject, @"TransportControlStream", v5, &cf);
            if (v11)
            {
              v12 = v11;
            }

            else
            {
              if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v13 = cf;
              v14 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v14)
              {
                v12 = v14(v13, 1937141612, 0, 0);
                if (v12)
                {
                  goto LABEL_18;
                }

LABEL_19:
                if (cf)
                {
                  CFRelease(cf);
                }

                if (v12)
                {
                  APSLogErrorAt();
                }

                goto LABEL_23;
              }

              v12 = -12782;
            }
          }

          else
          {
            v12 = -12782;
          }

LABEL_18:
          APSLogErrorAt();
          goto LABEL_19;
        }

        v12 = 0;
        goto LABEL_19;
      }
    }

LABEL_23:
    CFRelease(v7);
    return;
  }

  endpoint_sendSetVolumeMessage_cold_2();
}

void apEndpoint_sendCommand(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v44 = 0;
  if (*(a1 + 56))
  {
    APSLogErrorAt();
    updated = *(a1 + 56);
    goto LABEL_53;
  }

  if (FigCFEqual())
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      apEndpoint_sendCommand_cold_9();
      updated = -16720;
      goto LABEL_53;
    }

    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v4 || !v4(v3, 47))
    {
      apEndpoint_sendCommand_cold_8();
      updated = cf[0];
      goto LABEL_53;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 32);
    CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    theArray = 0;
    theDict = 0;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      v42 = *MEMORY[0x277CBECE8];
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v6);
      if (MutableCopy)
      {
        v10 = MutableCopy;
        v11 = *MEMORY[0x277CC0B60];
        Value = CFDictionaryGetValue(v6, *MEMORY[0x277CC0B60]);
        v13 = *MEMORY[0x277CC0B68];
        v14 = CFDictionaryGetValue(v6, *MEMORY[0x277CC0B68]);
        CFDictionaryRemoveValue(v10, v11);
        CFDictionaryRemoveValue(v10, v13);
        v15 = APSenderSessionAirPlayPerformPairingPeersListManagement(v5, Value, v14, &theArray);
        if (!v15)
        {
          if (theArray && CFArrayGetCount(theArray) > 0)
          {
            v16 = 0;
          }

          else
          {
            v18 = *MEMORY[0x277CC0B78];
            if (CFDictionaryGetInt64())
            {
              if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
              {
                apEndpoint_sendCommand_cold_2();
              }

              v16 = -16726;
            }

            else
            {
              v16 = 0;
            }

            CFDictionarySetValue(v10, v18, *MEMORY[0x277CBED10]);
          }

          CFDictionarySetValue(v8, @"ConfigurationDictionary", v10);
          CMBaseObject = APSenderSessionGetCMBaseObject(v5);
          v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v31)
          {
            v32 = v31(CMBaseObject, @"TransportControlStream", v42, cf);
            if (!v32)
            {
              v33 = APTransportStreamSendPlistMessageCreatingPlistReply();
              if (v33)
              {
                v35 = v33;
                apEndpoint_sendCommand_cold_3();
              }

              else if (theDict)
              {
                if (theArray)
                {
                  v34 = CFDictionaryCreateMutableCopy(0, 0, theDict);
                  CFDictionarySetValue(v34, *MEMORY[0x277CC0B70], theArray);
                  v35 = 0;
                  v44 = v34;
                }

                else
                {
                  v35 = 0;
                  v44 = theDict;
                  theDict = 0;
                }
              }

              else
              {
                apEndpoint_sendCommand_cold_4();
                v35 = -16729;
              }

LABEL_42:
              CFRelease(v8);
              CFRelease(v10);
              if (theArray)
              {
                CFRelease(theArray);
              }

              goto LABEL_44;
            }

            v35 = v32;
          }

          else
          {
            v35 = -12782;
          }

          APSLogErrorAt();
          goto LABEL_42;
        }

        v35 = v15;
        apEndpoint_sendCommand_cold_1();
        v16 = 0;
        goto LABEL_42;
      }

      apEndpoint_sendCommand_cold_5(v8);
    }

    else
    {
      apEndpoint_sendCommand_cold_6();
    }

    v16 = 0;
    v35 = -16721;
LABEL_44:
    if (theDict)
    {
      CFRelease(theDict);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v16)
    {
      updated = v16;
    }

    else
    {
      updated = v35;
    }

    if (updated)
    {
      apEndpoint_sendCommand_cold_7();
    }

    goto LABEL_53;
  }

  if (FigCFEqual())
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      apEndpoint_sendCommand_cold_10();
    }

    if (!*(DerivedStorage + 272) && (!APSGetFBOPropertyInt64() || !*(DerivedStorage + 242)))
    {
      if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        apEndpoint_sendCommand_cold_12();
      }

      goto LABEL_90;
    }

    updated = endpoint_setSecondDisplayMode(*a1, *(a1 + 32));
    if (updated)
    {
      apEndpoint_sendCommand_cold_11();
    }

    goto LABEL_53;
  }

  if (FigCFEqual())
  {
    v19 = *(a1 + 16);
    cf[0] = 0;
    theArray = 0;
    theDict = 0;
    v20 = APSenderSessionGetCMBaseObject(v19);
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v22 = *MEMORY[0x277CBECE8];
      v23 = v21(v20, @"TransportControlStream", *MEMORY[0x277CBECE8], cf);
      if (v23)
      {
        updated = v23;
      }

      else
      {
        v24 = cf[0];
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v25)
        {
          v26 = v25(v24, 1819240307, 0, &theDict);
          if (!v26)
          {
            CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
            if (CFDataWithBlockBufferNoCopy)
            {
              updated = CFDataWithBlockBufferNoCopy;
              apEndpoint_sendCommand_cold_13();
            }

            else
            {
              v28 = CFDictionaryCreateMutable(v22, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (v28)
              {
                v29 = v28;
                CFDictionarySetValue(v28, *MEMORY[0x277CC1668], theArray);
                updated = 0;
                v44 = v29;
              }

              else
              {
                apEndpoint_sendCommand_cold_14();
                updated = -16721;
              }
            }

            goto LABEL_80;
          }

          updated = v26;
        }

        else
        {
          updated = -12782;
        }
      }
    }

    else
    {
      updated = -12782;
    }

    APSLogErrorAt();
LABEL_80:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (theDict)
    {
      CFRelease(theDict);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    if (updated)
    {
      apEndpoint_sendCommand_cold_15();
    }

    goto LABEL_53;
  }

  if (FigCFEqual())
  {
    updated = endpoint_sendChangeRelativeVolumeMessage(*a1, *(a1 + 16));
    if (updated)
    {
      apEndpoint_sendCommand_cold_16();
    }
  }

  else
  {
    if (FigCFEqual())
    {
      APDemoEndpointUIEventChannelInit(*a1);
LABEL_90:
      updated = 0;
      goto LABEL_53;
    }

    if (FigCFEqual())
    {
      updated = endpoint_sendSetMRInfo(*a1, *(a1 + 16), *(a1 + 32), &v44);
      if (updated)
      {
        apEndpoint_sendCommand_cold_17();
      }
    }

    else if (FigCFEqual())
    {
      updated = endpoint_sendUpdateBadgingFormatInfo(*a1, *(a1 + 16));
      if (updated)
      {
        apEndpoint_sendCommand_cold_18();
      }
    }

    else
    {
      updated = endpoint_sendControlCommand(*(a1 + 16), *(a1 + 24));
    }
  }

LABEL_53:
  v36 = *(a1 + 40);
  v37 = v44;
  if (v36)
  {
    cf[0] = *a1;
    cf[1] = v44;
    v38 = *(a1 + 48);
    cf[2] = v36;
    cf[3] = v38;
    cf[4] = updated;
    CFRetain(cf[0]);
    if (v44)
    {
      CFRetain(v44);
    }

    APSDispatchAsyncFHelper();
    v37 = v44;
  }

  if (v37)
  {
    CFRelease(v37);
  }

  CFRelease(*a1);
  CFRelease(*(a1 + 24));
  v39 = *(a1 + 8);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(a1 + 32);
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = *(a1 + 16);
  if (v41)
  {
    CFRelease(v41);
  }
}

uint64_t endpoint_setSecondDisplayMode(void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    endpoint_setSecondDisplayMode_cold_1();
    return 4294950576;
  }

  v5 = DerivedStorage;
  FigSimpleMutexLock();
  if (!FigCFEqual() || *(v5 + 240))
  {
    FigSimpleMutexUnlock();
    v6 = 0;
    goto LABEL_5;
  }

  v6 = FigCFDictionaryCopyArrayOfValues();
  FigSimpleMutexUnlock();
  if (!v6 || CFArrayGetCount(v6) <= 0)
  {
LABEL_5:
    APSLogErrorAt();
    Mutable = 0;
    v8 = 4294949690;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (Int64 == 1)
  {
    v12 = CFDictionaryGetInt64();
    v13 = v12 && !*(v5 + 242) && APSGetFBOPropertyInt64() != 0;
    v14 = *(v5 + 616);
    if (v14)
    {
      dispatch_source_cancel(*(v5 + 616));
      dispatch_release(v14);
      *(v5 + 616) = 0;
    }

    if (v13)
    {
      *(v5 + 616) = APEndpointCreateAndStartProcessDemiseListener(a1, v12, *(v5 + 576), endpoint_handleClientProcessDeath);
    }
  }

  else
  {
    if (Int64)
    {
      if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      Mutable = 0;
      v8 = 4294950576;
      goto LABEL_6;
    }

    v11 = *(v5 + 616);
    if (v11)
    {
      dispatch_source_cancel(*(v5 + 616));
      dispatch_release(v11);
      *(v5 + 616) = 0;
    }
  }

  v15 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v15, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetInt64();
  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v17 = Count;
    for (i = 0; i != v17; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v20)
      {
        v20(ValueAtIndex, @"SetMode", Mutable);
      }
    }

    v8 = 0;
  }

LABEL_6:
  CFRelease(v6);
LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t endpoint_sendChangeRelativeVolumeMessage(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v11 = 0;
  if (!FigCFDictionaryGetBooleanIfPresent())
  {
    endpoint_sendChangeRelativeVolumeMessage_cold_6();
    return 4294950576;
  }

  if (!a2)
  {
    endpoint_sendChangeRelativeVolumeMessage_cold_5(&v11, a1, &v13);
    return v13;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4 || !v4(a2))
  {
    endpoint_sendChangeRelativeVolumeMessage_cold_4(&v11, a1, &v12);
    return v12;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_sendChangeRelativeVolumeMessage_cold_1();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpoint_sendChangeRelativeVolumeMessage_cold_3();
    return 4294950575;
  }

  v6 = Mutable;
  SInt32 = FigCFNumberCreateSInt32();
  if (!SInt32)
  {
    endpoint_sendChangeRelativeVolumeMessage_cold_2(v6);
    return 4294950575;
  }

  v8 = SInt32;
  CFDictionarySetValue(v6, @"value", SInt32);
  v9 = endpoint_sendControlCommand(a2, @"changeRelativeVolume");
  CFRelease(v6);
  CFRelease(v8);
  return v9;
}

uint64_t endpoint_sendSetMRInfo(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (CFDictionaryContainsKey(a3, *MEMORY[0x277CC1770]))
    {
      v7 = APSGetFBOPropertyInt64();
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v7)
      {
        result = endpoint_sendControlCommand(a2, @"setMRInfo");
        v9 = result;
        if (result)
        {
          APSLogErrorAt();
          return v9;
        }

        return result;
      }
    }

    else
    {
      endpoint_sendSetMRInfo_cold_2();
    }
  }

  result = 0;
  if (a4)
  {
    result = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t endpoint_sendUpdateBadgingFormatInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 40);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v4)
  {
    v5 = v4(v3, 88) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (FigCFDictionaryGetNumberValue())
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v5)
    {
      endpoint_sendUpdateBadgingFormatInfo_cold_2();
      return 4294960561;
    }

    else
    {
      v6 = endpoint_sendControlCommand(a2, @"updateBadgingFormatInfo");
      if (v6)
      {
        endpoint_sendUpdateBadgingFormatInfo_cold_1();
      }
    }
  }

  else
  {
    endpoint_sendUpdateBadgingFormatInfo_cold_3();
    return 4294950576;
  }

  return v6;
}

uint64_t endpoint_sendControlCommand(uint64_t a1, const void *a2)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpoint_sendControlCommand_cold_2();
    return 4294950575;
  }

  v5 = Mutable;
  CFDictionarySetValue(Mutable, @"type", a2);
  FigCFDictionarySetValue();
  CMBaseObject = APSenderSessionGetCMBaseObject(a1);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], &cf);
    if (!v8)
    {
      v9 = APTransportStreamSendPlistMessageCreatingPlistReply();
      if (v9)
      {
        endpoint_sendControlCommand_cold_1();
      }

      goto LABEL_8;
    }

    v9 = v8;
  }

  else
  {
    v9 = 4294954514;
  }

  APSLogErrorAt();
LABEL_8:
  CFRelease(v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void endpoint_handleClientProcessDeath(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_handleClientProcessDeath_cold_1();
  }

  v3 = *(DerivedStorage + 616);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 616));
    dispatch_release(v3);
    *(DerivedStorage + 616) = 0;
  }

  SecondDisplayModeCommandParams = APEndpointCreateSecondDisplayModeCommandParams();
  if (SecondDisplayModeCommandParams)
  {
    v5 = SecondDisplayModeCommandParams;
    endpoint_setSecondDisplayMode(a1, SecondDisplayModeCommandParams);

    CFRelease(v5);
  }

  else
  {
    endpoint_handleClientProcessDeath_cold_2();
  }
}

uint64_t endpoint_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, @"DeviceID", *MEMORY[0x277CBECE8], &cf);
  }

  FigSimpleMutexLock();
  v12 = *(DerivedStorage + 48);
  v13 = *(DerivedStorage + 440);
  v14 = CFGetHardwareAddress();
  v15 = "RC";
  if (!v12)
  {
    v15 = "AP";
  }

  v16 = (*(a5 + 16))(a5, a3, "Endpoint:[%{ptr}] (%s) %''@ DiscoveryID:%llu Parent:[%{ptr}]\n", a1, v15, v13, v14, a2);
  if (v16)
  {
    v22 = v16;
    endpoint_DumpHierarchy_cold_1();
    goto LABEL_18;
  }

  v17 = *(DerivedStorage + 216);
  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v19 = *(ProtocolVTable + 16)) == 0)
  {
    v22 = 4294954508;
LABEL_15:
    v22 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v17, 0, " ", 0, 0, v22, a1);
    goto LABEL_16;
  }

  v20 = *(v19 + 8);
  if (!v20)
  {
    v22 = 4294954514;
    goto LABEL_15;
  }

  v21 = v20(v17, a1, a3 + 1, 0, a5);
  v22 = v21;
  if (v21 == -12782 || v21 == -12788)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v22)
  {
    endpoint_DumpHierarchy_cold_2();
  }

LABEL_18:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

uint64_t endpoint_Deactivate(void *a1, const __CFDictionary *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_Deactivate_cold_1();
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC0B90]);
    if (!*(DerivedStorage + 48) && CFDictionaryGetInt64())
    {
      CFDictionaryGetDouble();
    }
  }

  else
  {
    Value = 0;
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 120))
  {
    endpoint_Deactivate_cold_2();
    v8 = 4294950573;
    goto LABEL_16;
  }

  if (*(DerivedStorage + 241) && !FigCFEqual())
  {
    if (gLogCategory_APEndpoint > 90)
    {
      v8 = 4294950570;
LABEL_20:
      if (a3)
      {
        CFRetain(a1);
        APSDispatchAsyncFHelper();
      }

      goto LABEL_22;
    }

    if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
    {
      endpoint_Deactivate_cold_3();
    }

    v8 = 4294950570;
LABEL_16:
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_20;
  }

  v10 = *(DerivedStorage + 216);
  if (v10)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v11)
    {
      v11(v10);
    }
  }

  CFRetain(a1);
  v12 = *(DerivedStorage + 440);
  if (v12)
  {
    CFRetain(v12);
  }

  if (Value)
  {
    CFRetain(Value);
  }

  v13 = *(DerivedStorage + 216);
  if (v13)
  {
    v14 = CFRetain(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(DerivedStorage + 160);
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(DerivedStorage + 184);
  if (v17)
  {
    CFRetain(v17);
  }

  v18 = *(DerivedStorage + 304);
  v19 = *MEMORY[0x277CBECE8];
  if (v18)
  {
    Copy = CFSetCreateCopy(*MEMORY[0x277CBECE8], v18);
  }

  else
  {
    Copy = 0;
  }

  v21 = *(DerivedStorage + 328);
  if (v21)
  {
    v22 = CFDictionaryCreateCopy(v19, v21);
  }

  else
  {
    v22 = 0;
  }

  FigCFDictionaryCreateMutableCopy();
  v23 = *(DerivedStorage + 296);
  if (v23)
  {
    CFRetain(v23);
  }

  *(DerivedStorage + 480) = 0;
  v24 = *(DerivedStorage + 264);
  if (v24)
  {
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint != -1 || (v25 = _LogCategory_Initialize(), v24 = *(DerivedStorage + 264), v25))
      {
        LogPrintF();
        v24 = *(DerivedStorage + 264);
      }
    }

    v26 = *(DerivedStorage + 40);
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v27)
    {
      v27(v26, v24);
    }

    v28 = *(DerivedStorage + 264);
    if (v28)
    {
      CFRelease(v28);
      *(DerivedStorage + 264) = 0;
    }
  }

  CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v30)
  {
    v30(CMBaseObject, @"uglServerInfo", 0);
  }

  endpoint_initializeVolumeDelegateStorage();
  *(DerivedStorage + 488) = *(DerivedStorage + 148);
  *(DerivedStorage + 483) = 0;
  endpoint_resetActivationState(DerivedStorage + 128);
  endpoint_removeAPEndpointManagerNotificationsListenerIfNeeded();
  endpoint_removeHDMILatencyNotificationListenerIfNeeded();
  endpoint_stopListeningToSenderSessionAndStreamsNotifications(a1, v14);
  if (v22)
  {
    CFDictionaryApplyFunction(v22, endpoint_unsubscribeRCS, a1);
  }

  if (Copy)
  {
    CFSetApplyFunction(Copy, endpoint_unsubscribePlaybackSession, a1);
  }

  endpoint_updateCurrentVolumeControlType();
  endpoint_updateIsVolumeAndMuteControlSupported();
  endpoint_updateVideoPlaybackIsActive(a1);
  endpoint_deregisterWithBrowserController(a1);
  if (v16 && CFDictionaryContainsKey(v16, *MEMORY[0x277CC1968]))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_Deactivate_cold_4();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  APSDispatchAsyncFHelper();
  v8 = 0;
LABEL_22:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t endpoint_SetDelegate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v3;
    v11 = *(a2 + 32);
    v8[1] = 0;
    v8[0] = *&v10[0];
    v9 = *(a2 + 48);
    v4 = endpoint_SetDelegateRouting(a1, v10);
    if (v4)
    {
      v5 = v4;
      endpoint_SetDelegate_cold_1();
    }

    else
    {
      v5 = endpoint_SetDelegateRemoteControl(a1, v8);
      if (v5)
      {
        endpoint_SetDelegate_cold_2();
      }
    }
  }

  else
  {
    v6 = endpoint_SetDelegateRouting(a1, 0);
    if (v6)
    {
      v5 = v6;
      endpoint_SetDelegate_cold_3();
    }

    else
    {
      v5 = endpoint_SetDelegateRemoteControl(a1, 0);
      if (v5)
      {
        endpoint_SetDelegate_cold_4();
      }
    }
  }

  return v5;
}

uint64_t endpoint_CreatePlaybackSession(uint64_t a1, void **a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (!*(DerivedStorage + 216))
  {
    endpoint_CreatePlaybackSession_cold_9();
    v24 = 4294949691;
    goto LABEL_43;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 304);
  if (!v5)
  {
    endpoint_CreatePlaybackSession_cold_8();
    v24 = 4294949690;
    goto LABEL_43;
  }

  Count = CFSetGetCount(v5);
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@-%d", *(v4 + 440), (Count + 1));
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpoint_CreatePlaybackSession_cold_7();
    v24 = 4294950575;
    if (!v8)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v10 = Mutable;
  CMBaseObjectGetDerivedStorage();
  APSVolumeConvertSliderValueToDB();
  FigCFDictionarySetFloat();
  APSEventRecorderGetEventTime();
  APSEventRecorderSetTimeInDictionary();
  v11 = *(v4 + 208);
  if (v11)
  {
    CFDictionarySetValue(v10, @"NetworkClock", v11);
  }

  if (APSGetFBOPropertyInt64())
  {
    v12 = *(v4 + 184);
    if (v12)
    {
      CFDictionarySetValue(v10, @"MetadataSource", v12);
    }

    endpoint_getBooleanFromExternalPlaybackCapabilitiesIfPresent();
    v13 = *(v4 + 40);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v14)
    {
      LODWORD(v14) = v14(v13, 35) != 0;
    }

    v17 = *MEMORY[0x277CBED10];
    if (v14)
    {
      v18 = *MEMORY[0x277CBED28];
    }

    else
    {
      v18 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v10, @"SupportsTLS_PSK", v18);
    endpoint_getBooleanFromExternalPlaybackCapabilitiesIfPresent();
    CFDictionarySetValue(v10, @"SupportsV2ArtworkMetadata", v17);
    v19 = APEndpointPlaybackSessionRemoteControlCreate(v8, *(v4 + 216), *(v4 + 448), v10, &value);
    if (v19)
    {
      v24 = v19;
      APSLogErrorAt();
      goto LABEL_39;
    }

    if (gLogCategory_APEndpoint > 50 || gLogCategory_APEndpoint == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  if (APSGetFBOPropertyInt64())
  {
    v15 = *(v4 + 184);
    if (v15)
    {
      CFDictionarySetValue(v10, @"MetadataSource", v15);
    }

    v16 = APEndpointPlaybackSessionAirPlayCreate(v8, *(v4 + 216), *(v4 + 40), v10, &value);
    if (v16)
    {
      v24 = v16;
      endpoint_CreatePlaybackSession_cold_1();
      goto LABEL_39;
    }

    if (gLogCategory_APEndpoint > 50 || gLogCategory_APEndpoint == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  v20 = APEndpointPlaybackSessionMCCreate(v8, *(v4 + 216), *(v4 + 40), *(v4 + 224), v10, &value);
  if (v20)
  {
    v24 = v20;
    endpoint_CreatePlaybackSession_cold_2();
    goto LABEL_39;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
LABEL_24:
    LogPrintF();
  }

LABEL_34:
  CFSetSetValue(*(v4 + 304), value);
  CMNotificationCenterGetDefaultLocalCenter();
  v21 = FigNotificationCenterAddWeakListener();
  if (v21)
  {
    v24 = v21;
    endpoint_CreatePlaybackSession_cold_3();
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v22 = FigNotificationCenterAddWeakListener();
    if (v22)
    {
      v24 = v22;
      endpoint_CreatePlaybackSession_cold_4();
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v23 = FigNotificationCenterAddWeakListener();
      if (v23)
      {
        v24 = v23;
        endpoint_CreatePlaybackSession_cold_5();
      }

      else
      {
        CMNotificationCenterGetDefaultLocalCenter();
        v24 = FigNotificationCenterAddWeakListener();
        if (v24)
        {
          endpoint_CreatePlaybackSession_cold_6();
        }

        else
        {
          *a2 = value;
          value = 0;
        }
      }
    }
  }

LABEL_39:
  CFRelease(v10);
  if (value)
  {
    CFRelease(value);
  }

  if (v8)
  {
LABEL_42:
    CFRelease(v8);
  }

LABEL_43:
  FigSimpleMutexUnlock();
  return v24;
}

uint64_t endpoint_UpdateFeatures(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 144))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    APSDispatchAsyncFHelper();
    v6 = 0;
  }

  else
  {
    APSLogErrorAt();
    CFRetain(a1);
    v6 = 4294949690;
    APSDispatchAsyncFHelper();
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t endpoint_readActivationOptions(CFDictionaryRef theDict, uint64_t a2)
{
  if (*(a2 + 104))
  {
    goto LABEL_2;
  }

  v8 = *MEMORY[0x277CC09E8];
  if (!CFDictionaryContainsKey(theDict, *MEMORY[0x277CC09E8]))
  {
    goto LABEL_2;
  }

  Value = CFDictionaryGetValue(theDict, v8);
  if (!Value)
  {
    v12 = *(a2 + 104);
    *(a2 + 104) = 0;
    if (!v12)
    {
      goto LABEL_2;
    }

LABEL_16:
    CFRelease(v12);
    goto LABEL_2;
  }

  v10 = Value;
  v11 = CFGetTypeID(Value);
  if (v11 != CFStringGetTypeID())
  {
    endpoint_readActivationOptions_cold_1();
    return 4294950576;
  }

  v12 = *(a2 + 104);
  *(a2 + 104) = v10;
  CFRetain(v10);
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_2:
  if (CFDictionaryContainsKey(theDict, *MEMORY[0x277CC09B0]))
  {
    *(a2 + 40) = CFDictionaryGetInt64();
  }

  v4 = *MEMORY[0x277CC09F8];
  if (CFDictionaryContainsKey(theDict, *MEMORY[0x277CC09F8]))
  {
    v5 = *(a2 + 64);
    v6 = CFDictionaryGetValue(theDict, v4);
    *(a2 + 64) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

uint64_t endpoint_shouldOnlyBeActivatedAsPartOfCluster()
{
  if (*(CMBaseObjectGetDerivedStorage() + 48))
  {
    return 0;
  }

  result = APSIsEndpointClusteringEnabled();
  if (result)
  {
    return APSIsFBOPropertyNonNull() != 0;
  }

  return result;
}

uint64_t endpoint_ensureSharedContextCreated(uint64_t a1, char a2, const __CFDictionary *a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v9 = Mutable;
    if (*(CMBaseObjectGetDerivedStorage() + 48))
    {
      v10 = MEMORY[0x277CEA270];
    }

    else
    {
      Int64 = APSSettingsGetInt64();
      if (FigCFEqual())
      {
        v12 = APSSettingsGetInt64() == 0;
      }

      else
      {
        v12 = FigCFEqual() == 0;
      }

      v13 = v12;
      v19 = v13;
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v14 = APSGetFBOPropertyInt64();
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if ((v14 == 0) | v19 & 1 | (Int64 != 0))
      {
        v10 = MEMORY[0x277CEA268];
      }

      else
      {
        v10 = MEMORY[0x277CEA278];
      }
    }

    CFDictionarySetValue(v9, @"PreferredNetworkClockType", *v10);
    v15 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v9, @"AllowP2PForNTP", *MEMORY[0x277CBED28]);
    if (a4)
    {
      v16 = v15;
    }

    else
    {
      v16 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v9, @"IgnoreClientPIDForMediaRemote", v16);
    SharedContext = APEndpointCopyFromActivationOptionsOrCreateSharedContext(a3, a2, v9, DerivedStorage + 208, (DerivedStorage + 200), 0);
    if (SharedContext)
    {
      endpoint_ensureSharedContextCreated_cold_1();
    }

    CFRelease(v9);
  }

  else
  {
    endpoint_ensureSharedContextCreated_cold_2();
    return 4294950575;
  }

  return SharedContext;
}

void endpoint_postIsInUseDidChangeNotification(uint64_t a1, int a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 144);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = *MEMORY[0x277CBED28];
    v7 = *MEMORY[0x277CBED10];
    if (v3)
    {
      v8 = *MEMORY[0x277CBED28];
    }

    else
    {
      v8 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"IsInUse", v8);
    if (a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = v7;
    }

    CFDictionarySetValue(v5, @"WasAutoconnected", v9);
    if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_postIsInUseDidChangeNotification_cold_1();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v5);
  }

  else
  {
    endpoint_postIsInUseDidChangeNotification_cold_2();
  }
}

void endpoint_activateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v138 = 0;
  v139 = 0;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (*(DerivedStorage + 120))
  {
    endpoint_activateInternal_cold_1();
    v29 = 0;
    v30 = 0;
    v31 = 0;
    LOBYTE(v126) = 0;
    v8 = -16723;
    goto LABEL_89;
  }

  if (*(a1 + 96))
  {
    if (CFDictionaryGetInt64())
    {
      v6 = 1;
    }

    else
    {
      v6 = CFDictionaryGetInt64() != 0;
    }

    v126 = v6;
  }

  else
  {
    v126 = 0;
  }

  v7 = *(a1 + 136);
  if (v7 == -16727)
  {
    FigSimpleMutexLock();
    if (*(a1 + 48) == *(DerivedStorage + 128) && *(DerivedStorage + 144) == 2)
    {
      v139 = *(DerivedStorage + 136);
      v8 = -16727;
    }

    else
    {
      v8 = -17604;
    }

    FigSimpleMutexUnlock();
LABEL_88:
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_89;
  }

  if (v7)
  {
    APSLogErrorAt();
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v8 = *(a1 + 136);
    goto LABEL_89;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_activateInternal_cold_2();
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = CMBaseObjectGetDerivedStorage();
    if (!*(v11 + 584))
    {
      if (v10)
      {
        v12 = v11;
        v13 = (v11 + 584);
        v14 = APMediaRemoteCommandReceiverCreate(*MEMORY[0x277CBECE8], v9, (v11 + 584));
        if (v14)
        {
          v8 = v14;
          endpoint_activateInternal_cold_3();
        }

        else
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          LOBYTE(v127) = APEndpointDescriptionIsSourceVersionOlderThan(*(v12 + 40), 0x36193Eu);
          if (IsAppleInternalBuild())
          {
            APSSettingsGetBooleanIfPresent();
          }

          if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (!v127)
          {
            goto LABEL_32;
          }

          v15 = APMediaRemoteCommandReceiverAddClient();
          if (v15)
          {
            v8 = v15;
            endpoint_activateInternal_cold_4();
          }

          else
          {
            APMediaRemoteCommandReceiverGetID(*v13);
            v16 = APSSetFBOPropertyInt64();
            if (v16)
            {
              v8 = v16;
              endpoint_activateInternal_cold_5();
            }

            else
            {
              v17 = APSSetFBOPropertyInt64();
              if (!v17)
              {
LABEL_32:
                if (gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
                {
                  endpoint_activateInternal_cold_7();
                }

                goto LABEL_35;
              }

              v8 = v17;
              endpoint_activateInternal_cold_6();
            }
          }
        }
      }

      else
      {
        endpoint_activateInternal_cold_8();
        v8 = -6762;
      }

      APSLogErrorAt();
      goto LABEL_189;
    }
  }

LABEL_35:
  if (!*(DerivedStorage + 48))
  {
    v18 = *(a1 + 104);
    CMBaseObject = APSenderSessionGetCMBaseObject(*(a1 + 40));
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v20)
    {
      v20(CMBaseObject, @"GroupID", v18);
    }

    v21 = *(a1 + 40);
    if ((*(a1 + 16) & 0xFLL) != 0)
    {
      v22 = MEMORY[0x277CBED28];
    }

    else
    {
      v22 = MEMORY[0x277CBED10];
    }

    v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v23)
    {
      v23(v21, @"IsMediaSession", *v22);
    }

    if (*(a1 + 160))
    {
      updated = endpoint_updateUGLRCServerIfNeeded(*a1, *(a1 + 40), *(a1 + 104), 1);
      if (updated)
      {
        v8 = updated;
        endpoint_activateInternal_cold_9();
LABEL_189:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        goto LABEL_190;
      }
    }
  }

  if (!v4)
  {
    v32 = *(a1 + 40);
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v33)
    {
      v34 = v33(v32);
      if (!v34)
      {
        goto LABEL_58;
      }

      v8 = v34;
    }

    else
    {
      v8 = -12782;
    }

    APSLogErrorAt();
    v43 = 0;
    v31 = 0;
    v29 = 0;
    v5 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
    goto LABEL_205;
  }

  while (1)
  {
    v24 = *(a1 + 40);
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v25)
    {
      v8 = -12782;
      goto LABEL_82;
    }

    v26 = v25(v24);
    v8 = v26;
    if (v26 <= 200400)
    {
      break;
    }

    if (v26 == 200503)
    {
      v8 = -17609;
LABEL_82:
      v5 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
      goto LABEL_87;
    }

    if (v26 != 200470 && v26 != 200401)
    {
      goto LABEL_82;
    }

    if (v126)
    {
      endpoint_activateInternal_cold_10();
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v8 = -17600;
      LOBYTE(v126) = 1;
      goto LABEL_190;
    }

    v28 = endpoint_handleAuthorizationRequired(*a1, 0, *(a1 + 48), 0);
    if (v28)
    {
      v8 = v28;
      endpoint_activateInternal_cold_11();
      v29 = 0;
      v30 = 0;
      v31 = 0;
      LOBYTE(v126) = 0;
      goto LABEL_190;
    }
  }

  v42 = v26 == -71164 || v26 == -71145;
  v5 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (v42)
  {
    v8 = -17608;
    goto LABEL_87;
  }

  if (v26)
  {
    goto LABEL_82;
  }

LABEL_58:
  v35 = *(a1 + 88);
  if (v35)
  {
    v36 = *a1;
    v37 = *(a1 + 40);
    v38 = CMBaseObjectGetDerivedStorage();
    v39 = APSGetFBOPropertyInt64();
    if (!*(v38 + 600))
    {
      if (v39)
      {
        v40 = APMetadataSenderCreate(*MEMORY[0x277CBECE8], v37, v39, *(v38 + 576), v35, v36, endpoint_isAudioTimelineEstablished, endpoint_getCurrentRTPTime, (v38 + 600));
        if (v40)
        {
          v8 = v40;
          endpoint_activateInternal_cold_12();
          v29 = 0;
          v30 = 0;
          v31 = 0;
LABEL_190:
          v5 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
          goto LABEL_89;
        }

        endpoint_activateInternal_cold_13(v35);
      }
    }
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 242) && endpoint_shouldOnlyBeActivatedAsPartOfCluster())
  {
    v8 = -72277;
    v5 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
    goto LABEL_86;
  }

  v5 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (*(a1 + 48) != *(DerivedStorage + 128) || (v4 ? (v41 = 1) : (v41 = 2), *(DerivedStorage + 144) != v41))
  {
    v8 = -17604;
    goto LABEL_86;
  }

  v8 = *(DerivedStorage + 148);
  if (v8)
  {
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_86:
    FigSimpleMutexUnlock();
LABEL_87:
    APSLogErrorAt();
    goto LABEL_88;
  }

  if (v4)
  {
    shouldUseInactivityTimer = endpoint_shouldUseInactivityTimer();
    *(DerivedStorage + 262) = shouldUseInactivityTimer;
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      shouldUseInactivityTimer = *(DerivedStorage + 262);
    }

    if (shouldUseInactivityTimer)
    {
      endpoint_startInactivityTimer(*a1);
    }

    if (v3 == 16)
    {
      goto LABEL_148;
    }

    LOBYTE(v127) = 0;
    *(DerivedStorage + 532) = endpointdelegate_getInitialVolumeDBAndIsMuted(*a1, (DerivedStorage + 536), (DerivedStorage + 524), &v127);
    APSVolumeConvertDBToSliderValue();
    *(DerivedStorage + 512) = v68;
    v69 = v127;
    *(DerivedStorage + 516) = v127;
    *(DerivedStorage + 528) = v69;
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      APSVolumeConvertDBToSliderValue();
      LogPrintF();
    }
  }

  else if (v3 == 16)
  {
LABEL_148:
    v64 = 16;
    goto LABEL_149;
  }

  endpoint_updateScreenRelatedConfiguration(*a1, *(a1 + 40), *(a1 + 96));
  *(DerivedStorage + 272) = endpoint_isMediaPresentationModeAvailable();
  v70 = endpoint_setupStreams(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 96), &v139);
  if (v70)
  {
    v8 = v70;
    endpoint_activateInternal_cold_14();
    goto LABEL_86;
  }

  v64 = v139;
  if (*(a1 + 16) && !v139)
  {
    endpoint_activateInternal_cold_16();
    v8 = v127;
    goto LABEL_86;
  }

  if ((v139 & 4) == 0 || !*(DerivedStorage + 320))
  {
    goto LABEL_150;
  }

  if (!APSSettingsGetIntWithDefault())
  {
    v64 = v139;
    goto LABEL_150;
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_activateInternal_cold_15();
  }

  v64 = v139 & 0xFFFFFFFFFFFFFFFBLL;
LABEL_149:
  v139 = v64;
LABEL_150:
  *(DerivedStorage + 136) = v64;
  v65 = *(a1 + 24);
  v31 = v64 & ~v65;
  v125 = v65 & ~v64;
  if (v4)
  {
    APSEventRecorderRecordEvent();
    *(DerivedStorage + 144) = 2;
    v66 = 1;
  }

  else
  {
    v66 = 0;
  }

  if (*(DerivedStorage + 261) && v31 & 0xFFFFFFFFFFFFFFDFLL | v125 & 0xFFFFFFFFFFFFFFDFLL)
  {
    endpoint_postInterruptingSessionStateDidChangeNotification(*a1, (v31 & 0xFFFFFFFFFFFFFFDFLL) != 0);
  }

  endpoint_updateCurrentVolumeControlType();
  endpoint_updateIsVolumeAndMuteControlSupported();
  endpoint_updateVideoPlaybackIsActive(*a1);
  *(DerivedStorage + 488) = 0;
  FigSimpleMutexUnlock();
  v29 = v125;
  if (!v4)
  {
    v8 = 0;
    v43 = 0;
    goto LABEL_207;
  }

  v30 = v66;
  if (*(DerivedStorage + 24) && *(a1 + 64))
  {
    APBrowserControllerRegisterEndpointActivated();
  }

  if (qword_280FB1BF8 != -1)
  {
    endpoint_activateInternal_cold_17();
  }

  if (_MergedGlobals_24)
  {
    v67 = *_MergedGlobals_24;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __endpoint_activateInternal_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = _MergedGlobals_24;
    block[5] = a1;
    dispatch_sync(v67, block);
  }

  v8 = 0;
LABEL_89:
  v43 = v4 != 0;
  if (!v4 || v8 == -16727)
  {
    goto LABEL_205;
  }

  FigSimpleMutexLock();
  v44 = CMBaseObjectGetDerivedStorage();
  v142 = 0;
  v143[0] = 0;
  v141[0] = 0;
  v141[1] = 0;
  v140 = 0;
  if (!*(v44 + 296))
  {
    goto LABEL_194;
  }

  v45 = v44;
  if (!CFDictionaryContainsKey(*(v44 + 288), @"activationMs"))
  {
    v46 = *(a1 + 40);
    if (!v46)
    {
      goto LABEL_100;
    }

    v47 = APSenderSessionGetCMBaseObject(v46);
    v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v48 || (v48(v47, @"InitialRTCStats", *MEMORY[0x277CBECE8], &v142), !v142) || !CFDictionaryMergeDictionary())
    {
      v49 = APSenderSessionGetCMBaseObject(*(a1 + 40));
      v50 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v50)
      {
        v50(v49, @"ActualTransportType", 0, &v140);
      }

      FigCFDictionarySetValue();
LABEL_100:
      if (*(a1 + 152))
      {
        v123 = v31;
        v51 = *(a1 + 40);
        if (v51)
        {
          v52 = *MEMORY[0x277CBECE8];
          v53 = APSenderSessionGetCMBaseObject(v51);
          v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v54)
          {
            v54(v53, @"EventRecorder", v52, v143);
            if (v143[0])
            {
              MEMORY[0x223DAE7F0](*(a1 + 152));
            }
          }

          v55 = APSenderSessionGetCMBaseObject(*(a1 + 40));
          v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v56)
          {
            v56(v55, @"ActivationTimingInformation", v52, v141);
          }
        }

        if (v8)
        {
          APSEventRecorderGetTimeSinceEventInMilliSecond();
          CFDictionarySetInt64();
        }

        else
        {
          APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
        }

        v122 = v30;
        v124 = v29;
        CFDictionarySetInt64();
        if (v141[0])
        {
          CFDictionaryGetInt64();
          CFDictionaryGetInt64();
          CFDictionaryGetInt64();
          CFDictionaryGetInt64();
          CFDictionaryGetInt64();
          v57 = CFStringCreateF();
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          APSRoundToSignificantFigures();
          CFDictionarySetInt64();
        }

        else
        {
          v57 = 0;
        }

        v31 = v123;
        v5 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (!APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursiveEx())
        {
          CFDictionarySetInt64();
        }

        FigCFDictionarySetValue();
        v58 = *MEMORY[0x277CBED28];
        v59 = *MEMORY[0x277CBED10];
        if (*(a1 + 33))
        {
          v60 = *MEMORY[0x277CBED28];
        }

        else
        {
          v60 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(*(v45 + 288), @"isPartOfCluster", v60);
        if (*(v45 + 483))
        {
          v61 = v58;
        }

        else
        {
          v61 = v59;
        }

        CFDictionarySetValue(*(v45 + 288), @"hadAuthorizationRequest", v61);
        if (v141[0])
        {
          CFRelease(v141[0]);
        }

        v29 = v124;
        v30 = v122;
        goto LABEL_195;
      }

      goto LABEL_194;
    }

    endpoint_activateInternal_cold_19();
LABEL_194:
    v57 = 0;
    goto LABEL_195;
  }

  endpoint_activateInternal_cold_18(a1, &v127);
  v57 = v127;
LABEL_195:
  if (v142)
  {
    CFRelease(v142);
  }

  if (v143[0])
  {
    CFRelease(v143[0]);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v140)
  {
    CFRelease(v140);
  }

  if (v30)
  {
    v77 = v5;
    v78 = CMBaseObjectGetDerivedStorage();
    v79 = v5[84];
    if (v79 <= 40)
    {
      if (v79 != -1 || _LogCategory_Initialize())
      {
        endpoint_activateInternal_cold_20();
      }

      v80 = v5[84];
      if (v80 <= 40)
      {
        if (v80 != -1 || _LogCategory_Initialize())
        {
          endpoint_activateInternal_cold_21();
        }

        v77 = v5;
        v81 = v5[84];
        if (v81 <= 40)
        {
          if (v81 != -1 || _LogCategory_Initialize())
          {
            endpoint_activateInternal_cold_20();
          }

          v77 = v5;
          v82 = v5[84];
          if (v82 <= 40)
          {
            if (v82 != -1 || _LogCategory_Initialize())
            {
              endpoint_activateInternal_cold_23();
            }

            v77 = v5;
            v83 = v5[84];
            if (v83 <= 40 && (v83 != -1 || _LogCategory_Initialize()))
            {
              endpoint_activateInternal_cold_24();
            }
          }
        }
      }
    }

    endpoint_logEventInterval(*(v78 + 280), 268369920, 268369921, "Total AirPlay Contribution (Endpoint Activate Start To Endpoint Activate Complete)");
    endpoint_logEvent(*(v78 + 280), 268369920, "EndpointActivate");
    endpoint_logEvent(*(v78 + 280), 150994945, "ResolveDNSTime");
    v84 = v77[84];
    if (v84 <= 40)
    {
      if (v84 != -1 || _LogCategory_Initialize())
      {
        endpoint_activateInternal_cold_25();
      }

      v85 = v77[84];
      if (v85 <= 40)
      {
        if (v85 != -1 || _LogCategory_Initialize())
        {
          endpoint_activateInternal_cold_26();
        }

        v86 = v77[84];
        if (v86 <= 40 && (v86 != -1 || _LogCategory_Initialize()))
        {
          endpoint_activateInternal_cold_27();
        }
      }
    }

    endpoint_logEvent(*(v78 + 104), 268431360, "PresenceBrowsing_Start");
    endpoint_logEvent(*(v78 + 104), 268431361, "DetailedNonP2PBrowsing_Start");
    endpoint_logEvent(*(v78 + 104), 268431362, "DetailedBrowsing_Start");
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    endpoint_logTransportDiscoveryDurationIfEventPresent();
    v87 = v77[84];
    if (v87 <= 40)
    {
      if (v87 != -1 || _LogCategory_Initialize())
      {
        endpoint_activateInternal_cold_25();
      }

      v88 = v77[84];
      if (v88 <= 40)
      {
        if (v88 != -1 || _LogCategory_Initialize())
        {
          endpoint_activateInternal_cold_29();
        }

        v89 = v77[84];
        if (v89 <= 40 && (v89 != -1 || _LogCategory_Initialize()))
        {
          endpoint_activateInternal_cold_30();
        }
      }
    }

    endpoint_logEvent(*(v78 + 280), 150994944, "QuerySRVTime");
    endpoint_logEvent(*(v78 + 280), 150994946, "ControlStreamConnectingTime");
    endpoint_logEvent(*(v78 + 280), 150994948, "ControlStreamConnectedTime");
    endpoint_logEvent(*(v78 + 280), 250609664, "EndpointConnectionStartTime");
    endpoint_logEvent(*(v78 + 280), 250609666, "EndpointGetInfoCompleteTime");
    endpoint_logEventInterval(*(v78 + 280), 250609665, 250609666, "INFOTimeMs");
    CMBaseObjectGetDerivedStorage();
    APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
    APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
    v5 = v77;
    APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
    v90 = v77[84];
    if (v90 <= 40 && (v90 != -1 || _LogCategory_Initialize()))
    {
      endpoint_activateInternal_cold_31();
    }

    endpoint_logEventInterval(*(v78 + 280), 150994946, 150994948, "ConnectTimeMs");
    endpoint_logEventInterval(*(v78 + 280), 250609677, 250609678, "EndpointAUTHTimeMs");
    endpoint_logEventInterval(*(v78 + 280), 250609675, 250609676, "EndpointRECORDTimeMs");
    v91 = v77[84];
    if (v91 <= 40 && (v91 != -1 || _LogCategory_Initialize()))
    {
      endpoint_activateInternal_cold_20();
    }
  }

  FigSimpleMutexUnlock();
  v43 = 1;
LABEL_205:
  if (v8 != -16727 && v8)
  {
    v136 = 0;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    *theDict = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v127 = 0u;
    v72 = v5[84];
    if (v72 <= 90 && (v72 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    FigSimpleMutexLock();
    v75 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 40));
    v76 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v76)
    {
      v76(v75, @"uglServerInfo", 0);
    }

    if (*(a1 + 48) == *(DerivedStorage + 128) && *(DerivedStorage + 144) == 1)
    {
      *&v127 = CFRetain(*a1);
      v112 = *(DerivedStorage + 440);
      if (v112)
      {
        v112 = CFRetain(v112);
      }

      *(&v127 + 1) = v112;
      LODWORD(v128) = *(DerivedStorage + 148);
      v113 = CFRetain(@"FailedActivation");
      v114 = 0;
      DWORD1(v131) = 0;
      *(&v135 + 1) = 0;
      v136 = 0;
      v115 = *(a1 + 40);
      v116 = *(a1 + 48);
      *(&v128 + 1) = v113;
      v117 = *(a1 + 16);
      *&v130 = v116;
      *(&v130 + 1) = v117;
      LOBYTE(v131) = *(DerivedStorage + 480);
      if (v115)
      {
        v114 = CFRetain(v115);
      }

      *&v129 = v114;
      v118 = *(DerivedStorage + 160);
      if (v118)
      {
        v118 = CFRetain(v118);
      }

      *(&v129 + 1) = v118;
      BYTE1(v131) = 0;
      v119 = *(a1 + 88);
      if (v119)
      {
        v119 = CFRetain(v119);
      }

      *(&v132 + 1) = v119;
      *&v134 = FigCFDictionaryCreateMutableCopy();
      v120 = *(DerivedStorage + 296);
      if (v120)
      {
        v120 = CFRetain(v120);
      }

      *(&v134 + 1) = v120;
      *(DerivedStorage + 488) = v8;
      endpoint_resetActivationState(DerivedStorage + 128);
      if (!*(DerivedStorage + 49) || !*(DerivedStorage + 48))
      {
        v121 = *(DerivedStorage + 464);
        if (v121)
        {
          CFRelease(v121);
          *(DerivedStorage + 464) = 0;
        }
      }

      endpoint_removeAPEndpointManagerNotificationsListenerIfNeeded();
      endpoint_removeHDMILatencyNotificationListenerIfNeeded();
      endpoint_stopListeningToSenderSessionAndStreamsNotifications(*a1, v129);
      if (theDict[1])
      {
        CFDictionaryApplyFunction(theDict[1], endpoint_unsubscribeRCS, *a1);
      }

      if (theDict[0])
      {
        CFSetApplyFunction(theDict[0], endpoint_unsubscribePlaybackSession, *a1);
      }

      endpoint_deregisterWithBrowserController(*a1);
      APSDispatchAsyncFHelper();
    }

    FigSimpleMutexUnlock();
    v74 = 0;
    if (v8 != -17600 && v126)
    {
      v8 = -17601;
    }

    goto LABEL_283;
  }

LABEL_207:
  v71 = v5[84];
  if (v71 > 50)
  {
    goto LABEL_217;
  }

  if (v71 != -1 || _LogCategory_Initialize())
  {
    LogPrintF();
  }

  v73 = v5[84];
  if (v73 <= 30 && (v73 != -1 || _LogCategory_Initialize()))
  {
    endpoint_activateInternal_cold_33();
    if (v8)
    {
      goto LABEL_218;
    }
  }

  else
  {
LABEL_217:
    if (v8)
    {
LABEL_218:
      v74 = 0;
      goto LABEL_283;
    }
  }

  if (v29)
  {
    endpoint_postStreamsChangedNotification(*a1, v29, *(a1 + 48), 0);
  }

  if (v43 && !*(DerivedStorage + 48) && !*(DerivedStorage + 242))
  {
    APEndpointApplyInitialVolume(*a1);
  }

  v8 = 0;
  v74 = 1;
LABEL_283:
  v92 = *(a1 + 120);
  if (v92)
  {
    if (v8 == -16727)
    {
      v93 = 1;
    }

    else
    {
      v93 = v74;
    }

    if (v93)
    {
      v94 = v139;
    }

    else
    {
      v94 = 0;
    }

    v95 = *(a1 + 48);
    *&v127 = *a1;
    *(&v127 + 1) = v95;
    *&v128 = v94;
    *(&v128 + 1) = v8;
    v96 = *(a1 + 128);
    *&v129 = v92;
    *(&v129 + 1) = v96;
    CFRetain(v127);
    APSDispatchAsyncFHelper();
  }

  if (v74)
  {
    v97 = CFGetAllocator(*a1);
    APEndpointCreateEndpointActivationNotificationPayload(v97, v139, *(a1 + 48), &v138);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (v138)
    {
      CFRelease(v138);
      v138 = 0;
    }

    if (v31)
    {
      endpoint_postStreamsChangedNotification(*a1, v31, *(a1 + 48), 1);
    }

    if (!*(DerivedStorage + 48) && !CFDictionaryGetInt64())
    {
      v98 = CFRetain(*a1);
      v99 = *(a1 + 48);
      *&v127 = v98;
      *(&v127 + 1) = v99;
      *&v128 = v139;
      APSDispatchAsyncFHelper();
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v100 = *(a1 + 8);
  if (v100)
  {
    CFRelease(v100);
  }

  v101 = *(a1 + 96);
  if (v101)
  {
    CFRelease(v101);
  }

  v102 = *(a1 + 40);
  if (v102)
  {
    CFRelease(v102);
  }

  v103 = *(a1 + 56);
  if (v103)
  {
    CFRelease(v103);
  }

  v104 = *(a1 + 64);
  if (v104)
  {
    CFRelease(v104);
  }

  v105 = *(a1 + 72);
  if (v105)
  {
    CFRelease(v105);
  }

  v106 = *(a1 + 80);
  if (v106)
  {
    CFRelease(v106);
  }

  v107 = *(a1 + 88);
  if (v107)
  {
    CFRelease(v107);
  }

  v108 = *(a1 + 104);
  if (v108)
  {
    CFRelease(v108);
  }

  v109 = *(a1 + 112);
  if (v109)
  {
    CFRelease(v109);
  }

  v110 = *(a1 + 144);
  if (v110)
  {
    CFRelease(v110);
  }

  v111 = *(a1 + 152);
  if (v111)
  {
    CFRelease(v111);
  }

  if (v138)
  {
    CFRelease(v138);
  }
}

uint64_t endpoint_handleAuthorizationRequired(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 128) != a3)
  {
    if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_handleAuthorizationRequired_cold_1();
    }

    goto LABEL_58;
  }

  if (*(DerivedStorage + 144) != 1)
  {
    if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_handleAuthorizationRequired_cold_2();
    }

LABEL_58:
    v10 = 0;
    v11 = 0;
    v9 = 0;
LABEL_59:
    v12 = 4294949692;
LABEL_79:
    FigSimpleMutexUnlock();
    goto LABEL_80;
  }

  if (!*(DerivedStorage + 352))
  {
    v12 = 200401;
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_handleAuthorizationRequired_cold_12();
    }

    v10 = 0;
    v11 = 0;
    v9 = 0;
    goto LABEL_79;
  }

  if (*(DerivedStorage + 416))
  {
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v9)
    {
      if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        endpoint_handleAuthorizationRequired_cold_3();
      }

      v10 = 0;
      v11 = 0;
      v9 = 0;
      v12 = 4294960587;
      goto LABEL_79;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  v14 = *(v13 + 248);
  if (v14)
  {
    if (gLogCategory_APEndpoint > 90)
    {
      goto LABEL_16;
    }

    if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
    {
      endpoint_handleAuthorizationRequired_cold_4();
    }

    v14 = *(v13 + 248);
    if (v14)
    {
LABEL_16:
      dispatch_release(v14);
      *(v13 + 248) = 0;
    }
  }

  v15 = dispatch_semaphore_create(0);
  v11 = v15;
  *(v13 + 248) = v15;
  if (!v15)
  {
    endpoint_handleAuthorizationRequired_cold_11();
    v10 = 0;
    v12 = 4294950575;
    goto LABEL_79;
  }

  v16 = v9;
  v17 = a1;
  v29 = a4;
  dispatch_retain(v15);
  v18 = *(DerivedStorage + 128);
  v19 = *(DerivedStorage + 136);
  v20 = *(DerivedStorage + 144);
  v21 = malloc_type_calloc(1uLL, 0x20uLL, 0x108004013E61A9FuLL);
  if (!v21)
  {
    endpoint_handleAuthorizationRequired_cold_10();
    v10 = 0;
    v12 = 4294950575;
    v9 = v16;
    goto LABEL_79;
  }

  v22 = v21;
  *v21 = v18;
  v21[1] = v19;
  *(v21 + 4) = v20;
  v21[3] = v11;
  dispatch_retain(v11);
  *(DerivedStorage + 256) = 0;
  if (a2)
  {
    v31 = CFRetain(a2);
    v23 = v17;
  }

  else
  {
    v23 = v17;
    endpoint_copyAuthorizationType(v17, &v31);
  }

  CFRetain(v23);
  *(DerivedStorage + 483) = 1;
  FigSimpleMutexUnlock();
  v9 = v16;
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRetain(v23);
  v10 = v31;
  CFRetain(v31);
  if (v16)
  {
    CFRetain(v16);
  }

  v24 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __endpoint_handleAuthorizationRequired_block_invoke;
  block[3] = &__block_descriptor_80_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = v23;
  block[6] = a3;
  block[7] = v16;
  block[8] = v10;
  block[9] = v22;
  dispatch_async(v24, block);
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_handleAuthorizationRequired_cold_5();
  }

  v25 = dispatch_time(0, 60000000000);
  if (!dispatch_semaphore_wait(v11, v25))
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 128) == a3)
    {
      if (*(DerivedStorage + 144) == 1)
      {
        if (v29)
        {
          v26 = *(DerivedStorage + 464);
          if (v26)
          {
            v26 = CFRetain(v26);
          }

          *v29 = v26;
        }

        v12 = *(DerivedStorage + 256);
        v27 = *(DerivedStorage + 248);
        if (v27)
        {
          dispatch_release(v27);
          *(DerivedStorage + 248) = 0;
        }

        if (!v12)
        {
          FigSimpleMutexUnlock();
          goto LABEL_42;
        }

        endpoint_handleAuthorizationRequired_cold_9();
        goto LABEL_79;
      }

      if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        endpoint_handleAuthorizationRequired_cold_8();
      }
    }

    else if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_handleAuthorizationRequired_cold_7();
    }

    goto LABEL_59;
  }

  if (gLogCategory_APEndpoint > 90)
  {
    v12 = 4294950568;
    goto LABEL_42;
  }

  if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
  {
    endpoint_handleAuthorizationRequired_cold_6();
  }

  v12 = 4294950568;
LABEL_80:
  if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_42:
  if (v9)
  {
    CFRelease(v9);
    v10 = v31;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  return v12;
}

void __endpoint_handleAuthorizationRequired_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 352))(*(a1 + 40), 0, *(a1 + 48), *(a1 + 56), *(a1 + 64), endpoint_authorizationRequestCompletionCallback, *(a1 + 72));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 64));
  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

void endpoint_authorizationRequestCompletionCallback(const void *a1, const void *a2, int a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v9 = DerivedStorage;
    FigSimpleMutexLock();
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*a4 == *(v9 + 128) && *(a4 + 4) == *(v9 + 144))
    {
      if (a2 && !a3)
      {
        endpoint_setAuthorizationString(a1, a2);
      }

      *(v9 + 256) = a3;
    }

    else
    {
      *(v9 + 256) = -17604;
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        endpoint_authorizationRequestCompletionCallback_cold_1();
      }
    }

    FigSimpleMutexUnlock();
    dispatch_semaphore_signal(*(a4 + 3));
    dispatch_release(*(a4 + 3));
  }

  else
  {
    endpoint_authorizationRequestCompletionCallback_cold_2();
  }

  free(a4);

  CFRelease(a1);
}

uint64_t __endpoint_createSetAuthorizationStringBlockWrapper_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a2)
  {
    FigSimpleMutexLock();
    v6 = endpoint_setAuthorizationString(*(a1 + 32), a2);
    if (v6)
    {
      v12 = v6;
      __endpoint_createSetAuthorizationStringBlockWrapper_block_invoke_cold_1();
    }

    else
    {
      CMBaseObject = APSenderSessionGetCMBaseObject(*(*(a1 + 40) + 216));
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v9 = v8(CMBaseObject, @"ShouldUseNANDiversifiedPIN", *MEMORY[0x277CBED28]);
        if (v9)
        {
          v12 = v9;
        }

        else
        {
          v10 = APSenderSessionGetCMBaseObject(*(*(a1 + 40) + 216));
          v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v11)
          {
            v12 = v11(v10, @"NANMACAddress", a3);
            if (!v12)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v12 = -12782;
          }
        }
      }

      else
      {
        v12 = -12782;
      }

      APSLogErrorAt();
    }
  }

  else
  {
    __endpoint_createSetAuthorizationStringBlockWrapper_block_invoke_cold_2();
    v12 = -6705;
  }

LABEL_11:
  result = FigSimpleMutexUnlock();
  if (v12)
  {
    v14 = 90;
  }

  else
  {
    v14 = 50;
  }

  v15 = gLogCategory_APEndpoint;
  if (v14 >= gLogCategory_APEndpoint)
  {
    if (gLogCategory_APEndpoint == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v15 = gLogCategory_APEndpoint;
    }

    if (v15 == -1)
    {
      _LogCategory_Initialize();
    }

    return LogPrintF();
  }

  return result;
}

uint64_t endpoint_handleEventMessage()
{
  result = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 40)
  {
    if (gLogCategory_APEndpoint != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t endpoint_handleEventMessageCreatingReply(uint64_t a1, int a2, uint64_t a3, const void *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 120);
  v10 = *(DerivedStorage + 216);
  FigSimpleMutexUnlock();
  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (v9)
    {
      v35 = -16723;
    }

    else
    {
      v35 = 0;
    }

    if (v10)
    {
      v20 = v35;
    }

    else
    {
      v20 = 4294950570;
    }

    APSLogErrorAt();
    goto LABEL_79;
  }

  if (a2 != 1668116068)
  {
    if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v15 = 0;
    v20 = 4294950678;
    goto LABEL_45;
  }

  v12 = *MEMORY[0x277CBECE8];
  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  if (CFDataWithBlockBufferNoCopy)
  {
    v20 = CFDataWithBlockBufferNoCopy;
    endpoint_handleEventMessageCreatingReply_cold_1();
LABEL_79:
    v15 = 0;
    goto LABEL_45;
  }

  v14 = CFPropertyListCreateWithData(v12, 0, 0, 0, 0);
  v15 = v14;
  if (!v14 || (v16 = CFGetTypeID(v14), v16 != CFDictionaryGetTypeID()))
  {
    endpoint_handleEventMessageCreatingReply_cold_19();
    v20 = 4294950576;
    goto LABEL_45;
  }

  restarted = 0;
  v17 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(v15, @"type");
  if (!Value)
  {
    goto LABEL_43;
  }

  v19 = Value;
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(v19, @"forceKeyFrame"))
  {
    FigSimpleMutexLock();
    v21 = *(v17 + 160);
    if (v21)
    {
      v22 = CFDictionaryGetValue(v21, *MEMORY[0x277CC1980]);
      if (v22)
      {
        v23 = CFRetain(v22);
        FigSimpleMutexUnlock();
        if (v23)
        {
          restarted = APEndpointStreamScreenRestartBitstream(v23);
          if (restarted)
          {
            endpoint_handleEventMessageCreatingReply_cold_2();
          }

LABEL_41:
          CFRelease(v23);
          goto LABEL_43;
        }

        goto LABEL_43;
      }
    }

LABEL_42:
    FigSimpleMutexUnlock();
    goto LABEL_43;
  }

  if (!CFEqual(v19, @"setScreenRecordingState"))
  {
    if (!CFEqual(v19, @"updateDisplayInfo"))
    {
      if (CFEqual(v19, @"sendMediaRemoteCommand"))
      {
        FigSimpleMutexLock();
        if (*(v17 + 144) == 2)
        {
          CFRetain(a4);
          CFRetain(v15);
          v34 = *(v17 + 440);
          if (v34)
          {
            CFRetain(v34);
          }

          APSDispatchAsyncFHelper();
          restarted = 0;
        }

        else
        {
          restarted = -16726;
        }

        FigSimpleMutexUnlock();
        if (!restarted)
        {
          goto LABEL_44;
        }

        endpoint_handleEventMessageCreatingReply_cold_9();
      }

      else if (CFEqual(v19, @"remoteConrolSessionCreate"))
      {
        restarted = apEndpoint_handleCreateIncomingRCSCommand(a4, v15);
        if (!restarted)
        {
          goto LABEL_44;
        }

        endpoint_handleEventMessageCreatingReply_cold_10();
      }

      else if (CFEqual(v19, @"remoteControlSessionInvalidate"))
      {
        restarted = apEndpoint_handleInvalidateIncomingRCSCommand(a4, v15);
        if (!restarted)
        {
          goto LABEL_44;
        }

        endpoint_handleEventMessageCreatingReply_cold_11();
      }

      else if (CFEqual(v19, @"updateInfo"))
      {
        restarted = apEndpoint_handleUpdateInfoCommand(a4, v15);
        if (!restarted)
        {
          goto LABEL_44;
        }

        endpoint_handleEventMessageCreatingReply_cold_12();
      }

      else if (CFEqual(v19, @"regroupTightSyncBuddy"))
      {
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          endpoint_handleEventMessageCreatingReply_cold_13();
        }

        notify_post("kAirPlayWHANotification_RegroupTightSyncBuddy");
      }

      else if (CFEqual(v19, @"FPSSecureStop"))
      {
        endpoint_handleEventMessageCreatingReply_cold_17(v15);
      }

      else if (CFEqual(v19, @"htSecondaryNonPersistentSessionStarted"))
      {
        restarted = endpoint_handleHTSecondaryNonPersistentSessionStartedEvent();
        if (!restarted)
        {
          goto LABEL_44;
        }

        endpoint_handleEventMessageCreatingReply_cold_14();
      }

      else if (CFEqual(v19, @"updateMC2UCStatus"))
      {
        restarted = endpoint_handleUpdateMC2UCStatus();
        if (!restarted)
        {
          goto LABEL_44;
        }

        endpoint_handleEventMessageCreatingReply_cold_15();
      }

      else if (gLogCategory_APEndpoint <= 60)
      {
        endpoint_handleEventMessageCreatingReply_cold_16(gLogCategory_APEndpoint);
      }

      goto LABEL_43;
    }

    v27 = CFDictionaryGetValue(v15, @"displays");
    if (!v27 || (v28 = v27, v29 = CFGetTypeID(v27), v29 != CFArrayGetTypeID()))
    {
      endpoint_handleEventMessageCreatingReply_cold_8(&restarted);
      goto LABEL_43;
    }

    if (CFArrayGetCount(v28) != 1)
    {
      endpoint_handleEventMessageCreatingReply_cold_5(&restarted);
      goto LABEL_43;
    }

    FigSimpleMutexLock();
    v30 = *(v17 + 160);
    if (v30)
    {
      v31 = CFDictionaryGetValue(v30, *MEMORY[0x277CC1980]);
      if (v31)
      {
        v23 = CFRetain(v31);
        FigSimpleMutexUnlock();
        if (v23)
        {
          CFDictionaryGetTypeID();
          TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
          restarted = APEndpointStreamScreenUpdateDisplayInfo(v23, TypedValueAtIndex);
          if (restarted)
          {
            endpoint_handleEventMessageCreatingReply_cold_7();
          }

          goto LABEL_41;
        }

        goto LABEL_43;
      }
    }

    goto LABEL_42;
  }

  FigSimpleMutexLock();
  v24 = *(v17 + 160);
  if (!v24)
  {
    goto LABEL_42;
  }

  v25 = CFDictionaryGetValue(v24, *MEMORY[0x277CC1980]);
  if (!v25)
  {
    goto LABEL_42;
  }

  v23 = CFRetain(v25);
  FigSimpleMutexUnlock();
  if (v23)
  {
    Int64 = CFDictionaryGetInt64();
    restarted = APEndpointStreamScreenSetRecordingState(v23, Int64 != 0);
    if (restarted)
    {
      endpoint_handleEventMessageCreatingReply_cold_4();
    }

    goto LABEL_41;
  }

LABEL_43:
  v20 = restarted;
  if (!restarted)
  {
LABEL_44:
    v20 = 0;
    *a5 = 0;
    goto LABEL_45;
  }

  endpoint_handleEventMessageCreatingReply_cold_18();
LABEL_45:
  if (v15)
  {
    CFRelease(v15);
  }

  return v20;
}

void endpoint_getSessionProtocolOverrideString(CFTypeRef *a1)
{
  v2 = APSSettingsCopyValue();
  *a1 = v2;
  if (v2 && !CFEqual(v2, @"legacy") && !CFEqual(*a1, @"airplay"))
  {
    if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_getSessionProtocolOverrideString_cold_1();
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }
  }
}

uint64_t endpoint_isInLocalClusterOfStaticLeader()
{
  CMBaseObjectGetDerivedStorage();
  result = APSIsLocalClusterWithStaticLeadershipEnabled();
  if (result)
  {
    return endpoint_isInLocalCluster();
  }

  return result;
}

void endpoint_handleMediaRemoteCommand(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 584))
  {
    endpoint_handleMediaRemoteCommand_cold_4();
    v13 = 0;
    v4 = 0;
    v5 = 0;
    goto LABEL_34;
  }

  v3 = DerivedStorage;
  v4 = CFDictionaryCopyCString();
  v5 = CFDictionaryCopyCString();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v4 && *v4)
  {
    v6 = TextToInt32();
    CFDictionaryGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    APMediaRemoteCommandReceiverHandleMRCommand(*(v3 + 584), v6, TypedValue);
LABEL_15:
    v13 = 0;
    goto LABEL_34;
  }

  if (!v5 || !*v5)
  {
    goto LABEL_15;
  }

  v8 = TextToFourCharCode();
  if (v8 != 1685482595)
  {
    v13 = 0;
    v14 = 0;
LABEL_33:
    APMediaRemoteCommandReceiverHandleAPCommand(*(v3 + 584), v8, v13, v14);
    goto LABEL_34;
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  v29 = 0;
  v11 = CMBaseObjectGetDerivedStorage();
  CFDictionaryGetValue(v10, @"volume");
  Value = CFDictionaryGetValue(v10, @"isMuted");
  FigSimpleMutexLock();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFGetDouble();
  v16 = v15;
  v17 = Value == *MEMORY[0x277CBED28];
  APSVolumeConvertDBToSliderValue();
  v19 = v18;
  APSVolumeConvertDBToSliderValue();
  v21 = v20 < v16;
  v22 = v16;
  if (v21)
  {
    APSVolumeConvertDBToSliderValue();
  }

  if (v19 > v22 || (APSVolumeConvertDBToSliderValue(), v21 = v23 < v16, v24 = v16, v21))
  {
    APSVolumeConvertDBToSliderValue();
  }

  endpointdelegate_setVolumeSliderInternal(v9, 0, 0, 0, v24);
  if (*(v11 + 51) && *(v11 + 516) != v17 && (*(v11 + 516) = v17, (v29 = endpoint_postMuteDidChangeNotification()) != 0))
  {
    endpoint_handleMediaRemoteCommand_cold_2();
  }

  else
  {
    APSVolumeConvertSliderValueToDB();
    *(v11 + 524) = v25;
    *(v11 + 528) = v17;
    if (!*(v11 + 242))
    {
      v26 = v25;
      v13 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
      v14 = snprintf(v13, 0x3FuLL, "%lf", v26);
      goto LABEL_31;
    }
  }

  v13 = 0;
  v14 = 0;
LABEL_31:
  FigSimpleMutexUnlock();
  if (!v29)
  {
    if (!v13)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  endpoint_handleMediaRemoteCommand_cold_3();
LABEL_34:
  free(v13);
  free(v5);
  free(v4);
  v27 = *(a1 + 16);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 8);
  if (v28)
  {
    CFRelease(v28);
  }

  CFRelease(*a1);
}

uint64_t apEndpoint_handleCreateIncomingRCSCommand(const void *a1, const __CFDictionary *a2)
{
  value[3] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value[0] = 0;
  if (!a1 || (v5 = DerivedStorage, FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    APSLogErrorAt();
LABEL_13:
    CommChannel = 4294950576;
LABEL_21:
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return CommChannel;
  }

  if (!a2)
  {
    apEndpoint_handleCreateIncomingRCSCommand_cold_6();
    goto LABEL_13;
  }

  if (*(v5 + 48))
  {
    apEndpoint_handleCreateIncomingRCSCommand_cold_1();
    CommChannel = 4294950570;
    goto LABEL_21;
  }

  v6 = CFDictionaryGetValue(a2, @"clientTypeUUID");
  if (!v6)
  {
    apEndpoint_handleCreateIncomingRCSCommand_cold_5();
    goto LABEL_13;
  }

  v7 = v6;
  v8 = CFDictionaryGetValue(a2, @"streamID");
  if (!v8)
  {
    apEndpoint_handleCreateIncomingRCSCommand_cold_4();
    goto LABEL_13;
  }

  v9 = v8;
  CFDictionaryGetValue(a2, @"clientUUID");
  FigCFDictionaryGetInt64IfPresent();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    apEndpoint_handleCreateIncomingRCSCommand_cold_3();
    CommChannel = 4294960568;
    goto LABEL_21;
  }

  v11 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC0B38], v7);
  CFDictionarySetValue(v11, @"streamID", v9);
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  FigCFDictionarySetValue();
  UUIDGet();
  CFDictionarySetUUIDString();
  CommChannel = apEndpoint_CreateCommChannel(a1, v11, value);
  if (CommChannel)
  {
    apEndpoint_handleCreateIncomingRCSCommand_cold_2();
  }

  else
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    FigSimpleMutexLock();
    v13 = *(v5 + 336);
    if (!v13)
    {
      v14 = CFGetAllocator(a1);
      v13 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(v5 + 336) = v13;
    }

    CFDictionarySetValue(v13, v9, value[0]);
    FigSimpleMutexUnlock();
  }

  CFRelease(v11);
  if (value[0])
  {
    CFRelease(value[0]);
  }

  if (CommChannel)
  {
    goto LABEL_21;
  }

  return CommChannel;
}

uint64_t apEndpoint_handleInvalidateIncomingRCSCommand(uint64_t a1, const __CFDictionary *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v18 = 0u;
  v19 = 0u;
  *label = 0u;
  v17 = 0u;
  if (!a2)
  {
    apEndpoint_handleInvalidateIncomingRCSCommand_cold_5();
LABEL_24:
    v12 = 4294950576;
    goto LABEL_15;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    apEndpoint_handleInvalidateIncomingRCSCommand_cold_1();
    a2 = 0;
    v12 = 4294950570;
    goto LABEL_15;
  }

  v6 = CFDictionaryGetValue(a2, @"streamID");
  if (!v6)
  {
    apEndpoint_handleInvalidateIncomingRCSCommand_cold_4();
    a2 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  FigSimpleMutexLock();
  v8 = *(v5 + 336);
  if (!v8 || !CFDictionaryGetValueIfPresent(v8, v7, &value))
  {
    FigSimpleMutexUnlock();
LABEL_14:
    apEndpoint_handleInvalidateIncomingRCSCommand_cold_3();
    a2 = 0;
    v12 = 4294950571;
    goto LABEL_15;
  }

  v9 = CFDictionaryGetValue(*(v5 + 328), value);
  if (v9)
  {
    a2 = CFRetain(v9);
  }

  else
  {
    a2 = 0;
  }

  CFDictionaryRemoveValue(*(v5 + 336), v7);
  FigSimpleMutexUnlock();
  if (!a2)
  {
    goto LABEL_14;
  }

  SNPrintF();
  v10 = dispatch_queue_create(label, 0);
  if (v10)
  {
    v11 = v10;
    CFRetain(a2);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __apEndpoint_handleInvalidateIncomingRCSCommand_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a2;
    block[5] = a1;
    dispatch_async(v11, block);
    CFRelease(a2);
    dispatch_release(v11);
    return 0;
  }

  apEndpoint_handleInvalidateIncomingRCSCommand_cold_2();
  v12 = 4294950575;
LABEL_15:
  if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v12;
}

uint64_t apEndpoint_handleUpdateInfoCommand(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(a2, @"value");
  if (!Value)
  {
    apEndpoint_handleUpdateInfoCommand_cold_1();
    v9 = 4294960591;
LABEL_23:
    FigSimpleMutexUnlock();
    return v9;
  }

  if (!*(DerivedStorage + 144))
  {
    v9 = 0;
    goto LABEL_23;
  }

  v5 = Value;
  if (!*(DerivedStorage + 48))
  {
LABEL_11:
    InfoResponseWithUGLAddressesUpdatedFromSenderSession = 0;
    goto LABEL_12;
  }

  if (*(DerivedStorage + 49))
  {
    FigCFDictionaryGetValue();
    if (FigCFDictionaryGetValue() && gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_11;
  }

  InfoResponseWithUGLAddressesUpdatedFromSenderSession = APSenderSessionUtilityCopyGetInfoResponseWithUGLAddressesUpdatedFromSenderSession(*(DerivedStorage + 216), Value, &gLogCategory_APEndpoint);
  v5 = InfoResponseWithUGLAddressesUpdatedFromSenderSession;
LABEL_12:
  v7 = *(DerivedStorage + 40);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8)
  {
    v9 = v8(v7, v5);
    if (!v9)
    {
      v10 = *(DerivedStorage + 264);
      if (v10)
      {
        CFRelease(v10);
        v9 = 0;
        *(DerivedStorage + 264) = 0;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 4294954514;
  }

  FigSimpleMutexUnlock();
  if (InfoResponseWithUGLAddressesUpdatedFromSenderSession)
  {
    CFRelease(InfoResponseWithUGLAddressesUpdatedFromSenderSession);
  }

  return v9;
}

uint64_t apEndpoint_CreateCommChannel(const void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  cf = 0;
  v14 = 0;
  v7 = endpoint_createCommChannelInternal(a1, a2, &cf, &v14);
  if (v7)
  {
    v11 = v7;
    apEndpoint_CreateCommChannel_cold_1();
    goto LABEL_8;
  }

  v8 = cf;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v9)
  {
    v11 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v10 = v9(v8, endpoint_handleRemoteControlSessionEvent, FigEndpoint);
  if (v10)
  {
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0;
  if (a3)
  {
    *a3 = v14;
    v14 = 0;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v11;
}

uint64_t endpoint_createCommChannelInternal(const void *a1, const __CFDictionary *MutableCopy, CFTypeRef *a3, CFTypeRef *a4)
{
  v42 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v40 = 0;
  cf = 0;
  if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (!MutableCopy)
  {
    endpoint_createCommChannelInternal_cold_14();
    v10 = 0;
    goto LABEL_66;
  }

  if (*(DerivedStorage + 120))
  {
    v42 = -16723;
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_createCommChannelInternal_cold_1();
    }

    v10 = 0;
    goto LABEL_78;
  }

  v9 = *(DerivedStorage + 216);
  if (v9)
  {
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
  }

  if (*(DerivedStorage + 144) != 2)
  {
    v42 = -16726;
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_createCommChannelInternal_cold_2();
    }

    goto LABEL_78;
  }

  Int64 = CFDictionaryGetInt64();
  Value = CFDictionaryGetValue(MutableCopy, *MEMORY[0x277CC1618]);
  if (!Value)
  {
    endpoint_createCommChannelInternal_cold_13();
    goto LABEL_78;
  }

  v13 = Value;
  v39 = a3;
  v14 = CMBaseObjectGetDerivedStorage();
  v15 = *MEMORY[0x277CC1608];
  if (!CFEqual(v13, *MEMORY[0x277CC1608]))
  {
    if (CFEqual(v13, *MEMORY[0x277CC1600]))
    {
      if (*(v14 + 48))
      {
        goto LABEL_77;
      }

      v16 = *(v14 + 40);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v17 || !v17(v16, 49))
      {
        goto LABEL_77;
      }

      goto LABEL_23;
    }

    if (CFEqual(v13, *MEMORY[0x277CC15F8]))
    {
      if (!*(v14 + 48))
      {
        goto LABEL_77;
      }
    }

    else if (!CFEqual(v13, *MEMORY[0x277CC1610]))
    {
      goto LABEL_77;
    }

    if (APSGetFBOPropertyInt64())
    {
      goto LABEL_23;
    }

LABEL_77:
    endpoint_createCommChannelInternal_cold_12();
LABEL_78:
    MutableCopy = 0;
    goto LABEL_66;
  }

LABEL_23:
  v18 = a4;
  v19 = CFDictionaryGetInt64();
  v20 = *MEMORY[0x277CBECE8];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    endpoint_createCommChannelInternal_cold_11();
    goto LABEL_66;
  }

  if (Int64 == 1)
  {
    v21 = CFEqual(v13, v15);
    v22 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
    if (v21)
    {
      v23 = APSGetFBOPropertyInt64();
      v24 = 1;
      if (v23)
      {
        v24 = 2;
      }

      if (!v19)
      {
        v19 = v24;
      }

      if (v23 && v19 != 2)
      {
        endpoint_createCommChannelInternal_cold_4();
        goto LABEL_66;
      }
    }
  }

  else
  {
    v22 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  }

  v25 = APSGetFBOPropertyInt64();
  if (v19 == 1 && !v25)
  {
    endpoint_createCommChannelInternal_cold_10();
    goto LABEL_66;
  }

  if (v19 == 2 && APSGetFBOPropertyInt64())
  {
    if (IsAppleInternalBuild() && APSSettingsGetInt64())
    {
      v26 = v22[84];
      if (v26 <= 50 && (v26 != -1 || _LogCategory_Initialize()))
      {
        endpoint_createCommChannelInternal_cold_5();
      }

      v27 = MEMORY[0x277CBED10];
    }

    else
    {
      v27 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(MutableCopy, @"wantsDedicatedSocket", *v27);
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v29 = *(DerivedStorage + 328);
    if (v29)
    {
      if (CFDictionaryContainsKey(v29, TypedValue))
      {
        endpoint_createCommChannelInternal_cold_6();
        goto LABEL_66;
      }
    }
  }

  CFDictionarySetInt64();
  v30 = CFGetAllocator(a1);
  v42 = APEndpointRemoteControlSessionCreate(v30, v10, *(DerivedStorage + 448), MutableCopy, v19, &v40);
  if (v42)
  {
    endpoint_createCommChannelInternal_cold_7();
    goto LABEL_66;
  }

  if (!*(DerivedStorage + 328))
  {
    v31 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v31, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 328) = Mutable;
    if (!Mutable)
    {
      endpoint_createCommChannelInternal_cold_9();
      goto LABEL_66;
    }
  }

  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v34)
  {
    v42 = -12782;
    goto LABEL_76;
  }

  v42 = v34(CMBaseObject, @"SessionID", v20, &cf);
  if (v42)
  {
LABEL_76:
    endpoint_createCommChannelInternal_cold_8();
    goto LABEL_66;
  }

  if (TypedValue && !FigCFEqual())
  {
    v38 = v22[84];
    if (v38 <= 50 && (v38 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v42 = -17606;
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    CFDictionarySetValue(*(DerivedStorage + 328), cf, v40);
    if (*(DerivedStorage + 48))
    {
      FigEndpoint = FigEndpointExtendedGetFigEndpoint();
      endpoint_handleIdleStateChanged_0(FigEndpoint, 1);
    }

    v36 = v22[84];
    if (v36 <= 50 && (v36 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v39)
    {
      *v39 = v40;
      v40 = 0;
    }

    if (v18)
    {
      *v18 = cf;
      cf = 0;
    }
  }

LABEL_66:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v42;
}

void endpoint_handleRemoteControlSessionEvent(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9 || v9(CMBaseObject, @"SessionID", 0, &cf))
  {
    endpoint_handleRemoteControlSessionEvent_cold_1();
  }

  else
  {
    FigSimpleMutexLock();
    if (CFEqual(a2, *MEMORY[0x277CC1650]))
    {
      APEndpointCallRCDelegateDidReceiveDataAsync(a4, *(DerivedStorage + 128), cf, a3, *DerivedStorage, *(DerivedStorage + 400), *(DerivedStorage + 424));
    }

    else if (CFEqual(a2, *MEMORY[0x277CC1658]))
    {
      APEndpointCallRCDelegateDidCloseAsync(a4, *(DerivedStorage + 128), cf, *DerivedStorage, *(DerivedStorage + 408), *(DerivedStorage + 424));
    }

    else if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    FigSimpleMutexUnlock();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void endpoint_handleRCSClosed(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4 || v4(CMBaseObject, @"SessionID", *MEMORY[0x277CBECE8], &cf))
  {
    endpoint_handleRCSClosed_cold_1();
  }

  else
  {
    FigSimpleMutexLock();
    v5 = cf;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFDictionaryRemoveValue(*(DerivedStorage + 328), v5);
    if (*(DerivedStorage + 48))
    {
      endpoint_handleIdleStateChanged_0(a2, 0);
    }

    FigSimpleMutexUnlock();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void endpoint_handleRCSFailed(uint64_t a1, uint64_t a2)
{
  if (!a2 || (FigEndpointExtendedGetClassID(), v3 = a2, !CMBaseObjectIsMemberOfClass()))
  {
    v3 = 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(CMBaseObject, @"SessionID", *MEMORY[0x277CBECE8], &cf))
  {
    goto LABEL_13;
  }

  if (gLogCategory_APEndpoint <= 60 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = cf;
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 104);
  if (!v7 || v7(v3, v6))
  {
LABEL_13:
    APSLogErrorAt();
    if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void endpoint_handleIdleStateChanged_0(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 144) == 2)
  {
    v5 = DerivedStorage;
    v6 = *(DerivedStorage + 263);
    v7 = a2 || !endpoint_isIdle();
    if (v6 != v7)
    {
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        endpoint_handleIdleStateChanged_cold_1_0();
      }

      *(v5 + 263) = v7;
      CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v9 = Mutable;
        v10 = MEMORY[0x277CBED10];
        if (v7)
        {
          v10 = MEMORY[0x277CBED28];
        }

        CFDictionarySetValue(Mutable, @"IsEngaged", *v10);
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        CFRelease(v9);
      }

      else
      {
        endpoint_handleIdleStateChanged_cold_2();
      }

      if (*(v5 + 262))
      {
        CFRetain(a1);
        APSDispatchAsyncFHelper();
      }

      if (v7 && !*(v5 + 48) && (*(v5 + 532) & 0x10) != 0)
      {
        if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
        {
          endpoint_handleIdleStateChanged_cold_3();
        }

        endpointdelegate_sendCurrentVolumeToReceiver(a1);
        *(v5 + 532) &= ~0x10u;
      }
    }
  }
}

BOOL endpoint_isIdle()
{
  if (*(CMBaseObjectGetDerivedStorage() + 48))
  {
    return FigCFDictionaryGetCount() == 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 160))
  {
    CFDictionaryApplyBlock();
    v1 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
    if (v1)
    {
      return 0;
    }
  }

  else
  {
    _Block_object_dispose(&v4, 8);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (*(DerivedStorage + 304))
  {
    CFSetApplyBlock();
    v0 = *(v5 + 24) == 0;
  }

  else
  {
    v0 = 1;
  }

  _Block_object_dispose(&v4, 8);
  return v0;
}

void sub_2221704FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void endpoint_deferredIdleStateChanged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(a1 + 8) && *(DerivedStorage + 262) && *(DerivedStorage + 144) == 2)
  {
    endpoint_startInactivityTimer(*a1);
  }

  else
  {
    v3 = *(DerivedStorage + 608);
    if (v3)
    {
      dispatch_source_cancel(*(DerivedStorage + 608));
      dispatch_release(v3);
      *(DerivedStorage + 608) = 0;
    }
  }

  FigSimpleMutexUnlock();
  v4 = *a1;

  CFRelease(v4);
}

uint64_t __endpoint_isAnyMediaStreamPlaying_block_invoke(uint64_t a1)
{
  result = FigCFEqual();
  if (!result)
  {
    result = APSGetFBOPropertyInt64();
    *(*(*(a1 + 32) + 8) + 24) |= result != 0;
  }

  return result;
}

uint64_t __endpoint_isAnyPlaybackSessionPlaying_block_invoke(uint64_t a1)
{
  result = APSGetFBOPropertyInt64();
  *(*(*(a1 + 32) + 8) + 24) |= result != 0;
  return result;
}

void endpoint_startInactivityTimer(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    IntWithDefault = 60;
  }

  else
  {
    IntWithDefault = 480;
  }

  v5 = *(DerivedStorage + 608);
  if (v5)
  {
    dispatch_source_cancel(*(DerivedStorage + 608));
    dispatch_release(v5);
    *(v3 + 608) = 0;
  }

  if (IsAppleInternalBuild())
  {
    IntWithDefault = APSSettingsGetIntWithDefault();
  }

  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(v3 + 608) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v3 + 576));
  CFRetain(a1);
  dispatch_set_context(*(v3 + 608), a1);
  dispatch_source_set_event_handler_f(*(v3 + 608), endpoint_inactivityTimerFired);
  dispatch_source_set_cancel_handler_f(*(v3 + 608), endpoint_inactivityTimerCancelled);
  v6 = *(v3 + 608);
  v7 = dispatch_time(0, 1000000000 * IntWithDefault);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v8 = *(v3 + 608);

  dispatch_resume(v8);
}

uint64_t endpoint_inactivityTimerFired(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 608);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 608));
    dispatch_release(v3);
    *(DerivedStorage + 608) = 0;
  }

  if (endpoint_isIdle() && *(DerivedStorage + 144) == 2)
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    endpoint_updateStatus(a1, -72276, 1);
  }

  return FigSimpleMutexUnlock();
}

void endpoint_inactivityTimerCancelled(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 440);
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  FigSimpleMutexUnlock();
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v4)
  {
    CFRelease(v4);
  }

  CFRelease(a1);
}

void endpoint_callDelegateHandleFailed(uint64_t a1)
{
  (*(a1 + 24))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32));
  CFRelease(*a1);
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __apEndpoint_handleInvalidateIncomingRCSCommand_block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  if (!CMBaseObject || (v3 = CMBaseObject, (v4 = *(*(CMBaseObjectGetVTable() + 8) + 24)) == 0) || v4(v3))
  {
    __apEndpoint_handleInvalidateIncomingRCSCommand_block_invoke_cold_1();
  }

  v5 = *v1;

  CFRelease(v5);
}

uint64_t endpoint_handleSenderSessionFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpoint <= 90 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_handleSenderSessionFailed_cold_1();
  }

  CFRetain(a2);
  if (a5)
  {
    CFRetain(a5);
  }

  return APSDispatchAsyncFHelper();
}

void endpoint_deferredHandleSenderSessionFailed(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 8);
  Int64 = CFDictionaryGetInt64();
  CFDictionaryGetValue(v3, @"SessionState");
  v5 = FigCFEqual();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 144) == 2)
  {
    endpoint_updateStatus(*a1, Int64, v5 == 0);
  }

  FigSimpleMutexUnlock();
  CFRelease(*a1);
  v6 = *(a1 + 8);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t endpoint_handleSimulateEndpointFailed(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a3, @"ReceiverSessionIsActive"))
  {
    endpoint_handleSimulateEndpointFailed_cold_1(a3, &v9);
    v8 = v9;
    return endpoint_handleSimulateEndpointFailed_cold_2(DerivedStorage, a2, v8);
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 243))
  {
    v8 = -72272;
    FigSimpleMutexUnlock();
    return endpoint_handleSimulateEndpointFailed_cold_2(DerivedStorage, a2, v8);
  }

  v6 = *(DerivedStorage + 244);
  result = FigSimpleMutexUnlock();
  if (v6 != 2)
  {
    v8 = -72272;
    return endpoint_handleSimulateEndpointFailed_cold_2(DerivedStorage, a2, v8);
  }

  return result;
}

void endpoint_handleHDMILatencyChange(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    APSHDMIVideoLatencyMs();
    if (FigCFDictionarySetInt32())
    {
      endpoint_handleHDMILatencyChange_cold_1();
    }

    else
    {
      if (!a2 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        a2 = 0;
      }

      if (apEndpoint_SendCommand(a2, @"setSenderDisplayLatencyMs", v4))
      {
        endpoint_handleHDMILatencyChange_cold_2();
      }
    }

    CFRelease(v4);
  }

  else
  {
    endpoint_handleHDMILatencyChange_cold_3();
  }
}

uint64_t endpointdelegate_getInitialVolumeDBAndIsMuted(uint64_t a1, float *a2, float *a3, BOOL *a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 216))
  {
    APSGetFBOPropertyDouble();
    v8 = v7;
    v9 = v8;
    if (a3)
    {
      *a3 = v8;
    }

    v10 = APSGetFBOPropertyInt64() != 0;
  }

  else
  {
    v10 = 0;
    v9 = -999.0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (APSGetFBOPropertyInt64())
  {
    if (*(DerivedStorage + 244) == 2 && !*(DerivedStorage + 243))
    {
      v12 = 3;
      goto LABEL_16;
    }
  }

  else
  {
    if (APSGetFBOPropertyInt64())
    {
      if (*(DerivedStorage + 244) == 2)
      {
        v12 = 1;
      }

      else
      {
        v12 = 3;
      }

      goto LABEL_16;
    }

    if (!APSGetFBOPropertyInt64())
    {
      if (APSGetFBOPropertyInt64())
      {
        v12 = 35;
      }

      else if (APSGetFBOPropertyInt64())
      {
        v12 = 1;
      }

      else
      {
        v12 = 31;
      }

      goto LABEL_16;
    }
  }

  v12 = 1;
LABEL_16:
  v13 = v9;
  v14 = -20.0;
  if (v9 == -999)
  {
    v15 = 1;
  }

  else if (v13 >= -29)
  {
    v15 = (~v13 >> 29) & 4;
  }

  else
  {
    v15 = 2;
    v14 = -27.0;
  }

  if ((v15 & v12) != 0)
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v15 = 0;
    v14 = v9;
  }

  v16 = v12 & 0x30;
  *a2 = v14;
  *a4 = v10;
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpointdelegate_getInitialVolumeDBAndIsMuted_cold_1();
  }

  return v15 | v16;
}

void endpoint_updateScreenRelatedConfiguration(const void *a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  value = 0;
  v19 = 0;
  if (!a2)
  {
    endpoint_updateScreenRelatedConfiguration_cold_4();
    goto LABEL_39;
  }

  v7 = DerivedStorage;
  v8 = *MEMORY[0x277CBECE8];
  CMBaseObject = APSenderSessionGetCMBaseObject(a2);
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(CMBaseObject, 0x28357A470, v8, &value);
  }

  v11 = APSenderSessionGetCMBaseObject(a2);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, 0x28357A490, v8, &cf);
  }

  v13 = APSenderSessionGetCMBaseObject(a2);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, 0x28357A4B0, v8, &v19);
  }

  if (value)
  {
    if (v19)
    {
      v15 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"encoderEncryptionData", value);
      CFDictionarySetValue(Mutable, @"protectionFlags", v19);
      FigCFDictionarySetValue();
      *(v7 + 320) = Mutable;
      if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  if (*(v7 + 320) && !APSSettingsGetIntWithDefault())
  {
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
      {
        endpoint_updateScreenRelatedConfiguration_cold_1();
      }

      goto LABEL_33;
    }

    goto LABEL_37;
  }

  if (a3 && CFDictionaryContainsKey(a3, @"ScreenSource"))
  {
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
      {
        endpoint_updateScreenRelatedConfiguration_cold_2();
      }

      goto LABEL_33;
    }

LABEL_37:
    *(v7 + 273) = 0;
    goto LABEL_39;
  }

  if (FigCFDictionaryGetValue() == *MEMORY[0x277CBED28])
  {
    if (gLogCategory_APEndpoint <= 50)
    {
      if (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize())
      {
        endpoint_updateScreenRelatedConfiguration_cold_3();
      }

      goto LABEL_33;
    }

    goto LABEL_37;
  }

  if (!APSSettingsIsFeatureEnabled() || !APSHasUDPMirroringSenderSupport())
  {
LABEL_33:
    v17 = 0;
    goto LABEL_34;
  }

  v17 = APSGetFBOPropertyInt64() != 0;
LABEL_34:
  v18 = gLogCategory_APEndpoint;
  *(v7 + 273) = v17;
  if (v18 <= 30 && (v18 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_39:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

uint64_t endpoint_setupStreams(const void *a1, char a2, uint64_t a3, const __CFDictionary *a4, uint64_t *a5)
{
  v84 = 0;
  v85 = 0;
  v83 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v82 = 0;
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a3)
  {
    v11 = *(DerivedStorage + 160);
    if (v11)
    {
      CFDictionaryApplyFunction(v11, endpoint_dissociateStreamsDictionaryEntry, 0);
      v12 = *(DerivedStorage + 160);
      if (v12)
      {
        CFRelease(v12);
        *(DerivedStorage + 160) = 0;
      }
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 160) = Mutable;
    if (!Mutable)
    {
      endpoint_setupStreams_cold_16();
      v19 = 4294950575;
      goto LABEL_104;
    }
  }

  SupportedFeatures = endpoint_getSupportedFeatures(a1, &v85);
  if (SupportedFeatures)
  {
    v19 = SupportedFeatures;
    endpoint_setupStreams_cold_1();
    goto LABEL_104;
  }

  v15 = *(DerivedStorage + 40);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v16)
  {
    v19 = 4294954514;
LABEL_17:
    APSLogErrorAt();
    goto LABEL_104;
  }

  v17 = v16(v15, &v84);
  if (v17)
  {
    v19 = v17;
    goto LABEL_17;
  }

  if (!*(DerivedStorage + 208))
  {
    endpoint_setupStreams_cold_15();
    goto LABEL_133;
  }

  v74 = a5;
  v18 = (a2 & 2) == 0 || APSFeaturesHasFeature() == 0;
  v20 = (v85 & 8) == 0 || (a2 & 8) == 0;
  v21 = a3;
  if ((a2 & 0x20) != 0)
  {
    v22 = (v85 >> 5) & 1;
  }

  else
  {
    v22 = 0;
  }

  Int64 = CFDictionaryGetInt64();
  v73 = Int64 != 0;
  if (Int64)
  {
    v24 = 1;
  }

  else
  {
    v24 = v22;
  }

  v76 = v20;
  v77 = v24;
  v25 = !v18;
  if ((a3 & 2) != 0)
  {
    v25 = 0;
  }

  v75 = a4;
  if (v25 || ((v20 | (a3 >> 3)) & 1) == 0 || (a3 & 0x20) == 0 && v77)
  {
    v26 = CMBaseObjectGetDerivedStorage();
    value[0] = 0;
    v86 = 0;
    v87 = 0;
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(v26[5]);
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v28)
    {
      v29 = *MEMORY[0x277CBECE8];
      v30 = v28(CMBaseObject, @"SupportedAudioFormats", *MEMORY[0x277CBECE8], value);
      if (v30)
      {
        v19 = v30;
        v36 = a3;
      }

      else
      {
        v31 = APEndpointDescriptionGetCMBaseObject(v26[5]);
        v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v32)
        {
          v33 = v32(v31, @"IsConnectedOverUSB", v29, &v87);
          if (v33)
          {
            v19 = v33;
            v36 = a3;
          }

          else
          {
            v34 = APSenderSessionGetCMBaseObject(v26[27]);
            v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v35)
            {
              v36 = a3;
              v37 = v35(v34, @"ControlConnectionInterfaceLatencyHint", v29, &v86);
              if (!v37)
              {
                v38 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                v39 = v38;
                if (v38)
                {
                  CFDictionarySetValue(v38, @"SupportedAudioFormats", value[0]);
                  CFDictionarySetValue(v39, @"IsConnectedOverUSB", v87);
                  v40 = APSGetFBOPropertyInt64();
                  v71 = *MEMORY[0x277CBED28];
                  v70 = *MEMORY[0x277CBED10];
                  if (v40)
                  {
                    v41 = *MEMORY[0x277CBED28];
                  }

                  else
                  {
                    v41 = *MEMORY[0x277CBED10];
                  }

                  CFDictionarySetValue(v39, @"IsCarPlay", v41);
                  CFDictionarySetValue(v39, @"ConnectionLatencyHint", v86);
                  v42 = v26[5];
                  v43 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                  if (!v43 || !v43(v42, 11))
                  {
                    v71 = v70;
                  }

                  CFDictionarySetValue(v39, @"SupportRedundancyAudio", v71);
                  v44 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  v45 = v44;
                  if (v44)
                  {
                    v46 = v26[26];
                    if (v46)
                    {
                      CFDictionarySetValue(v44, @"NetworkClock", v46);
                      CFDictionarySetValue(v45, @"AudioEngineOptions", v39);
                      a4 = v75;
                      v19 = APEndpointCopyFromActivationOptionsOrCreateSharedContext(v75, a2, v45, 0, 0, &v83);
                      if (v19)
                      {
                        endpoint_setupStreams_cold_2();
                      }

LABEL_56:
                      if (value[0])
                      {
                        CFRelease(value[0]);
                      }

                      if (v87)
                      {
                        CFRelease(v87);
                      }

                      if (v86)
                      {
                        CFRelease(v86);
                      }

                      if (v39)
                      {
                        CFRelease(v39);
                      }

                      if (v45)
                      {
                        CFRelease(v45);
                      }

                      v21 = v36;
                      v20 = v76;
                      if (v19)
                      {
                        endpoint_setupStreams_cold_6();
                        goto LABEL_104;
                      }

                      goto LABEL_67;
                    }

                    endpoint_setupStreams_cold_3();
                    v19 = 4294949690;
LABEL_55:
                    a4 = v75;
                    goto LABEL_56;
                  }

                  endpoint_setupStreams_cold_4();
                }

                else
                {
                  endpoint_setupStreams_cold_5();
                  v45 = 0;
                }

                v19 = 4294950575;
                goto LABEL_55;
              }

              v19 = v37;
            }

            else
            {
              v36 = a3;
              v19 = 4294954514;
            }
          }
        }

        else
        {
          v36 = a3;
          v19 = 4294954514;
        }
      }
    }

    else
    {
      v36 = a3;
      v19 = 4294954514;
    }

    APSLogErrorAt();
    v39 = 0;
    v45 = 0;
    goto LABEL_55;
  }

LABEL_67:
  if (v18 || v20)
  {
    v47 = 0;
    if (!v18)
    {
      goto LABEL_69;
    }

LABEL_82:
    if ((a3 & 2) != 0)
    {
      markStreamForRemoval(&v82, *MEMORY[0x277CC1960], *(DerivedStorage + 160));
    }

    v48 = 0;
    if (!v20)
    {
      goto LABEL_71;
    }

LABEL_85:
    if ((v21 & 8) != 0)
    {
      markStreamForRemoval(&v82, *MEMORY[0x277CC1968], *(DerivedStorage + 160));
    }

    v49 = v74;
    goto LABEL_88;
  }

  v47 = *(DerivedStorage + 241) == 0;
  if (v18)
  {
    goto LABEL_82;
  }

LABEL_69:
  if ((a3 & 2) == 0)
  {
    v72 = v21;
    v66 = *MEMORY[0x277CC1960];
    v67 = CFDictionaryGetValue(v83, *MEMORY[0x277CC1960]);
    if (!v67)
    {
      endpoint_setupStreams_cold_8();
      goto LABEL_133;
    }

    v68 = CFDictionaryGetValue(v67, @"AudioEngineVendor");
    CFDictionaryGetInt64();
    v69 = endpoint_setupAudioStream(a1, v47, 0, 0, v68, v66);
    if (v69)
    {
      v19 = v69;
      endpoint_setupStreams_cold_7();
      goto LABEL_104;
    }

    v48 = 2;
    v21 = v72;
    if (!v76)
    {
      goto LABEL_71;
    }

    goto LABEL_85;
  }

  v48 = 2;
  if (v20)
  {
    goto LABEL_85;
  }

LABEL_71:
  v49 = v74;
  if ((v21 & 8) == 0)
  {
    v50 = *MEMORY[0x277CC1968];
    v51 = CFDictionaryGetValue(v83, *MEMORY[0x277CC1968]);
    if (!v51)
    {
      endpoint_setupStreams_cold_11();
      goto LABEL_133;
    }

    v52 = CFDictionaryGetValue(v51, @"AudioEngineVendor");
    CFDictionaryGetInt64();
    v53 = 0;
    if (v47)
    {
      v53 = CFDictionaryGetValue(*(DerivedStorage + 160), *MEMORY[0x277CC1960]);
    }

    v54 = endpoint_setupAudioStream(a1, v47, v53, 0, v52, v50);
    if (v54)
    {
      v19 = v54;
      endpoint_setupStreams_cold_9();
      goto LABEL_104;
    }

    a4 = v75;
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_setupStreams_cold_10();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  v48 |= 8uLL;
LABEL_88:
  if (v77)
  {
    if ((v21 & 0x20) != 0)
    {
LABEL_92:
      v48 |= 0x20uLL;
      goto LABEL_95;
    }

    v55 = *MEMORY[0x277CC1970];
    v56 = CFDictionaryGetValue(v83, *MEMORY[0x277CC1970]);
    if (v56)
    {
      v57 = v56;
      CFDictionaryGetInt64();
      v58 = CFDictionaryGetValue(v57, @"AudioEngineVendor");
      v59 = endpoint_setupAudioStream(a1, 0, 0, v73, v58, v55);
      if (v59)
      {
        v19 = v59;
        endpoint_setupStreams_cold_12();
        goto LABEL_104;
      }

      goto LABEL_92;
    }

    endpoint_setupStreams_cold_13();
LABEL_133:
    v19 = 4294949690;
    goto LABEL_104;
  }

  if ((v21 & 0x20) != 0)
  {
    markStreamForRemoval(&v82, *MEMORY[0x277CC1970], *(DerivedStorage + 160));
  }

LABEL_95:
  if ((a2 & 1) != 0 && APSFeaturesHasFeature())
  {
    if ((a3 & 1) == 0)
    {
      v60 = endpoint_setupScreenStream(a1, a4);
      if (v60)
      {
        v19 = v60;
        endpoint_setupStreams_cold_14();
        goto LABEL_104;
      }
    }

    v48 |= 1uLL;
  }

  else if (a3)
  {
    markStreamForRemoval(&v82, *MEMORY[0x277CC1980], *(DerivedStorage + 160));
  }

  v19 = 0;
  if (v49)
  {
    *v49 = v48 | v85 & a2 & 4 | v85 & a2 & 0x10;
  }

LABEL_104:
  v61 = v82;
  if (v82)
  {
    v80 = 0u;
    v81 = 0u;
    *value = 0u;
    v79 = 0u;
    if (!a1 || (v62 = CFRetain(a1), v61 = v82, value[0] = v62, v82))
    {
      v61 = CFRetain(v61);
    }

    *&v79 = v61;
    v63 = *(DerivedStorage + 288);
    if (v63)
    {
      v63 = CFRetain(v63);
    }

    *(&v80 + 1) = v63;
    v64 = *(DerivedStorage + 296);
    if (v64)
    {
      v64 = CFRetain(v64);
    }

    *&v81 = v64;
    APSDispatchAsyncFHelper();
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v83)
  {
    CFRelease(v83);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  return v19;
}

void endpoint_postInterruptingSessionStateDidChangeNotification(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    v5 = MEMORY[0x277CBED10];
    if (a2)
    {
      v5 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsInterruptingSessionActive", *v5);
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v4);
  }

  else
  {
    endpoint_postInterruptingSessionStateDidChangeNotification_cold_1();
  }
}

void endpoint_updateVideoPlaybackIsActive(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  isVideoPlaybackSessionActive = endpoint_isVideoPlaybackSessionActive();
  if (*(DerivedStorage + 484) != isVideoPlaybackSessionActive)
  {
    *(DerivedStorage + 484) = isVideoPlaybackSessionActive;
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_updateVideoPlaybackIsActive_cold_1();
    }

    v4 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      FigCFDictionarySetInt64();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();

      CFRelease(v6);
    }

    else
    {
      endpoint_updateVideoPlaybackIsActive_cold_2();
    }
  }
}

void endpoint_deregisterWithBrowserController(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 24))
  {
    v3 = *(DerivedStorage + 40);
    v4 = CFGetAllocator(a1);
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(v3);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, @"TransportDevice", v4, &cf);
      if (cf)
      {
        APBrowserControllerDeregisterEndpoint();
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }
}

void endpoint_deactivateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = dispatch_semaphore_create(0);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  if (*(a1 + 68))
  {
    APSLogErrorAt();
    v19 = *(a1 + 68);
    goto LABEL_42;
  }

  v4 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (qword_280FB1BF8 != -1)
    {
      endpoint_Finalize_cold_2();
    }

    if (_MergedGlobals_24)
    {
      v5 = *_MergedGlobals_24;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __endpoint_deactivateInternal_block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = _MergedGlobals_24;
      block[5] = a1;
      dispatch_sync(v5, block);
    }

    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_deactivateInternal_cold_2();
    }

    v6 = *(DerivedStorage + 608);
    if (v6)
    {
      dispatch_source_cancel(*(DerivedStorage + 608));
      dispatch_release(v6);
      *(DerivedStorage + 608) = 0;
    }

    if (*(a1 + 72))
    {
      v44 = 0;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        endpoint_deactivateInternal_cold_3();
      }

      if (!CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]))
      {
        endpoint_deactivateInternal_cold_4();
        v19 = -16721;
        goto LABEL_42;
      }

      endpoint_deactivateInternal_cold_7();
    }

    v7 = *(a1 + 32);
    cf = 0;
    v50 = 0;
    CMBaseObject = APSenderSessionGetCMBaseObject(v7);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, @"MC2UCToken", 0, &v50);
      if (v50)
      {
        Shared = APMulticastProbeSenderGetShared();
        APMulticastProbeSenderUnregister(Shared, v50, &cf);
        if (FigCFDictionaryGetCount() <= 0)
        {
          endpoint_deactivateInternal_cold_6();
        }

        else if (CFDictionaryMergeDictionary())
        {
          endpoint_deactivateInternal_cold_5();
        }

        if (v50)
        {
          CFRelease(v50);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v11 = *a1;
    if (*a1)
    {
      v11 = CFRetain(v11);
    }

    *&v46 = v11;
    v12 = *v4;
    if (*v4)
    {
      v12 = CFRetain(v12);
    }

    *(&v46 + 1) = v12;
    v13 = *(a1 + 40);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    *&v47 = v13;
    v14 = *(a1 + 96);
    if (v14)
    {
      v14 = CFRetain(v14);
    }

    *(&v47 + 1) = v14;
    v15 = *(a1 + 104);
    if (v15)
    {
      v15 = CFRetain(v15);
    }

    *&v48 = v15;
    v16 = *(a1 + 112);
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *(&v48 + 1) = v16;
    v17 = *(a1 + 120);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *&v49 = v17;
    *(&v49 + 1) = v3;
    dispatch_retain(v3);
    APSDispatchAsyncFHelper();
    v18 = dispatch_time(0, 4000000000);
    if (dispatch_semaphore_wait(v3, v18) && gLogCategory_APEndpoint <= 40 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_deactivateInternal_cold_8();
    }

    endpoint_stopMediaRemoteAndMetadataServices(*a1, *(a1 + 88));
    if (*(a1 + 128))
    {
      endpoint_deactivateInternal_cold_9(a1, (a1 + 32), &cf);
      v19 = cf;
      goto LABEL_42;
    }
  }

  else
  {
    endpoint_deactivateInternal_cold_10();
  }

  v19 = 0;
LABEL_42:
  if (*(a1 + 32))
  {
    if (*(a1 + 112))
    {
      APSGetCPULoadAverage();
      CFDictionarySetDouble();
      CFDictionarySetInt64();
      APSRTCReportingAgentSendEvent();
      if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
      {
        endpoint_deactivateInternal_cold_11();
      }
    }
  }

  v20 = *(a1 + 136);
  if (v20)
  {
    cf = *a1;
    v37 = *(a1 + 48);
    v39 = v20;
    v38 = v19;
    v40 = *(a1 + 144);
    CFRetain(cf);
    APSDispatchAsyncFHelper();
  }

  if (!v19 && !FigCFEqual())
  {
    cf = 0;
    v21 = CFGetAllocator(*a1);
    APEndpointCreateEndpointActivationNotificationPayload(v21, *(a1 + 56), *(a1 + 48), &cf);
    v22 = CFGetAllocator(*a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v22, 0, cf);
    v24 = MutableCopy;
    v25 = MEMORY[0x277CBED28];
    if (!*(a1 + 64))
    {
      v25 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(MutableCopy, @"WasAutoconnected", *v25);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v24)
    {
      CFRelease(v24);
    }
  }

  if (*(a1 + 65))
  {
    endpoint_postInterruptingSessionStateDidChangeNotification(*a1, 0);
  }

  FigSimpleMutexLock();
  endpoint_postIsInUseDidChangeNotification(*a1, *(a1 + 64));
  FigSimpleMutexUnlock();
  v26 = *(DerivedStorage + 616);
  if (v26)
  {
    dispatch_source_cancel(*(DerivedStorage + 616));
    dispatch_release(v26);
    *(DerivedStorage + 616) = 0;
  }

  CFRelease(*a1);
  v27 = *(a1 + 8);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 32);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(a1 + 40);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(a1 + 24);
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *(a1 + 88);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(a1 + 96);
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(a1 + 104);
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(a1 + 112);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(a1 + 120);
  if (v35)
  {
    CFRelease(v35);
  }

  dispatch_release(v3);
}

void endpoint_postStreamsChangedNotification(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  v8 = CFGetAllocator(a1);
  if (APEndpointCreateStreamsChangedNotificationPayload(v8, a2, a3, a4, &cf))
  {
    endpoint_postStreamsChangedNotification_cold_1();
  }

  else
  {
    if (gLogCategory_APEndpoint <= 30 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void endpoint_createAudioHALDevices(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a1[1] == *(DerivedStorage + 128) && *(DerivedStorage + 144) == 2)
  {
    if (!*(DerivedStorage + 241))
    {
      v3 = a1[2];
      if ((v3 & 2) != 0)
      {
        endpoint_createAudioHALDevice(*a1, *MEMORY[0x277CC1960]);
        v3 = a1[2];
      }

      if ((v3 & 0x20) != 0)
      {
        endpoint_createAudioHALDevice(*a1, *MEMORY[0x277CC1970]);
      }
    }
  }

  else if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_createAudioHALDevices_cold_1();
  }

  FigSimpleMutexUnlock();
  v4 = *a1;

  CFRelease(v4);
}

uint64_t endpoint_dissociateStreamsDictionaryEntry(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 32);
  if (v6)
  {

    return v6(a2);
  }

  return result;
}

uint64_t endpoint_setupAudioStream(const void *a1, int a2, const void *a3, int a4, const void *a5, const void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  cf = 0;
  if (!a6)
  {
    endpoint_setupAudioStream_cold_8();
    return 4294950576;
  }

  v13 = DerivedStorage;
  v14 = CFGetTypeID(a6);
  if (v14 == CFStringGetTypeID())
  {
    v15 = CFEqual(a6, *MEMORY[0x277CC1968]);
    v16 = MEMORY[0x277CBECE8];
    if (v15)
    {
      v27 = CMBaseObjectGetDerivedStorage();
      v28 = *v16;
      Mutable = CFDictionaryCreateMutable(*v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v19 = Mutable;
        v30 = *(v27 + 280);
        if (v30)
        {
          CFDictionarySetValue(Mutable, @"EventRecorder", v30);
        }

        v31 = endpoint_copyClusterInfo();
        FigCFDictionarySetValue();
        if (v31)
        {
          CFRelease(v31);
        }

        v32 = CFGetAllocator(a1);
        v33 = APEndpointStreamBufferedAudioCreate(v32, *(v13 + 440), *(v13 + 448), v19, *(v13 + 216), a5, *(v13 + 40), &cf);
        if (v33)
        {
          v39 = v33;
          endpoint_setupAudioStream_cold_2();
          goto LABEL_58;
        }

        if (!a2)
        {
LABEL_48:
          if (cf)
          {
            v43 = CFRetain(cf);
          }

          else
          {
            v43 = 0;
          }

          value = v43;
          goto LABEL_52;
        }

        goto LABEL_23;
      }

      endpoint_setupAudioStream_cold_3();
    }

    else
    {
      v17 = CMBaseObjectGetDerivedStorage();
      v48 = *v16;
      v18 = CFDictionaryCreateMutable(*v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v18)
      {
        v19 = v18;
        v46 = a5;
        v47 = a2;
        v20 = FigCFEqual();
        v21 = *MEMORY[0x277CBED28];
        v22 = *MEMORY[0x277CBED10];
        if (v20)
        {
          v23 = *MEMORY[0x277CBED28];
        }

        else
        {
          v23 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(v19, @"UsingScreen", v23);
        if (*(v17 + 481))
        {
          v24 = v21;
        }

        else
        {
          v24 = v22;
        }

        CFDictionarySetValue(v19, @"StartSilentAudio", v24);
        if (a4)
        {
          v25 = v21;
        }

        else
        {
          v25 = v22;
        }

        CFDictionarySetValue(v19, @"ForceEnableLLStream", v25);
        v26 = CMBaseObjectGetDerivedStorage();
        if (v26[273])
        {
          APSScreenMediaPresentationUDPLatencyMs();
        }

        else
        {
          APSScreenMediaPresentationLatencyMs();
        }

        FigCFDictionarySetInt32();
        if (v26[272])
        {
          if (v26[240])
          {
            v35 = v21;
          }

          else
          {
            v35 = v22;
          }

          CFDictionarySetValue(v19, @"IsMediaPresentation", v35);
        }

        v36 = *(v17 + 280);
        if (v36)
        {
          CFDictionarySetValue(v19, @"EventRecorder", v36);
        }

        v37 = endpoint_copyClusterInfo();
        FigCFDictionarySetValue();
        if (APSGetFBOPropertyInt64())
        {
          v38 = *(v17 + 244) == 2;
        }

        else
        {
          v38 = 0;
        }

        if (APSSettingsGetIntWithDefault())
        {
          if (v38)
          {
            v40 = v21;
          }

          else
          {
            v40 = v22;
          }

          CFDictionarySetValue(v19, @"DisableRemoteAudioRender", v40);
        }

        if (v37)
        {
          CFRelease(v37);
        }

        v41 = CFGetAllocator(a1);
        v42 = APEndpointStreamAudioCreate(v41, *(v13 + 440), *(v13 + 448), a6, v19, *(v13 + 216), v46, *(v13 + 208), *(v13 + 40), &cf);
        if (v42)
        {
          v39 = v42;
          endpoint_setupAudioStream_cold_4();
          goto LABEL_58;
        }

        v28 = v48;
        if (!v47)
        {
          goto LABEL_48;
        }

LABEL_23:
        if (a3)
        {
          v34 = APEndpointStreamInterruptingWrapperCreate(v28, cf, a3, *(v13 + 192), &value);
        }

        else
        {
          v34 = APEndpointStreamInterruptibleWrapperCreate(v28, cf, *(v13 + 192), &value);
        }

        v39 = v34;
        if (!v34)
        {
LABEL_52:
          v44 = endpoint_addEndpointStreamNotificationListeners(a1);
          if (v44)
          {
            v39 = v44;
            endpoint_setupAudioStream_cold_6();
          }

          else
          {
            CFDictionarySetValue(*(v13 + 160), a6, value);
            if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v39 = 0;
          }

          goto LABEL_58;
        }

        endpoint_setupAudioStream_cold_5();
LABEL_58:
        CFRelease(v19);
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_60;
      }

      endpoint_setupAudioStream_cold_7();
    }

    v39 = 4294950575;
  }

  else
  {
    endpoint_setupAudioStream_cold_1();
    v39 = 4294950576;
  }

LABEL_60:
  if (value)
  {
    CFRelease(value);
  }

  return v39;
}

void markStreamForRemoval(__CFDictionary **a1, void *key, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (key)
    {
      if (theDict)
      {
        if (*a1 || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (*a1 = Mutable) != 0))
        {
          Value = CFDictionaryGetValue(theDict, key);
          if (Value)
          {
            v8 = Value;
            v9 = *a1;

            CFDictionarySetValue(v9, key, v8);
          }
        }

        else
        {
          markStreamForRemoval_cold_1();
        }
      }

      else
      {
        markStreamForRemoval_cold_2();
      }
    }

    else
    {
      markStreamForRemoval_cold_3();
    }
  }

  else
  {
    markStreamForRemoval_cold_4();
  }
}

uint64_t endpoint_setupScreenStream(const void *a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v5 = CFStringCreateF();
  v6 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpoint_setupScreenStream_cold_5(&v27);
    v20 = v27;
    goto LABEL_35;
  }

  if (a2)
  {
    v8 = CFDictionaryGetValue(a2, *MEMORY[0x277CC09B0]);
    if (v8)
    {
      CFDictionarySetValue(Mutable, @"clientPID", v8);
    }

    v9 = CFDictionaryGetValue(a2, @"ScreenSource");
    if (v9)
    {
      CFDictionarySetValue(Mutable, @"ScreenSource", v9);
    }

    v10 = CFDictionaryGetValue(a2, @"ScreenProcessor");
    if (v10)
    {
      CFDictionarySetValue(Mutable, @"ScreenProcessor", v10);
    }

    v11 = CFDictionaryGetValue(a2, @"ScreenOverrides");
    if (v11)
    {
      CFDictionarySetValue(Mutable, @"ScreenOverrides", v11);
    }

    v12 = CFDictionaryGetValue(a2, *MEMORY[0x277CC09E0]);
    if (v12 && *(DerivedStorage + 272))
    {
      CFDictionarySetValue(Mutable, @"IsMediaPresentation", v12);
    }
  }

  v13 = *(DerivedStorage + 472);
  if (v13)
  {
    CFDictionarySetValue(Mutable, @"ScreenUsageMode", v13);
  }

  v14 = *MEMORY[0x277CBED28];
  v15 = *MEMORY[0x277CBED10];
  if (*(DerivedStorage + 272))
  {
    v16 = *MEMORY[0x277CBED28];
  }

  else
  {
    v16 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"IsMediaPresentationModeAvailable", v16);
  if (*(DerivedStorage + 240))
  {
    v17 = v14;
  }

  else
  {
    v17 = v15;
  }

  CFDictionarySetValue(Mutable, @"IsPerAppDisplay", v17);
  CFDictionarySetValue(Mutable, @"LogPrefix", v5);
  FigCFDictionarySetValue();
  if (*(DerivedStorage + 273))
  {
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      endpoint_setupScreenStream_cold_1();
    }

    v18 = CFGetAllocator(a1);
    v19 = APEndpointStreamScreenUDPCreate(v18, Mutable, *(DerivedStorage + 440), *(DerivedStorage + 216), *(DerivedStorage + 40), 0, *(DerivedStorage + 208), 0, &value);
    if (v19)
    {
      v20 = v19;
      endpoint_setupScreenStream_cold_2();
      goto LABEL_35;
    }
  }

  else
  {
    v21 = CFGetAllocator(a1);
    v22 = APEndpointStreamScreenCreate(v21, Mutable, *(DerivedStorage + 440), *(DerivedStorage + 216), *(DerivedStorage + 40), 0, *(DerivedStorage + 208), &value);
    if (v22)
    {
      v20 = v22;
      endpoint_setupScreenStream_cold_3();
      goto LABEL_35;
    }
  }

  v23 = *MEMORY[0x277CC1980];
  v24 = endpoint_addEndpointStreamNotificationListeners(a1);
  if (v24)
  {
    v20 = v24;
    endpoint_setupScreenStream_cold_4();
  }

  else
  {
    CFDictionarySetValue(*(DerivedStorage + 160), v23, value);
    if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v20 = 0;
  }

LABEL_35:
  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v20;
}

void endpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession(void *context)
{
  if (gLogCategory_APEndpoint <= 50 && (gLogCategory_APEndpoint != -1 || _LogCategory_Initialize()))
  {
    endpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession_cold_1();
  }

  v2 = *(context + 2);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, endpoint_suspendAndDissociateStreamsDictionaryEntry, context);
  }

  v3 = *(context + 4);
  if (v3)
  {
    CFDictionaryApplyFunction(v3, endpoint_invalidateRCS, *context);
  }

  if (*(context + 3))
  {
    CFSetApplyBlock();
  }

  v4 = *(context + 1);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v5)
    {
      v5(v4, 0, 0, 0, 0);
    }

    v6 = *(context + 1);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v7)
    {
      v7(v6);
    }

    v8 = *(context + 1);
    v9 = *(context + 6);
    v30 = 0;
    cf = 0;
    if (!v9)
    {
      goto LABEL_26;
    }

    CMBaseObjectGetDerivedStorage();
    if (APSGetFBOPropertyInt64())
    {
      CMBaseObject = APSenderSessionGetCMBaseObject(v8);
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v11 || (v11(CMBaseObject, @"ReceiverSuppliedRTCStats", *MEMORY[0x277CBECE8], &cf), !cf))
      {
LABEL_26:
        v19 = APSenderSessionGetCMBaseObject(*(context + 1));
        if (v19)
        {
          v20 = v19;
          v21 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v21)
          {
            v21(v20);
          }
        }

        v22 = *(context + 1);
        if (v22)
        {
          CFRelease(v22);
        }

        goto LABEL_31;
      }

      v12 = CFGetTypeID(cf);
      if (v12 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(cf);
        if (Count >= 1)
        {
          v14 = Count;
          v15 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(cf, v15);
            CFDataGetBytePtr(ValueAtIndex);
            CFDataGetLength(ValueAtIndex);
            CFDictionaryGetTypeID();
            v17 = CFCreateWithPlistBytes();
            if (!v17)
            {
              break;
            }

            v18 = v17;
            APSRTCReportingAgentSendOfflineEvent();
            CFRelease(v18);
            if (v14 == ++v15)
            {
              goto LABEL_24;
            }
          }

          endpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession_cold_2();
        }
      }
    }

LABEL_24:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_26;
  }

LABEL_31:
  v23 = *(context + 2);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(context + 3);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(context + 4);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(context + 5);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(context + 6);
  if (v27)
  {
    CFRelease(v27);
  }

  if (*context)
  {
    CFRelease(*context);
  }

  v28 = *(context + 7);
  if (v28)
  {
    dispatch_semaphore_signal(v28);
    dispatch_release(*(context + 7));
  }
}
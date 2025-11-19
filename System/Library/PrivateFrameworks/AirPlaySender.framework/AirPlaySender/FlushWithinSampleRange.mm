@interface FlushWithinSampleRange
@end

@implementation FlushWithinSampleRange

uint64_t __audioHoseManagerBuffered_FlushWithinSampleRange_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 100);
  if ((*(a3 + 10) - v5) >= 1)
  {
    *(a3 + 10) = v5;
  }

  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    if (*(a1 + 32))
    {
      CMBaseObjectGetDerivedStorage();
    }

    *time = *(a3 + 64);
    *&time[16] = *(a3 + 80);
    CMTimeGetSeconds(time);
    LogPrintF();
  }

  v6 = *(a1 + 32);
  v20 = *(a1 + 40);
  v7 = *(a1 + 44);
  v8 = *(a1 + 52);
  v30 = *(a1 + 56);
  v19 = *(a1 + 68);
  v31 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v28 = *(a1 + 84);
  v11 = *(a1 + 96);
  v29 = *(a1 + 92);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = **&MEMORY[0x277CC08F0];
  v24[0] = *MEMORY[0x277CEA038];
  v13 = v24[0];
  *(v24 + 12) = *(MEMORY[0x277CEA038] + 12);
  v23[0] = v13;
  *(v23 + 12) = *(v24 + 12);
  *time = *(a3 + 16);
  *&time[16] = *(a3 + 32);
  *rhs = v7;
  *&rhs[12] = v30;
  *&rhs[8] = v8;
  *&rhs[20] = v31;
  CMTimeSubtract(&v25, time, rhs);
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    __audioHoseManagerBuffered_FlushWithinSampleRange_block_invoke_cold_1();
  }

  *rhs = *(a3 + 64);
  *&rhs[16] = *(a3 + 80);
  *v22 = v25;
  CMTimeSubtract(time, rhs, v22);
  *(a3 + 64) = *time;
  *(a3 + 80) = *&time[16];
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    if (v6)
    {
      CMBaseObjectGetDerivedStorage();
    }

    *time = v25;
    CMTimeGetSeconds(time);
    *time = *(a3 + 64);
    *&time[16] = *(a3 + 80);
    CMTimeGetSeconds(time);
    LogPrintF();
  }

  *(a3 + 40) = 256;
  *(a3 + 56) = 0;
  *(a3 + 48) = mach_absolute_time();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    if (v6)
    {
      CMBaseObjectGetDerivedStorage();
    }

    *time = v7;
    *&time[12] = v30;
    *&time[8] = v8;
    *&time[20] = v31;
    CMTimeGetSeconds(time);
    *time = v9;
    *&time[12] = v28;
    *&time[8] = v10;
    *&time[20] = v29;
    CMTimeGetSeconds(time);
    LogPrintF();
  }

  if (!*(DerivedStorage + 186))
  {
    *rhs = v7;
    *&rhs[12] = v30;
    *&rhs[8] = v8;
    *&rhs[20] = v31;
    CMTimeConvertScale(time, rhs, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    APSAudioTransportTimeMakeWithRTPTime();
    *rhs = v9;
    *&rhs[12] = v28;
    *&rhs[8] = v10;
    *&rhs[20] = v29;
    CMTimeConvertScale(time, rhs, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    APSAudioTransportTimeMakeWithRTPTime();
    if (!v6)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  *time = v7;
  *&time[12] = v30;
  *&time[8] = v8;
  *&time[20] = v31;
  APSAudioTransportTimeMakeWithMediaTime();
  *time = v9;
  *&time[12] = v28;
  *&time[8] = v10;
  *&time[20] = v29;
  APSAudioTransportTimeMakeWithMediaTime();
  if (v6)
  {
LABEL_29:
    CFRetain(v6);
  }

LABEL_30:
  v14 = *a3;
  *v22 = v24[0];
  *&v22[12] = *(v24 + 12);
  *v21 = v23[0];
  *&v21[12] = *(v23 + 12);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v16 = *(ProtocolVTable + 16);
    if (v16)
    {
      v17 = *(v16 + 32);
      if (v17)
      {
        *time = *v22;
        *&time[12] = *&v22[12];
        *rhs = *v21;
        *&rhs[12] = *&v21[12];
        v17(v14, v20, time, v19, rhs, audioHoseManagerBuffered_hoseFlushWithinSampleRangeCallbackCompletionHandler, v6);
      }

      else
      {
        audioHoseManagerBuffered_hoseFlushWithinSampleRangeCallbackCompletionHandler(v14, 0, MEMORY[0x277CEA038], 0, MEMORY[0x277CEA038], 0xFFFFCE12, v6);
      }
    }
  }

  ++*(a3 + 144);
  result = APMessageRingBufferedGetByteCountAtIndex(*(DerivedStorage + 200), (*(a3 + 10) + 1), (a3 + 88));
  if (result)
  {
    return __audioHoseManagerBuffered_FlushWithinSampleRange_block_invoke_cold_2();
  }

  return result;
}

uint64_t __audioHoseManagerBuffered_FlushWithinSampleRange_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_27();
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_23_6(DerivedStorage, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

@end
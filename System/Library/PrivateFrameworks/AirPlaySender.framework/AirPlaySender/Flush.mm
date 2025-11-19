@interface Flush
@end

@implementation Flush

uint64_t __audioHoseManagerBuffered_Flush_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    __audioHoseManagerBuffered_Flush_block_invoke_cold_1(a1);
  }

  v5 = *a3;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v6(v5, *MEMORY[0x277CEA0C8], *MEMORY[0x277CBED10]);
  }

  *(a3 + 10) = *(a1 + 72);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 44);
  v10 = *(a1 + 52);
  v26 = *(a1 + 56);
  v11 = *(a1 + 68);
  v27 = *(a1 + 64);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a3 + 44))
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a3 + 96) != 0;
  }

  v24[0] = *MEMORY[0x277CEA038];
  v22 = v24[0];
  *(v24 + 12) = *(MEMORY[0x277CEA038] + 12);
  v21 = *(v24 + 12);
  *(a3 + 44) = 0;
  v14 = MEMORY[0x277CC08F0];
  *(a3 + 64) = *MEMORY[0x277CC08F0];
  v15 = *(v14 + 16);
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 80) = v15;
  *(a3 + 40) = 256;
  *(a3 + 56) = 0;
  result = mach_absolute_time();
  *(a3 + 48) = result;
  *(a3 + 148) = v22;
  *(a3 + 160) = v21;
  *(a3 + 176) = 0;
  if (v13)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      if (v7)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *time = v9;
      *&time[8] = v10;
      *&time[12] = v26;
      *&time[20] = v27;
      CMTimeGetSeconds(time);
      LogPrintF();
    }

    if (*(DerivedStorage + 186))
    {
      *time = v9;
      *&time[8] = v10;
      *&time[12] = v26;
      *&time[20] = v27;
      APSAudioTransportTimeMakeWithMediaTime();
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v23 = v9;
      *&v23[8] = v10;
      *&v23[12] = v26;
      *&v23[20] = v27;
      CMTimeConvertScale(time, v23, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      APSAudioTransportTimeMakeWithRTPTime();
      if (!v7)
      {
LABEL_24:
        v17 = *a3;
        *v23 = v24[0];
        *&v23[12] = *(v24 + 12);
        APSEndpointStreamAudioHoseProtocolGetProtocolID();
        result = CMBaseObjectGetProtocolVTable();
        if (result)
        {
          v19 = *(result + 16);
          result += 16;
          v18 = v19;
          if (v19)
          {
            v20 = *(v18 + 24);
            if (v20)
            {
              *time = *v23;
              *&time[12] = *&v23[12];
              result = v20(v17, v8, time, audioHoseManagerBuffered_hoseFlushCallbackCompletionHandler, v7);
            }

            else
            {
              result = audioHoseManagerBuffered_hoseFlushCallbackCompletionHandler(v17, 0, MEMORY[0x277CEA038], 0xFFFFCE12, v7);
            }
          }
        }

        ++*(a3 + 144);
        return result;
      }
    }

    CFRetain(v7);
    goto LABEL_24;
  }

  if (gLogCategory_APAudioHoseManagerBuffered <= 50)
  {
    if (gLogCategory_APAudioHoseManagerBuffered != -1)
    {
      return __audioHoseManagerBuffered_Flush_block_invoke_cold_2();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __audioHoseManagerBuffered_Flush_block_invoke_cold_2();
    }
  }

  return result;
}

void __audioEngineCarPlay_Flush_block_invoke(uint64_t a1)
{
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 216))
  {
    if (*(v2 + 236))
    {
      if (*(v2 + 184))
      {
        v3 = *(v2 + 144);
        time = *(a1 + 48);
        CMTimeConvertScale(&v8, &time, v3, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        *v10 = v8.value;
        DWORD2(v11) = 1;
        v4 = *(*(a1 + 32) + 184);
        v5 = *(CMBaseObjectGetVTable() + 16);
        if (*v5 < 2uLL || (v6 = v5[6]) == 0 || v6(v4, v10) || APMessageRingFlush(*(*(a1 + 32) + 200), &v9))
        {
          APSLogErrorAt();
        }

        else
        {
          (*(*(a1 + 32) + 216))(*(*(a1 + 32) + 208), v9, *v10 - *(*(a1 + 32) + 232), 0);
          kdebug_trace();
        }
      }
    }

    else if (gLogCategory_APAudioEngineCarPlay <= 50 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_2();
    }
  }

  CFRelease(*(a1 + 40));
}

uint64_t __audioHoseManagerBuffered_Flush_block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t __audioHoseManagerBuffered_Flush_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_20_2();
  if (v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

@end
@interface UpdateHosesPrimed
@end

@implementation UpdateHosesPrimed

uint64_t __audioHoseManagerBuffered_UpdateHosesPrimed_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50)
  {
    if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __audioHoseManagerBuffered_UpdateHosesPrimed_block_invoke_cold_1(v4);
    }
  }

  if (!*(a3 + 92))
  {
    if (*(*(v4 + 80) + 300))
    {
      audioHoseManagerBuffered_getBufferLevelTimeEstimateForHoseStartup();
      time2 = *(*(v4 + 80) + 288);
      v5 = CMTimeCompare(&time1, &time2) >= 0;
    }

    else
    {
      v5 = 0;
    }

    *(*(*(v4 + 32) + 8) + 24) = v5;
    if (*(*(v4 + 80) + 320))
    {
      v6 = *(a3 + 176);
    }

    else
    {
      v6 = 1;
    }

    *(*(*(v4 + 40) + 8) + 24) = v6;
    if (*(v4 + 104))
    {
      v7 = 0;
    }

    else
    {
      v8 = *(v4 + 80);
      v9 = 344;
      if (!*(v8 + 328))
      {
        v9 = 336;
      }

      v7 = *(v4 + 96) - *(a3 + 48) >= *(v8 + v9);
    }

    *(*(*(v4 + 48) + 8) + 24) = v7;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      if (*(v4 + 88))
      {
        CMBaseObjectGetDerivedStorage();
        v10 = *(v4 + 88);
      }

      else
      {
        v10 = 0;
      }

      audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark(v10, a3);
      LogPrintF();
    }

    result = audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark(*(v4 + 88), a3);
    if (result && *(*(*(v4 + 40) + 8) + 24) || *(*(*(v4 + 32) + 8) + 24) && *(*(*(v4 + 40) + 8) + 24) || *(*(*(v4 + 48) + 8) + 24))
    {
      *(a3 + 92) = 1;
      if (gLogCategory_APAudioHoseManagerBuffered <= 50)
      {
        if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
        {
          if (*(v4 + 72))
          {
            CMBaseObjectGetDerivedStorage();
          }

          audioHoseManagerBuffered_getBufferLevelTimeEstimateForHoseStartup();
          CMTimeGetSeconds(&time1);
          time1 = *(*(v4 + 80) + 48);
          CMTimeGetSeconds(&time1);
          UpTicksToMilliseconds();
          if (!*(v4 + 104))
          {
            UpTicksToMilliseconds();
          }

          time1 = *(a3 + 64);
          CMTimeGetSeconds(&time1);
          time1 = *(*(v4 + 80) + 288);
          CMTimeGetSeconds(&time1);
          result = LogPrintF();
        }
      }
    }
  }

  if ((*(a3 + 92) - 1) <= 2)
  {
    ++*(*(*(v4 + 56) + 8) + 24);
  }

  v11 = *(v4 + 96) - *(a3 + 48);
  v12 = *(*(v4 + 64) + 8);
  if (v11 < *(v12 + 24))
  {
    *(v12 + 24) = v11;
  }

  return result;
}

uint64_t __audioHoseManagerBuffered_UpdateHosesPrimed_block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 72))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

@end
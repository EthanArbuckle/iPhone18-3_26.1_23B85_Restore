@interface GetCurrentTimeInCurrentEvent
@end

@implementation GetCurrentTimeInCurrentEvent

CFTypeRef __fpic_GetCurrentTimeInCurrentEvent_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_158_3(a1);
  CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent();
  FirstCurrentItem = fpic_GetFirstCurrentItem();
  if (!CurrentlyPlayingEvent)
  {
    goto LABEL_2;
  }

  v5 = FirstCurrentItem;
  v6 = fpic_UnwrapEvent();
  OUTLINED_FUNCTION_2_4();
  v7 = MEMORY[0x1E6960CC0];
  *(v8 + 32) = *MEMORY[0x1E6960CC0];
  *(v8 + 48) = *(v7 + 16);
  if (v5)
  {
    v9 = *(*(v1 + 32) + 8);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v10)
    {
      v10(v5, v9 + 32);
    }

    OUTLINED_FUNCTION_2_4();
    v17 = *(*(v1 + 56) + 432);
    fpic_AccumulateDuration((v11 + 32), &v17);
    OUTLINED_FUNCTION_2_4();
    v17 = *(*(v1 + 56) + 480);
    fpic_AccumulateDuration((v12 + 32), &v17);
    v13 = *(*(v1 + 32) + 8);
    v14 = fpic_UnwrapEvent();
    if (fpic_hasFirstItemPlayedOutForEvent())
    {
      FigPlayerInterstitialEventGetFirstItemStartOffset(v14, &rhs);
      v15 = *(v13 + 32);
      CMTimeAdd(&v17, &v15, &rhs);
      *(v13 + 32) = v17;
    }
  }

  if (v6)
  {
    result = CFRetain(v6);
  }

  else
  {
LABEL_2:
    result = 0;
  }

  **(v1 + 64) = result;
  return result;
}

void __fpirc_GetCurrentTimeInCurrentEvent_block_invoke(uint64_t a1)
{
  timebase = 0;
  CurrentEventWrapperOnQueue = fpirc_GetCurrentEventWrapperOnQueue(*(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 56);
  if (*(v3 + 32))
  {
    v4 = CurrentEventWrapperOnQueue;
    v5 = (*(v3 + 56))(*(a1 + 40), *(a1 + 48));
    if (v4 && (v6 = v5) != 0)
    {
      cf = 0;
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v7)
      {
        v7(v6, 0, &cf);
        if (cf)
        {
          FigBaseObject = FigPlaybackItemGetFigBaseObject(cf);
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v9)
          {
            v9(FigBaseObject, @"Timebase", *MEMORY[0x1E695E480], &timebase);
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      if (timebase)
      {
        CMTimebaseGetTime(&v12, timebase);
        OUTLINED_FUNCTION_2_4();
        *(v10 + 32) = v12;
      }

      v11 = fpirc_UnwrapEvent();
      if (v11)
      {
        v11 = CFRetain(v11);
      }

      **(a1 + 64) = v11;
      if (timebase)
      {
        CFRelease(timebase);
      }
    }

    else
    {
      **(a1 + 64) = 0;
    }
  }
}

@end
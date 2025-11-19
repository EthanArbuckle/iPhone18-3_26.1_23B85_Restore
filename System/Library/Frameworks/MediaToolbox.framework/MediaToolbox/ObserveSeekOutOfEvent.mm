@interface ObserveSeekOutOfEvent
@end

@implementation ObserveSeekOutOfEvent

void __fpic_ObserveSeekOutOfEvent_block_invoke(uint64_t a1)
{
  CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent();
  if (CurrentlyPlayingEvent || *(CMBaseObjectGetDerivedStorage() + 1144))
  {
    fpic_clearIntentionToSeekIntoEventState();
    fpic_clearIntendedCurrentItemMoment();
    fpic_UngatePrimaryBuffering();
    *(*(a1 + 56) + 900) = *(a1 + 72);
    if (CurrentlyPlayingEvent)
    {
      v3 = fpic_UnwrapEvent();
      v4 = FigPlayerInterstitialEventCopyIdentifier(v3);
      if (dword_1EAF178D0)
      {
        v5 = OUTLINED_FUNCTION_18_43();
        v13 = OUTLINED_FUNCTION_19_4(v5, v6, v7, v8, v9, v10, v11, v12, v24, v25, v26, v27, SBYTE2(v27), BYTE3(v27), SHIDWORD(v27));
        if (OUTLINED_FUNCTION_115_1(v13))
        {
          OUTLINED_FUNCTION_217_1();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_448();
          OUTLINED_FUNCTION_612();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414();
      }

      OUTLINED_FUNCTION_196_2();
      fpic_StopInterstitialPlayerAtCurrentItem();
    }

    else
    {
      if (dword_1EAF178D0)
      {
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_105_5();
        v14 = OUTLINED_FUNCTION_126();
        v22 = OUTLINED_FUNCTION_116_0(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25, v26, v27, SBYTE2(v27), BYTE3(v27), SHIDWORD(v27));
        if (OUTLINED_FUNCTION_109_0(v22))
        {
          OUTLINED_FUNCTION_217_1();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_38();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_329_0();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524();
      }

      v4 = 0;
    }

    fpic_removeAllCurrentEventsAfterEvent(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), 0, CurrentlyPlayingEvent != 0, 1);
    OUTLINED_FUNCTION_2_4();
    *(v23 + 24) = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

@end
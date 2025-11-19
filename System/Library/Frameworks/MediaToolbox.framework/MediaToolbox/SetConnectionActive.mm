@interface SetConnectionActive
@end

@implementation SetConnectionActive

void __playerairplay_SetConnectionActive_block_invoke_2(uint64_t a1)
{
  v3 = 0;
  cf = 0;
  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(*(a1 + 32) + 40), &v3, &cf);
  playerairplay_savePlaybackInfoAndStopAPV(*(a1 + 40));
  playerairplay_updateSubPlayerPlayQueue();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

void __playerairplay_SetConnectionActive_block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if (*(*(a1 + 32) + 216) == 10)
    {
      playerairplay_checkStartAPV(*(a1 + 40));
      if (dword_1EAF172E8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7_22();
        if (v1)
        {
          if (*(a1 + 40))
          {
            CMBaseObjectGetDerivedStorage();
          }

          DerivedStorage = CMBaseObjectGetDerivedStorage();
          pap_getDescriptionForAirPlayState(*(DerivedStorage + 216));
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_4_41();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524();
      }
    }
  }

  playerairplay_copyPlayQueueAirPlayItemFromSubPlayer();
  if (*(CMBaseObjectGetDerivedStorage() + 296) && !*(a1 + 48))
  {
    v5 = *(a1 + 32);
    if (*(v5 + 1))
    {
      v7 = playerairplay_copyPredictedFormatDescriptionForBAO();
      v5 = *(a1 + 32);
      v6 = *(v5 + 1);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = *(v5 + 296);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v9)
    {
      v9(v8, v6, 1, v7);
    }

    *(*(a1 + 32) + 304) = *(*(a1 + 32) + 1);
    if (v7)
    {
      CFRelease(v7);
    }
  }
}

@end
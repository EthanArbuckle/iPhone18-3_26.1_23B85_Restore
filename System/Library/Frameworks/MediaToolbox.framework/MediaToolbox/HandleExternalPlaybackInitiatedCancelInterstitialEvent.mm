@interface HandleExternalPlaybackInitiatedCancelInterstitialEvent
@end

@implementation HandleExternalPlaybackInitiatedCancelInterstitialEvent

void __fpic_HandleExternalPlaybackInitiatedCancelInterstitialEvent_block_invoke()
{
  fpic_GetCurrentlyPlayingEvent();
  v0 = fpic_UnwrapEvent();
  v1 = FigPlayerInterstitialEventCopyIdentifier(v0);
  FigCFEqual();
  OUTLINED_FUNCTION_81_5();
  *(v3 + 24) = v2;
  if (dword_1EAF178D0)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_105_5();
    v4 = OUTLINED_FUNCTION_126();
    v12 = OUTLINED_FUNCTION_116_0(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, SBYTE2(v16), BYTE3(v16), SHIDWORD(v16));
    if (OUTLINED_FUNCTION_109_0(v12))
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_329_0();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524();
  }

  if (v1)
  {
    CFRelease(v1);
  }
}

@end
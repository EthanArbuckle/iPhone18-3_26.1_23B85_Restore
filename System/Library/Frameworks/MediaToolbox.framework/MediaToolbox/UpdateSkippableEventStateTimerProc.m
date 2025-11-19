@interface UpdateSkippableEventStateTimerProc
@end

@implementation UpdateSkippableEventStateTimerProc

void __fpic_UpdateSkippableEventStateTimerProc_block_invoke()
{
  fpic_GetCurrentlyPlayingEvent();
  v0 = fpic_UnwrapEvent();
  v1 = FigPlayerInterstitialEventCopyIdentifier(v0);
  if (dword_1EAF178D0)
  {
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_105_5();
    v2 = OUTLINED_FUNCTION_126();
    v10 = OUTLINED_FUNCTION_116_0(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13, v14, SBYTE2(v14), BYTE3(v14), SHIDWORD(v14));
    if (OUTLINED_FUNCTION_109_0(v10))
    {
      OUTLINED_FUNCTION_240_1();
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
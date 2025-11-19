@interface SetMagicCookie
@end

@implementation SetMagicCookie

uint64_t __audioHoseManagerBuffered_SetMagicCookie_block_invoke(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result + 32;
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v5 = result;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      __audioHoseManagerBuffered_SetMagicCookie_block_invoke_cold_1(v5);
    }

    v6 = *(v5 + 40);
    if (v6)
    {
      CFRetain(v6);
    }

    v7 = *a3;
    MagicCookieIDForMagicCookieData = audioHoseManagerBuffered_getMagicCookieIDForMagicCookieData(*(v5 + 48));
    v11 = v5 + 40;
    v9 = *(v5 + 40);
    v10 = *(v11 + 8);
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    result = CMBaseObjectGetProtocolVTable();
    if (result && (v13 = *(result + 16), result += 16, (v12 = v13) != 0))
    {
      v14 = *(v12 + 104);
      if (v14)
      {
        result = v14(v7, MagicCookieIDForMagicCookieData, v10, audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandler, v9);
        v15 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v15 = -12782;
        result = audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandler(v7, MagicCookieIDForMagicCookieData, -12782, v9);
      }
    }

    else
    {
      v15 = -12788;
    }

    if (gLogCategory_APAudioHoseManagerBuffered <= 90)
    {
      if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __audioHoseManagerBuffered_SetMagicCookie_block_invoke_cold_2();
      }
    }

    *(*(*v3 + 8) + 24) = v15;
  }

  return result;
}

uint64_t __audioHoseManagerBuffered_SetMagicCookie_block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 40))
  {
    CMBaseObjectGetDerivedStorage();
  }

  audioHoseManagerBuffered_getMagicCookieIDForMagicCookieData(*(a1 + 48));
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t __audioHoseManagerBuffered_SetMagicCookie_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8_12();
  if (*v0)
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_2_1();
  return LogPrintF();
}

@end
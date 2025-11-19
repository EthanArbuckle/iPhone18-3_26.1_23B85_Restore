@interface UpdateHoseReadiness
@end

@implementation UpdateHoseReadiness

void __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a1 + 32;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(v5, *MEMORY[0x277CC18F8], 0, v7 + 24);
  }

  if (*(a1 + 80))
  {
    __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke_cold_1();
    return;
  }

  *(*(*(a1 + 40) + 8) + 24) = APSGetFBOPropertyInt64() != 0;
  v9 = *(a3 + 23);
  if ((v9 - 1) <= 2 && (v10 = *(*(*(a1 + 32) + 8) + 24)) != 0 && !*(*(*(a1 + 40) + 8) + 24))
  {
    v11 = *(*(*(a1 + 48) + 8) + 24);
    if (!v11)
    {
      *(*(*(a1 + 48) + 8) + 24) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
      v11 = *(*(*(a1 + 48) + 8) + 24);
      if (!v11)
      {
        __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke_cold_6();
        return;
      }

      v10 = *(*(*v6 + 8) + 24);
    }

    v12 = CFDictionaryContainsKey(v11, v10);
    v13 = *(*(*(a1 + 48) + 8) + 24);
    v14 = *(*(*(a1 + 32) + 8) + 24);
    if (v12)
    {
      Value = CFDictionaryGetValue(v13, v14);
      if (Value[23] == 1)
      {
        Value[23] = 2;
        *(*(a1 + 56) + 372) = 1;
        if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
        {
          __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke_cold_3(a1);
        }
      }

      if (*(a3 + 23) == 1)
      {
        *(a3 + 23) = 2;
        *(*(a1 + 56) + 372) = 1;
        if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
        {
          __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke_cold_4(a1);
        }
      }
    }

    else
    {
      CFDictionaryAddValue(v13, v14, a3);
      if (*(a3 + 23) == 1)
      {
        v16 = *(a1 + 56);
        if ((*(a1 + 72) - a3[6]) >= *(v16 + 360))
        {
          *(a3 + 23) = 2;
          *(v16 + 372) = 1;
          if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
          {
            __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke_cold_5(a1);
          }
        }
      }
    }
  }

  else if (v9 == 1)
  {
    *(a3 + 23) = 2;
    *(*(a1 + 56) + 372) = 1;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke_cold_2(a1);
    }
  }

  v17 = *(*(*v6 + 8) + 24);
  if (v17)
  {
    CFRelease(v17);
    *(*(*v6 + 8) + 24) = 0;
  }

  if (*(a3 + 23) == 2 && !a3[30])
  {
    a3[30] = UpTicksToMilliseconds();
  }
}

uint64_t __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke_cold_2(uint64_t a1)
{
  if (*(a1 + 64))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke_cold_3(uint64_t a1)
{
  if (*(a1 + 64))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke_cold_4(uint64_t a1)
{
  if (*(a1 + 64))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke_cold_5(uint64_t a1)
{
  if (*(a1 + 64))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

@end
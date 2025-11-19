@interface SetRateAndAnchorTime
@end

@implementation SetRateAndAnchorTime

uint64_t __audioHoseManagerBuffered_SetRateAndAnchorTime_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v6 = (result + 64);
  v5 = *(result + 64);
  if (v5 == 1)
  {
    v7 = MEMORY[0x277CBED28];
  }

  else
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = (a3 + 44);
  if (*(a3 + 44) == v5)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 50)
    {
      if (gLogCategory_APAudioHoseManagerBuffered != -1)
      {
        return __audioHoseManagerBuffered_SetRateAndAnchorTime_block_invoke_cold_2(v4);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return __audioHoseManagerBuffered_SetRateAndAnchorTime_block_invoke_cold_2(v4);
      }
    }
  }

  else
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      __audioHoseManagerBuffered_SetRateAndAnchorTime_block_invoke_cold_1(v4);
    }

    v9 = *(v4 + 32);
    if (v9)
    {
      CFRetain(v9);
      v10 = *(v4 + 32);
    }

    else
    {
      v10 = 0;
    }

    v11 = *a3;
    v12 = *(v4 + 64);
    *v23 = *(v4 + 68);
    *&v23[12] = *(v4 + 80);
    v21 = *(v4 + 40);
    v22 = *(v4 + 56);
    *v20 = *(v4 + 96);
    *&v20[12] = *(v4 + 108);
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v14 = *(ProtocolVTable + 16);
      if (v14)
      {
        v15 = *(v14 + 48);
        if (v15)
        {
          v27[0] = *v23;
          *(v27 + 12) = *&v23[12];
          v25 = v21;
          v26 = v22;
          v24[0] = *v20;
          *(v24 + 12) = *&v20[12];
          v15(v11, v12, v27, &v25, v24, audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandler, v10);
        }

        else
        {
          audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandler(v11, 0, MEMORY[0x277CEA038], MEMORY[0x277CEA280], MEMORY[0x277CEA038], MEMORY[0x277CEA280], -12782, v10);
        }
      }
    }

    v16 = *a3;
    VTable = CMBaseObjectGetVTable();
    v18 = *(VTable + 8);
    result = VTable + 8;
    v19 = *(v18 + 56);
    if (v19)
    {
      result = v19(v16, *MEMORY[0x277CEA0C8], *v7);
    }

    *v8 = *v6;
  }

  return result;
}

uint64_t __audioHoseManagerBuffered_SetRateAndAnchorTime_block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

uint64_t __audioHoseManagerBuffered_SetRateAndAnchorTime_block_invoke_cold_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

@end
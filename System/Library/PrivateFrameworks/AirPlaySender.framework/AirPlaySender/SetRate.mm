@interface SetRate
@end

@implementation SetRate

CFTypeRef __audioHoseManagerBuffered_SetRate_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040428D2481uLL);
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *(v5 + 2) = v6;
  *v5 = *(a1 + 40);
  *(v5 + 1) = *(a1 + 48);
  *(v5 + 6) = *(a1 + 72);
  v7 = *(a1 + 76);
  *(v5 + 40) = *(a1 + 88);
  *(v5 + 28) = v7;
  *(a3 + 44) = *(a1 + 72);
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    __audioHoseManagerBuffered_SetRate_block_invoke_cold_1(a1);
  }

  v8 = *a3;
  v9 = *(a1 + 72);
  *v18 = *(a1 + 76);
  *&v18[12] = *(a1 + 88);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v12 = *(ProtocolVTable + 16);
    if (v12)
    {
      v13 = *(v12 + 80);
      if (v13)
      {
        v19[0] = *v18;
        *(v19 + 12) = *&v18[12];
        v13(v8, v9, v19, audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandler, v5);
      }

      else
      {
        audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandler(v8, v11, MEMORY[0x277CEA280], -12782, v5);
      }
    }
  }

  v14 = *a3;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v15)
  {
    v15(v14, *MEMORY[0x277CEA0C8], *MEMORY[0x277CBED28]);
  }

  v16 = *(*(a1 + 64) + 440);
  if (v16)
  {
    CFRelease(v16);
  }

  result = *a3;
  if (*a3)
  {
    result = CFRetain(result);
  }

  *(*(a1 + 64) + 440) = result;
  *(a3 + 92) = 0;
  return result;
}

uint64_t __audioHoseManagerBuffered_SetRate_block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 56))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

@end
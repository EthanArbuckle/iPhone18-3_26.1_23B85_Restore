@interface NotifyHosesDataAvailable
@end

@implementation NotifyHosesDataAvailable

uint64_t __audioHoseManagerBuffered_NotifyHosesDataAvailable_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    __audioHoseManagerBuffered_NotifyHosesDataAvailable_block_invoke_cold_1(a1);
  }

  v5 = *a3;
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v8 = *(result + 16);
    result += 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v7 + 40);
      if (v9)
      {

        return v9(v5);
      }
    }
  }

  return result;
}

uint64_t __audioHoseManagerBuffered_NotifyHosesDataAvailable_block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CMBaseObjectGetDerivedStorage();
  }

  OUTLINED_FUNCTION_2_0();
  return LogPrintF();
}

@end
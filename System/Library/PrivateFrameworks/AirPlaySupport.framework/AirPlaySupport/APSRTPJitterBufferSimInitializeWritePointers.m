@interface APSRTPJitterBufferSimInitializeWritePointers
@end

@implementation APSRTPJitterBufferSimInitializeWritePointers

uint64_t ___APSRTPJitterBufferSimInitializeWritePointers_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(*(v1 + 32) + 16);
      v3 = *(*(v1 + 40) + 4);
      return LogPrintF();
    }
  }

  return result;
}

@end
@interface APSRTPJitterBufferSimDecodeThreadEntry
@end

@implementation APSRTPJitterBufferSimDecodeThreadEntry

uint64_t ___APSRTPJitterBufferSimDecodeThreadEntry_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(*(v1 + 32) + 16);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t ___APSRTPJitterBufferSimDecodeThreadEntry_block_invoke_2(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(*(v1 + 32) + 16);
      return LogPrintF();
    }
  }

  return result;
}

@end
@interface APSRTPJitterBufferSimLegacyDiscardExcess
@end

@implementation APSRTPJitterBufferSimLegacyDiscardExcess

uint64_t ___APSRTPJitterBufferSimLegacyDiscardExcess_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(v1 + 32);
      v4 = *(v1 + 40);
      v5 = *(v2 + 184);
      v3 = *(v2 + 16);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t ___APSRTPJitterBufferSimLegacyDiscardExcess_block_invoke_2(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 50)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(*(v1 + 32) + 16);
      v3 = *(v1 + 40);
      return LogPrintF();
    }
  }

  return result;
}

@end
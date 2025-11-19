@interface APSRTPJitterBufferDecodePacketSamples
@end

@implementation APSRTPJitterBufferDecodePacketSamples

uint64_t ___APSRTPJitterBufferDecodePacketSamples_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(*(v1 + 32) + 16);
      v3 = *(v1 + 40);
      return LogPrintF();
    }
  }

  return result;
}

@end
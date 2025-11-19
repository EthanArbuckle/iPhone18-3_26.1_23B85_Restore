@interface APSRTPJitterBufferWriteZeros
@end

@implementation APSRTPJitterBufferWriteZeros

uint64_t ___APSRTPJitterBufferWriteZeros_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 20)
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
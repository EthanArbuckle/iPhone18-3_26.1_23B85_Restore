@interface APSRTPJitterBufferDecodeOneUnit
@end

@implementation APSRTPJitterBufferDecodeOneUnit

uint64_t ___APSRTPJitterBufferDecodeOneUnit_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 60)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1 || (result = _LogCategory_Initialize(), result))
    {
      v3 = *(v1 + 40);
      v4 = *(v1 + 44);
      v2 = *(*(v1 + 32) + 16);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t ___APSRTPJitterBufferDecodeOneUnit_block_invoke_2(uint64_t result)
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

uint64_t ___APSRTPJitterBufferDecodeOneUnit_block_invoke_3(uint64_t result)
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
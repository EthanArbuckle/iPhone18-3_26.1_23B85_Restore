@interface APSRTPJitterBufferSimCheckOverrun
@end

@implementation APSRTPJitterBufferSimCheckOverrun

uint64_t ___APSRTPJitterBufferSimCheckOverrun_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 50)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1 || (result = _LogCategory_Initialize(), result))
    {
      v3 = (*(v1 + 44) - *(v1 + 40));
      v4 = *(v1 + 48);
      v2 = *(*(v1 + 32) + 16);
      return LogPrintF();
    }
  }

  return result;
}

@end
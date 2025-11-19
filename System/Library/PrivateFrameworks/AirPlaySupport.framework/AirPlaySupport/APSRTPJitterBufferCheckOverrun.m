@interface APSRTPJitterBufferCheckOverrun
@end

@implementation APSRTPJitterBufferCheckOverrun

uint64_t ___APSRTPJitterBufferCheckOverrun_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1 || (result = _LogCategory_Initialize(), result))
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
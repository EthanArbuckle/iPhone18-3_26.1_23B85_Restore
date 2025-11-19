@interface APSRTPJitterBufferSimWritePacket
@end

@implementation APSRTPJitterBufferSimWritePacket

uint64_t ___APSRTPJitterBufferSimWritePacket_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(*(v1 + 32) + 240);
      v3 = *(*(v1 + 40) + 4);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t ___APSRTPJitterBufferSimWritePacket_block_invoke_2(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(v1 + 32);
      v5 = *(v1 + 44);
      v6 = *(v1 + 48);
      v3 = *(v2 + 16);
      v4 = 1000 * *(v1 + 40) / *(v2 + 112);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t ___APSRTPJitterBufferSimWritePacket_block_invoke_3(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *(v1 + 32);
      v4 = *(v1 + 40);
      v5 = *(v2 + 180);
      v3 = *(v2 + 16);
      return LogPrintF();
    }
  }

  return result;
}

@end
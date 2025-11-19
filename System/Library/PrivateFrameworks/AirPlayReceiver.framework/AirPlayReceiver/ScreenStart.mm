@interface ScreenStart
@end

@implementation ScreenStart

uint64_t ___ScreenStart_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = APSDisplayUtilsGetAggregatedDisplayProtectionBits();
  if ((*(v1 + 640) & ~result) != 0)
  {
    if (gLogCategory_AirPlayReceiverCore <= 110 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return _AirPlayReceiverSession_Terminate(v1);
  }

  return result;
}

@end
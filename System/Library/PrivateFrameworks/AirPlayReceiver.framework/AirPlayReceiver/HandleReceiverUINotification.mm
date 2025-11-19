@interface HandleReceiverUINotification
@end

@implementation HandleReceiverUINotification

void ___HandleReceiverUINotification_block_invoke(uint64_t a1, int a2)
{
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  AirPlayReceiverSessionControl(*(a1 + 32), a2, @"sessionDied");
  v3 = *(a1 + 32);

  CFRelease(v3);
}

@end
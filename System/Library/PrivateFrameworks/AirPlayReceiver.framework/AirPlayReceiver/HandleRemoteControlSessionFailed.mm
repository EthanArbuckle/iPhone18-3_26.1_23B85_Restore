@interface HandleRemoteControlSessionFailed
@end

@implementation HandleRemoteControlSessionFailed

void ___HandleRemoteControlSessionFailed_block_invoke(uint64_t a1)
{
  if (CFDictionaryContainsValue(*(*(a1 + 32) + 696), *(a1 + 40)))
  {
    if (gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    _AirPlayReceiverSession_Terminate(*(a1 + 32));
  }

  else if (gLogCategory_AirPlayReceiverCore <= 40 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

@end
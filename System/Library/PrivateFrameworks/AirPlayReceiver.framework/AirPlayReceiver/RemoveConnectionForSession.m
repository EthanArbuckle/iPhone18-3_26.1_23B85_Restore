@interface RemoveConnectionForSession
@end

@implementation RemoveConnectionForSession

uint64_t ___RemoveConnectionForSession_block_invoke(uint64_t a1)
{
  v3 = 0;
  result = _FindHTTPConnectionForSession(*(a1 + 32), *(a1 + 40), &v3);
  if (result)
  {
    v2 = result;
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return _DestroyHTTPConnection(v3, v2);
  }

  return result;
}

@end
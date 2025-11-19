@interface APAdvertiserBTLEEventHandler
@end

@implementation APAdvertiserBTLEEventHandler

void ___APAdvertiserBTLEEventHandler_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 <= 1)
  {
    if (!v1)
    {
      v2 = *(a1 + 32);
      v3 = 1;
      goto LABEL_12;
    }

    if (v1 == 1)
    {
      v2 = *(a1 + 32);
      v3 = 0;
LABEL_12:

      _APAdvertiserHandleSourceDeviceNearbyEvent(v2, v3);
      return;
    }

    goto LABEL_8;
  }

  if (v1 == 2)
  {
    v4 = *(a1 + 32);
    v5 = 1;
  }

  else
  {
    if (v1 != 3)
    {
LABEL_8:
      if (gLogCategory_APAdvertiser <= 60 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return;
    }

    v4 = *(a1 + 32);
    v5 = 0;
  }

  _APAdvertiserSetNeedsNIRangingSession(v4, v5);
}

@end
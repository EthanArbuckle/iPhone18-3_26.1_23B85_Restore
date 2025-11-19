@interface APAdvertiserHandleConnectivityHelperEvent
@end

@implementation APAdvertiserHandleConnectivityHelperEvent

void ___APAdvertiserHandleConnectivityHelperEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 7)
  {
    v4 = *(a1 + 32);
    if (!*(v4 + 49))
    {
      if (gLogCategory_APAdvertiser <= 50)
      {
        if (gLogCategory_APAdvertiser != -1 || (v6 = _LogCategory_Initialize(), v4 = *(a1 + 32), v6))
        {
          LogPrintF();
          v4 = *(a1 + 32);
        }
      }

      *(v4 + 49) = 1;
      _APAdvertiserUpdate(v4);
      if (APConnectivityHelperDeregisterForEvent())
      {
        goto LABEL_24;
      }
    }
  }

  else if (v2 == 1)
  {
    v3 = *(a1 + 32);
    if (!*(v3 + 48))
    {
      if (gLogCategory_APAdvertiser <= 50)
      {
        if (gLogCategory_APAdvertiser != -1 || (v5 = _LogCategory_Initialize(), v3 = *(a1 + 32), v5))
        {
          LogPrintF();
          v3 = *(a1 + 32);
        }
      }

      *(v3 + 48) = 1;
      _APAdvertiserUpdate(v3);
      if (APConnectivityHelperDeregisterForEvent())
      {
LABEL_24:
        APSLogErrorAt();
      }
    }
  }

  else if (gLogCategory_APAdvertiser <= 40 && (gLogCategory_APAdvertiser != -1 || _LogCategory_Initialize()))
  {
    APConnectivityHelperGetEventString();
    LogPrintF();
  }

  CFRelease(*(a1 + 32));
  v7 = *(a1 + 40);

  CFRelease(v7);
}

@end
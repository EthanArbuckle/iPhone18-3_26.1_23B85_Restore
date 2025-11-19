@interface StopAudioIO
@end

@implementation StopAudioIO

void ___StopAudioIO_block_invoke(uint64_t a1)
{
  outIsRunning = 0;
  if (gLogCategory_APReceiverAudioSessionPlatform <= 30 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  if (!v3)
  {
    goto LABEL_23;
  }

  if (*(a1 + 40))
  {
    *(v2 + 256) = 1;
    *(v2 + 257) = *(v2 + 232);
  }

  else if (*(v2 + 256))
  {
    *(v2 + 257) = 0;
    goto LABEL_24;
  }

  AUGraphIsRunning(v3, &outIsRunning);
  v4 = *(a1 + 32);
  if (*(v4 + 232))
  {
    v5 = outIsRunning == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (AUGraphStop(*(v4 + 192)))
    {
      if (gLogCategory_APReceiverAudioSessionPlatform <= 60 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

LABEL_23:
      APSLogErrorAt();
      goto LABEL_24;
    }

    AUGraphUninitialize(*(*(a1 + 32) + 192));
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  *(*(a1 + 32) + 232) = 0;
LABEL_24:
  CFRelease(*(*(a1 + 32) + 16));
  CFRelease(*(*(a1 + 32) + 24));
  CFRelease(*(a1 + 32));
}

@end
@interface StartAudioIO
@end

@implementation StartAudioIO

void ___StartAudioIO_block_invoke(uint64_t a1)
{
  outIsRunning = 0;
  if (gLogCategory_APReceiverAudioSessionPlatform <= 30 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    _MainAudioEnsureSetup(v2, 0);
    _EnsureAudioOutputStarted(*(a1 + 32));
    v2 = *(a1 + 32);
    *(v2 + 256) = 0;
    if (!*(v2 + 257))
    {
      goto LABEL_21;
    }
  }

  else if (*(v2 + 256))
  {
    *(v2 + 257) = 1;
    goto LABEL_21;
  }

  v3 = *(v2 + 192);
  if (!v3)
  {
    goto LABEL_20;
  }

  AUGraphIsRunning(v3, &outIsRunning);
  v4 = *(a1 + 32);
  if (!(*(v4 + 232) | outIsRunning))
  {
    AUGraphInitialize(*(v4 + 192));
    if (!AUGraphStart(*(*(a1 + 32) + 192)))
    {
      if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_11;
    }

    if (gLogCategory_APReceiverAudioSessionPlatform <= 60 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_20:
    APSLogErrorAt();
    goto LABEL_21;
  }

LABEL_11:
  *(*(a1 + 32) + 232) = 1;
LABEL_21:
  CFRelease(*(*(a1 + 32) + 24));
  CFRelease(*(*(a1 + 32) + 16));
  CFRelease(*(a1 + 32));
}

@end
@interface AirPlayReceiverServerPostMediaControlEvent
@end

@implementation AirPlayReceiverServerPostMediaControlEvent

void ___AirPlayReceiverServerPostMediaControlEvent_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 64))
  {
    v4 = HTTPMessageCreate();
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      MEMORY[0x25F0] = _DoEventTransactionCompletion;
      HTTPHeader_InitRequest();
      HTTPHeader_SetField();
      CFDataGetLength(v2);
      CFDataGetBytePtr(v2);
      HTTPMessageSetBody();
      v5 = HTTPClientSendMessage();
      if (!v5)
      {
        goto LABEL_4;
      }
    }

    APSLogErrorAt();
LABEL_4:
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  APSLogErrorAt();
LABEL_5:
  if (gLogCategory_AirPlayReceiverServer <= 60 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_9:
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

@end
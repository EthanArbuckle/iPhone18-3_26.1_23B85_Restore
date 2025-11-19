@interface AirPlayReceiverSession
@end

@implementation AirPlayReceiverSession

void ___AirPlayReceiverSession_HandleUINotifications_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    CFDictionarySetValue(Mutable, @"type", @"FPSSecureStop");
    CFDictionarySetValue(v5, @"FPSSecureStopPayload", v3);
    if (AirPlayReceiverSessionSendCommandForObject(v2, 0, v5, 0, 0))
    {
      APSLogErrorAt();
    }

    CFRelease(v5);
  }

  else
  {
    APSLogErrorAt();
  }

  CFRelease(*(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

void ___AirPlayReceiverSession_HandleUINotifications_block_invoke_2(uint64_t a1)
{
  _ScreenTearDown(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void ___AirPlayReceiverSession_HandleUINotifications_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == v3[159])
  {
    _ScreenTearDown(v3);
    v3 = *(a1 + 32);
  }

  CFRelease(v3);
}

void ___AirPlayReceiverSession_HandleUINotifications_block_invoke_4(uint64_t a1)
{
  AirPlayReceiverSessionForceKeyFrame(*(a1 + 32), 0, 0);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void ___AirPlayReceiverSession_HandleUINotifications_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  value = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionarySetValue(Mutable, @"type", @"updateDisplayInfo");
    if (APReceiverSystemInfoCopyDisplaysInfoForUserVersion(*(*(v2 + 24) + 160), *MEMORY[0x277CBECE8], *(v2 + 608), &value) || (CFDictionarySetValue(v4, @"displays", value), AirPlayReceiverSessionSendCommandForObject(v2, 0, v4, 0, 0)))
    {
      APSLogErrorAt();
    }

    if (value)
    {
      CFRelease(value);
    }

    CFRelease(v4);
  }

  else
  {
    APSLogErrorAt();
  }

  CFRelease(*(a1 + 32));
}

@end
@interface ScreenPostRecordingState
@end

@implementation ScreenPostRecordingState

void ___ScreenPostRecordingState_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"setScreenRecordingState");
  v3 = MEMORY[0x277CBED28];
  if (!*(a1 + 40))
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"state", *v3);
  if (!AirPlayReceiverSessionSendCommandForObject(*(a1 + 32), 0, Mutable, 0, 0))
  {
    if (!Mutable)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  APSLogErrorAt();
  if (Mutable)
  {
LABEL_5:
    CFRelease(Mutable);
  }

LABEL_6:
  v4 = *(a1 + 32);

  CFRelease(v4);
}

@end
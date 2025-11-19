@interface AirPlayReceiverSessionUpdateMC2UCStatus
@end

@implementation AirPlayReceiverSessionUpdateMC2UCStatus

void ___AirPlayReceiverSessionUpdateMC2UCStatus_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"type", @"updateMC2UCStatus");
  FigCFDictionarySetUInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetUInt32();
  *(*(*(a1 + 32) + 8) + 24) = AirPlayReceiverSessionSendCommandForObject(*(a1 + 40), 0, Mutable, 0, 0);
  if (*(*(*(a1 + 32) + 8) + 24) && gLogCategory_AirPlayReceiverCore <= 50 && (gLogCategory_AirPlayReceiverCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    if (!Mutable)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  APSLogErrorAt();
  if (Mutable)
  {
LABEL_8:
    CFRelease(Mutable);
  }

LABEL_9:
  v3 = *(a1 + 40);

  CFRelease(v3);
}

@end
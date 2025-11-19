@interface FigPWDKeyExchangeSenderAOCP
@end

@implementation FigPWDKeyExchangeSenderAOCP

intptr_t __FigPWDKeyExchangeSenderAOCP_getCertificate_block_invoke(void *a1, CFTypeRef cf, void *a3)
{
  if (a3)
  {
    *(*(a1[5] + 8) + 24) = [a3 code];
  }

  else
  {
    v4 = a1[6];
    v5 = *(v4 + 88);
    *(v4 + 88) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = a1[4];

  return dispatch_semaphore_signal(v6);
}

void __FigPWDKeyExchangeSenderAOCP_createSenderSPCAndProcessCKC_block_invoke(uint64_t a1)
{
  FigPWDKeyExchangeSenderAOCP_callCallback(*(a1 + 32), 0, *(a1 + 40), 1);
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __FigPWDKeyExchangeSenderAOCP_requestCKCFromServerAfterSendingSPC_block_invoke(uint64_t a1, __CFDictionary *FirstValue, void *a3)
{
  if (a3)
  {
    v5 = [a3 code] == 0;
  }

  else
  {
    [sPWDKeyExchangeTelemetryHelper setTimeRange:*(a1 + 32) end:FigGetUpTimeNanoseconds() forKey:*MEMORY[0x1E6960EA8]];
    v5 = 1;
  }

  v6 = *(a1 + 40);
  FigPWDKeyExchangeSenderGetCMBaseObject(v6);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v5)
  {
    v10 = 0;
    FirstValue = 0;
    v13 = 4294947751;
    goto LABEL_15;
  }

  v8 = DerivedStorage;
  if (!FirstValue)
  {
    goto LABEL_25;
  }

  CFDataFromBase64EncodedString = FigJSONObjectCreateWithData();
  if (CFDataFromBase64EncodedString)
  {
LABEL_22:
    v13 = CFDataFromBase64EncodedString;
    v10 = 0;
    FirstValue = 0;
    goto LABEL_15;
  }

  if (!FigCFDictionaryGetValue())
  {
    goto LABEL_26;
  }

  FigCFDictionaryGetValue();
  FirstValue = FigCFArrayGetFirstValue();
  if (!FirstValue)
  {
LABEL_25:
    OUTLINED_FUNCTION_429();
    v13 = FigSignalErrorAtGM();
LABEL_27:
    v10 = 0;
    goto LABEL_29;
  }

  FigCFDictionaryGetIntIfPresent();
  if (!FigCFDictionaryGetValue())
  {
LABEL_26:
    OUTLINED_FUNCTION_429();
    v13 = FigSignalErrorAtGM();
    FirstValue = 0;
    goto LABEL_27;
  }

  CFDataFromBase64EncodedString = FigCreateCFDataFromBase64EncodedString();
  if (CFDataFromBase64EncodedString)
  {
    goto LABEL_22;
  }

  FirstValue = OUTLINED_FUNCTION_1_155();
  v10 = OUTLINED_FUNCTION_1_155();
  ZZUDP2EEn9tLDQ();
  if (v11 || (FigCFDictionarySetInt64(), FigCFDictionarySetInt64(), CFDictionarySetValue(FirstValue, @"RulIk", 0), v11 = gojqbvrX305gQO(FirstValue, v10), v11))
  {
    v13 = v11;
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM();
    goto LABEL_15;
  }

  FigCFDictionaryGetInt64IfPresent();
  OUTLINED_FUNCTION_429();
  v13 = FigSignalErrorAtGM();
LABEL_29:
  if (!v13)
  {
    [sPWDKeyExchangeTelemetryHelper setTimeRange:*(v8 + 152) end:FigGetUpTimeNanoseconds() forKey:*MEMORY[0x1E6960EF8]];
    v13 = 0;
  }

LABEL_15:
  FigPWDKeyExchangeSenderAOCP_callCallback(v6, 0, v13, 1);
  if (FirstValue)
  {
    CFRelease(FirstValue);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }
}

@end
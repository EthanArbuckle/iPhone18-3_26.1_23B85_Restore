@interface APBrokerManagerGetInfoFromBrokerGroup
@end

@implementation APBrokerManagerGetInfoFromBrokerGroup

void ___APBrokerManagerGetInfoFromBrokerGroup_block_invoke(uint64_t a1, int a2, const void *a3, const void *a4)
{
  v8 = *(a1 + 32);
  v9 = v8[12];
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v10 = v8[12];
  FigSimpleMutexLock();
  if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
  {
    ___APBrokerManagerGetInfoFromBrokerGroup_block_invoke_cold_1();
    if (a2)
    {
      goto LABEL_8;
    }
  }

  else if (a2)
  {
    goto LABEL_8;
  }

  Mutable = v8[33];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8[33] = Mutable;
  }

  CFDictionarySetValue(Mutable, a3, a4);
LABEL_8:
  v12 = v8[32];
  if (FigCFEqual())
  {
    ___APBrokerManagerGetInfoFromBrokerGroup_block_invoke_cold_2(v8, a2);
  }

  v13 = v8[12];
  FigSimpleMutexUnlock();
  v14 = *(a1 + 32);

  CFRelease(v14);
}

uint64_t ___APBrokerManagerGetInfoFromBrokerGroup_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10_1();
  if (v0)
  {
    IsAppleInternalBuild();
  }

  if (gLogCategory_APBrokerManager == -1)
  {
    _LogCategory_Initialize();
  }

  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

void ___APBrokerManagerGetInfoFromBrokerGroup_block_invoke_cold_2(uint64_t a1, int a2)
{
  _APBrokerManagerCallGetInfoCallback(a1, a2, *(a1 + 264), *(a1 + 248));

  _APBrokerManagerClearGetInfoCallbackState(a1);
}

@end
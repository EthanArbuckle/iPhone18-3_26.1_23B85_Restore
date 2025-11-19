@interface APBrokerManagerAuthenticateBrokerGroup
@end

@implementation APBrokerManagerAuthenticateBrokerGroup

void ___APBrokerManagerAuthenticateBrokerGroup_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9 = *(v7 + 96);
  v8 = (v7 + 96);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v10 = *(v7 + 96);
  FigSimpleMutexLock();
  if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
  {
    ___APBrokerManagerAuthenticateBrokerGroup_block_invoke_cold_1();
  }

  *(v7 + 216) = a2;
  if (!a2 || (v11 = *(v7 + 232), FigCFEqual()))
  {
    ___APBrokerManagerAuthenticateBrokerGroup_block_invoke_cold_2(a4, (v7 + 216), v7, v8);
  }

  else
  {
    v12 = *v8;
    FigSimpleMutexUnlock();
  }

  v13 = *(a1 + 32);

  CFRelease(v13);
}

uint64_t ___APBrokerManagerAuthenticateBrokerGroup_block_invoke_cold_1()
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

void ___APBrokerManagerAuthenticateBrokerGroup_block_invoke_cold_2(uint64_t a1, int *a2, uint64_t a3, uint64_t *a4)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetValueFromKeyInDict();
  _APBrokerManagerCallAuthenticationCallback(a3, *a2, Mutable, *(a3 + 208));
  _APBrokerManagerClearAuthCallbackState(a3);
  v8 = *a4;
  FigSimpleMutexUnlock();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

@end
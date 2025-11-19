@interface APConnectivityHelper
@end

@implementation APConnectivityHelper

uint64_t ___APConnectivityHelper_getActiveHelpers_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  result = FigCFWeakReferenceTableCreate();
  if (result)
  {
    if (gLogCategory_APConnectivityHelper <= 100)
    {
      if (gLogCategory_APConnectivityHelper != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = ___APConnectivityHelper_getActiveHelpers_block_invoke_cold_1();
      }
    }

    __break(1u);
  }

  return result;
}

@end
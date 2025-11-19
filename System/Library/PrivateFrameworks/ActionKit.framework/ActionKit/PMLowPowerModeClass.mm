@interface PMLowPowerModeClass
@end

@implementation PMLowPowerModeClass

void __get_PMLowPowerModeClass_block_invoke(uint64_t a1)
{
  LowPowerModeLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_PMLowPowerMode");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_PMLowPowerModeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_PMLowPowerModeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFLowPowerModeSettingsClient.m" lineNumber:25 description:{@"Unable to find class %s", "_PMLowPowerMode"}];

    __break(1u);
  }
}

@end
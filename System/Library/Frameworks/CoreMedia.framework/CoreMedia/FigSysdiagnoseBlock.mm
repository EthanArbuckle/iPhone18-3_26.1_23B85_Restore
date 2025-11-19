@interface FigSysdiagnoseBlock
@end

@implementation FigSysdiagnoseBlock

uint64_t __FigSysdiagnoseBlock_OneTimeInitializationForMediaserverd_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    CFDictionaryApplyFunction(gFigSysdiagnoseBlockRegistry_1, SysdiagnoseBlockDictionaryApplierFunction, 0);
  }

  return 0;
}

@end
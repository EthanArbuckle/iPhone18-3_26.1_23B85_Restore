@interface DKQueryClass
@end

@implementation DKQueryClass

Class __get_DKQueryClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_DKQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKQueryClass_block_invoke_cold_1();
  }

  get_DKQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_DKQueryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_DKQueryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BCSUtilities.m" lineNumber:28 description:{@"Unable to find class %s", "_DKQuery"}];

  __break(1u);
}

@end
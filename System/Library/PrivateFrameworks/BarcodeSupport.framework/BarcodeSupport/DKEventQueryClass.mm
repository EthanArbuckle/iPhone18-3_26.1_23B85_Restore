@interface DKEventQueryClass
@end

@implementation DKEventQueryClass

Class __get_DKEventQueryClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_DKEventQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventQueryClass_block_invoke_cold_1();
  }

  get_DKEventQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_DKEventQueryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_DKEventQueryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BCSUtilities.m" lineNumber:26 description:{@"Unable to find class %s", "_DKEventQuery"}];

  __break(1u);
}

@end
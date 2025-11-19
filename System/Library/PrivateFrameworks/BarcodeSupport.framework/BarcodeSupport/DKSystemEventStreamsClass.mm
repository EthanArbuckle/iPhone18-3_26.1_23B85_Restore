@interface DKSystemEventStreamsClass
@end

@implementation DKSystemEventStreamsClass

Class __get_DKSystemEventStreamsClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_DKSystemEventStreams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKSystemEventStreamsClass_block_invoke_cold_1();
  }

  get_DKSystemEventStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_DKSystemEventStreamsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_DKSystemEventStreamsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BCSUtilities.m" lineNumber:27 description:{@"Unable to find class %s", "_DKSystemEventStreams"}];

  __break(1u);
}

@end
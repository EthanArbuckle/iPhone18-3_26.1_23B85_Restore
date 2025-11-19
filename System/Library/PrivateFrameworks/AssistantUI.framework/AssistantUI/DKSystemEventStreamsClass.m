@interface DKSystemEventStreamsClass
@end

@implementation DKSystemEventStreamsClass

Class __get_DKSystemEventStreamsClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!CoreDuetLibraryCore())
  {
    __get_DKSystemEventStreamsClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("_DKSystemEventStreams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKSystemEventStreamsClass_block_invoke_cold_1();
  }

  get_DKSystemEventStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end
@interface ICProactiveTriggerClass
@end

@implementation ICProactiveTriggerClass

Class __get_ICProactiveTriggerClass_block_invoke(uint64_t a1)
{
  InputContextLibrary();
  result = objc_getClass("_ICProactiveTrigger");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_ICProactiveTriggerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_ICProactiveTriggerClass_block_invoke_cold_1();
    return __getMCProfileConnectionClass_block_invoke(v3);
  }

  return result;
}

@end
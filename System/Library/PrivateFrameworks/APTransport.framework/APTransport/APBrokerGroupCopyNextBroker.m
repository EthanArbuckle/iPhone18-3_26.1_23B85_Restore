@interface APBrokerGroupCopyNextBroker
@end

@implementation APBrokerGroupCopyNextBroker

uint64_t ___APBrokerGroupCopyNextBroker_block_invoke(uint64_t result)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    OUTLINED_FUNCTION_2_5();
    result = CFSetContainsValue(*(v3 + 40), v4);
    if (!result)
    {
      *(*(*(v2 + 32) + 8) + 24) = v1;
    }
  }

  return result;
}

@end
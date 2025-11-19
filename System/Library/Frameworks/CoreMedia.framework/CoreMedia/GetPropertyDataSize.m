@interface GetPropertyDataSize
@end

@implementation GetPropertyDataSize

CFIndex __brokeredPlugin_GetPropertyDataSize_block_invoke(uint64_t a1)
{
  result = CFArrayGetCount(*(*(a1 + 40) + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFIndex __plugin_GetPropertyDataSize_block_invoke(uint64_t a1)
{
  result = CFArrayGetCount(*(*(a1 + 40) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFIndex __endpointCentricPlugin_GetPropertyDataSize_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetCount(*(*(a1 + 40) + 72));
  *(*(*(a1 + 32) + 8) + 24) = 4 * result;
  return result;
}

@end
@interface CopyDebugDescription
@end

@implementation CopyDebugDescription

CFIndex __brokeredPlugin_CopyDebugDescription_block_invoke(uint64_t a1)
{
  result = CFArrayGetCount(*(*(a1 + 40) + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFIndex __plugin_CopyDebugDescription_block_invoke(uint64_t a1)
{
  result = CFArrayGetCount(*(*(a1 + 40) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFIndex __plugin_CopyDebugDescription_block_invoke_2(void *a1)
{
  *(*(a1[4] + 8) + 24) = CFArrayGetCount(*(a1[6] + 72));
  result = CFArrayGetCount(*(a1[6] + 80));
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

CFDictionaryRef __endpointCentricPlugin_CopyDebugDescription_block_invoke(uint64_t a1)
{
  v2 = CFGetAllocator(*(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreateCopy(v2, *(*(a1 + 56) + 80));
  v3 = CFGetAllocator(*(a1 + 48));
  result = CFDictionaryCreateCopy(v3, *(*(a1 + 56) + 72));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end
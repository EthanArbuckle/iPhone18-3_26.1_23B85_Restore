@interface CopyCGImageAtTime
@end

@implementation CopyCGImageAtTime

CFTypeRef __surrogateAIG_CopyCGImageAtTime_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = surrogateAIG_EnsureSubGeneratorCreated(*(a1 + 48));
  result = *(*(a1 + 56) + 24);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end
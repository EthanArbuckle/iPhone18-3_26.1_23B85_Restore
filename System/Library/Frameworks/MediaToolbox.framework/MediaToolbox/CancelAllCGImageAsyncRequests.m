@interface CancelAllCGImageAsyncRequests
@end

@implementation CancelAllCGImageAsyncRequests

CFTypeRef __surrogateAIG_CancelAllCGImageAsyncRequests_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 24);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end
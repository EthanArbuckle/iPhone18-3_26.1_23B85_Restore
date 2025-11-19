@interface CopyProperty
@end

@implementation CopyProperty

CFArrayRef __screenstream_CopyProperty_block_invoke(uint64_t a1)
{
  result = CFArrayCreateCopy(*(a1 + 40), *(*(a1 + 48) + 1168));
  **(a1 + 32) = result;
  return result;
}

@end
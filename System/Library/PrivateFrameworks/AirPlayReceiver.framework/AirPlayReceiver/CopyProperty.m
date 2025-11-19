@interface CopyProperty
@end

@implementation CopyProperty

NSObject **__sharedUI_CopyProperty_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_CopyProperty(**(a1 + 48), *(a1 + 56), 0, (*(*(a1 + 32) + 8) + 24));
  **(a1 + 40) = result;
  return result;
}

@end
@interface CopyPropertyForQualifier
@end

@implementation CopyPropertyForQualifier

NSObject **__sharedUI_CopyPropertyForQualifier_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_CopyProperty(**(a1 + 48), *(a1 + 56), *(a1 + 64), (*(*(a1 + 32) + 8) + 24));
  **(a1 + 40) = result;
  return result;
}

@end
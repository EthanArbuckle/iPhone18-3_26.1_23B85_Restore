@interface SetPropertyWithQualifier
@end

@implementation SetPropertyWithQualifier

uint64_t __sharedUI_SetPropertyWithQualifier_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_SetProperty(**(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end
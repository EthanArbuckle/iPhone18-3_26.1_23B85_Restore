@interface ARLinkedOnOrAfterVisionOS
@end

@implementation ARLinkedOnOrAfterVisionOS

uint64_t __ARLinkedOnOrAfterVisionOS_3_0_block_invoke()
{
  result = dyld_program_sdk_at_least();
  ARLinkedOnOrAfterVisionOS_3_0_cachedReturn = result;
  return result;
}

@end
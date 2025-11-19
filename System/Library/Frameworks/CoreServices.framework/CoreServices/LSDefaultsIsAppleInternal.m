@interface LSDefaultsIsAppleInternal
@end

@implementation LSDefaultsIsAppleInternal

uint64_t ___LSDefaultsIsAppleInternal_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  _LSDefaultsIsAppleInternal_appleInternal = result;
  return result;
}

@end
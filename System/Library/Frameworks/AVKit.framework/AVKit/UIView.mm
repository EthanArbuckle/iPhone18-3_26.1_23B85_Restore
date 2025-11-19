@interface UIView
- (uint64_t)_getExtendedDynamicRangeGainFilterIndex;
@end

@implementation UIView

- (uint64_t)_getExtendedDynamicRangeGainFilterIndex
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 layer];
  v2 = [v1 filters];

  if (v2)
  {
    v3 = [v1 filters];
    v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_10115];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

uint64_t __62__UIView_AVAdditions___getExtendedDynamicRangeGainFilterIndex__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"AVExtendedDynamicRangeGain.filter"];

  return v3;
}

@end
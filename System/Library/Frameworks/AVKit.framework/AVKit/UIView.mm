@interface UIView
- (uint64_t)_getExtendedDynamicRangeGainFilterIndex;
@end

@implementation UIView

- (uint64_t)_getExtendedDynamicRangeGainFilterIndex
{
  if (!self)
  {
    return 0;
  }

  layer = [self layer];
  filters = [layer filters];

  if (filters)
  {
    filters2 = [layer filters];
    v4 = [filters2 indexOfObjectPassingTest:&__block_literal_global_10115];
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
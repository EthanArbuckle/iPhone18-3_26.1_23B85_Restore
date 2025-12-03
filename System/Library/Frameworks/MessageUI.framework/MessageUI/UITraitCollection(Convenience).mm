@interface UITraitCollection(Convenience)
- (uint64_t)mf_hasCompactDimension;
- (uint64_t)mf_supportsPopoverPresentation;
@end

@implementation UITraitCollection(Convenience)

- (uint64_t)mf_supportsPopoverPresentation
{
  result = [self userInterfaceIdiom];
  if (result)
  {
    return [self horizontalSizeClass] == 2;
  }

  return result;
}

- (uint64_t)mf_hasCompactDimension
{
  result = [self horizontalSizeClass];
  if (result != 1)
  {
    return [self verticalSizeClass] == 1;
  }

  return result;
}

@end
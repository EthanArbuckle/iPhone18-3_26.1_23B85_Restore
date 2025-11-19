@interface UITraitCollection(Convenience)
- (uint64_t)mf_hasCompactDimension;
- (uint64_t)mf_supportsPopoverPresentation;
@end

@implementation UITraitCollection(Convenience)

- (uint64_t)mf_supportsPopoverPresentation
{
  result = [a1 userInterfaceIdiom];
  if (result)
  {
    return [a1 horizontalSizeClass] == 2;
  }

  return result;
}

- (uint64_t)mf_hasCompactDimension
{
  result = [a1 horizontalSizeClass];
  if (result != 1)
  {
    return [a1 verticalSizeClass] == 1;
  }

  return result;
}

@end
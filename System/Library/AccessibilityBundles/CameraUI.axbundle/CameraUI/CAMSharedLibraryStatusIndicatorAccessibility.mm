@interface CAMSharedLibraryStatusIndicatorAccessibility
- (id)_axLabelForSharedLibraryMode:(int64_t)mode;
- (id)accessibilityLabel;
@end

@implementation CAMSharedLibraryStatusIndicatorAccessibility

- (id)accessibilityLabel
{
  v3 = [(CAMSharedLibraryStatusIndicatorAccessibility *)self safeIntegerForKey:@"sharedLibraryMode"];

  return [(CAMSharedLibraryStatusIndicatorAccessibility *)self _axLabelForSharedLibraryMode:v3];
}

- (id)_axLabelForSharedLibraryMode:(int64_t)mode
{
  if (mode > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityCameraUILocalizedString(off_29F2ACE18[mode]);
  }

  return v4;
}

@end
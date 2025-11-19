@interface CAMSharedLibraryStatusIndicatorAccessibility
- (id)_axLabelForSharedLibraryMode:(int64_t)a3;
- (id)accessibilityLabel;
@end

@implementation CAMSharedLibraryStatusIndicatorAccessibility

- (id)accessibilityLabel
{
  v3 = [(CAMSharedLibraryStatusIndicatorAccessibility *)self safeIntegerForKey:@"sharedLibraryMode"];

  return [(CAMSharedLibraryStatusIndicatorAccessibility *)self _axLabelForSharedLibraryMode:v3];
}

- (id)_axLabelForSharedLibraryMode:(int64_t)a3
{
  if (a3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityCameraUILocalizedString(off_29F2ACE18[a3]);
  }

  return v4;
}

@end
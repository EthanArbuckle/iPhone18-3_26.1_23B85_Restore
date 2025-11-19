@interface CAMSharedLibraryButtonAccessibility
- (id)_axLabelForSharedLibraryMode:(int64_t)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMSharedLibraryButtonAccessibility

- (id)_axLabelForSharedLibraryMode:(int64_t)a3
{
  if (a3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityCameraUILocalizedString(off_29F2ACD20[a3]);
  }

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(CAMSharedLibraryButtonAccessibility *)self safeIntegerForKey:@"sharedLibraryMode"];

  return [(CAMSharedLibraryButtonAccessibility *)self _axLabelForSharedLibraryMode:v3];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMSharedLibraryButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMSharedLibraryButtonAccessibility *)&v3 accessibilityTraits];
}

@end
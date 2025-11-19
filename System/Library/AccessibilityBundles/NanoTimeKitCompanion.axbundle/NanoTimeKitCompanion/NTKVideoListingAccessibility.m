@interface NTKVideoListingAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKVideoListingAccessibility

- (id)accessibilityLabel
{
  v2 = [(NTKVideoListingAccessibility *)self safeIntegerForKey:@"variant"];
  v4 = accessibilityLocalizedString(*(&AccessibilityClockFaceVideoDescription + v2), v3);
  v5 = v4;
  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

@end
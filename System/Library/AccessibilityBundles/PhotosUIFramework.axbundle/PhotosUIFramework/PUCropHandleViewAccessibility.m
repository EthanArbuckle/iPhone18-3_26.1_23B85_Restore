@interface PUCropHandleViewAccessibility
- (id)accessibilityLabel;
@end

@implementation PUCropHandleViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(PUCropHandleViewAccessibility *)self safeIntegerForKey:@"handle"];
  if (v2 > 7)
  {
    v3 = &stru_2A228A390;
  }

  else
  {
    v3 = accessibilityPULocalizedString(off_29F2E8350[v2]);
  }

  return v3;
}

@end
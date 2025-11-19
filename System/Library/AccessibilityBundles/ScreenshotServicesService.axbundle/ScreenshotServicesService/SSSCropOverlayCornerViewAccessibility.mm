@interface SSSCropOverlayCornerViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SSSCropOverlayCornerViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SSSCropOverlayCornerViewAccessibility *)self safeIntegerForKey:@"_corner"]- 1;
  if (v2 <= 7 && ((0x8Bu >> v2) & 1) != 0)
  {
    v3 = accessibilityLocalizedString(off_29F2F4678[v2]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
@interface SSSCropOverlayGrabberViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SSSCropOverlayGrabberViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SSSCropOverlayLineView" hasInstanceVariable:@"_edge" withType:"Q"];
  [v3 validateClass:@"SSSCropOverlayGrabberView" isKindOfClass:@"SSSCropOverlayLineView"];
}

- (id)accessibilityLabel
{
  v2 = [(SSSCropOverlayGrabberViewAccessibility *)self safeIntegerForKey:@"_edge"]- 1;
  if (v2 <= 7 && ((0x8Bu >> v2) & 1) != 0)
  {
    v3 = accessibilityLocalizedString(off_29F2F4730[v2]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
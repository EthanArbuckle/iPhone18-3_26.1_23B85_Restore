@interface SSSCropOverlayGrabberViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SSSCropOverlayGrabberViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SSSCropOverlayLineView" hasInstanceVariable:@"_edge" withType:"Q"];
  [validationsCopy validateClass:@"SSSCropOverlayGrabberView" isKindOfClass:@"SSSCropOverlayLineView"];
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
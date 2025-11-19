@interface MeasureUIApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformMagicTap;
- (int64_t)_accessibilityOrientationForCompareGeometry;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MeasureUIApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Measure.ViewController" hasInstanceMethod:@"accessibilityEditView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Measure.EditView" hasInstanceMethod:@"didTapEditButton" withFullSignature:{"v", 0}];
}

- (int64_t)_accessibilityOrientationForCompareGeometry
{
  v2 = [MEMORY[0x29EDC7938] sharedApplication];
  v3 = [v2 activeInterfaceOrientation];

  return v3;
}

- (BOOL)accessibilityPerformMagicTap
{
  IsMeasuring = AXMeasureIsMeasuring();
  if (IsMeasuring)
  {
    AXPerformSafeBlock();
  }

  return IsMeasuring;
}

void __65__MeasureUIApplicationAccessibility_accessibilityPerformMagicTap__block_invoke()
{
  v1 = AXMeasureViewController();
  v0 = [v1 safeValueForKey:@"accessibilityEditView"];
  [v0 didTapEditButton];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MeasureUIApplicationAccessibility;
  [(MeasureUIApplicationAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  v2 = AXMeasureAccessibilityStateObserver();
}

@end
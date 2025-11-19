@interface NTKDigitalFaceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NTKDigitalFaceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKDigitalFaceView" isKindOfClass:@"NTKFaceView"];
  [v3 validateClass:@"NTKFaceView" hasInstanceVariable:@"_timeView" withType:"UIView<NTKTimeView>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = NTKDigitalFaceViewAccessibility;
  [(NTKDigitalFaceViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(NTKDigitalFaceViewAccessibility *)self safeValueForKey:@"_timeView"];
  [v3 _setAccessibilityServesAsFirstElement:1];
  [v3 _setAccessibilityLabelBlock:&__block_literal_global];
}

@end
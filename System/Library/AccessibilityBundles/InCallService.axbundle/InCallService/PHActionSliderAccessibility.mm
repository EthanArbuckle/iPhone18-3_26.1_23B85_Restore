@interface PHActionSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityPath;
@end

@implementation PHActionSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHActionSlider" hasInstanceVariable:@"_trackBackgroundView" withType:"UIView"];
  [v3 validateClass:@"PHActionSlider" hasInstanceMethod:@"trackText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHActionSlider" hasInstanceMethod:@"trackMaskPath" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHActionSlider" hasInstanceMethod:@"_slideCompleted:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PHActionSlider" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHSlidingButton" hasInstanceMethod:@"type" withFullSignature:{"i", 0}];
}

- (id)accessibilityPath
{
  v3 = [(PHActionSliderAccessibility *)self safeValueForKey:@"trackMaskPath"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [(PHActionSliderAccessibility *)self safeUIViewForKey:@"_trackBackgroundView"];
  v6 = UIAccessibilityConvertPathToScreenCoordinates(v4, v5);

  return v6;
}

- (id)accessibilityLabel
{
  v3 = [(PHActionSliderAccessibility *)self safeValueForKey:@"trackText"];
  v4 = [(PHActionSliderAccessibility *)self safeValueForKey:@"delegate"];
  if ([v4 safeIntForKey:@"type"] == 8)
  {
    v5 = accessibilityLocalizedString(@"slide.to.power.off");

    v3 = v5;
  }

  return v3;
}

@end
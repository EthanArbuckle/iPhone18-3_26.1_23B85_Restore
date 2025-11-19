@interface HeadphoneAccessoryLabeledSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation HeadphoneAccessoryLabeledSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TtGC16HeadphoneConfigs31HeadphoneAccessoryLabeledSliderVSo17AAAutoANCStrength_" hasInstanceMethod:@"selectedIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"_TtGC16HeadphoneConfigs31HeadphoneAccessoryLabeledSliderVSo17AAAutoANCStrength_" hasInstanceMethod:@"setValue:animated:objectChange:" withFullSignature:{"v", "f", "B", "B", 0}];
  [v3 validateClass:@"_TtGC16HeadphoneConfigs31HeadphoneAccessoryLabeledSliderVSo17AAAutoANCStrength_" hasSwiftField:@"ticks" withSwiftType:"Array<String>"];
}

- (void)accessibilityIncrement
{
  objc_opt_class();
  v3 = [(HeadphoneAccessoryLabeledSliderAccessibility *)self safeSwiftValueForKey:@"ticks"];
  v4 = __UIAccessibilityCastAsClass();

  v9 = 0;
  objc_opt_class();
  v5 = [(HeadphoneAccessoryLabeledSliderAccessibility *)self safeValueForKey:@"selectedIndex"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 integerValue];
  if (![v4 count] || (v7 & 0x8000000000000000) != 0 || v7 >= objc_msgSend(v4, "count"))
  {
    v8.receiver = self;
    v8.super_class = HeadphoneAccessoryLabeledSliderAccessibility;
    [(HeadphoneAccessoryLabeledSliderAccessibility *)&v8 accessibilityIncrement];
  }

  else
  {
    [v4 count];
    AXPerformSafeBlock();
  }
}

- (void)accessibilityDecrement
{
  objc_opt_class();
  v3 = [(HeadphoneAccessoryLabeledSliderAccessibility *)self safeValueForKey:@"selectedIndex"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 integerValue];
  AXPerformSafeBlock();
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(HeadphoneAccessoryLabeledSliderAccessibility *)self safeSwiftValueForKey:@"ticks"];
  v4 = __UIAccessibilityCastAsClass();

  v13 = 0;
  objc_opt_class();
  v5 = [(HeadphoneAccessoryLabeledSliderAccessibility *)self safeValueForKey:@"selectedIndex"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 integerValue];
  v8 = [v4 count];
  if ((v7 & 0x8000000000000000) != 0 || v7 >= v8)
  {
    v12.receiver = self;
    v12.super_class = HeadphoneAccessoryLabeledSliderAccessibility;
    v9 = [(HeadphoneAccessoryLabeledSliderAccessibility *)&v12 accessibilityValue];
  }

  else
  {
    v9 = [v4 objectAtIndex:v7];
  }

  v10 = v9;

  return v10;
}

@end
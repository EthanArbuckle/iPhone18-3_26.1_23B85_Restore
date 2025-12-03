@interface WGPlatterHeaderContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureUtilityButton;
@end

@implementation WGPlatterHeaderContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WGPlatterHeaderContentView" isKindOfClass:@"PLPlatterHeaderContentView"];
  [validationsCopy validateClass:@"PLPlatterHeaderContentView" hasInstanceVariable:@"_utilityButton" withType:"UIButton"];
  [validationsCopy validateClass:@"WGWidgetPlatterView"];
  [validationsCopy validateClass:@"WGWidgetPlatterView" hasInstanceMethod:@"isShowingMoreContent" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PLPlatterHeaderContentView" hasInstanceMethod:@"_configureUtilityButton" withFullSignature:{"v", 0}];
}

- (void)_configureUtilityButton
{
  v3.receiver = self;
  v3.super_class = WGPlatterHeaderContentViewAccessibility;
  [(WGPlatterHeaderContentViewAccessibility *)&v3 _configureUtilityButton];
  [(WGPlatterHeaderContentViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = WGPlatterHeaderContentViewAccessibility;
  [(WGPlatterHeaderContentViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  v3 = [(WGPlatterHeaderContentViewAccessibility *)self safeValueForKey:@"_utilityButton"];
  v4 = __UIAccessibilitySafeClass();

  objc_initWeak(&location, v4);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __85__WGPlatterHeaderContentViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F3228D8;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __85__WGPlatterHeaderContentViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained titleLabel];
  v4 = [v3 text];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 _accessibilityAncestorIsKindOf:MEMORY[0x29ED42A50](@"WGWidgetPlatterView")];

    if ([v7 safeBoolForKey:@"isShowingMoreContent"])
    {
      v8 = @"show.less";
    }

    else
    {
      v8 = @"show.more";
    }

    v5 = accessibilityLocalizedString(v8);
  }

  return v5;
}

@end
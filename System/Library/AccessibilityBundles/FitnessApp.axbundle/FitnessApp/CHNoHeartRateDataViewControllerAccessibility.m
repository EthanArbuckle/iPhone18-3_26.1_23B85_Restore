@interface CHNoHeartRateDataViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation CHNoHeartRateDataViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHNoHeartRateDataViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CHNoHeartRateDataViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CHNoHeartRateDataViewController" hasInstanceMethod:@"linkLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CHNoHeartRateDataViewController" hasInstanceMethod:@"linkButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = CHNoHeartRateDataViewControllerAccessibility;
  [(CHNoHeartRateDataViewControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v3 = [(CHNoHeartRateDataViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:UIAccessibilityTraitHeader | v4];
  v5 = [(CHNoHeartRateDataViewControllerAccessibility *)self safeValueForKey:@"linkLabel"];
  [v5 setIsAccessibilityElement:0];

  objc_initWeak(&location, self);
  v6 = [(CHNoHeartRateDataViewControllerAccessibility *)self safeValueForKey:@"linkButton"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __90__CHNoHeartRateDataViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_1C448;
  objc_copyWeak(&v8, &location);
  [v6 _setAccessibilityLabelBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

id __90__CHNoHeartRateDataViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"linkLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CHNoHeartRateDataViewControllerAccessibility;
  [(CHNoHeartRateDataViewControllerAccessibility *)&v3 loadView];
  [(CHNoHeartRateDataViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
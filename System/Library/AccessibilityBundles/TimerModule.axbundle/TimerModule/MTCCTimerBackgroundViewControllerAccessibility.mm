@interface MTCCTimerBackgroundViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation MTCCTimerBackgroundViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTCCTimerBackgroundViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MTCCTimerBackgroundViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTCCTimerBackgroundViewController" hasInstanceMethod:@"timeLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = MTCCTimerBackgroundViewControllerAccessibility;
  [(MTCCTimerBackgroundViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(MTCCTimerBackgroundViewControllerAccessibility *)self safeUIViewForKey:@"timeLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7FF0]];
  objc_initWeak(&location, v3);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __92__MTCCTimerBackgroundViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F30A900;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityValueBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __92__MTCCTimerBackgroundViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessibilityLabel];

  v3 = AXLocalizeDurationTime();

  return v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MTCCTimerBackgroundViewControllerAccessibility;
  [(MTCCTimerBackgroundViewControllerAccessibility *)&v3 viewDidLoad];
  [(MTCCTimerBackgroundViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
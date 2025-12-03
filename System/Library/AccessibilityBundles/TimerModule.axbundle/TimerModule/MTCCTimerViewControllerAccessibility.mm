@interface MTCCTimerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation MTCCTimerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTCCTimerViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MTCCTimerViewController" hasInstanceMethod:@"sliderView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTCCTimerViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTCCTimerModule" hasInstanceMethod:@"timerBackgroundViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTCCTimerBackgroundViewController" hasInstanceMethod:@"timer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTCCTimerBackgroundViewController" hasInstanceMethod:@"timeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTCCTimerBackgroundViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTCCTimerBackgroundViewController" hasInstanceMethod:@"dateComponentsFormatter" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTCCTimer" hasInstanceMethod:@"state" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"MTCCTimer" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = MTCCTimerViewControllerAccessibility;
  [(MTCCTimerViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(MTCCTimerViewControllerAccessibility *)self safeValueForKey:@"sliderView"];
  objc_initWeak(&location, self);
  v4 = accessibilityLocalizedString(@"timer.button.label");
  [v3 setAccessibilityLabel:v4];

  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __82__MTCCTimerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F30A900;
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityValueBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __82__MTCCTimerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"delegate"];

  v3 = [v2 safeValueForKey:@"timerBackgroundViewController"];
  v4 = [v3 safeValueForKey:@"timer"];
  if ([v4 safeIntForKey:@"state"] > 1)
  {
    v6 = [v3 safeValueForKey:@"titleLabel"];
    v8 = [v6 accessibilityLabel];
  }

  else
  {
    objc_opt_class();
    v5 = [v3 safeUIViewForKey:@"timeLabel"];
    v6 = __UIAccessibilityCastAsClass();

    v7 = [v6 accessibilityLabel];
    if ([v7 length])
    {
      v8 = v7;
    }

    else
    {
      [v4 safeDoubleForKey:@"duration"];
      v10 = v9;
      v11 = [v3 safeValueForKey:@"dateComponentsFormatter"];
      v8 = [v11 stringFromTimeInterval:v10];
    }
  }

  return v8;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MTCCTimerViewControllerAccessibility;
  [(MTCCTimerViewControllerAccessibility *)&v3 viewDidLoad];
  [(MTCCTimerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
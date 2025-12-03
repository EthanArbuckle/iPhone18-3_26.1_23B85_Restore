@interface SecureStopwatchControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SecureStopwatchControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ClockAngel.SecureStopwatchController" hasSwiftField:@"lapCancelButton" withSwiftType:"Optional<UIButton>"];
  [validationsCopy validateClass:@"ClockAngel.SecureStopwatchController" hasSwiftField:@"spinnyResetView" withSwiftType:"Optional<SpinnyResetView>"];
  [validationsCopy validateClass:@"ClockAngel.SpinnyResetView" hasSwiftField:@"mode" withSwiftType:"Mode"];
  [validationsCopy validateClass:@"ClockAngel.SecureStopwatchController" hasSwiftField:@"playPauseButton" withSwiftType:"Optional<UIButton>"];
  [validationsCopy validateClass:@"ClockAngel.SecureStopwatchController" hasSwiftField:@"pausePlayPackage" withSwiftType:"Optional<BSUICAPackageView>"];
  [validationsCopy validateClass:@"BSUICAPackageView" hasInstanceVariable:@"_stateController" withType:"CAStateController"];
  [validationsCopy validateClass:@"BSUICAPackageView" hasInstanceVariable:@"_rootLayer" withType:"CALayer"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = SecureStopwatchControllerAccessibility;
  [(SecureStopwatchControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(SecureStopwatchControllerAccessibility *)self safeSwiftValueForKey:@"lapCancelButton"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __84__SecureStopwatchControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_42D0;
  objc_copyWeak(&v8, &location);
  [v3 setAccessibilityLabelBlock:v7];
  v4 = [(SecureStopwatchControllerAccessibility *)self safeSwiftValueForKey:@"playPauseButton"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __84__SecureStopwatchControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v5[3] = &unk_42D0;
  objc_copyWeak(&v6, &location);
  [v4 setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

id __84__SecureStopwatchControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeSwiftValueForKey:@"spinnyResetView"];

  v3 = [v2 safeSwiftValueForKey:@"mode"];
  v4 = [v3 safeSwiftEnumCase];

  v5 = @"lap.button";
  if (([v4 isEqualToString:@"lap"] & 1) == 0 && objc_msgSend(v4, "isEqualToString:", @"cancel"))
  {
    v5 = @"cancel.button";
  }

  v6 = accessibilityLocalizedString(v5);

  return v6;
}

id __84__SecureStopwatchControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeSwiftValueForKey:@"pausePlayPackage"];
  v3 = __UIAccessibilitySafeClass();

  objc_opt_class();
  v4 = [v3 safeValueForKey:@"_stateController"];
  v5 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v6 = [v3 safeValueForKey:@"_rootLayer"];
  v7 = __UIAccessibilityCastAsClass();

  if (v7 && v5)
  {
    v8 = [v5 stateOfLayer:v7];
    v9 = [v8 name];

    if ([v9 isEqualToString:@"play"])
    {
      v10 = @"start.button";
    }

    else
    {
      v10 = @"pause.button";
    }

    v11 = accessibilityLocalizedString(v10);
  }

  else
  {
    v11 = accessibilityLocalizedString(@"timer.button");
  }

  return v11;
}

@end
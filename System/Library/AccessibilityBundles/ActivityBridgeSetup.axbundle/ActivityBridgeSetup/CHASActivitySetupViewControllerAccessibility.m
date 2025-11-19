@interface CHASActivitySetupViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateCurrentPresentedView;
- (void)computeMaxYForGoalViews;
- (void)viewDidLoad;
@end

@implementation CHASActivitySetupViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHASActivitySetupViewController" hasInstanceVariable:@"_currentlyPresentedView" withType:"CHASActivitySetupGoalView"];
  [v3 validateClass:@"CHASActivitySetupViewController" hasInstanceVariable:@"_moveGoalView" withType:"CHASActivitySetupGoalView"];
  [v3 validateClass:@"CHASActivitySetupViewController" hasInstanceVariable:@"_exerciseGoalView" withType:"CHASActivitySetupGoalView"];
  [v3 validateClass:@"CHASActivitySetupViewController" hasInstanceVariable:@"_standGoalView" withType:"CHASActivitySetupGoalView"];
  [v3 validateClass:@"CHASActivitySetupViewController" hasInstanceVariable:@"_advancedGoalView" withType:"UIView"];
  [v3 validateClass:@"CHASActivitySetupViewController" hasInstanceVariable:@"_advancedButton" withType:"UIButton"];
  [v3 validateClass:@"CHASActivitySetupViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CHASActivitySetupViewController" hasInstanceMethod:@"computeMaxYForGoalViews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CHASActivitySetupViewController" hasInstanceMethod:@"_displayExerciseGoalViewAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"CHASActivitySetupViewController" hasInstanceMethod:@"_displayStandGoalViewAnimated:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CHASActivitySetupViewControllerAccessibility;
  [(CHASActivitySetupViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(CHASActivitySetupViewControllerAccessibility *)self safeValueForKey:@"_advancedButton"];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __90__CHASActivitySetupViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_4150;
  objc_copyWeak(&v5, &location);
  [v3 setAccessibilityLabelBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __90__CHASActivitySetupViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_advancedGoalView"];
  if (v2)
  {
    v3 = @"daily.button";
  }

  else
  {
    v3 = @"schedule.button";
  }

  v4 = accessibilityLocalizedString(v3);

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CHASActivitySetupViewControllerAccessibility;
  [(CHASActivitySetupViewControllerAccessibility *)&v3 viewDidLoad];
  [(CHASActivitySetupViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  [(CHASActivitySetupViewControllerAccessibility *)self _accessibilityUpdateCurrentPresentedView];
}

- (void)computeMaxYForGoalViews
{
  _UIAccessibilityBlockPostingOfNotification();
  v3.receiver = self;
  v3.super_class = CHASActivitySetupViewControllerAccessibility;
  [(CHASActivitySetupViewControllerAccessibility *)&v3 computeMaxYForGoalViews];
  _UIAccessibilityUnblockPostingOfNotification();
}

- (void)_accessibilityUpdateCurrentPresentedView
{
  v6 = [(CHASActivitySetupViewControllerAccessibility *)self safeValueForKey:@"_moveGoalView"];
  [v6 setAccessibilityElementsHidden:1];
  v3 = [(CHASActivitySetupViewControllerAccessibility *)self safeValueForKey:@"_exerciseGoalView"];
  [v3 setAccessibilityElementsHidden:1];
  v4 = [(CHASActivitySetupViewControllerAccessibility *)self safeValueForKey:@"_standGoalView"];
  [v4 setAccessibilityElementsHidden:1];
  v5 = [(CHASActivitySetupViewControllerAccessibility *)self safeValueForKey:@"_currentlyPresentedView"];
  [v5 setAccessibilityElementsHidden:0];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v5);
}

@end
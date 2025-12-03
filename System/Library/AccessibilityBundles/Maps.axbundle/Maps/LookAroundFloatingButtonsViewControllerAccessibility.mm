@interface LookAroundFloatingButtonsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateButtonsLabel;
@end

@implementation LookAroundFloatingButtonsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LookAroundFloatingButtonsViewController" hasInstanceMethod:@"setShowsMinimizedButton:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"LookAroundFloatingButtonsViewController" hasInstanceVariable:@"_alternateButton" withType:"UIButton"];
  [validationsCopy validateClass:@"LookAroundFloatingButtonsViewController" hasInstanceVariable:@"_menuButton" withType:"UIButton"];
  [validationsCopy validateClass:@"LookAroundFloatingButtonsViewController" hasInstanceVariable:@"_showsMinimizedButton" withType:"B"];
}

- (void)_axUpdateButtonsLabel
{
  v3 = [(LookAroundFloatingButtonsViewControllerAccessibility *)self safeValueForKey:@"_alternateButton"];
  if ([(LookAroundFloatingButtonsViewControllerAccessibility *)self safeBoolForKey:@"_showsMinimizedButton"])
  {
    v4 = @"LOOK_AROUND_MINIMIZE";
  }

  else
  {
    v4 = @"LOOK_AROUND_MAXIMIZE";
  }

  v5 = AXMapsLocString(v4);
  [v3 setAccessibilityLabel:v5];

  v7 = [(LookAroundFloatingButtonsViewControllerAccessibility *)self safeValueForKey:@"_menuButton"];
  v6 = AXMapsLocString(@"LOOK_AROUND_OPTIONS");
  [v7 setAccessibilityLabel:v6];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = LookAroundFloatingButtonsViewControllerAccessibility;
  [(LookAroundFloatingButtonsViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(LookAroundFloatingButtonsViewControllerAccessibility *)self _axUpdateButtonsLabel];
}

@end
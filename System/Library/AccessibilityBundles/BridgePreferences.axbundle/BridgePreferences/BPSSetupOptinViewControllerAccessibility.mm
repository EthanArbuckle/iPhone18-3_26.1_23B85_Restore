@interface BPSSetupOptinViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation BPSSetupOptinViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BPSSetupOptinViewController" hasInstanceVariable:@"_suggestedChoiceButton" withType:"UIButton"];
  [validationsCopy validateClass:@"BPSSetupOptinViewController" hasInstanceVariable:@"_alternateChoiceButton" withType:"UIButton"];
  [validationsCopy validateClass:@"BPSSetupOptinViewController" hasInstanceMethod:@"watchView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BPSSetupOptinViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"BPSSetupOptinViewController" hasInstanceMethod:@"wantsAlternateChoicePillButton" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"BPSSetupOptinViewController" hasInstanceMethod:@"wantsAlternateChoiceSystemButton" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = BPSSetupOptinViewControllerAccessibility;
  [(BPSSetupOptinViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(BPSSetupOptinViewControllerAccessibility *)self safeValueForKey:@"_suggestedChoiceButton"];
  [v3 setAccessibilityIdentifier:@"SuggestedChoiceButton"];

  if (objc_opt_respondsToSelector())
  {
    v4 = [(BPSSetupOptinViewControllerAccessibility *)self safeValueForKey:@"watchView"];
    [v4 setIsAccessibilityElement:1];
    _accessibilityLabelForWatchView = [(BPSSetupOptinViewControllerAccessibility *)self _accessibilityLabelForWatchView];
    [v4 setAccessibilityLabel:_accessibilityLabelForWatchView];
  }

  if (([(BPSSetupOptinViewControllerAccessibility *)self safeBoolForKey:@"wantsAlternateChoicePillButton"]& 1) == 0 && ([(BPSSetupOptinViewControllerAccessibility *)self safeBoolForKey:@"wantsAlternateChoiceSystemButton"]& 1) == 0)
  {
    v6 = [(BPSSetupOptinViewControllerAccessibility *)self safeValueForKey:@"_alternateChoiceButton"];
    [v6 setIsAccessibilityElement:0];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BPSSetupOptinViewControllerAccessibility;
  [(BPSSetupOptinViewControllerAccessibility *)&v3 viewDidLoad];
  [(BPSSetupOptinViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
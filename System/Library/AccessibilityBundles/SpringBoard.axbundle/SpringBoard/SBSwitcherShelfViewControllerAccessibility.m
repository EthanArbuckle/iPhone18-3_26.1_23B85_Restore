@interface SBSwitcherShelfViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SBSwitcherShelfViewControllerAccessibility)initWithShelf:(id)a3 dataSource:(id)a4 delegate:(id)a5;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetupShelfSwitcherViewController;
- (void)clientDidResetForUserAttention:(id)a3 withEvent:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SBSwitcherShelfViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBSwitcherShelfViewController" hasInstanceVariable:@"_contentViewController" withType:"SBFluidSwitcherViewController"];
  [v3 validateClass:@"SBSwitcherShelfViewController" hasInstanceMethod:@"initWithShelf:dataSource:delegate:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"SBSwitcherShelfViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SBSwitcherShelfViewController" conformsToProtocol:@"SBAttentionAwarenessClientDelegate"];
  [v3 validateProtocol:@"SBAttentionAwarenessClientDelegate" hasRequiredInstanceMethod:@"clientDidResetForUserAttention:withEvent:"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SBSwitcherShelfViewControllerAccessibility;
  [(SBSwitcherShelfViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SBSwitcherShelfViewControllerAccessibility *)self _axSetupShelfSwitcherViewController];
}

- (SBSwitcherShelfViewControllerAccessibility)initWithShelf:(id)a3 dataSource:(id)a4 delegate:(id)a5
{
  v7.receiver = self;
  v7.super_class = SBSwitcherShelfViewControllerAccessibility;
  v5 = [(SBSwitcherShelfViewControllerAccessibility *)&v7 initWithShelf:a3 dataSource:a4 delegate:a5];
  [(SBSwitcherShelfViewControllerAccessibility *)v5 _accessibilityLoadAccessibilityInformation];
  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBSwitcherShelfViewControllerAccessibility;
  [(SBSwitcherShelfViewControllerAccessibility *)&v4 viewWillAppear:a3];
  [(SBSwitcherShelfViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axSetupShelfSwitcherViewController
{
  objc_opt_class();
  v3 = [(SBSwitcherShelfViewControllerAccessibility *)self safeValueForKey:@"_contentViewController"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  [v4 _setAXSwitcherType:&__block_literal_global_5];
}

- (void)clientDidResetForUserAttention:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!UIAccessibilityIsVoiceOverRunning() && ([(SBSwitcherShelfViewControllerAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = SBSwitcherShelfViewControllerAccessibility;
    [(SBSwitcherShelfViewControllerAccessibility *)&v8 clientDidResetForUserAttention:v6 withEvent:v7];
  }
}

@end
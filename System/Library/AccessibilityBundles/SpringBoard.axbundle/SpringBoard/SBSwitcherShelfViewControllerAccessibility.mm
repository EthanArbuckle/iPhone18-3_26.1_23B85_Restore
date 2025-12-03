@interface SBSwitcherShelfViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SBSwitcherShelfViewControllerAccessibility)initWithShelf:(id)shelf dataSource:(id)source delegate:(id)delegate;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetupShelfSwitcherViewController;
- (void)clientDidResetForUserAttention:(id)attention withEvent:(id)event;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SBSwitcherShelfViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBSwitcherShelfViewController" hasInstanceVariable:@"_contentViewController" withType:"SBFluidSwitcherViewController"];
  [validationsCopy validateClass:@"SBSwitcherShelfViewController" hasInstanceMethod:@"initWithShelf:dataSource:delegate:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"SBSwitcherShelfViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBSwitcherShelfViewController" conformsToProtocol:@"SBAttentionAwarenessClientDelegate"];
  [validationsCopy validateProtocol:@"SBAttentionAwarenessClientDelegate" hasRequiredInstanceMethod:@"clientDidResetForUserAttention:withEvent:"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SBSwitcherShelfViewControllerAccessibility;
  [(SBSwitcherShelfViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SBSwitcherShelfViewControllerAccessibility *)self _axSetupShelfSwitcherViewController];
}

- (SBSwitcherShelfViewControllerAccessibility)initWithShelf:(id)shelf dataSource:(id)source delegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = SBSwitcherShelfViewControllerAccessibility;
  v5 = [(SBSwitcherShelfViewControllerAccessibility *)&v7 initWithShelf:shelf dataSource:source delegate:delegate];
  [(SBSwitcherShelfViewControllerAccessibility *)v5 _accessibilityLoadAccessibilityInformation];
  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBSwitcherShelfViewControllerAccessibility;
  [(SBSwitcherShelfViewControllerAccessibility *)&v4 viewWillAppear:appear];
  [(SBSwitcherShelfViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axSetupShelfSwitcherViewController
{
  objc_opt_class();
  v3 = [(SBSwitcherShelfViewControllerAccessibility *)self safeValueForKey:@"_contentViewController"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  [v4 _setAXSwitcherType:&__block_literal_global_5];
}

- (void)clientDidResetForUserAttention:(id)attention withEvent:(id)event
{
  attentionCopy = attention;
  eventCopy = event;
  if (!UIAccessibilityIsVoiceOverRunning() && ([(SBSwitcherShelfViewControllerAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = SBSwitcherShelfViewControllerAccessibility;
    [(SBSwitcherShelfViewControllerAccessibility *)&v8 clientDidResetForUserAttention:attentionCopy withEvent:eventCopy];
  }
}

@end
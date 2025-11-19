@interface SBAppSwitcherPeopleViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)tappedExpandCollapseForItem:(id)a3;
@end

@implementation SBAppSwitcherPeopleViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBAppSwitcherPeopleViewController" hasInstanceMethod:@"tappedExpandCollapseForItem:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBAppSwitcherPeopleScrollView" hasInstanceMethod:@"expandedItemWrapper" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBAppSwitcherPeopleViewController" hasInstanceVariable:@"_peopleScrollView" withType:"SBAppSwitcherPeopleScrollView"];
  [v3 validateClass:@"SBAppSwitcherPeopleScrollView" hasInstanceVariable:@"_wrappersToViews" withType:"NSDictionary"];
}

- (void)tappedExpandCollapseForItem:(id)a3
{
  v4 = a3;
  v16 = 0;
  v5 = [(SBAppSwitcherPeopleViewControllerAccessibility *)self safeValueForKey:@"_peopleScrollView"];
  v6 = __UIAccessibilitySafeClass();

  v7 = [v6 safeValueForKey:@"expandedItemWrapper"];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    v9 = *MEMORY[0x29EDC7EA8];
    v10 = accessibilityLocalizedString(@"people.picker.items.collapsed");
    UIAccessibilityPostNotification(v9, v10);
  }

  else
  {
    objc_opt_class();
    v11 = [(SBAppSwitcherPeopleViewControllerAccessibility *)self safeValueForKey:@"_peopleScrollView"];
    v12 = [v11 safeValueForKey:@"_wrappersToViews"];
    v13 = __UIAccessibilityCastAsClass();
    v10 = [v13 objectForKey:v4];

    v14 = [v10 _accessibilityDescendantOfType:NSClassFromString(&cfstr_Sbappswitcherp_7.isa)];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v14);
  }

  v15.receiver = self;
  v15.super_class = SBAppSwitcherPeopleViewControllerAccessibility;
  [(SBAppSwitcherPeopleViewControllerAccessibility *)&v15 tappedExpandCollapseForItem:v4];
}

@end
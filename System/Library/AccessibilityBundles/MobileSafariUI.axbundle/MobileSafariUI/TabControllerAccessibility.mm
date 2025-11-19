@interface TabControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axTabBarItemViewForTabDocument:(id)a3;
- (void)moveTab:(id)a3 overTab:(id)a4;
@end

@implementation TabControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TabController" hasInstanceMethod:@"currentTabs" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TabController" hasInstanceMethod:@"setActiveTabDocument:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"TabController" hasInstanceMethod:@"activeTabDocument" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TabController" hasInstanceMethod:@"moveTab:overTab:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"TabDocument" hasInstanceVariable:@"_tabBarItem" withType:"TabBarItem"];
  [v3 validateClass:@"TabBarItem" hasInstanceMethod:@"layoutInfo" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TabBarItemLayoutInfo" hasInstanceMethod:@"tabBarItemView" withFullSignature:{"@", 0}];
}

- (void)moveTab:(id)a3 overTab:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TabControllerAccessibility *)self safeArrayForKey:@"currentTabs"];
  v9 = [v8 indexOfObject:v6];
  v10 = [v8 indexOfObject:v7];
  v24.receiver = self;
  v24.super_class = TabControllerAccessibility;
  [(TabControllerAccessibility *)&v24 moveTab:v6 overTab:v7];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL && v9 != v10)
  {
    v13 = @"moved.after.tab";
    if (v9 > v10)
    {
      v13 = @"moved.before.tab";
    }

    v14 = v13;
    v15 = [v6 safeValueForKey:@"title"];
    v16 = [v7 safeValueForKey:@"title"];
    if (![v16 length])
    {
      v17 = MEMORY[0x29EDBA078];
      v18 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v10 + 1];
      v19 = [v17 localizedStringFromNumber:v18 numberStyle:6];

      v20 = accessibilityLocalizedString(@"tab.position");
      v21 = AXCFormattedString();

      v16 = v21;
    }

    v22 = accessibilityLocalizedString(v14);
    v23 = AXCFormattedString();

    LODWORD(v22) = *MEMORY[0x29EDC7EA8];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v23);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    UIAccessibilityPostNotification(v22, *MEMORY[0x29EDBDAA8]);
  }
}

- (id)_axTabBarItemViewForTabDocument:(id)a3
{
  if (a3)
  {
    v3 = [a3 safeValueForKey:@"_tabBarItem"];
    v4 = [v3 safeValueForKey:@"layoutInfo"];
    v5 = [v4 safeValueForKey:@"tabBarItemView"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
@interface SBUIActionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityLabel;
@end

@implementation SBUIActionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBUIActionView" hasInstanceVariable:@"_titleLabel" withType:"SBUIActionViewLabel"];
  [v3 validateClass:@"SBUIActionView" hasInstanceVariable:@"_subtitleLabel" withType:"SBUIActionViewLabel"];
  [v3 validateClass:@"SBUIActionViewLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SBUIActionViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [v3 safeValueForKey:@"text"];

  v5 = [(SBUIActionViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  v6 = [v5 safeValueForKey:@"text"];

  v7 = __UIAXStringForVariables();

  return v7;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [MEMORY[0x29EDBA068] defaultCenter];
  [v2 postNotificationName:@"AXDismissShortcutMenu" object:0];

  return 1;
}

@end
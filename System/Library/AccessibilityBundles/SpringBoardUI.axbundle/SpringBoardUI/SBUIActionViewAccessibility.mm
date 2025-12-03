@interface SBUIActionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityLabel;
@end

@implementation SBUIActionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUIActionView" hasInstanceVariable:@"_titleLabel" withType:"SBUIActionViewLabel"];
  [validationsCopy validateClass:@"SBUIActionView" hasInstanceVariable:@"_subtitleLabel" withType:"SBUIActionViewLabel"];
  [validationsCopy validateClass:@"SBUIActionViewLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
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
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotificationName:@"AXDismissShortcutMenu" object:0];

  return 1;
}

@end
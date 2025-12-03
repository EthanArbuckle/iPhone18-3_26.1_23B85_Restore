@interface SFSectionDisclosureButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SFSectionDisclosureButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFSectionDisclosureButton" hasInstanceVariable:@"_labelWhenCollapsed" withType:"UILabel"];
  [validationsCopy validateClass:@"SFSectionDisclosureButton" hasInstanceVariable:@"_labelWhenExpanded" withType:"UILabel"];
  [validationsCopy validateClass:@"SFSectionDisclosureButton" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  if ([(SFSectionDisclosureButtonAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    v3 = @"_labelWhenExpanded";
  }

  else
  {
    v3 = @"_labelWhenCollapsed";
  }

  v4 = [(SFSectionDisclosureButtonAccessibility *)self safeValueForKey:v3];
  accessibilityLabel = [v4 accessibilityLabel];

  return accessibilityLabel;
}

@end
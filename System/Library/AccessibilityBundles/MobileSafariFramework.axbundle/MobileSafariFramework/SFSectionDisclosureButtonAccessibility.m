@interface SFSectionDisclosureButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SFSectionDisclosureButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFSectionDisclosureButton" hasInstanceVariable:@"_labelWhenCollapsed" withType:"UILabel"];
  [v3 validateClass:@"SFSectionDisclosureButton" hasInstanceVariable:@"_labelWhenExpanded" withType:"UILabel"];
  [v3 validateClass:@"SFSectionDisclosureButton" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
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
  v5 = [v4 accessibilityLabel];

  return v5;
}

@end
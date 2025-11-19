@interface MultiselectTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MultiselectTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HealthExperienceUI.MultiselectTableViewCell" hasSwiftField:@"accessoryIsSelected" withSwiftType:"Bool"];
  [v3 validateClass:@"HealthExperienceUI.MultiselectTableViewCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"detailTextLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MultiselectTableViewCellAccessibility *)self safeUIViewForKey:@"textLabel"];
  v6 = [(MultiselectTableViewCellAccessibility *)self safeUIViewForKey:@"detailTextLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = MultiselectTableViewCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(MultiselectTableViewCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(MultiselectTableViewCellAccessibility *)self safeSwiftBoolForKey:@"accessoryIsSelected"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end
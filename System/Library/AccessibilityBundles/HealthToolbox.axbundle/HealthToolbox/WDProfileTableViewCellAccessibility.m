@interface WDProfileTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation WDProfileTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WDProfileTableViewCell" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WDProfileTableViewCell" hasInstanceMethod:@"displayValue" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  if (![(WDProfileTableViewCellAccessibility *)self isEditing])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = WDProfileTableViewCellAccessibility;
  return [(WDProfileTableViewCellAccessibility *)&v4 isAccessibilityElement];
}

- (id)accessibilityLabel
{
  v2 = [(WDProfileTableViewCellAccessibility *)self safeValueForKey:@"displayName"];
  v3 = __UIAccessibilitySafeClass();

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(WDProfileTableViewCellAccessibility *)self safeValueForKey:@"displayValue"];
  v3 = __UIAccessibilitySafeClass();

  return v3;
}

@end
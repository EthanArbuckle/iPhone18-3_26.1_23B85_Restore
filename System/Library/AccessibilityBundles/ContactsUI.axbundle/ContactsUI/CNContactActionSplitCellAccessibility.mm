@interface CNContactActionSplitCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation CNContactActionSplitCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNContactActionSplitCell" hasInstanceMethod:@"rightLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNContactActionSplitCell" hasInstanceMethod:@"leftLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = objc_opt_new();
  v4 = [(CNContactActionSplitCellAccessibility *)self safeValueForKey:@"leftLabel"];
  accessibilityLabel = [v4 accessibilityLabel];
  v6 = [accessibilityLabel length];

  if (v6)
  {
    [v4 setAccessibilityContainer:self];
    [v3 addObject:v4];
  }

  v7 = [(CNContactActionSplitCellAccessibility *)self safeValueForKey:@"rightLabel"];
  accessibilityLabel2 = [v7 accessibilityLabel];
  v9 = [accessibilityLabel2 length];

  if (v9)
  {
    [v7 setAccessibilityContainer:self];
    [v3 addObject:v7];
  }

  return v3;
}

@end
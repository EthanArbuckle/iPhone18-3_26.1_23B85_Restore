@interface CNContactActionSplitCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation CNContactActionSplitCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNContactActionSplitCell" hasInstanceMethod:@"rightLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNContactActionSplitCell" hasInstanceMethod:@"leftLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = objc_opt_new();
  v4 = [(CNContactActionSplitCellAccessibility *)self safeValueForKey:@"leftLabel"];
  v5 = [v4 accessibilityLabel];
  v6 = [v5 length];

  if (v6)
  {
    [v4 setAccessibilityContainer:self];
    [v3 addObject:v4];
  }

  v7 = [(CNContactActionSplitCellAccessibility *)self safeValueForKey:@"rightLabel"];
  v8 = [v7 accessibilityLabel];
  v9 = [v8 length];

  if (v9)
  {
    [v7 setAccessibilityContainer:self];
    [v3 addObject:v7];
  }

  return v3;
}

@end
@interface ETContainerViewStatusBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation ETContainerViewStatusBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETContainerViewStatusBar" isKindOfClass:@"PUICStatusBarAppContextView"];
  [validationsCopy validateClass:@"PUICStatusBarAppContextView" hasInstanceMethod:@"navigationBackButtonView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUICStatusBarAppContextView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v11.receiver = self;
  v11.super_class = ETContainerViewStatusBarAccessibility;
  accessibilityElements = [(ETContainerViewStatusBarAccessibility *)&v11 accessibilityElements];
  v4 = [(ETContainerViewStatusBarAccessibility *)self safeValueForKey:@"navigationBackButtonView"];

  if (!v4)
  {
    v5 = [accessibilityElements mutableCopy];
    v6 = v5;
    if (v5)
    {
      array = v5;
    }

    else
    {
      array = [MEMORY[0x29EDB8DE8] array];
    }

    v8 = array;

    v9 = [(ETContainerViewStatusBarAccessibility *)self safeValueForKey:@"titleLabel"];
    [v9 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    [v8 axSafelyAddObject:v9];

    accessibilityElements = v8;
  }

  return accessibilityElements;
}

@end
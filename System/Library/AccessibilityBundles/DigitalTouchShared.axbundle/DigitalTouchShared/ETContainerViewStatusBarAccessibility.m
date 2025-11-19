@interface ETContainerViewStatusBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation ETContainerViewStatusBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ETContainerViewStatusBar" isKindOfClass:@"PUICStatusBarAppContextView"];
  [v3 validateClass:@"PUICStatusBarAppContextView" hasInstanceMethod:@"navigationBackButtonView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUICStatusBarAppContextView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v11.receiver = self;
  v11.super_class = ETContainerViewStatusBarAccessibility;
  v3 = [(ETContainerViewStatusBarAccessibility *)&v11 accessibilityElements];
  v4 = [(ETContainerViewStatusBarAccessibility *)self safeValueForKey:@"navigationBackButtonView"];

  if (!v4)
  {
    v5 = [v3 mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x29EDB8DE8] array];
    }

    v8 = v7;

    v9 = [(ETContainerViewStatusBarAccessibility *)self safeValueForKey:@"titleLabel"];
    [v9 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    [v8 axSafelyAddObject:v9];

    v3 = v8;
  }

  return v3;
}

@end
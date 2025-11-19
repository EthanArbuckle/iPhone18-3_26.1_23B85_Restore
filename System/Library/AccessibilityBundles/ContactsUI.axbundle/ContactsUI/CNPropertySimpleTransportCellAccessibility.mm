@interface CNPropertySimpleTransportCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CNPropertySimpleTransportCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPropertySimpleTransportCell" hasInstanceMethod:@"shouldShowStar" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CNPropertySimpleTransportCell" hasInstanceMethod:@"shouldShowBadge" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v10.receiver = self;
  v10.super_class = CNPropertySimpleTransportCellAccessibility;
  v3 = [(CNPropertySimpleTransportCellAccessibility *)&v10 accessibilityLabel];
  if ([(CNPropertySimpleTransportCellAccessibility *)self safeBoolForKey:@"shouldShowStar"])
  {
    v7 = accessibilityLocalizedString(@"vip.badge");
    v9 = @"__AXStringForVariablesSentinel";
    v4 = __UIAXStringForVariables();

    v3 = v4;
  }

  if ([(CNPropertySimpleTransportCellAccessibility *)self safeBoolForKey:@"shouldShowBadge", v7, v9])
  {
    v8 = accessibilityLocalizedString(@"recent.badge");
    v5 = __UIAXStringForVariables();

    v3 = v5;
  }

  return v3;
}

@end
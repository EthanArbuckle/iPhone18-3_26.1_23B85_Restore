@interface CNPropertySimpleTransportCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CNPropertySimpleTransportCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPropertySimpleTransportCell" hasInstanceMethod:@"shouldShowStar" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CNPropertySimpleTransportCell" hasInstanceMethod:@"shouldShowBadge" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v10.receiver = self;
  v10.super_class = CNPropertySimpleTransportCellAccessibility;
  accessibilityLabel = [(CNPropertySimpleTransportCellAccessibility *)&v10 accessibilityLabel];
  if ([(CNPropertySimpleTransportCellAccessibility *)self safeBoolForKey:@"shouldShowStar"])
  {
    v7 = accessibilityLocalizedString(@"vip.badge");
    v9 = @"__AXStringForVariablesSentinel";
    v4 = __UIAXStringForVariables();

    accessibilityLabel = v4;
  }

  if ([(CNPropertySimpleTransportCellAccessibility *)self safeBoolForKey:@"shouldShowBadge", v7, v9])
  {
    v8 = accessibilityLocalizedString(@"recent.badge");
    v5 = __UIAXStringForVariables();

    accessibilityLabel = v5;
  }

  return accessibilityLabel;
}

@end
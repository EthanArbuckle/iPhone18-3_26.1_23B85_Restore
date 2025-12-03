@interface SKUIRoundedRectButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUIRoundedRectButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(SKUIRoundedRectButtonAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Skuiaccountbut.isa)];
  v4 = [v3 safeUIViewForKey:@"_accountCreditsLabel"];

  v9.receiver = self;
  v9.super_class = SKUIRoundedRectButtonAccessibility;
  accessibilityLabel = [(SKUIRoundedRectButtonAccessibility *)&v9 accessibilityLabel];
  if ([v4 _accessibilityViewIsVisible])
  {
    accessibilityLabel2 = [v4 accessibilityLabel];
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v6 = __UIAXStringForVariables();
  }

  return v6;
}

@end
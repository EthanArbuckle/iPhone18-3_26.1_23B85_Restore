@interface SUUIRoundedRectButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUIRoundedRectButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(SUUIRoundedRectButtonAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Suuiaccountbut.isa)];
  v4 = [v3 safeUIViewForKey:@"_accountCreditsLabel"];

  v9.receiver = self;
  v9.super_class = SUUIRoundedRectButtonAccessibility;
  accessibilityLabel = [(SUUIRoundedRectButtonAccessibility *)&v9 accessibilityLabel];
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
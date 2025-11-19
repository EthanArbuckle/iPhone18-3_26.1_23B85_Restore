@interface SUNavigationButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation SUNavigationButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(SUNavigationButtonAccessibility *)self safeValueForKey:@"currentTitle"];
  if (v3)
  {
    goto LABEL_2;
  }

  v5 = [(SUNavigationButtonAccessibility *)self accessibilityIdentification];
  if ([v5 isEqualToString:@"1"])
  {
    v6 = @"share.button";
  }

  else
  {
    if (![v5 isEqualToString:@"2"])
    {

LABEL_2:
      v8.receiver = self;
      v8.super_class = SUNavigationButtonAccessibility;
      v4 = [(SUNavigationButtonAccessibility *)&v8 accessibilityLabel];
      goto LABEL_8;
    }

    v6 = @"history.button";
  }

  v4 = accessibilityLocalizedString(v6);

LABEL_8:

  return v4;
}

@end
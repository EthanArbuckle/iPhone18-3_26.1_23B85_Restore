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

  accessibilityIdentification = [(SUNavigationButtonAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"1"])
  {
    v6 = @"share.button";
  }

  else
  {
    if (![accessibilityIdentification isEqualToString:@"2"])
    {

LABEL_2:
      v8.receiver = self;
      v8.super_class = SUNavigationButtonAccessibility;
      accessibilityLabel = [(SUNavigationButtonAccessibility *)&v8 accessibilityLabel];
      goto LABEL_8;
    }

    v6 = @"history.button";
  }

  accessibilityLabel = accessibilityLocalizedString(v6);

LABEL_8:

  return accessibilityLabel;
}

@end
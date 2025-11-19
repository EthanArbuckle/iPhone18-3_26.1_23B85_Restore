@interface SUUIStyledImageButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUIStyledImageButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(SUUIStyledImageButtonAccessibility *)self safeValueForKey:@"imageView"];
  v4 = [v3 safeValueForKey:@"image"];
  v5 = [v4 accessibilityIdentifier];
  v6 = [v5 hasPrefix:@"UIButtonBarAction"];

  if (v6)
  {
    v7 = UIKitAccessibilityLocalizedString();
  }

  else
  {
    v8 = [(SUUIStyledImageButtonAccessibility *)self safeValueForKey:@"imageView"];
    v9 = [v8 safeValueForKey:@"image"];
    v10 = [v9 accessibilityIdentifier];
    v11 = [v10 hasPrefix:@"UniversalActionControl"];

    if (v11)
    {
      v7 = accessibilityLocalizedString(@"more.button");
    }

    else
    {
      v13.receiver = self;
      v13.super_class = SUUIStyledImageButtonAccessibility;
      v7 = [(SUUIStyledImageButtonAccessibility *)&v13 accessibilityLabel];
    }
  }

  return v7;
}

@end
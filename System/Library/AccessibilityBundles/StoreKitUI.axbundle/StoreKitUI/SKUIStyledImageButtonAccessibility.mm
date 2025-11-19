@interface SKUIStyledImageButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUIStyledImageButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(SKUIStyledImageButtonAccessibility *)self safeValueForKey:@"imageView"];
  v4 = [v3 safeValueForKey:@"image"];
  v5 = [v4 accessibilityIdentifier];
  v6 = [v5 hasPrefix:@"UIButtonBarAction"];

  if (v6)
  {
    v7 = UIKitAccessibilityLocalizedString();
  }

  else
  {
    v8 = [(SKUIStyledImageButtonAccessibility *)self safeValueForKey:@"imageView"];
    v9 = [v8 safeValueForKey:@"image"];
    v10 = [v9 accessibilityIdentifier];
    v11 = [v10 hasPrefix:@"UniversalActionControl"];

    if (v11)
    {
      v7 = accessibilitySKUILocalizedString(@"more.button");
    }

    else
    {
      v13.receiver = self;
      v13.super_class = SKUIStyledImageButtonAccessibility;
      v7 = [(SKUIStyledImageButtonAccessibility *)&v13 accessibilityLabel];
    }
  }

  return v7;
}

@end
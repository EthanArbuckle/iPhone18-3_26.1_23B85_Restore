@interface SKUIStyledImageButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUIStyledImageButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(SKUIStyledImageButtonAccessibility *)self safeValueForKey:@"imageView"];
  v4 = [v3 safeValueForKey:@"image"];
  accessibilityIdentifier = [v4 accessibilityIdentifier];
  v6 = [accessibilityIdentifier hasPrefix:@"UIButtonBarAction"];

  if (v6)
  {
    accessibilityLabel = UIKitAccessibilityLocalizedString();
  }

  else
  {
    v8 = [(SKUIStyledImageButtonAccessibility *)self safeValueForKey:@"imageView"];
    v9 = [v8 safeValueForKey:@"image"];
    accessibilityIdentifier2 = [v9 accessibilityIdentifier];
    v11 = [accessibilityIdentifier2 hasPrefix:@"UniversalActionControl"];

    if (v11)
    {
      accessibilityLabel = accessibilitySKUILocalizedString(@"more.button");
    }

    else
    {
      v13.receiver = self;
      v13.super_class = SKUIStyledImageButtonAccessibility;
      accessibilityLabel = [(SKUIStyledImageButtonAccessibility *)&v13 accessibilityLabel];
    }
  }

  return accessibilityLabel;
}

@end
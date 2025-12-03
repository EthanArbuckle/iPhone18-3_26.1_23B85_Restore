@interface ProfileIconButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation ProfileIconButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(ProfileIconButtonAccessibility *)self safeStringForKey:@"_iconName"];
  if ([v2 isEqualToString:@"ellipsis"])
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    if ([v3 isSelected])
    {
      imageView = [v3 imageView];
      accessibilityLabel = [imageView accessibilityLabel];

      v6 = profileSymbolAccessibilityLabel(accessibilityLabel);
      v9 = profileSymbolAccessibilityLabel(v2);
      v7 = __UIAXStringForVariables();

      goto LABEL_6;
    }
  }

  v7 = profileSymbolAccessibilityLabel(v2);
LABEL_6:

  return v7;
}

@end
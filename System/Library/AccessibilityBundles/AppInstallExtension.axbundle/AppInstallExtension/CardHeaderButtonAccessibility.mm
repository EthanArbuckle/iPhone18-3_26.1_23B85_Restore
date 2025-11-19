@interface CardHeaderButtonAccessibility
- (BOOL)_axIsBackButton;
- (BOOL)_axIsCloseButton;
- (id)_imageAsset;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
@end

@implementation CardHeaderButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CardHeaderButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CardHeaderButtonAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  if ([(CardHeaderButtonAccessibility *)self _axIsCloseButton])
  {
    v3 = @"popover.view.dismiss.article";
LABEL_5:
    v4 = accessibilityAppStoreLocalizedString(v3);
    goto LABEL_7;
  }

  if ([(CardHeaderButtonAccessibility *)self _axIsBackButton])
  {
    v3 = @"back.button";
    goto LABEL_5;
  }

  v6.receiver = self;
  v6.super_class = CardHeaderButtonAccessibility;
  v4 = [(CardHeaderButtonAccessibility *)&v6 accessibilityLabel];
LABEL_7:

  return v4;
}

- (id)accessibilityHint
{
  if ([(CardHeaderButtonAccessibility *)self _axIsCloseButton])
  {
    v3 = accessibilityAppStoreLocalizedString(@"popover.view.dismiss.article.hint");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CardHeaderButtonAccessibility;
    v3 = [(CardHeaderButtonAccessibility *)&v5 accessibilityHint];
  }

  return v3;
}

- (id)accessibilityUserInputLabels
{
  if ([(CardHeaderButtonAccessibility *)self _axIsCloseButton])
  {
    v3 = accessibilityAppStoreLocalizedString(@"popover.view.dismiss.article.user.input");
    v4 = MEMORY[0x29C2C8640]();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CardHeaderButtonAccessibility;
    v4 = [(CardHeaderButtonAccessibility *)&v6 accessibilityUserInputLabels];
  }

  return v4;
}

- (id)_imageAsset
{
  objc_opt_class();
  v3 = [(CardHeaderButtonAccessibility *)self safeSwiftValueForKey:@"vibrantImageView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 image];
  v6 = [v5 safeValueForKey:@"_imageAsset"];
  v7 = [v6 safeStringForKey:@"assetName"];

  return v7;
}

- (BOOL)_axIsCloseButton
{
  v2 = [(CardHeaderButtonAccessibility *)self _imageAsset];
  v3 = [v2 isEqualToString:@"xmark"];

  return v3;
}

- (BOOL)_axIsBackButton
{
  v2 = [(CardHeaderButtonAccessibility *)self _imageAsset];
  v3 = [v2 isEqualToString:@"chevron.backward"];

  return v3;
}

@end
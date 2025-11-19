@interface SUItemOfferButtonAccessibility
- (id)accessibilityLabel;
- (void)_reloadButton;
@end

@implementation SUItemOfferButtonAccessibility

- (void)_reloadButton
{
  v2.receiver = self;
  v2.super_class = SUItemOfferButtonAccessibility;
  [(SUItemOfferButtonAccessibility *)&v2 _reloadButton];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)accessibilityLabel
{
  v3 = [(SUItemOfferButtonAccessibility *)self safeValueForKey:@"itemOfferButtonStyle"];
  if ([v3 isEqualToString:*MEMORY[0x29EDC8330]])
  {
    v9.receiver = self;
    v9.super_class = SUItemOfferButtonAccessibility;
    v4 = [(SUItemOfferButtonAccessibility *)&v9 accessibilityLabel];
    v7 = accessibilityLocalizedString(@"iTunesPlus");
    v5 = __UIAXStringForVariables();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUItemOfferButtonAccessibility;
    v5 = [(SUItemOfferButtonAccessibility *)&v8 accessibilityLabel];
  }

  return v5;
}

@end
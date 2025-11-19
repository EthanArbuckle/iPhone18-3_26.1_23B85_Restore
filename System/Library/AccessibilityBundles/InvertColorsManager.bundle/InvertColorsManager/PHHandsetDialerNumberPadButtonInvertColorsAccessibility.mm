@interface PHHandsetDialerNumberPadButtonInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation PHHandsetDialerNumberPadButtonInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PHHandsetDialerNumberPadButtonInvertColorsAccessibility;
  [(PHHandsetDialerNumberPadButtonInvertColorsAccessibility *)&v3 layoutSubviews];
  [(PHHandsetDialerNumberPadButtonInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 layer];
  [AXInvertColorsAppHelper toggleInvertColors:v3];
}

@end
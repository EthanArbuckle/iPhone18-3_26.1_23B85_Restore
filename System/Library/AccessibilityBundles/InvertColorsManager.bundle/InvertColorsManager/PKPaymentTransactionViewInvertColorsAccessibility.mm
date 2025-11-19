@interface PKPaymentTransactionViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation PKPaymentTransactionViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PKPaymentTransactionViewInvertColorsAccessibility *)self safeUIViewForKey:@"_primaryImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPaymentTransactionViewInvertColorsAccessibility;
  [(PKPaymentTransactionViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(PKPaymentTransactionViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end
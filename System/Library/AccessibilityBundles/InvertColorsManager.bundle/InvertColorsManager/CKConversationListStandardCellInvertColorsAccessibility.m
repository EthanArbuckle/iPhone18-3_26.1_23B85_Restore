@interface CKConversationListStandardCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation CKConversationListStandardCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = [(CKConversationListStandardCellInvertColorsAccessibility *)self safeValueForKey:@"_fromLabel"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(CKConversationListStandardCellInvertColorsAccessibility *)self safeValueForKey:@"_summaryLabel"];
  v6 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityIgnoresInvertColors:1];
  [v6 setAccessibilityIgnoresInvertColors:1];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v7 = +[UIColor whiteColor];
    [v4 setTextColor:v7];

    +[UIColor whiteColor];
  }

  else
  {
    v8 = [UIColor safeValueForKey:@"_labelColor"];
    [v4 setTextColor:v8];

    [UIColor safeValueForKey:@"_secondaryLabelColor"];
  }
  v9 = ;
  [v6 setTextColor:v9];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKConversationListStandardCellInvertColorsAccessibility;
  [(CKConversationListStandardCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(CKConversationListStandardCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end
@interface _FitnessMonthTitleLabelAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _FitnessMonthTitleLabelAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = _FitnessMonthTitleLabelAccessibility;
  return UIAccessibilityTraitHeader | [(_FitnessMonthTitleLabelAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v11 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 text];
    v7 = AXDateFromStringWithFormat();

    v8 = AXDateStringForFormat();
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _FitnessMonthTitleLabelAccessibility;
    v8 = [(_FitnessMonthTitleLabelAccessibility *)&v10 accessibilityLabel];
  }

  return v8;
}

@end
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
  text = [v3 text];
  v5 = [text length];

  if (v5)
  {
    text2 = [v3 text];
    v7 = AXDateFromStringWithFormat();

    accessibilityLabel = AXDateStringForFormat();
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _FitnessMonthTitleLabelAccessibility;
    accessibilityLabel = [(_FitnessMonthTitleLabelAccessibility *)&v10 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end
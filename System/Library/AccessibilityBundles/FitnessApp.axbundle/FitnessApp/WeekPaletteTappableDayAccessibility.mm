@interface WeekPaletteTappableDayAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation WeekPaletteTappableDayAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WeekPaletteTappableDay" isKindOfClass:@"ActivityTappableDay"];
  [validationsCopy validateClass:@"WeekPaletteTappableDay" hasInstanceVariable:@"_circle" withType:"UIView"];
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = WeekPaletteTappableDayAccessibility;
  accessibilityTraits = [(WeekPaletteTappableDayAccessibility *)&v9 accessibilityTraits];
  v4 = [(WeekPaletteTappableDayAccessibility *)self safeValueForKey:@"_circle"];
  [v4 safeDoubleForKey:@"alpha"];
  v6 = v5;

  v7 = UIAccessibilityTraitSelected;
  if (v6 != 1.0)
  {
    v7 = 0;
  }

  return v7 | accessibilityTraits;
}

@end
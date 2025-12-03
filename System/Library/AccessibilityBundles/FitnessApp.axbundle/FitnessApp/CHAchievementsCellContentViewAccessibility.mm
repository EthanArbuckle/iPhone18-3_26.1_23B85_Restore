@interface CHAchievementsCellContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CHAchievementsCellContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHAchievementsCellContentView" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHAchievementsCellContentView" hasInstanceMethod:@"badgeView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v13 = 0;
  objc_opt_class();
  v3 = [(CHAchievementsCellContentViewAccessibility *)self safeValueForKey:@"_label"];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];
  v6 = [text length];

  if (v6)
  {
    text2 = [v4 text];
    v8 = +[NSCharacterSet newlineCharacterSet];
    v9 = [text2 componentsSeparatedByCharactersInSet:v8];
    accessibilityLabel = AXLabelForElements();
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CHAchievementsCellContentViewAccessibility;
    accessibilityLabel = [(CHAchievementsCellContentViewAccessibility *)&v12 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v3 = [(CHAchievementsCellContentViewAccessibility *)self safeValueForKey:@"_badgeView"];
  v4 = [v3 safeValueForKey:@"image"];
  accessibilityValue = [v4 accessibilityValue];

  if ([accessibilityValue length])
  {
    accessibilityValue2 = accessibilityValue;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CHAchievementsCellContentViewAccessibility;
    accessibilityValue2 = [(CHAchievementsCellContentViewAccessibility *)&v9 accessibilityValue];
  }

  v7 = accessibilityValue2;

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CHAchievementsCellContentViewAccessibility;
  return UIAccessibilityTraitButton | [(CHAchievementsCellContentViewAccessibility *)&v3 accessibilityTraits];
}

@end
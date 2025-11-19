@interface CHAchievementsCellContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CHAchievementsCellContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHAchievementsCellContentView" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CHAchievementsCellContentView" hasInstanceMethod:@"badgeView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v13 = 0;
  objc_opt_class();
  v3 = [(CHAchievementsCellContentViewAccessibility *)self safeValueForKey:@"_label"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v4 text];
    v8 = +[NSCharacterSet newlineCharacterSet];
    v9 = [v7 componentsSeparatedByCharactersInSet:v8];
    v10 = AXLabelForElements();
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CHAchievementsCellContentViewAccessibility;
    v10 = [(CHAchievementsCellContentViewAccessibility *)&v12 accessibilityLabel];
  }

  return v10;
}

- (id)accessibilityValue
{
  v3 = [(CHAchievementsCellContentViewAccessibility *)self safeValueForKey:@"_badgeView"];
  v4 = [v3 safeValueForKey:@"image"];
  v5 = [v4 accessibilityValue];

  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CHAchievementsCellContentViewAccessibility;
    v6 = [(CHAchievementsCellContentViewAccessibility *)&v9 accessibilityValue];
  }

  v7 = v6;

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CHAchievementsCellContentViewAccessibility;
  return UIAccessibilityTraitButton | [(CHAchievementsCellContentViewAccessibility *)&v3 accessibilityTraits];
}

@end
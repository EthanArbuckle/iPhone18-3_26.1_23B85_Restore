@interface ShelfHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ShelfHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Arcade.ShelfHeaderView" hasSwiftField:@"eyebrowButton" withSwiftType:"DynamicTypeButton"];
  [v3 validateClass:@"Arcade.ShelfHeaderView" hasSwiftField:@"titleButton" withSwiftType:"DynamicTypeButton"];
  [v3 validateClass:@"Arcade.ShelfHeaderView" hasSwiftField:@"subtitleLabel" withSwiftType:"DynamicTypeLabel"];
  [v3 validateClass:@"Arcade.ShelfHeaderView" hasSwiftField:@"accessoryButton" withSwiftType:"DynamicTypeButton"];
}

- (unint64_t)accessibilityTraits
{
  v10 = 0;
  objc_opt_class();
  v3 = [(ShelfHeaderViewAccessibility *)self safeSwiftValueForKey:@"titleButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 currentAttributedTitle];
  if ([v5 containsAttachmentsInRange:{0, objc_msgSend(v5, "length")}])
  {
    v9.receiver = self;
    v9.super_class = ShelfHeaderViewAccessibility;
    v6 = *MEMORY[0x29EDC7F80] | [(ShelfHeaderViewAccessibility *)&v9 accessibilityTraits]| *MEMORY[0x29EDC7F70];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ShelfHeaderViewAccessibility;
    v6 = *MEMORY[0x29EDC7F80] | [(ShelfHeaderViewAccessibility *)&v8 accessibilityTraits];
  }

  return v6;
}

- (id)accessibilityLabel
{
  v3 = [(ShelfHeaderViewAccessibility *)self safeSwiftValueForKey:@"eyebrowButton"];
  v4 = [(ShelfHeaderViewAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  objc_opt_class();
  v5 = [(ShelfHeaderViewAccessibility *)self safeSwiftValueForKey:@"titleButton"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 currentAttributedTitle];
  v8 = [v7 string];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\uFFFC" withString:&stru_2A2106700];

  v10 = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  v12 = __UIAXStringForVariables();

  return v12;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = ShelfHeaderViewAccessibility;
  v4 = [(ShelfHeaderViewAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(ShelfHeaderViewAccessibility *)self safeSwiftValueForKey:@"accessoryButton"];
  [v3 axSafelyAddObject:v5];

  return v3;
}

@end
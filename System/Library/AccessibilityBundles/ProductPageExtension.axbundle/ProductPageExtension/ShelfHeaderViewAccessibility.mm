@interface ShelfHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ShelfHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ProductPageExtension.ShelfHeaderView" hasSwiftField:@"eyebrowButton" withSwiftType:"DynamicTypeButton"];
  [validationsCopy validateClass:@"ProductPageExtension.ShelfHeaderView" hasSwiftField:@"titleButton" withSwiftType:"DynamicTypeButton"];
  [validationsCopy validateClass:@"ProductPageExtension.ShelfHeaderView" hasSwiftField:@"subtitleLabel" withSwiftType:"DynamicTypeLabel"];
  [validationsCopy validateClass:@"ProductPageExtension.ShelfHeaderView" hasSwiftField:@"accessoryButton" withSwiftType:"DynamicTypeButton"];
}

- (unint64_t)accessibilityTraits
{
  v10 = 0;
  objc_opt_class();
  v3 = [(ShelfHeaderViewAccessibility *)self safeSwiftValueForKey:@"titleButton"];
  v4 = __UIAccessibilityCastAsClass();

  currentAttributedTitle = [v4 currentAttributedTitle];
  if ([currentAttributedTitle containsAttachmentsInRange:{0, objc_msgSend(currentAttributedTitle, "length")}])
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

  currentAttributedTitle = [v6 currentAttributedTitle];
  string = [currentAttributedTitle string];
  v9 = [string stringByReplacingOccurrencesOfString:@"\uFFFC" withString:&stru_2A22AEB68];

  whitespaceCharacterSet = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v12 = __UIAXStringForVariables();

  return v12;
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = ShelfHeaderViewAccessibility;
  _accessibilitySupplementaryFooterViews = [(ShelfHeaderViewAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [array axSafelyAddObjectsFromArray:_accessibilitySupplementaryFooterViews];

  v5 = [(ShelfHeaderViewAccessibility *)self safeSwiftValueForKey:@"accessoryButton"];
  [array axSafelyAddObject:v5];

  return array;
}

@end
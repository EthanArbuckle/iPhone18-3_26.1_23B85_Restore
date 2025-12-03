@interface ModernTitleHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axFavoriteHeaderButton;
- (id)_axSuggestLessButton;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation ModernTitleHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ModernTitleHeaderView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ModernTitleHeaderView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ModernTitleHeaderView" hasSwiftField:@"accessibilityHasContextAction" withSwiftType:"Bool"];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ModernTitleHeaderView" hasInstanceMethod:@"accessibilityHeaderButtons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.ModernTitleHeaderView" hasSwiftField:@"titleButton" withSwiftType:"UIButton"];
}

- (unint64_t)accessibilityTraits
{
  v3 = [(ModernTitleHeaderViewAccessibility *)self safeSwiftValueForKey:@"titleButton"];
  v4 = v3;
  if (v3 && ([v3 isHidden] & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = ModernTitleHeaderViewAccessibility;
    v5 = *MEMORY[0x29EDC7F80] | [(ModernTitleHeaderViewAccessibility *)&v8 accessibilityTraits]| *MEMORY[0x29EDC7F70];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ModernTitleHeaderViewAccessibility;
    v5 = *MEMORY[0x29EDC7F80] | [(ModernTitleHeaderViewAccessibility *)&v7 accessibilityTraits];
  }

  return v5;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(ModernTitleHeaderViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(ModernTitleHeaderViewAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
  text = [v4 text];
  accessibilityLabel = [v5 accessibilityLabel];
  v7 = __UIAXStringForVariables();

  return v7;
}

- (id)accessibilityValue
{
  if ([(ModernTitleHeaderViewAccessibility *)self safeSwiftBoolForKey:@"accessibilityHasContextAction"])
  {
    accessibilityValue = accessibilityLocalizedString(@"filter");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ModernTitleHeaderViewAccessibility;
    accessibilityValue = [(ModernTitleHeaderViewAccessibility *)&v5 accessibilityValue];
  }

  return accessibilityValue;
}

- (id)accessibilityElements
{
  if ([(ModernTitleHeaderViewAccessibility *)self safeSwiftBoolForKey:@"accessibilityHasContextAction"])
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v11 = 0;
    objc_opt_class();
    v4 = [(ModernTitleHeaderViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
    v5 = __UIAccessibilityCastAsClass();

    text = [v5 text];
    [v5 setAccessibilityLabel:text];

    v7 = accessibilityLocalizedString(@"filter");
    [v5 setAccessibilityValue:v7];

    [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7F80]];
    [array axSafelyAddObject:v5];
    v8 = [(ModernTitleHeaderViewAccessibility *)self safeArrayForKey:@"accessibilityHeaderButtons"];
    [array axSafelyAddObjectsFromArray:v8];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ModernTitleHeaderViewAccessibility;
    array = [(ModernTitleHeaderViewAccessibility *)&v10 accessibilityElements];
  }

  return array;
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v8.receiver = self;
  v8.super_class = ModernTitleHeaderViewAccessibility;
  _accessibilitySupplementaryFooterViews = [(ModernTitleHeaderViewAccessibility *)&v8 _accessibilitySupplementaryFooterViews];
  [array axSafelyAddObjectsFromArray:_accessibilitySupplementaryFooterViews];

  _axFavoriteHeaderButton = [(ModernTitleHeaderViewAccessibility *)self _axFavoriteHeaderButton];
  [array axSafelyAddObject:_axFavoriteHeaderButton];
  _axSuggestLessButton = [(ModernTitleHeaderViewAccessibility *)self _axSuggestLessButton];
  [array axSafelyAddObject:_axSuggestLessButton];

  return array;
}

- (id)_axFavoriteHeaderButton
{
  v3 = MEMORY[0x29C2E7850](@"ShelfKitCollectionViews.FavoriteHeaderButton", a2);

  return [(ModernTitleHeaderViewAccessibility *)self _accessibilityDescendantOfType:v3];
}

- (id)_axSuggestLessButton
{
  v3 = MEMORY[0x29C2E7850](@"ShelfKitCollectionViews.SuggestLessButton", a2);

  return [(ModernTitleHeaderViewAccessibility *)self _accessibilityDescendantOfType:v3];
}

@end
@interface LargeLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
@end

@implementation LargeLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.LargeLockupView" hasInstanceMethod:@"accessibilityOrdinalLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.LargeLockupView" hasInstanceMethod:@"accessibilityPrimaryTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.LargeLockupView" hasInstanceMethod:@"accessibilitySecondaryTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.LargeLockupView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ShelfKitCollectionViews.LargeLockupView" hasInstanceMethod:@"accessibilityArtworkContainer" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = LargeLockupViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(LargeLockupViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(LargeLockupViewAccessibility *)self safeValueForKey:@"accessibilityOrdinalLabel"];
  accessibilityLabel = [v4 accessibilityLabel];
  [array axSafelyAddObject:accessibilityLabel];

  v6 = [(LargeLockupViewAccessibility *)self safeValueForKey:@"accessibilityPrimaryTitleLabel"];
  accessibilityLabel2 = [v6 accessibilityLabel];

  [array axSafelyAddObject:accessibilityLabel2];
  v8 = [(LargeLockupViewAccessibility *)self safeValueForKey:@"accessibilitySecondaryTitleLabel"];
  accessibilityLabel3 = [v8 accessibilityLabel];

  if (([accessibilityLabel3 isEqualToString:accessibilityLabel2] & 1) == 0)
  {
    [array axSafelyAddObject:accessibilityLabel3];
  }

  v10 = [(LargeLockupViewAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
  accessibilityLabel4 = [v10 accessibilityLabel];
  [array axSafelyAddObject:accessibilityLabel4];

  v12 = MEMORY[0x29C2E7870](array);

  return v12;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(LargeLockupViewAccessibility *)self safeValueForKey:@"accessibilityPrimaryTitleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  if (!accessibilityLabel)
  {
    objc_opt_class();
    v5 = [(LargeLockupViewAccessibility *)self safeValueForKey:@"accessibilitySecondaryTitleLabel"];
    v6 = __UIAccessibilityCastAsClass();

    accessibilityLabel = __UIAXStringForVariables();
  }

  v7 = MEMORY[0x29C2E7860](accessibilityLabel);

  return v7;
}

@end
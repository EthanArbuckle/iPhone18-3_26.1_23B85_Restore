@interface LargeLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
@end

@implementation LargeLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ShelfKitCollectionViews.LargeLockupView" hasInstanceMethod:@"accessibilityOrdinalLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.LargeLockupView" hasInstanceMethod:@"accessibilityPrimaryTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.LargeLockupView" hasInstanceMethod:@"accessibilitySecondaryTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.LargeLockupView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.LargeLockupView" hasInstanceMethod:@"accessibilityArtworkContainer" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = LargeLockupViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(LargeLockupViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(LargeLockupViewAccessibility *)self safeValueForKey:@"accessibilityOrdinalLabel"];
  v5 = [v4 accessibilityLabel];
  [v3 axSafelyAddObject:v5];

  v6 = [(LargeLockupViewAccessibility *)self safeValueForKey:@"accessibilityPrimaryTitleLabel"];
  v7 = [v6 accessibilityLabel];

  [v3 axSafelyAddObject:v7];
  v8 = [(LargeLockupViewAccessibility *)self safeValueForKey:@"accessibilitySecondaryTitleLabel"];
  v9 = [v8 accessibilityLabel];

  if (([v9 isEqualToString:v7] & 1) == 0)
  {
    [v3 axSafelyAddObject:v9];
  }

  v10 = [(LargeLockupViewAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
  v11 = [v10 accessibilityLabel];
  [v3 axSafelyAddObject:v11];

  v12 = MEMORY[0x29C2E7870](v3);

  return v12;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(LargeLockupViewAccessibility *)self safeValueForKey:@"accessibilityPrimaryTitleLabel"];
  v4 = [v3 accessibilityLabel];

  if (!v4)
  {
    objc_opt_class();
    v5 = [(LargeLockupViewAccessibility *)self safeValueForKey:@"accessibilitySecondaryTitleLabel"];
    v6 = __UIAccessibilityCastAsClass();

    v4 = __UIAXStringForVariables();
  }

  v7 = MEMORY[0x29C2E7860](v4);

  return v7;
}

@end
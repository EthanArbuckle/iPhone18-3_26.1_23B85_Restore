@interface SmallSearchLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
@end

@implementation SmallSearchLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ProductPageExtension.SmallSearchLockupView" hasInstanceMethod:@"accessibilitytUserRatingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.SmallSearchLockupView" hasInstanceMethod:@"accessibilityRatingCountLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.SmallSearchLockupView" hasInstanceMethod:@"accessibilityIsAd" withFullSignature:{"B", 0}];
  [v3 validateClass:@"ProductPageExtension.SmallSearchLockupView" hasInstanceMethod:@"accessibilityAdButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.SmallSearchLockupView" hasInstanceMethod:@"accessibilityDescriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.SmallSearchLockupView" hasInstanceMethod:@"accessibilitySearchTagsRibbonView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.SmallSearchLockupView" isKindOfClass:@"ProductPageExtension.BaseLockupView"];
  [v3 validateClass:@"ProductPageExtension.BaseLockupView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.SmallSearchLockupView" hasSwiftField:@"editorsChoiceView" withSwiftType:"Optional<EditorsChoiceView>"];
}

- (id)accessibilityLabel
{
  v19 = [(SmallSearchLockupViewAccessibility *)self safeBoolForKey:@"accessibilityIsAd"];
  v3 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilityRatingCountLabel"];
  v4 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilitytUserRatingView"];
  v5 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilityDescriptionLabel"];
  v6 = [(SmallSearchLockupViewAccessibility *)self safeSwiftValueForKey:@"editorsChoiceView"];
  v20.receiver = self;
  v20.super_class = SmallSearchLockupViewAccessibility;
  v7 = [(SmallSearchLockupViewAccessibility *)&v20 accessibilityLabel];
  v8 = [v3 accessibilityLabel];

  if (v8)
  {
    v9 = MEMORY[0x29EDBA0F8];
    v10 = accessibilityAppStoreLocalizedString(@"user.ratings");
    v11 = [v3 accessibilityLabel];
    v12 = [v9 stringWithFormat:v10, v11];

    v13 = __UIAXStringForVariables();

    v7 = v13;
  }

  if (v6)
  {
    v18 = [v6 accessibilityLabel];
    v14 = __UIAXStringForVariables();

    v7 = v14;
  }

  if (v19)
  {
    v15 = [(SmallSearchLockupViewAccessibility *)self _accessibilityAdvertisement];
    v16 = __UIAXStringForVariables();

    v7 = v16;
  }

  return v7;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v10.receiver = self;
  v10.super_class = SmallSearchLockupViewAccessibility;
  v4 = [(SmallSearchLockupViewAccessibility *)&v10 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilityAdButton"];
  v6 = [(SmallSearchLockupViewAccessibility *)self _accessibilityAdvertisement];
  [v5 setAccessibilityLabel:v6];

  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v3 axSafelyAddObject:v5];
  v7 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilityMetadataRibbonView"];
  [v7 setIsAccessibilityElement:0];
  [v3 axSafelyAddObject:v7];
  v8 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilitySearchTagsRibbonView"];
  [v8 setIsAccessibilityElement:0];
  [v3 axSafelyAddObject:v8];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SmallSearchLockupViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SmallSearchLockupViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityUserInputLabels
{
  objc_opt_class();
  v3 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = __UIAXStringForVariables();
  v6 = MEMORY[0x29C2E9440](v5);

  return v6;
}

@end
@interface SmallSearchLockupViewAccessibility
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
@end

@implementation SmallSearchLockupViewAccessibility

- (id)accessibilityLabel
{
  v19 = [(SmallSearchLockupViewAccessibility *)self safeBoolForKey:@"accessibilityIsAd"];
  v3 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilityRatingCountLabel"];
  v4 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilitytUserRatingView"];
  v5 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilityDescriptionLabel"];
  v6 = [(SmallSearchLockupViewAccessibility *)self safeSwiftValueForKey:@"editorsChoiceView"];
  v20.receiver = self;
  v20.super_class = SmallSearchLockupViewAccessibility;
  accessibilityLabel = [(SmallSearchLockupViewAccessibility *)&v20 accessibilityLabel];
  accessibilityLabel2 = [v3 accessibilityLabel];

  if (accessibilityLabel2)
  {
    v9 = MEMORY[0x29EDBA0F8];
    v10 = accessibilityAppStoreLocalizedString(@"user.ratings");
    accessibilityLabel3 = [v3 accessibilityLabel];
    v12 = [v9 stringWithFormat:v10, accessibilityLabel3];

    v13 = __UIAXStringForVariables();

    accessibilityLabel = v13;
  }

  if (v6)
  {
    accessibilityLabel4 = [v6 accessibilityLabel];
    v14 = __UIAXStringForVariables();

    accessibilityLabel = v14;
  }

  if (v19)
  {
    _accessibilityAdvertisement = [(SmallSearchLockupViewAccessibility *)self _accessibilityAdvertisement];
    v16 = __UIAXStringForVariables();

    accessibilityLabel = v16;
  }

  return accessibilityLabel;
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v10.receiver = self;
  v10.super_class = SmallSearchLockupViewAccessibility;
  _accessibilitySupplementaryFooterViews = [(SmallSearchLockupViewAccessibility *)&v10 _accessibilitySupplementaryFooterViews];
  [array axSafelyAddObjectsFromArray:_accessibilitySupplementaryFooterViews];

  v5 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilityAdButton"];
  _accessibilityAdvertisement = [(SmallSearchLockupViewAccessibility *)self _accessibilityAdvertisement];
  [v5 setAccessibilityLabel:_accessibilityAdvertisement];

  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [array axSafelyAddObject:v5];
  v7 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilityMetadataRibbonView"];
  [v7 setIsAccessibilityElement:0];
  [array axSafelyAddObject:v7];
  v8 = [(SmallSearchLockupViewAccessibility *)self safeValueForKey:@"accessibilitySearchTagsRibbonView"];
  [v8 setIsAccessibilityElement:0];
  [array axSafelyAddObject:v8];

  return array;
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
  v6 = MEMORY[0x29C2C9580](v5);

  return v6;
}

@end
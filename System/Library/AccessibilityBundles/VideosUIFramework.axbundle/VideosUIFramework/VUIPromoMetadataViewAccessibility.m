@interface VUIPromoMetadataViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axCanonicalId;
- (id)_axMetadataLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)updateWithInfo:(id)a3;
@end

@implementation VUIPromoMetadataViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIPromoMetadataView" hasInstanceMethod:@"skipInfo" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVPMediaItemSkipInfo" hasInstanceMethod:@"promoInfo" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUIPromoMetadataView" hasInstanceMethod:@"titleImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUIPromoMetadataView" hasInstanceMethod:@"mediaTagsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVPMediaItemPromoInfo" hasInstanceMethod:@"canonicalId" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUIPromoMetadataView" hasInstanceMethod:@"skipButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUIPromoMetadataView" hasInstanceMethod:@"onlySkipButtonAvailable" withFullSignature:{"B", 0}];
  [v3 validateClass:@"VUIPromoMetadataView" hasInstanceMethod:@"upNextButton" withFullSignature:{"@", 0}];
}

- (id)_axCanonicalId
{
  v2 = [(VUIPromoMetadataViewAccessibility *)self _axPromoInfo];
  v3 = [v2 safeValueForKey:@"canonicalId"];

  return v3;
}

- (id)_axMetadataLabel
{
  v3 = [(VUIPromoMetadataViewAccessibility *)self _axTitleImageView];
  v4 = [v3 accessibilityLabel];
  v5 = [(VUIPromoMetadataViewAccessibility *)self _axMediaTagsView];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20.receiver = self;
  v20.super_class = VUIPromoMetadataViewAccessibility;
  [(VUIPromoMetadataViewAccessibility *)&v20 _accessibilityLoadAccessibilityInformation];
  v3 = [(VUIPromoMetadataViewAccessibility *)self _axTitleImageView];
  [v3 setIsAccessibilityElement:1];

  v4 = [(VUIPromoMetadataViewAccessibility *)self _axTitleImageView];
  v5 = [(VUIPromoMetadataViewAccessibility *)self _axPromoInfo];
  v6 = [v5 safeStringForKey:@"title"];
  [v4 setAccessibilityLabel:v6];

  v7 = [(VUIPromoMetadataViewAccessibility *)self _axTitleImageView];
  v8 = *MEMORY[0x29EDC7F80];
  [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  v9 = [(VUIPromoMetadataViewAccessibility *)self _axMediaTagsView];
  [v9 setIsAccessibilityElement:1];

  v10 = [(VUIPromoMetadataViewAccessibility *)self _axMediaTagsView];
  [v10 setAccessibilityTraits:v8];

  objc_initWeak(&location, self);
  v11 = [(VUIPromoMetadataViewAccessibility *)self _axSkipButton];
  [v11 _accessibilitySetShouldIncludeRowRangeInElementDescription:1];

  v12 = [(VUIPromoMetadataViewAccessibility *)self _axSkipButton];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __79__VUIPromoMetadataViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v17[3] = &unk_29F31C298;
  objc_copyWeak(&v18, &location);
  [v12 _setAccessibilityRowRangeBlock:v17];

  v13 = [(VUIPromoMetadataViewAccessibility *)self _axUpNextButton];
  [v13 _accessibilitySetShouldIncludeRowRangeInElementDescription:1];

  v14 = [(VUIPromoMetadataViewAccessibility *)self _axUpNextButton];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __79__VUIPromoMetadataViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v15[3] = &unk_29F31C298;
  objc_copyWeak(&v16, &location);
  [v14 _setAccessibilityRowRangeBlock:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

id __79__VUIPromoMetadataViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _axOnlySkipButtonAvailable])
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x29EDBA168] valueWithRange:{2, 2}];
  }

  return v2;
}

id __79__VUIPromoMetadataViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _axOnlySkipButtonAvailable])
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x29EDBA168] valueWithRange:{1, 2}];
  }

  return v2;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIPromoMetadataViewAccessibility;
  [(VUIPromoMetadataViewAccessibility *)&v3 layoutSubviews];
  [(VUIPromoMetadataViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)updateWithInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = VUIPromoMetadataViewAccessibility;
  [(VUIPromoMetadataViewAccessibility *)&v4 updateWithInfo:a3];
  [(VUIPromoMetadataViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)didMoveToSuperview
{
  v2.receiver = self;
  v2.super_class = VUIPromoMetadataViewAccessibility;
  [(VUIPromoMetadataViewAccessibility *)&v2 didMoveToSuperview];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __55__VUIPromoMetadataViewAccessibility_didMoveToSuperview__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7ED8];
  v2 = [*(a1 + 32) _axSkipButton];
  UIAccessibilityPostNotification(v1, v2);
}

@end
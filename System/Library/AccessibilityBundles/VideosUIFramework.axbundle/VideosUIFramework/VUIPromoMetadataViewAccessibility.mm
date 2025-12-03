@interface VUIPromoMetadataViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axCanonicalId;
- (id)_axMetadataLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)updateWithInfo:(id)info;
@end

@implementation VUIPromoMetadataViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIPromoMetadataView" hasInstanceMethod:@"skipInfo" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVPMediaItemSkipInfo" hasInstanceMethod:@"promoInfo" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIPromoMetadataView" hasInstanceMethod:@"titleImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIPromoMetadataView" hasInstanceMethod:@"mediaTagsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVPMediaItemPromoInfo" hasInstanceMethod:@"canonicalId" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIPromoMetadataView" hasInstanceMethod:@"skipButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIPromoMetadataView" hasInstanceMethod:@"onlySkipButtonAvailable" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"VUIPromoMetadataView" hasInstanceMethod:@"upNextButton" withFullSignature:{"@", 0}];
}

- (id)_axCanonicalId
{
  _axPromoInfo = [(VUIPromoMetadataViewAccessibility *)self _axPromoInfo];
  v3 = [_axPromoInfo safeValueForKey:@"canonicalId"];

  return v3;
}

- (id)_axMetadataLabel
{
  _axTitleImageView = [(VUIPromoMetadataViewAccessibility *)self _axTitleImageView];
  accessibilityLabel = [_axTitleImageView accessibilityLabel];
  _axMediaTagsView = [(VUIPromoMetadataViewAccessibility *)self _axMediaTagsView];
  accessibilityLabel2 = [_axMediaTagsView accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20.receiver = self;
  v20.super_class = VUIPromoMetadataViewAccessibility;
  [(VUIPromoMetadataViewAccessibility *)&v20 _accessibilityLoadAccessibilityInformation];
  _axTitleImageView = [(VUIPromoMetadataViewAccessibility *)self _axTitleImageView];
  [_axTitleImageView setIsAccessibilityElement:1];

  _axTitleImageView2 = [(VUIPromoMetadataViewAccessibility *)self _axTitleImageView];
  _axPromoInfo = [(VUIPromoMetadataViewAccessibility *)self _axPromoInfo];
  v6 = [_axPromoInfo safeStringForKey:@"title"];
  [_axTitleImageView2 setAccessibilityLabel:v6];

  _axTitleImageView3 = [(VUIPromoMetadataViewAccessibility *)self _axTitleImageView];
  v8 = *MEMORY[0x29EDC7F80];
  [_axTitleImageView3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  _axMediaTagsView = [(VUIPromoMetadataViewAccessibility *)self _axMediaTagsView];
  [_axMediaTagsView setIsAccessibilityElement:1];

  _axMediaTagsView2 = [(VUIPromoMetadataViewAccessibility *)self _axMediaTagsView];
  [_axMediaTagsView2 setAccessibilityTraits:v8];

  objc_initWeak(&location, self);
  _axSkipButton = [(VUIPromoMetadataViewAccessibility *)self _axSkipButton];
  [_axSkipButton _accessibilitySetShouldIncludeRowRangeInElementDescription:1];

  _axSkipButton2 = [(VUIPromoMetadataViewAccessibility *)self _axSkipButton];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __79__VUIPromoMetadataViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v17[3] = &unk_29F31C298;
  objc_copyWeak(&v18, &location);
  [_axSkipButton2 _setAccessibilityRowRangeBlock:v17];

  _axUpNextButton = [(VUIPromoMetadataViewAccessibility *)self _axUpNextButton];
  [_axUpNextButton _accessibilitySetShouldIncludeRowRangeInElementDescription:1];

  _axUpNextButton2 = [(VUIPromoMetadataViewAccessibility *)self _axUpNextButton];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __79__VUIPromoMetadataViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v15[3] = &unk_29F31C298;
  objc_copyWeak(&v16, &location);
  [_axUpNextButton2 _setAccessibilityRowRangeBlock:v15];

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

- (void)updateWithInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = VUIPromoMetadataViewAccessibility;
  [(VUIPromoMetadataViewAccessibility *)&v4 updateWithInfo:info];
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
@interface ProductLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (ProductLockupCollectionViewCellAccessibility)initWithFrame:(CGRect)frame;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation ProductLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ProductPageExtension.ProductLockupCollectionViewCell" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.ProductLockupCollectionViewCell" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.ProductLockupCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.ProductLockupCollectionViewCell" hasInstanceMethod:@"accessibilityArtworkView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.ProductLockupCollectionViewCell" hasInstanceMethod:@"accessibilityDeveloperLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.ProductLockupCollectionViewCell" hasInstanceMethod:@"accessibilityTaglineLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.ProductLockupCollectionViewCell" hasInstanceMethod:@"accessibilityOfferButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.ProductLockupCollectionViewCell" hasInstanceMethod:@"accessibilityOfferSubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.ProductLockupCollectionViewCell" hasInstanceMethod:@"accessibilityDownloadProgressLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.ProductLockupCollectionViewCell" hasSwiftField:@"expandedOfferTitleLabel" withSwiftType:"Optional<DynamicTypeLabel>"];
  [validationsCopy validateClass:@"ProductPageExtension.ProductLockupCollectionViewCell" hasSwiftField:@"expandedOfferSubtitleLabel" withSwiftType:"Optional<DynamicTypeLabel>"];
  [validationsCopy validateClass:@"ProductPageExtension.ProductLockupCollectionViewCell" hasInstanceMethod:@"accessibilityVideoView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.VideoView" hasInstanceMethod:@"accessibilityPlayButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.VideoView" hasInstanceMethod:@"accessibilityPlayerViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.VideoView" hasInstanceMethod:@"accessibilityIsPlaying" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.VideoView" hasInstanceMethod:@"accessibilityShouldBePlaying" withFullSignature:{"B", 0}];
}

- (id)accessibilityElements
{
  _accessibilityProductLockupCollectionViewCellElements = [(ProductLockupCollectionViewCellAccessibility *)self _accessibilityProductLockupCollectionViewCellElements];
  if (!_accessibilityProductLockupCollectionViewCellElements)
  {
    _accessibilityProductLockupCollectionViewCellElements = [MEMORY[0x29EDB8DE8] array];
    v4 = [(ProductLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityVideoView"];
    v5 = [v4 safeValueForKey:@"accessibilityPlayerViewController"];
    v6 = [v5 safeUIViewForKey:@"view"];

    v7 = [v4 safeBoolForKey:@"accessibilityIsPlaying"];
    v8 = [v4 safeBoolForKey:@"accessibilityShouldBePlaying"];
    if ([v6 _accessibilityViewIsVisible] && v7 && v8)
    {
      [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v6];
    }

    v9 = [v4 safeValueForKey:@"accessibilityPlayButton"];
    if ([v9 _accessibilityViewIsVisible])
    {
      [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v9];
    }

    objc_opt_class();
    v10 = [(ProductLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
    v11 = __UIAccessibilityCastAsClass();

    [v11 setAccessibilityRespondsToUserInteraction:1];
    accessibilityTraits = [v11 accessibilityTraits];
    [v11 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
    v13 = [(ProductLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityArtworkView"];
    accessibilityLabel = [v11 accessibilityLabel];
    [v13 setAccessibilityValue:accessibilityLabel];

    [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v13];
    [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v11];
    objc_opt_class();
    v15 = [(ProductLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityDeveloperLabel"];
    v16 = __UIAccessibilityCastAsClass();

    v29 = v13;
    v30 = v11;
    v31 = v9;
    v32 = v6;
    v33 = v4;
    [v16 setAccessibilityRespondsToUserInteraction:1];
    v28 = v16;
    [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v16];
    objc_opt_class();
    v17 = [(ProductLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityTaglineLabel"];
    v18 = __UIAccessibilityCastAsClass();

    [v18 setAccessibilityRespondsToUserInteraction:0];
    [v18 setAccessibilityTraits:*MEMORY[0x29EDC7FD0]];
    [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v18];
    v19 = [(ProductLockupCollectionViewCellAccessibility *)self safeUIViewForKey:@"accessibilityBannerView"];
    [v19 setAccessibilityRespondsToUserInteraction:1];
    [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v19];
    v20 = [(ProductLockupCollectionViewCellAccessibility *)self safeUIViewForKey:@"accessibilitySecondaryBannerView"];
    [v20 setAccessibilityRespondsToUserInteraction:1];
    [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v20];
    v21 = [(ProductLockupCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"expandedOfferTitleLabel"];
    [v21 setAccessibilityRespondsToUserInteraction:1];
    [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v21];
    v22 = [(ProductLockupCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"expandedOfferSubtitleLabel"];
    [v22 setAccessibilityRespondsToUserInteraction:1];
    [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v22];
    v23 = [(ProductLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityOfferButton"];
    [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v23];
    objc_opt_class();
    v24 = [(ProductLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityOfferSubtitleLabel"];
    v25 = __UIAccessibilityCastAsClass();

    [v25 setAccessibilityRespondsToUserInteraction:1];
    [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v25];
    v26 = [(ProductLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityDownloadProgressLabel"];
    [v26 setAccessibilityRespondsToUserInteraction:1];
    [v26 setAccessibilityTraits:*MEMORY[0x29EDC7FF0]];
    [_accessibilityProductLockupCollectionViewCellElements axSafelyAddObject:v26];
    [(ProductLockupCollectionViewCellAccessibility *)self _setAccessibilityProductLockupCollectionViewCellElements:_accessibilityProductLockupCollectionViewCellElements];
  }

  return _accessibilityProductLockupCollectionViewCellElements;
}

- (ProductLockupCollectionViewCellAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = ProductLockupCollectionViewCellAccessibility;
  v3 = [(ProductLockupCollectionViewCellAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(ProductLockupCollectionViewCellAccessibility *)v3 _setAccessibilityProductLockupCollectionViewCellElements:0];

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ProductLockupCollectionViewCellAccessibility;
  [(ProductLockupCollectionViewCellAccessibility *)&v3 layoutSubviews];
  [(ProductLockupCollectionViewCellAccessibility *)self _setAccessibilityProductLockupCollectionViewCellElements:0];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = ProductLockupCollectionViewCellAccessibility;
  [(ProductLockupCollectionViewCellAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  accessibilityHeaderElements = [(ProductLockupCollectionViewCellAccessibility *)self accessibilityHeaderElements];
  v4 = [accessibilityHeaderElements countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = *MEMORY[0x29EDC7F80];
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(accessibilityHeaderElements);
        }

        [*(*(&v10 + 1) + 8 * v8++) setAccessibilityTraits:v7];
      }

      while (v5 != v8);
      v5 = [accessibilityHeaderElements countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x29EDCA608];
}

@end
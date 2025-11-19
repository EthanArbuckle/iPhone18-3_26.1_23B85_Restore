@interface VUIButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axContainedInMediaShowcasingMetadataView;
- (BOOL)_axIsFavoriteBarButton;
- (BOOL)_axIsMoreInfoButton;
- (BOOL)_axIsOpenInAppleSportsBarButton;
- (BOOL)_axIsSmartPlayButton;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)_axAssetName;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VUIButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIButton" hasProperty:@"textContentView" withType:"@"];
  [v3 validateClass:@"VUILabel" isKindOfClass:@"UILabel"];
  [v3 validateClass:@"VUIMediaTagsView"];
  [v3 validateClass:@"VUIButton" hasInstanceMethod:@"_buttonTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIImage" hasInstanceVariable:@"_imageAsset" withType:"UIImageAsset"];
  [v3 validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUIButton" hasProperty:@"buttonType" withType:"Q"];
}

- (BOOL)_axContainedInMediaShowcasingMetadataView
{
  v2 = [(VUIButtonAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_2 startWithSelf:0];
  v3 = v2 != 0;

  return v3;
}

uint64_t __67__VUIButtonAccessibility__axContainedInMediaShowcasingMetadataView__block_invoke()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = [v1 axContainsString:@"MediaShowcasingButtonsView"];

  return v2;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = VUIButtonAccessibility;
  [(VUIButtonAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(VUIButtonAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_342];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setIsAccessibilityElement:0];
  [v4 setAccessibilityRespondsToUserInteraction:0];
}

uint64_t __68__VUIButtonAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isAccessibilityElement
{
  MEMORY[0x29ED3FF70](@"VideosUI.SeeAllButton", a2);
  result = 1;
  if (objc_opt_isKindOfClass())
  {
    v3 = [(VUIButtonAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29ED3FF70](@"VideosUI.CollectionRichHeaderView")];

    if (v3)
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = VUIButtonAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(VUIButtonAccessibility *)&v8 accessibilityTraits];
  if ([(VUIButtonAccessibility *)self _axIsFavoriteBarButton])
  {
    v4 = [(VUIButtonAccessibility *)self _axAssetName];
    v5 = [v4 containsString:@"fill"];

    v6 = *MEMORY[0x29EDC7FC0];
    if ((v5 & 1) == 0)
    {
      v6 = 0;
    }

    v3 |= v6;
  }

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(VUIButtonAccessibility *)self _accessibilityGetBlockForAttribute:1];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  if ([(VUIButtonAccessibility *)self _axIsOpenInAppleSportsBarButton])
  {
    v5 = accessibilityLocalizedString(@"sports.openIn");
    goto LABEL_5;
  }

  if ([(VUIButtonAccessibility *)self _axIsSmartPlayButton])
  {
    v8 = [(VUIButtonAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_360];
    v9 = [v8 accessibilityLabel];
    v10 = accessibilityLocalizedString(@"play.button");
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v6 = [(VUIButtonAccessibility *)self _atvaccessibilityITMLAccessibilityContent];
    if (![v6 length])
    {
      v24 = 0;
      objc_opt_class();
      v11 = [(VUIButtonAccessibility *)self safeValueForKey:@"textContentView"];
      v12 = __UIAccessibilityCastAsClass();

      v13 = [v12 text];

      if ([v13 length])
      {
        v14 = [(VUIButtonAccessibility *)self accessibilityIdentifier];
        v15 = [v14 isEqualToString:@"BrandLinkButton"];

        if (v15)
        {
          v16 = [(VUIButtonAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_372];
          v17 = [v16 accessibilityLabel];
          v18 = accessibilityLocalizedString(@"brand.link.button");
          [v17 length];
          v6 = AXCFormattedString();
        }

        else
        {
          v22 = *MEMORY[0x29EDC7378];
          v6 = AXAttributedStringForBetterPronuciation();
        }

        v20 = v13;
      }

      else
      {
        v19 = [(VUIButtonAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_383];
        v20 = [v19 accessibilityLabel];

        if ([v20 length])
        {
          v21 = v20;
        }

        else
        {
          v23.receiver = self;
          v23.super_class = VUIButtonAccessibility;
          v21 = [(VUIButtonAccessibility *)&v23 accessibilityLabel];
        }

        v6 = v21;
      }
    }
  }

LABEL_6:

  return v6;
}

uint64_t __44__VUIButtonAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"VUILabel");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __44__VUIButtonAccessibility_accessibilityLabel__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"VUIImageView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __44__VUIButtonAccessibility_accessibilityLabel__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CGRect)accessibilityFrame
{
  v18.receiver = self;
  v18.super_class = VUIButtonAccessibility;
  [(VUIButtonAccessibility *)&v18 accessibilityFrame];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [(VUIButtonAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_390 startWithSelf:0];

  if (v11)
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v12 = CGRectGetWidth(v19) * -0.75;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v13 = CGRectGetHeight(v20) * -0.75;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectInset(v21, v12, v13);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

uint64_t __44__VUIButtonAccessibility_accessibilityFrame__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"_UINavigationBarContentView");
  if (objc_opt_isKindOfClass())
  {
    v3 = 1;
  }

  else
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v3 = [v5 axContainsString:@"MediaShowcasingToolbar"];
  }

  return v3;
}

- (id)_axAssetName
{
  v2 = [(VUIButtonAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_398];
  v3 = [v2 safeValueForKeyPath:@"image._imageAsset"];
  v4 = [v3 safeStringForKey:@"assetName"];

  return v4;
}

uint64_t __38__VUIButtonAccessibility__axAssetName__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsFavoriteBarButton
{
  if ([(VUIButtonAccessibility *)self _axButtonType]!= 7)
  {
    return 0;
  }

  v3 = [(VUIButtonAccessibility *)self _axAssetName];
  v4 = [v3 containsString:@"star"];

  return v4;
}

- (BOOL)_axIsOpenInAppleSportsBarButton
{
  MEMORY[0x29ED3FF70](@"VideosUI.SportsBridgeButton", a2);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [(VUIButtonAccessibility *)self _axAssetName];
  v4 = [v3 containsString:@"sportscourt"];

  return v4;
}

- (BOOL)_axIsMoreInfoButton
{
  if ([(VUIButtonAccessibility *)self _axButtonType]!= 1)
  {
    return 0;
  }

  v3 = [(VUIButtonAccessibility *)self _axAssetName];
  v4 = [v3 containsString:@"text.page"];

  return v4;
}

- (BOOL)_axIsSmartPlayButton
{
  v3 = [(VUIButtonAccessibility *)self accessibilityIdentifier];
  if ([v3 containsString:@"canonical.play"])
  {
    v4 = [(VUIButtonAccessibility *)self accessibilityIdentifier];
    v5 = [v4 containsString:@"smartButton"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIButtonAccessibility;
  [(VUIButtonAccessibility *)&v3 layoutSubviews];
  [(VUIButtonAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
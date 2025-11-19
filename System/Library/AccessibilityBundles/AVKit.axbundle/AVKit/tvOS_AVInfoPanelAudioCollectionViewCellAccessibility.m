@interface tvOS_AVInfoPanelAudioCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHeaderElements;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation tvOS_AVInfoPanelAudioCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVInfoPanelAudioCollectionViewCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"AVInfoPanelAudioCollectionViewCell" hasInstanceVariable:@"_checkmarkImageView" withType:"UIImageView"];
  [v3 validateClass:@"AVInfoPanelAudioCollectionViewCell" hasInstanceVariable:@"_mediaOption" withType:"AVInfoPanelMediaOption"];
  [v3 validateClass:@"AVInfoPanelAudioCollectionViewCell" hasInstanceVariable:@"_displayAsSelected" withType:"B"];
  [v3 validateClass:@"AVInfoPanelMediaOption" hasClassMethod:@"_imageForRoute:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"AVInfoPanelMediaOption" hasInstanceMethod:@"route" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVInfoPanelCollectionReusableHeaderView"];
  [v3 validateClass:@"AVInfoPanelCollectionReusableHeaderView" isKindOfClass:@"UIView"];
}

- (id)accessibilityLabel
{
  v2 = [(tvOS_AVInfoPanelAudioCollectionViewCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(tvOS_AVInfoPanelAudioCollectionViewCellAccessibility *)self safeValueForKey:@"_mediaOption"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9 = MEMORY[0x29EDCA5F8];
  v4 = v3;
  AXPerformSafeBlock();
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);
  v6 = [v5 accessibilityLabel];

  v7 = [(tvOS_AVInfoPanelAudioCollectionViewCellAccessibility *)self accessibilityLabel];
  LODWORD(v5) = [v6 isEqualToString:v7];

  if (v5)
  {

    v6 = 0;
  }

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(tvOS_AVInfoPanelAudioCollectionViewCellAccessibility *)self safeBoolForKey:@"_displayAsSelected"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityHeaderElements
{
  v2 = [(tvOS_AVInfoPanelAudioCollectionViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v3 = [v2 _accessibilityFindDescendant:&__block_literal_global_8];
  v4 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end
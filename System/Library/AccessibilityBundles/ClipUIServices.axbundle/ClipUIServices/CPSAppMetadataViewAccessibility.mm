@interface CPSAppMetadataViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CPSAppMetadataViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CPSAppMetadataView" hasInstanceVariable:@"_appNameVibrantLabel" withType:"CPSVibrantLabel"];
  [v3 validateClass:@"CPSAppMetadataView" hasInstanceVariable:@"_appStoreButton" withType:"CPSAppStoreButton"];
  [v3 validateClass:@"CPSAppMetadataView" hasInstanceVariable:@"_contentRatingContainerView" withType:"CPSContentRatingContainerView"];
  [v3 validateClass:@"CPSContentRatingContainerView" hasInstanceVariable:@"_contentRatingImageView" withType:"CPSScaledImageView"];
  [v3 validateClass:@"UIImageView" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImage" hasInstanceMethod:@"imageAsset" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CPSAppMetadataViewAccessibility *)self safeValueForKey:@"_appNameVibrantLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(CPSAppMetadataViewAccessibility *)self safeValueForKeyPath:@"_contentRatingContainerView._contentRatingImageView.image.imageAsset"];
  v6 = [v5 safeStringForKey:@"assetName"];

  v7 = [(CPSAppMetadataViewAccessibility *)self safeValueForKey:@"_appStoreButton"];
  v8 = [v7 accessibilityLabel];

  if (v4)
  {
    v9 = MEMORY[0x29EDBA0F8];
    v10 = accessibilityLocalizedString(@"appstore.poweredBy");
    v11 = [v9 stringWithFormat:v10, v4];
    v12 = MEMORY[0x29EDBA0F8];
    v13 = accessibilityLocalizedString(@"appstore.age.rating");
    v17 = [v12 stringWithFormat:v13, v6];
    v14 = __UIAXStringForVariables();
  }

  else
  {
    v14 = 0;
  }

  v15 = __UIAXStringForVariables();

  return v15;
}

@end
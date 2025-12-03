@interface CPSAppMetadataViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CPSAppMetadataViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CPSAppMetadataView" hasInstanceVariable:@"_appNameVibrantLabel" withType:"CPSVibrantLabel"];
  [validationsCopy validateClass:@"CPSAppMetadataView" hasInstanceVariable:@"_appStoreButton" withType:"CPSAppStoreButton"];
  [validationsCopy validateClass:@"CPSAppMetadataView" hasInstanceVariable:@"_contentRatingContainerView" withType:"CPSContentRatingContainerView"];
  [validationsCopy validateClass:@"CPSContentRatingContainerView" hasInstanceVariable:@"_contentRatingImageView" withType:"CPSScaledImageView"];
  [validationsCopy validateClass:@"UIImageView" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImage" hasInstanceMethod:@"imageAsset" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CPSAppMetadataViewAccessibility *)self safeValueForKey:@"_appNameVibrantLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(CPSAppMetadataViewAccessibility *)self safeValueForKeyPath:@"_contentRatingContainerView._contentRatingImageView.image.imageAsset"];
  v6 = [v5 safeStringForKey:@"assetName"];

  v7 = [(CPSAppMetadataViewAccessibility *)self safeValueForKey:@"_appStoreButton"];
  accessibilityLabel2 = [v7 accessibilityLabel];

  if (accessibilityLabel)
  {
    v9 = MEMORY[0x29EDBA0F8];
    v10 = accessibilityLocalizedString(@"appstore.poweredBy");
    v11 = [v9 stringWithFormat:v10, accessibilityLabel];
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
@interface GlyphButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation GlyphButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShelfKitCollectionViews.GlyphButton" hasInstanceMethod:@"accessibilityGlyphView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImageView" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImage" hasInstanceVariable:@"_imageAsset" withType:"UIImageAsset"];
  [validationsCopy validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(GlyphButtonAccessibility *)self safeValueForKey:@"accessibilityGlyphView"];
  v11.receiver = self;
  v11.super_class = GlyphButtonAccessibility;
  accessibilityLabel = [(GlyphButtonAccessibility *)&v11 accessibilityLabel];
  if ([accessibilityLabel length])
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = [v3 safeValueForKey:@"image"];
    v7 = [v6 safeValueForKey:@"_imageAsset"];
    v8 = [v7 safeStringForKey:@"assetName"];

    v9 = AXSSAccessibilityDescriptionForSymbolName();

    accessibilityLabel = v9;
  }

  return accessibilityLabel;
}

@end
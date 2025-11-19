@interface GlyphButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation GlyphButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ShelfKitCollectionViews.GlyphButton" hasInstanceMethod:@"accessibilityGlyphView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImageView" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIImage" hasInstanceVariable:@"_imageAsset" withType:"UIImageAsset"];
  [v3 validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(GlyphButtonAccessibility *)self safeValueForKey:@"accessibilityGlyphView"];
  v11.receiver = self;
  v11.super_class = GlyphButtonAccessibility;
  v4 = [(GlyphButtonAccessibility *)&v11 accessibilityLabel];
  if ([v4 length])
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

    v4 = v9;
  }

  return v4;
}

@end
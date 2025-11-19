@interface HUNamedWallpaperCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
@end

@implementation HUNamedWallpaperCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUNamedWallpaperCollectionViewController" hasInstanceMethod:@"collectionView: cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"HFWallpaper" hasInstanceMethod:@"assetIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUNamedWallpaperCollectionViewController" hasInstanceMethod:@"wallpapers" withFullSignature:{"@", 0}];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = HUNamedWallpaperCollectionViewControllerAccessibility;
  v8 = [(HUNamedWallpaperCollectionViewControllerAccessibility *)&v17 collectionView:v6 cellForItemAtIndexPath:v7];
  [v8 setIsAccessibilityElement:1];
  objc_opt_class();
  v9 = [(HUNamedWallpaperCollectionViewControllerAccessibility *)self safeValueForKey:@"wallpapers"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v7 item];
  if (v11 < [v10 count])
  {
    v12 = [v10 objectAtIndex:{objc_msgSend(v7, "item")}];
    objc_opt_class();
    v13 = [v12 safeValueForKey:@"assetIdentifier"];
    v14 = __UIAccessibilityCastAsClass();

    v15 = accessibilityLabelForNamedWallpaper(v14);
    [v8 setAccessibilityLabel:v15];
  }

  return v8;
}

@end
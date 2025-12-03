@interface HUNamedWallpaperCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
@end

@implementation HUNamedWallpaperCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUNamedWallpaperCollectionViewController" hasInstanceMethod:@"collectionView: cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"HFWallpaper" hasInstanceMethod:@"assetIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUNamedWallpaperCollectionViewController" hasInstanceMethod:@"wallpapers" withFullSignature:{"@", 0}];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = HUNamedWallpaperCollectionViewControllerAccessibility;
  v8 = [(HUNamedWallpaperCollectionViewControllerAccessibility *)&v17 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  [v8 setIsAccessibilityElement:1];
  objc_opt_class();
  v9 = [(HUNamedWallpaperCollectionViewControllerAccessibility *)self safeValueForKey:@"wallpapers"];
  v10 = __UIAccessibilityCastAsClass();

  item = [pathCopy item];
  if (item < [v10 count])
  {
    v12 = [v10 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
    objc_opt_class();
    v13 = [v12 safeValueForKey:@"assetIdentifier"];
    v14 = __UIAccessibilityCastAsClass();

    v15 = accessibilityLabelForNamedWallpaper(v14);
    [v8 setAccessibilityLabel:v15];
  }

  return v8;
}

@end
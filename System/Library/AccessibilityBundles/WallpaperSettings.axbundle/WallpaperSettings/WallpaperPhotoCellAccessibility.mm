@interface WallpaperPhotoCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axWallpaperBundle;
- (id)accessibilityLabel;
- (unint64_t)_axWallpaperType;
@end

@implementation WallpaperPhotoCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WallpaperGridViewController"];
  [v3 validateClass:@"WallpaperGridViewController" hasInstanceMethod:@"_bundleCollection" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WKWallpaperBundleCollection" hasInstanceMethod:@"wallpaperType" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"WKWallpaperBundleCollection" hasInstanceMethod:@"wallpaperBundleAtIndex:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"WKWallpaperBundleCollection" hasInstanceMethod:@"numberOfItems" withFullSignature:{"q", 0}];
  [v3 validateClass:@"WKWallpaperBundle" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WKWallpaperBundle" hasInstanceMethod:@"_wallpaperAssetLookup" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WKDynamicWallpaper" hasInstanceMethod:@"_dynamicDictionary" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  if (!accessibilityLabel_Labels)
  {
    accessibilityLabel_Labels = &unk_2A23B1BC8;
  }

  v3 = [(WallpaperPhotoCellAccessibility *)self _axWallpaperBundle];
  if ([(WallpaperPhotoCellAccessibility *)self _axWallpaperType]!= 2)
  {
    goto LABEL_10;
  }

  v4 = [v3 safeDictionaryForKey:@"_wallpaperAssetLookup"];
  v16 = 0;
  objc_opt_class();
  v5 = [v4 objectForKey:@"WKWallpaperLocationHomeScreen"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 objectForKey:@"default"];
  v8 = [v7 safeDictionaryForKey:@"_dynamicDictionary"];

  v9 = [v8 objectForKey:@"kSBUIMagicWallpaperThumbnailNameKey"];
  if (v9)
  {
    v10 = [accessibilityLabel_Labels objectForKeyedSubscript:v9];
    v11 = v10;
    if (!v10)
    {
      v10 = v9;
    }

    v12 = accessibilityLocalizedString(v10);
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
LABEL_10:
    v13 = [v3 safeStringForKey:@"name"];
    v12 = AXWallpaperLabel(v13);

    if (!v12)
    {
      v15.receiver = self;
      v15.super_class = WallpaperPhotoCellAccessibility;
      v12 = [(WallpaperPhotoCellAccessibility *)&v15 accessibilityLabel];
    }
  }

  return v12;
}

- (id)_axWallpaperBundle
{
  v2 = self;
  v3 = [(WallpaperPhotoCellAccessibility *)v2 _accessibilityIndexPath];
  v4 = [(WallpaperPhotoCellAccessibility *)v2 _accessibilityAncestorIsKindOf:objc_opt_class()];
  v5 = [v4 safeValueForKey:@"delegate"];
  v6 = [v5 safeValueForKey:@"_bundleCollection"];
  if ([v3 item] < 0 || (v7 = objc_msgSend(v3, "item"), v7 >= objc_msgSend(v6, "safeIntegerForKey:", @"numberOfItems")))
  {
    v8 = 0;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    v11 = v6;
    v12 = v3;
    AXPerformSafeBlock();
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  v9 = v8;

  return v8;
}

uint64_t __53__WallpaperPhotoCellAccessibility__axWallpaperBundle__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) wallpaperBundleAtIndex:{objc_msgSend(*(a1 + 40), "item")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (unint64_t)_axWallpaperType
{
  v2 = self;
  v3 = [(WallpaperPhotoCellAccessibility *)v2 _accessibilityAncestorIsKindOf:objc_opt_class()];

  v4 = [v3 safeValueForKey:@"delegate"];
  v5 = [v4 safeValueForKey:@"_bundleCollection"];
  v6 = [v5 safeUnsignedIntegerForKey:@"wallpaperType"];

  return v6;
}

@end
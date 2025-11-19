@interface PUVideoTileViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_axApplyCustomAction:(id)a3;
- (void)_updateImage;
- (void)setAssetViewModel:(id)a3;
@end

@implementation PUVideoTileViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUVideoTileViewController" hasInstanceMethod:@"videoView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUVideoTileViewController" hasInstanceMethod:@"setAssetViewModel:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PUVideoTileViewController" hasInstanceMethod:@"_updateImage" withFullSignature:{"v", 0}];
}

- (void)_updateImage
{
  v2.receiver = self;
  v2.super_class = PUVideoTileViewControllerAccessibility;
  [(PUVideoTileViewControllerAccessibility *)&v2 _updateImage];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)setAssetViewModel:(id)a3
{
  v7.receiver = self;
  v7.super_class = PUVideoTileViewControllerAccessibility;
  v4 = a3;
  [(PUVideoTileViewControllerAccessibility *)&v7 setAssetViewModel:v4];
  v5 = [(PUVideoTileViewControllerAccessibility *)self safeValueForKey:@"videoView", v7.receiver, v7.super_class];
  v6 = [v4 asset];

  [v5 _accessibilitySetRetainedValue:v6 forKey:@"AXAsset"];
}

- (void)_axApplyCustomAction:(id)a3
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [(PUVideoTileViewControllerAccessibility *)self _axMainImageView];
  v6 = [v5 accessibilityCustomActions];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) name];
        v14 = [v4 name];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {

          goto LABEL_13;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [v8 addObject:v4];
  [v5 setAccessibilityCustomActions:v8];
LABEL_13:

  v16 = *MEMORY[0x29EDCA608];
}

@end
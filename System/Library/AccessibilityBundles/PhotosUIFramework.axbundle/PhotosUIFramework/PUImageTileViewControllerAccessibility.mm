@interface PUImageTileViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axImageView;
- (id)_axMainImageView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyAssetToView;
- (void)_axApplyCustomAction:(id)action;
- (void)assetDidChange;
- (void)dealloc;
@end

@implementation PUImageTileViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHLivePhotoView"];
  [validationsCopy validateClass:@"PUIrisImageTileViewController"];
  [validationsCopy validateClass:@"PUImageTileViewController" hasInstanceMethod:@"assetDidChange" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PUImageTileViewController" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUImageTileViewController" hasInstanceMethod:@"_imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUIrisImageTileViewController" hasInstanceMethod:@"_livePhotoView" withFullSignature:{"@", 0}];
}

- (void)dealloc
{
  v3 = [(PUImageTileViewControllerAccessibility *)self safeValueForKey:@"asset"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x29EDCA5F8];
    v6 = 3221225472;
    v7 = __49__PUImageTileViewControllerAccessibility_dealloc__block_invoke;
    v8 = &unk_29F2E8268;
    v9 = v3;
    AXPerformSafeBlock();
  }

  v4.receiver = self;
  v4.super_class = PUImageTileViewControllerAccessibility;
  [(PUImageTileViewControllerAccessibility *)&v4 dealloc];
}

- (void)_axApplyAssetToView
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = [(PUImageTileViewControllerAccessibility *)self safeValueForKey:@"asset"];
  v4 = [(PUImageTileViewControllerAccessibility *)self safeValueForKey:@"view"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subviews = [v4 subviews];
    v6 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(subviews);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSClassFromString(&cfstr_Phlivephotovie_0.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }

          v11 = v10;

          v4 = v11;
          goto LABEL_13;
        }

        v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 _accessibilitySetRetainedValue:v3 forKey:@"AXPHImageAsset"];
    }
  }

  [v4 setIsAccessibilityElement:v3 != 0];

  v12 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PUImageTileViewControllerAccessibility;
  [(PUImageTileViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PUImageTileViewControllerAccessibility *)self _axApplyAssetToView];
}

- (void)assetDidChange
{
  v3.receiver = self;
  v3.super_class = PUImageTileViewControllerAccessibility;
  [(PUImageTileViewControllerAccessibility *)&v3 assetDidChange];
  [(PUImageTileViewControllerAccessibility *)self _axApplyAssetToView];
}

- (id)_axMainImageView
{
  NSClassFromString(&cfstr_Puirisimagetil.isa);
  if (objc_opt_isKindOfClass())
  {
    [(PUImageTileViewControllerAccessibility *)self safeValueForKey:@"_livePhotoView"];
  }

  else
  {
    [(PUImageTileViewControllerAccessibility *)self _axImageView];
  }
  v3 = ;

  return v3;
}

- (void)_axApplyCustomAction:(id)action
{
  v22 = *MEMORY[0x29EDCA608];
  actionCopy = action;
  _axMainImageView = [(PUImageTileViewControllerAccessibility *)self _axMainImageView];
  accessibilityCustomActions = [_axMainImageView accessibilityCustomActions];
  v7 = [accessibilityCustomActions mutableCopy];

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

        name = [*(*(&v17 + 1) + 8 * v12) name];
        name2 = [actionCopy name];
        v15 = [name isEqualToString:name2];

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

  [v8 addObject:actionCopy];
  [_axMainImageView setAccessibilityCustomActions:v8];
LABEL_13:

  v16 = *MEMORY[0x29EDCA608];
}

- (id)_axImageView
{
  NSClassFromString(&cfstr_Puirisimagetil.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [(PUImageTileViewControllerAccessibility *)self safeValueForKeyPath:@"_livePhotoView"];
    v4 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_8];
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
  }

  else
  {
    v5 = [(PUImageTileViewControllerAccessibility *)self safeValueForKey:@"_imageView"];
  }

  return v5;
}

uint64_t __54__PUImageTileViewControllerAccessibility__axImageView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uiimageview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end
@interface PULivePhotoVideoOverlayTileViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyAssetToView;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PULivePhotoVideoOverlayTileViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PULivePhotoVideoOverlayTileViewController" hasInstanceMethod:@"mergedVideo" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PULivePhotoVideoOverlayTileViewController" isKindOfClass:@"PUTileViewController"];
  [v3 validateClass:@"PUTileViewController" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUMergedLivePhotosVideo" hasInstanceMethod:@"assets" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PULivePhotoVideoOverlayTileViewController" hasInstanceMethod:@"viewModel:didChange:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)_axApplyAssetToView
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = [(PULivePhotoVideoOverlayTileViewControllerAccessibility *)self safeValueForKey:@"mergedVideo"];
  v4 = [v3 safeArrayForKey:@"assets"];

  v5 = [v4 firstObject];
  v6 = [(PULivePhotoVideoOverlayTileViewControllerAccessibility *)self safeValueForKey:@"view"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 subviews];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSClassFromString(&cfstr_Phlivephotovie_0.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }

          v13 = v12;

          v6 = v13;
          goto LABEL_13;
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 _accessibilitySetRetainedValue:v5 forKey:@"AXPHImageAsset"];
  }

  [v6 setIsAccessibilityElement:v5 != 0];

  v14 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PULivePhotoVideoOverlayTileViewControllerAccessibility;
  [(PULivePhotoVideoOverlayTileViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PULivePhotoVideoOverlayTileViewControllerAccessibility *)self _axApplyAssetToView];
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v7.receiver = self;
  v7.super_class = PULivePhotoVideoOverlayTileViewControllerAccessibility;
  v6 = a4;
  [(PULivePhotoVideoOverlayTileViewControllerAccessibility *)&v7 viewModel:a3 didChange:v6];
  LODWORD(a3) = [v6 safeBoolForKey:{@"currentAssetDidChange", v7.receiver, v7.super_class}];

  if (a3)
  {
    [(PULivePhotoVideoOverlayTileViewControllerAccessibility *)self _axApplyAssetToView];
  }
}

@end
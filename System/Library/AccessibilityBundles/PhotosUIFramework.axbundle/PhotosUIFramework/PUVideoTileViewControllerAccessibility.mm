@interface PUVideoTileViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_axApplyCustomAction:(id)action;
- (void)_updateImage;
- (void)setAssetViewModel:(id)model;
@end

@implementation PUVideoTileViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUVideoTileViewController" hasInstanceMethod:@"videoView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUVideoTileViewController" hasInstanceMethod:@"setAssetViewModel:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PUVideoTileViewController" hasInstanceMethod:@"_updateImage" withFullSignature:{"v", 0}];
}

- (void)_updateImage
{
  v2.receiver = self;
  v2.super_class = PUVideoTileViewControllerAccessibility;
  [(PUVideoTileViewControllerAccessibility *)&v2 _updateImage];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)setAssetViewModel:(id)model
{
  v7.receiver = self;
  v7.super_class = PUVideoTileViewControllerAccessibility;
  modelCopy = model;
  [(PUVideoTileViewControllerAccessibility *)&v7 setAssetViewModel:modelCopy];
  v5 = [(PUVideoTileViewControllerAccessibility *)self safeValueForKey:@"videoView", v7.receiver, v7.super_class];
  asset = [modelCopy asset];

  [v5 _accessibilitySetRetainedValue:asset forKey:@"AXAsset"];
}

- (void)_axApplyCustomAction:(id)action
{
  v22 = *MEMORY[0x29EDCA608];
  actionCopy = action;
  _axMainImageView = [(PUVideoTileViewControllerAccessibility *)self _axMainImageView];
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

@end
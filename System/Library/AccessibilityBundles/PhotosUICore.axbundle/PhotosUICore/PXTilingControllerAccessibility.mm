@interface PXTilingControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateImageViewTile:(id)tile withIndexPath:(PXSimpleIndexPath *)path;
- (void)_updateTilesIfNeeded;
@end

@implementation PXTilingControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXTileStatePool"];
  [validationsCopy validateClass:@"PXAssetUIImageViewTile"];
  [validationsCopy validateClass:@"PXFocusableUIImageView"];
  objc_opt_class();
  [validationsCopy validateClass:@"PXTilingController" hasInstanceVariable:@"_needsUpdateFlags" withType:__ax_verbose_encode_with_type_encoding_group_class()];
  [validationsCopy validateClass:@"PXAssetUIImageViewTile" hasInstanceVariable:@"_imageView" withType:"PXFocusableUIImageView"];
  [validationsCopy validateClass:@"PXTilingController" hasInstanceMethod:@"_tileStates" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXTilingController" hasInstanceMethod:@"_updateTilesIfNeeded" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PXTilingController" hasInstanceMethod:@"_invalidateTiles" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PXTileStatePool" hasInstanceMethod:@"enumerateStatesUsingBlock:" withFullSignature:{"v", "@?", 0}];
}

- (void)_axUpdateImageViewTile:(id)tile withIndexPath:(PXSimpleIndexPath *)path
{
  v5 = [tile safeValueForKey:@"_imageView"];
  MEMORY[0x29C2E6930](@"PXFocusableUIImageView");
  if (objc_opt_isKindOfClass())
  {
    v6 = *&path->item;
    v7[0] = *&path->dataSourceIdentifier;
    v7[1] = v6;
    [v5 _axSetIndexPath:v7];
  }
}

- (void)_updateTilesIfNeeded
{
  objc_opt_class();
  v3 = [(PXTilingControllerAccessibility *)self safeValueForKey:@"_needsUpdateFlags"];
  v4 = __UIAccessibilityCastAsClass();

  *(v15 + 7) = 0;
  v15[0] = 0;
  if (!strcmp([v4 objCType], "{?=BBBBBBBBBBB}"))
  {
    [v4 getValue:v15];
    v5 = HIBYTE(v15[0]);
    v14.receiver = self;
    v14.super_class = PXTilingControllerAccessibility;
    [(PXTilingControllerAccessibility *)&v14 _updateTilesIfNeeded];
    if (v5 == 1)
    {
      v6 = [(PXTilingControllerAccessibility *)self safeValueForKey:@"_tileStates"];
      MEMORY[0x29C2E6930](@"PXTileStatePool");
      if (objc_opt_isKindOfClass())
      {
        v8 = MEMORY[0x29EDCA5F8];
        v9 = 3221225472;
        v10 = __55__PXTilingControllerAccessibility__updateTilesIfNeeded__block_invoke;
        v11 = &unk_29F2E6560;
        v12 = v6;
        selfCopy = self;
        AXPerformSafeBlock();
      }
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXTilingControllerAccessibility;
    [(PXTilingControllerAccessibility *)&v7 _updateTilesIfNeeded];
  }
}

uint64_t __55__PXTilingControllerAccessibility__updateTilesIfNeeded__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __55__PXTilingControllerAccessibility__updateTilesIfNeeded__block_invoke_2;
  v3[3] = &unk_29F2E6538;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateStatesUsingBlock:v3];
}

void __55__PXTilingControllerAccessibility__updateTilesIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 696);
  MEMORY[0x29C2E6930](@"PXAssetUIImageViewTile");
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
    v7 = *(a3 + 128);
    v8[0] = *(a3 + 112);
    v8[1] = v7;
    [v6 _axUpdateImageViewTile:v5 withIndexPath:v8];
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PXTilingControllerAccessibility;
  [(PXTilingControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v4 = [(PXTilingControllerAccessibility *)self safeValueForKey:@"_tileStates"];
  v3 = v4;
  AXPerformSafeBlock();
}

void __77__PXTilingControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 696);
  MEMORY[0x29C2E6930](@"PXAssetUIImageViewTile");
  if (objc_opt_isKindOfClass())
  {
    [v3 _accessibilityLoadAccessibilityInformation];
  }
}

@end
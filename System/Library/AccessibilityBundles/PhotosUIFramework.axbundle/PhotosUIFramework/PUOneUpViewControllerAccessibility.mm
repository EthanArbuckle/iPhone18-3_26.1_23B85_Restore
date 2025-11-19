@interface PUOneUpViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyCustomActionsToTileControllers;
- (void)_axExecuteBlockOnTileViewControllers:(id)a3;
- (void)_setAccessoryVisible:(BOOL)a3;
- (void)_updateBarsControllerIfNeeded;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUOneUpViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUImageTileViewController"];
  [v3 validateClass:@"PUOneUpBarsController"];
  [v3 validateClass:@"PUOneUpViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"_tilingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUImageTileViewController" hasInstanceMethod:@"_imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"ppt_barsController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"_barsController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"actionsController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUOneUpDefaultActionsController" hasInstanceMethod:@"togglePlayback" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"_needsUpdateBarsController" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"_accessoryVisibilityInteractionController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"_options" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"PUAssetViewModel" hasInstanceMethod:@"contentOffset" withFullSignature:{"{CGPoint=dd}", 0}];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"_isAccessoryVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"viewModel:didChange:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"_updateBarsControllerIfNeeded" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"_setAccessoryVisible:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PUOneUpViewController" hasInstanceMethod:@"_accessoryContentKindForCurrentAsset" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PUAccessoryVisibilityInteractionController" hasInstanceMethod:@"_currentAssetViewModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAssetViewModel" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PUOneUpViewControllerAccessibility;
  [(PUOneUpViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  [(PUOneUpViewControllerAccessibility *)self _axApplyCustomActionsToTileControllers];
  v3 = [(PUOneUpViewControllerAccessibility *)self safeValueForKey:@"_barsController"];
  NSClassFromString(&cfstr_Puoneupbarscon_0.isa);
  if (objc_opt_isKindOfClass())
  {
    [v3 _accessibilityLoadAccessibilityInformation];
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v5.receiver = self;
  v5.super_class = PUOneUpViewControllerAccessibility;
  [(PUOneUpViewControllerAccessibility *)&v5 viewModel:a3 didChange:a4];
  [(PUOneUpViewControllerAccessibility *)self _axApplyCustomActionsToTileControllers];
}

- (void)_updateBarsControllerIfNeeded
{
  v3 = [(PUOneUpViewControllerAccessibility *)self safeBoolForKey:@"_needsUpdateBarsController"];
  v4.receiver = self;
  v4.super_class = PUOneUpViewControllerAccessibility;
  [(PUOneUpViewControllerAccessibility *)&v4 _updateBarsControllerIfNeeded];
  if (v3)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)_setAccessoryVisible:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PUOneUpViewControllerAccessibility;
  [(PUOneUpViewControllerAccessibility *)&v7 _setAccessoryVisible:?];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __59__PUOneUpViewControllerAccessibility__setAccessoryVisible___block_invoke;
  v5[3] = &__block_descriptor_33_e62_v16__0__PUTileController_AXFullScreenTileControllerDelegate__8l;
  v6 = a3;
  [(PUOneUpViewControllerAccessibility *)self _axExecuteBlockOnTileViewControllers:v5];
}

void __59__PUOneUpViewControllerAccessibility__setAccessoryVisible___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _axMainImageView];
  if (v3)
  {
    v4 = v3;
    [v3 setIsAccessibilityElement:(*(a1 + 32) & 1) == 0];
    v3 = v4;
  }
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = [(PUOneUpViewControllerAccessibility *)self safeBoolForKey:@"_isAccessoryVisible"];
  if (a3 != 4 || (v5 & 1) != 0)
  {
    if (((a3 == 3) & v5) == 1)
    {
      v7 = [(PUOneUpViewControllerAccessibility *)self safeValueForKey:@"_accessoryVisibilityInteractionController"];
      v8 = [v7 safeValueForKey:@"_currentAssetViewModel"];
      [v8 safeCGPointForKey:@"contentOffset"];
      v6 = v9 <= 0.0;
      if (v9 <= 0.0)
      {
        [(PUOneUpViewControllerAccessibility *)self _setAccessoryVisible:0];
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = 1;
    [(PUOneUpViewControllerAccessibility *)self _setAccessoryVisible:1];
  }

  return v6;
}

uint64_t __64__PUOneUpViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeBoolForKey:@"_isAccessoryVisible"];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _setAccessoryVisible:0];
  }

  else
  {

    return [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

void __66__PUOneUpViewControllerAccessibility_accessibilityPerformMagicTap__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"actionsController"];
  v1 = [v2 safeValueForKey:@"togglePlayback"];
}

- (void)_axApplyCustomActionsToTileControllers
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = __76__PUOneUpViewControllerAccessibility__axApplyCustomActionsToTileControllers__block_invoke;
  v2[3] = &unk_29F2E83B8;
  v2[4] = self;
  [(PUOneUpViewControllerAccessibility *)self _axExecuteBlockOnTileViewControllers:v2];
}

void __76__PUOneUpViewControllerAccessibility__axApplyCustomActionsToTileControllers__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([*(a1 + 32) safeUnsignedIntegerForKey:@"_options"] & 0x40) == 0)
  {
    v3 = [*(a1 + 32) safeIntegerForKey:@"_accessoryContentKindForCurrentAsset"];
    if (v3 == 1)
    {
      v4 = @"accessory.details.show";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_8;
      }

      v4 = @"accessory.comments.show";
    }

    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityPULocalizedString(v4);
    v7 = [v5 initWithName:v6 target:*(a1 + 32) selector:sel__axShowAccessory];

    if (v7)
    {
      [v8 _axApplyCustomAction:v7];
    }
  }

LABEL_8:
}

- (void)_axExecuteBlockOnTileViewControllers:(id)a3
{
  v4 = a3;
  v10 = 0;
  objc_opt_class();
  v5 = [(PUOneUpViewControllerAccessibility *)self safeValueForKey:@"_tilingView"];
  v6 = __UIAccessibilityCastAsClass();

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __75__PUOneUpViewControllerAccessibility__axExecuteBlockOnTileViewControllers___block_invoke;
  v8[3] = &unk_29F2E83E0;
  v9 = v4;
  v7 = v4;
  [v6 enumerateAllTileControllersUsingBlock:v8];
}

void __75__PUOneUpViewControllerAccessibility__axExecuteBlockOnTileViewControllers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsSafeCategory();
  if ([v4 _axConformsToFullScreenTileControllerDelegate])
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end
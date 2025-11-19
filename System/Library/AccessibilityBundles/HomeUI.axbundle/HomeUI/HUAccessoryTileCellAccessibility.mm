@interface HUAccessoryTileCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityCustomActions;
@end

@implementation HUAccessoryTileCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUAccessoryTileCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"HUAccessoryTileCell" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUAccessoryTileCell" isKindOfClass:@"HUTileCell"];
  [v3 validateClass:@"HUTileCell" hasInstanceMethod:@"tappableAreaForPoint:" withFullSignature:{"@", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"HUTileCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUDashboardViewController" isKindOfClass:@"UICollectionViewController"];
  [v3 validateClass:@"HUDashboardViewController" hasInstanceMethod:@"presentationCoordinator:didRecognizeTapForItem:tappedArea:" withFullSignature:{"v", "@", "@", "@", 0}];
  [v3 validateClass:@"HUDashboardViewController" hasInstanceMethod:@"quickControlPresentationContextForItem:atIndexPath:point:" withFullSignature:{"@", "@", "@", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"HomeUI.TileCellContentView" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"setPresentationContext:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UICollectionView"];
  [v3 validateClass:@"HUEmbeddedTriggerActionGridViewController" isKindOfClass:@"UICollectionViewController"];
  [v3 validateClass:@"HUContainedAccessoryElementsGridViewController" isKindOfClass:@"UICollectionViewController"];
}

- (CGPoint)accessibilityActivationPoint
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 contentView];
  v4 = [v3 safeValueForKey:@"iconView"];
  [v4 accessibilityActivationPoint];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (id)accessibilityCustomActions
{
  v21.receiver = self;
  v21.super_class = HUAccessoryTileCellAccessibility;
  v3 = [(HUAccessoryTileCellAccessibility *)&v21 accessibilityCustomActions];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = v6;

  location = 0;
  p_location = &location;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v14[1] = MEMORY[0x29EDCA5F8];
  v14[2] = 3221225472;
  v14[3] = __62__HUAccessoryTileCellAccessibility_accessibilityCustomActions__block_invoke;
  v14[4] = &unk_29F2C6D70;
  v14[5] = self;
  v14[6] = &location;
  AXPerformSafeBlock();
  v8 = p_location[5];
  _Block_object_dispose(&location, 8);

  if (v8 == *MEMORY[0x29EDC5468] || v8 == *MEMORY[0x29EDC5460])
  {
    objc_initWeak(&location, self);
    v9 = objc_alloc(MEMORY[0x29EDC78E0]);
    v10 = accessibilityHomeUILocalizedString(@"accessory.settings");
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __62__HUAccessoryTileCellAccessibility_accessibilityCustomActions__block_invoke_2;
    v13[3] = &unk_29F2C6DC0;
    objc_copyWeak(v14, &location);
    v11 = [v9 initWithName:v10 actionHandler:v13];

    [v7 addObject:v11];
    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

uint64_t __62__HUAccessoryTileCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 accessibilityActivationPoint];
  [v2 convertPoint:0 fromView:?];
  v3 = [v2 tappableAreaForPoint:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2A1C71028]();
}

uint64_t __62__HUAccessoryTileCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"delegate"];
  if (!v2)
  {
    v3 = [WeakRetained accessibilityContainer];
    v4 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_7];

    v2 = [v4 delegate];
  }

  v5 = [WeakRetained _accessibilityIndexPath];
  v6 = [v2 safeValueForKeyPath:@"quickControlPresentationCoordinator"];
  [WeakRetained safeValueForKey:@"item"];
  v12 = v6;
  v14 = v13 = v2;
  v15 = v5;
  v7 = v5;
  v8 = v14;
  v9 = v2;
  v10 = v6;
  AXPerformSafeBlock();

  return 1;
}

uint64_t __62__HUAccessoryTileCellAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __62__HUAccessoryTileCellAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) quickControlPresentationContextForItem:*(a1 + 48) atIndexPath:*(a1 + 56) point:{*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)}];
  [v2 setPresentationContext:v3];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *MEMORY[0x29EDC5460];

  return [v4 presentationCoordinator:v5 didRecognizeTapForItem:v6 tappedArea:v7];
}

@end
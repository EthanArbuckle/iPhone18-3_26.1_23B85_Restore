@interface HUControllableItemCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axOpenControls:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUControllableItemCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUControllableItemCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [v3 validateClass:@"HUControllableItemCollectionViewController" hasInstanceVariable:@"_quickControlPresentationCoordinator" withType:"HUQuickControlPresentationCoordinator"];
  [v3 validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"setPresentationContext:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"setPresentationContext:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"_preparePressedItemContextForItem:startApplier:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"_beginControlPresentationAnimated:" withFullSignature:{"@", "B", 0}];
  [v3 validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"_pressGestureDidBeginWithLocation:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"_pressGestureDidEnd:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"HUQuickControlPresentationCoordinatorDelegate" hasMethod:@"presentationCoordinator:contextForPresentationAtPoint:" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"HUGridServiceCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUGridServiceCell" isKindOfClass:@"HUGridCell"];
  [v3 validateClass:@"HUGridCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"UICollectionViewCell" isKindOfClass:@"UICollectionReusableView"];
  [v3 validateClass:@"UICollectionReusableView" hasInstanceVariable:@"_collectionView" withType:"UICollectionView"];
  [v3 validateClass:@"HFAbstractControlStatusItem"];
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = [(HUControllableItemCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v7 = [v5 accessibilityScrollRightPage];
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v7 = [v5 accessibilityScrollLeftPage];
  }

  else
  {
LABEL_5:
    v10.receiver = self;
    v10.super_class = HUControllableItemCollectionViewControllerAccessibility;
    v7 = [(HUControllableItemCollectionViewControllerAccessibility *)&v10 accessibilityScroll:a3];
  }

LABEL_7:
  v8 = v7;

  return v8;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HUControllableItemCollectionViewControllerAccessibility;
  [(HUControllableItemCollectionViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:AXOpenControlsNotification object:0];

  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  [v4 addObserver:self selector:sel__axOpenControls_ name:AXOpenControlsNotification object:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUControllableItemCollectionViewControllerAccessibility;
  [(HUControllableItemCollectionViewControllerAccessibility *)&v3 viewDidLoad];
  [(HUControllableItemCollectionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axOpenControls:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 safeValueForKeyPath:@"_collectionView.delegate"];
  if ([(HUControllableItemCollectionViewControllerAccessibility *)self isEqual:v7])
  {
    [v6 center];
    v8 = [v6 safeValueForKey:@"item"];
    MEMORY[0x29C2DA460](@"HUGridCell");
    if ((objc_opt_isKindOfClass() & 1) != 0 && v8)
    {
      v9 = [(HUControllableItemCollectionViewControllerAccessibility *)self safeValueForKey:@"_quickControlPresentationCoordinator"];
      v10 = [v9 safeValueForKey:@"delegate"];
      MEMORY[0x29C2DA460](@"HUQuickControlPresentationCoordinator");
      if (objc_opt_isKindOfClass())
      {
        v11 = NSProtocolFromString(&cfstr_Huquickcontrol_24.isa);
        v12 = [v10 conformsToProtocol:v11];

        if (v12)
        {
          v13 = v9;
          v14 = v10;
          v15 = v8;
          AXPerformSafeBlock();
        }
      }
    }
  }
}

id __75__HUControllableItemCollectionViewControllerAccessibility__axOpenControls___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) presentationCoordinator:v2 contextForPresentationAtPoint:{*(a1 + 56), *(a1 + 64)}];
  [v2 setPresentationContext:v3];

  v4 = *(a1 + 48);
  MEMORY[0x29C2DA460](@"HFAbstractControlStatusItem");
  LOBYTE(v4) = objc_opt_isKindOfClass();
  [*(a1 + 32) _preparePressedItemContextForItem:*(a1 + 48) startApplier:(v4 & 1) == 0];
  result = [*(a1 + 32) _beginControlPresentationAnimated:1];
  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) _pressGestureDidBeginWithLocation:{*(a1 + 56), *(a1 + 64)}];
    v6 = *(a1 + 32);

    return [v6 _pressGestureDidEnd:1];
  }

  return result;
}

@end
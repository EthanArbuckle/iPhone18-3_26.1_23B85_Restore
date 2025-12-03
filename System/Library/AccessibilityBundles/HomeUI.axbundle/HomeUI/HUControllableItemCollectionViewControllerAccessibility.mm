@interface HUControllableItemCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axOpenControls:(id)controls;
- (void)viewDidLoad;
@end

@implementation HUControllableItemCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUControllableItemCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [validationsCopy validateClass:@"HUControllableItemCollectionViewController" hasInstanceVariable:@"_quickControlPresentationCoordinator" withType:"HUQuickControlPresentationCoordinator"];
  [validationsCopy validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"setPresentationContext:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"setPresentationContext:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"_preparePressedItemContextForItem:startApplier:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"_beginControlPresentationAnimated:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"_pressGestureDidBeginWithLocation:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"_pressGestureDidEnd:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"HUQuickControlPresentationCoordinator" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"HUQuickControlPresentationCoordinatorDelegate" hasMethod:@"presentationCoordinator:contextForPresentationAtPoint:" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"HUGridServiceCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridServiceCell" isKindOfClass:@"HUGridCell"];
  [validationsCopy validateClass:@"HUGridCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"UICollectionViewCell" isKindOfClass:@"UICollectionReusableView"];
  [validationsCopy validateClass:@"UICollectionReusableView" hasInstanceVariable:@"_collectionView" withType:"UICollectionView"];
  [validationsCopy validateClass:@"HFAbstractControlStatusItem"];
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v5 = [(HUControllableItemCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  if (scroll == 1)
  {
    accessibilityScrollRightPage = [v5 accessibilityScrollRightPage];
    goto LABEL_7;
  }

  if (scroll == 2)
  {
    accessibilityScrollRightPage = [v5 accessibilityScrollLeftPage];
  }

  else
  {
LABEL_5:
    v10.receiver = self;
    v10.super_class = HUControllableItemCollectionViewControllerAccessibility;
    accessibilityScrollRightPage = [(HUControllableItemCollectionViewControllerAccessibility *)&v10 accessibilityScroll:scroll];
  }

LABEL_7:
  v8 = accessibilityScrollRightPage;

  return v8;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HUControllableItemCollectionViewControllerAccessibility;
  [(HUControllableItemCollectionViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:AXOpenControlsNotification object:0];

  defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__axOpenControls_ name:AXOpenControlsNotification object:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUControllableItemCollectionViewControllerAccessibility;
  [(HUControllableItemCollectionViewControllerAccessibility *)&v3 viewDidLoad];
  [(HUControllableItemCollectionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axOpenControls:(id)controls
{
  controlsCopy = controls;
  objc_opt_class();
  object = [controlsCopy object];
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
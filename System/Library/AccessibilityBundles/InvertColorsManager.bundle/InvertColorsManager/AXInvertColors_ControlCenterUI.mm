@interface AXInvertColors_ControlCenterUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_ControlCenterUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUIModuleCollectionView"];
  [v3 validateClass:@"CCUIModularControlCenterOverlayViewController" hasInstanceVariable:@"_scrollView" withType:"CCUIScrollView_Legacy"];
  [v3 validateClass:@"CCUIModularControlCenterOverlayViewController" hasInstanceVariable:@"_headerPocketView" withType:"CCUIHeaderPocketView"];
  [v3 validateClass:@"CCUIModularControlCenterOverlayViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CCUIContentModuleContainerView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CCUIContentModuleContainerViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CCUIContentModuleContainerViewController" hasInstanceVariable:@"_contentView" withType:"UIView"];
  [v3 validateClass:@"CCUIContentModuleContainerViewController" hasInstanceVariable:@"_contentContainerView" withType:"CCUIContentModuleContentContainerView"];
  [v3 validateClass:@"CCUIContentModuleContainerViewController" hasInstanceMethod:@"viewWillLayoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CCUIContentModuleContainerViewController" hasInstanceMethod:@"clickPresentationInteractionShouldBegin:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"CCUIContentModuleContentContainerView" hasInstanceMethod:@"moduleProvidesOwnPlatter" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CCUIContentModuleContentContainerView" hasInstanceVariable:@"_moduleMaterialView" withType:"MTMaterialView"];
  [v3 validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"CCUIModuleCollectionViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CCUIModularControlCenterOverlayViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CCUIContentModuleContainerViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CCUIContentModuleContentContainerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"CCUIOverlayBackgroundViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
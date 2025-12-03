@interface AXInvertColors_ControlCenterUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_ControlCenterUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIModuleCollectionView"];
  [validationsCopy validateClass:@"CCUIModularControlCenterOverlayViewController" hasInstanceVariable:@"_scrollView" withType:"CCUIScrollView_Legacy"];
  [validationsCopy validateClass:@"CCUIModularControlCenterOverlayViewController" hasInstanceVariable:@"_headerPocketView" withType:"CCUIHeaderPocketView"];
  [validationsCopy validateClass:@"CCUIModularControlCenterOverlayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CCUIContentModuleContainerView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CCUIContentModuleContainerViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CCUIContentModuleContainerViewController" hasInstanceVariable:@"_contentView" withType:"UIView"];
  [validationsCopy validateClass:@"CCUIContentModuleContainerViewController" hasInstanceVariable:@"_contentContainerView" withType:"CCUIContentModuleContentContainerView"];
  [validationsCopy validateClass:@"CCUIContentModuleContainerViewController" hasInstanceMethod:@"viewWillLayoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CCUIContentModuleContainerViewController" hasInstanceMethod:@"clickPresentationInteractionShouldBegin:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"CCUIContentModuleContentContainerView" hasInstanceMethod:@"moduleProvidesOwnPlatter" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CCUIContentModuleContentContainerView" hasInstanceVariable:@"_moduleMaterialView" withType:"MTMaterialView"];
  [validationsCopy validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"CCUIModuleCollectionViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CCUIModularControlCenterOverlayViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CCUIContentModuleContainerViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CCUIContentModuleContentContainerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CCUIOverlayBackgroundViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
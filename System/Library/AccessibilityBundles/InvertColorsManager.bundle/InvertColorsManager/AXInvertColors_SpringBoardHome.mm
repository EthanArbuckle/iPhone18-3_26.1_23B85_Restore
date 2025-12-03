@interface AXInvertColors_SpringBoardHome
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_SpringBoardHome

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBIconImageView" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHAddWidgetSheetAppCollectionViewCell" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"mt_removeAllVisualStyling" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBHVisualStylingView" hasInstanceMethod:@"_updateVisualStyling" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBHWidgetStackViewController" hasInstanceMethod:@"_createBackgroundViewIfNecessary:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBHWidgetStackViewController" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"_contextMenuInteraction:previewForIconWithConfigurationOptions:highlighted:" withFullSignature:{"@", "@", "Q", "B", 0}];
  [validationsCopy validateClass:@"SBFloatingDockView"];
  [validationsCopy validateClass:@"SBFloatingDockView" hasInstanceMethod:@"mainPlatterView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFloatingDockPlatterView"];
  [validationsCopy validateClass:@"SBFloatingDockPlatterView" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHWidgetStackViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  v3 = +[NSBundle mainBundle];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:AX_SpringBoardBundleName];

  if (v5)
  {
    [validationsCopy validateClass:@"AMUIInfographViewController"];
  }

  [validationsCopy validateClass:@"SBMinusCloseBoxView" isKindOfClass:@"SBHomeScreenButton"];
  [validationsCopy validateClass:@"SBHomeScreenButton" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBHomeScreenButton" hasInstanceVariable:@"_materialView" withType:"SBHomeScreenMaterialView"];
  [validationsCopy validateClass:@"SBHomeScreenMaterialView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBHomeScreenButton" hasInstanceMethod:@"wantsGlass" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHomeScreenButton" hasInstanceMethod:@"backgroundInsets" withFullSignature:{"{UIEdgeInsets=dddd}", 0}];
  [validationsCopy validateClass:@"SBDockView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SBIconListViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBIconImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBHAddWidgetSheetAppCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBFloatingDockViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBHVisualStylingViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBHWidgetStackViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBIconViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBMinusCloseBoxViewInvertColorsAccessibility" canInteractWithTargetClass:1];

  +[AXInvertColorsManager traverseAppForInvertColors];
}

@end
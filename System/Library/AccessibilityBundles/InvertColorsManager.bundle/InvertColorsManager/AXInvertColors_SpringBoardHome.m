@interface AXInvertColors_SpringBoardHome
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_SpringBoardHome

+ (void)performValidations:(id)a3
{
  v6 = a3;
  [v6 validateClass:@"SBIconImageView" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [v6 validateClass:@"SBHAddWidgetSheetAppCollectionViewCell" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [v6 validateClass:@"UIView" hasInstanceMethod:@"mt_removeAllVisualStyling" withFullSignature:{"v", 0}];
  [v6 validateClass:@"SBHVisualStylingView" hasInstanceMethod:@"_updateVisualStyling" withFullSignature:{"v", 0}];
  [v6 validateClass:@"SBHWidgetStackViewController" hasInstanceMethod:@"_createBackgroundViewIfNecessary:" withFullSignature:{"v", "B", 0}];
  [v6 validateClass:@"SBHWidgetStackViewController" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [v6 validateClass:@"SBIconView" hasInstanceMethod:@"_contextMenuInteraction:previewForIconWithConfigurationOptions:highlighted:" withFullSignature:{"@", "@", "Q", "B", 0}];
  [v6 validateClass:@"SBFloatingDockView"];
  [v6 validateClass:@"SBFloatingDockView" hasInstanceMethod:@"mainPlatterView" withFullSignature:{"@", 0}];
  [v6 validateClass:@"SBFloatingDockPlatterView"];
  [v6 validateClass:@"SBFloatingDockPlatterView" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [v6 validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
  [v6 validateClass:@"SBHWidgetStackViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v6 validateClass:@"SBHIconManager" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:AX_SpringBoardBundleName];

  if (v5)
  {
    [v6 validateClass:@"AMUIInfographViewController"];
  }

  [v6 validateClass:@"SBMinusCloseBoxView" isKindOfClass:@"SBHomeScreenButton"];
  [v6 validateClass:@"SBHomeScreenButton" isKindOfClass:@"UIView"];
  [v6 validateClass:@"SBHomeScreenButton" hasInstanceVariable:@"_materialView" withType:"SBHomeScreenMaterialView"];
  [v6 validateClass:@"SBHomeScreenMaterialView" isKindOfClass:@"UIView"];
  [v6 validateClass:@"SBHomeScreenButton" hasInstanceMethod:@"wantsGlass" withFullSignature:{"B", 0}];
  [v6 validateClass:@"SBHomeScreenButton" hasInstanceMethod:@"backgroundInsets" withFullSignature:{"{UIEdgeInsets=dddd}", 0}];
  [v6 validateClass:@"SBDockView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SBIconListViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBIconImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBHAddWidgetSheetAppCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBFloatingDockViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBHVisualStylingViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBHWidgetStackViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBIconViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBMinusCloseBoxViewInvertColorsAccessibility" canInteractWithTargetClass:1];

  +[AXInvertColorsManager traverseAppForInvertColors];
}

@end
@interface AXInvertColors_ScreenTimeSettingsUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_ScreenTimeSettingsUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STMostUsedCell" hasInstanceVariable:@"_allowanceIconView" withType:"UIImageView"];
  [v3 validateClass:@"STMostUsedCell" hasInstanceMethod:@"initWithStyle:reuseIdentifier:specifier:" withFullSignature:{"@", "q", "@", "@", 0}];
  [v3 validateClass:@"STAppStoreIconCell" hasInstanceVariable:@"_appIconView" withType:"UIImageView"];
  [v3 validateClass:@"STAppStoreIconCell" hasInstanceMethod:@"initWithStyle:reuseIdentifier:specifier:" withFullSignature:{"@", "q", "@", "@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"STMostUsedCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"STAppStoreIconCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
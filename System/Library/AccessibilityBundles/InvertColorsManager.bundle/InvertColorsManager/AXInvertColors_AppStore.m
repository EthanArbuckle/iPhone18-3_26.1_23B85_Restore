@interface AXInvertColors_AppStore
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_AppStore

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppStore.VideoView"];
  [v3 validateClass:@"AppStore.AccountButton"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"UberedCollectionViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"VideoViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"AppStoreAccountButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
@interface AXInvertColors_AppStore
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_AppStore

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.VideoView"];
  [validationsCopy validateClass:@"AppStore.AccountButton"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"UberedCollectionViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"VideoViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"AppStoreAccountButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
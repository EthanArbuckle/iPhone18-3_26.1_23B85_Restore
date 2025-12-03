@interface AXInvertColors_Pegasus
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_Pegasus

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"__PGView"];
  [validationsCopy validateClass:@"PGPictureInPictureViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"__PGViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PGHostedWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PGPictureInPictureViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
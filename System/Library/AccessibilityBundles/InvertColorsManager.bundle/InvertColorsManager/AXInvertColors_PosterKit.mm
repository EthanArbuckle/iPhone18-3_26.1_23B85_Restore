@interface AXInvertColors_PosterKit
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_PosterKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PRPosterWindow"];
  [validationsCopy validateClass:@"PRRenderingBackdropView"];
  [validationsCopy validateClass:@"PRRenderingView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"PRPosterWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PRRenderingBackdropViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PRRenderingViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
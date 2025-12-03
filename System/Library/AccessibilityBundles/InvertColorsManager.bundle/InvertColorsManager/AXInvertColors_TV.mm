@interface AXInvertColors_TV
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_TV

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosFeatureLoadingView"];
  [validationsCopy validateClass:@"VideosPlaybackViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"VideosFeatureLoadingViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"VideosPlaybackViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
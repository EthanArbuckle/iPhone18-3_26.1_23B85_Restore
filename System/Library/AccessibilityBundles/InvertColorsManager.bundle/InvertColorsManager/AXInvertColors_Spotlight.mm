@interface AXInvertColors_Spotlight
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_Spotlight

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SPUISearchHeader" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SPUISearchHeader" hasProperty:@"cancelButton" withType:"@"];
  [validationsCopy validateClass:@"SPUISecureWindow" isKindOfClass:@"UIWindow"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SPUISecureWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SPUIBoxViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
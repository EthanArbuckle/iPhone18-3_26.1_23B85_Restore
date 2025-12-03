@interface AXInvertColors_SpotlightUIInternal
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_SpotlightUIInternal

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SPUISearchHeader" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SPUISearchHeader" hasProperty:@"cancelButton" withType:"@"];
  [validationsCopy validateClass:@"SPUITextField" hasInstanceMethod:@"blurView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SPUIPlatterContainerViewController"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SPUISearchHeaderInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SPUITextFieldInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
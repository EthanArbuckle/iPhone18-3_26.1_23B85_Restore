@interface AXInvertColors_MobilePhone
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_MobilePhone

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHBottomBarButton"];
  [validationsCopy validateClass:@"PHHandsetDialerNumberPadButton" isKindOfClass:@"UIView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"PHBottomBarButton__MobilePhone__InvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PHHandsetDialerNumberPadButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
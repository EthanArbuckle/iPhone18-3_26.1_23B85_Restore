@interface AXInvertColors_MobilePhone
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_MobilePhone

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHBottomBarButton"];
  [v3 validateClass:@"PHHandsetDialerNumberPadButton" isKindOfClass:@"UIView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"PHBottomBarButton__MobilePhone__InvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PHHandsetDialerNumberPadButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
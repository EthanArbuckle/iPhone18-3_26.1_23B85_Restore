@interface AXInvertColors_MobileSafari
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_MobileSafari

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"_initSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"rootViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BrowserRootViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"Application" hasInstanceMethod:@"browserControllers" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"BrowserControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SafariApplicationInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"TabExplanationViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
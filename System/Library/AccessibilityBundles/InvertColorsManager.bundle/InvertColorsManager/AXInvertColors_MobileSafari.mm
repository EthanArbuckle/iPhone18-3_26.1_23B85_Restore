@interface AXInvertColors_MobileSafari
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_MobileSafari

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BrowserController" hasInstanceMethod:@"_initSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"BrowserController" hasInstanceMethod:@"rootViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BrowserRootViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"Application" hasInstanceMethod:@"browserControllers" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"BrowserControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SafariApplicationInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"TabExplanationViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
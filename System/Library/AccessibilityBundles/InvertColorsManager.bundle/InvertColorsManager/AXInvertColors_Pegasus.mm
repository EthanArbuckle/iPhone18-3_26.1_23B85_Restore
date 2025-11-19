@interface AXInvertColors_Pegasus
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_Pegasus

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"__PGView"];
  [v3 validateClass:@"PGPictureInPictureViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"__PGViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PGHostedWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PGPictureInPictureViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
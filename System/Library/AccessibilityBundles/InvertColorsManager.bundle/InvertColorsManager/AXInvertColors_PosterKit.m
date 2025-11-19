@interface AXInvertColors_PosterKit
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_PosterKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PRPosterWindow"];
  [v3 validateClass:@"PRRenderingBackdropView"];
  [v3 validateClass:@"PRRenderingView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"PRPosterWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PRRenderingBackdropViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PRRenderingViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
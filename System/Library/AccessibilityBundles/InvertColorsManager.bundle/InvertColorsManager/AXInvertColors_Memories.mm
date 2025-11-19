@interface AXInvertColors_Memories
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_Memories

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MiroMovieView"];
  [v3 validateClass:@"PMPosterViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"MiroMovieViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PMPosterViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
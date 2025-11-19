@interface UIFocusSystemSceneComponentAccessibility
@end

@implementation UIFocusSystemSceneComponentAccessibility

uint64_t __91___UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit_focusItemsInRect___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 _sceneIdentifier];
  v5 = [v4 isEqualToString:@"SystemAperture"];

  return v5;
}

uint64_t __103___UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit__axSpringBoardMainWindowScene__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 _sceneIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.springboard"];

  return v5;
}

@end
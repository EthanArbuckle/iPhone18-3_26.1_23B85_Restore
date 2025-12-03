@interface _UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsFKARunningForFocusItem;
- (BOOL)_axIsSpringBoardMainSceneComponent;
- (BOOL)_axIsSystemApertureSceneComponent;
- (id)_axSpringBoardMainWindowScene;
- (id)focusItemsInRect:(CGRect)rect;
- (id)focusSystem;
@end

@implementation _UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UIFocusSystemSceneComponent" hasInstanceMethod:@"focusItemsInRect:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"_UIFocusSystemSceneComponent" hasInstanceMethod:@"_windowScene" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIFocusSystemSceneComponent" hasInstanceMethod:@"focusSystem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIScreen" hasInstanceMethod:@"_preferredFocusedWindowScene" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIApplicationAccessibility" hasInstanceMethod:@"_accessibilityActiveScenes" withFullSignature:{"@", 0}];
}

- (BOOL)_accessibilityIsFKARunningForFocusItem
{
  v2 = [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self safeValueForKey:@"_windowScene"];
  _accessibilityIsFKARunningForFocusItem = [v2 _accessibilityIsFKARunningForFocusItem];

  return _accessibilityIsFKARunningForFocusItem;
}

- (id)focusItemsInRect:(CGRect)rect
{
  v12.receiver = self;
  v12.super_class = _UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit;
  v4 = [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)&v12 focusItemsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if ([(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self _accessibilityIsFKARunningForFocusItem]&& [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self _axIsSpringBoardMainSceneComponent])
  {
    v5 = [*MEMORY[0x29EDC8008] safeArrayForKey:@"_accessibilityActiveScenes"];
    v6 = [v5 axFirstObjectsUsingBlock:&__block_literal_global_9];

    _accessibilityTraversalWindows = [v6 _accessibilityTraversalWindows];
    reverseObjectEnumerator = [_accessibilityTraversalWindows reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v10 = [MEMORY[0x29EDB8D80] axArrayWithPossiblyNilArrays:{2, v4, allObjects}];
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

- (id)focusSystem
{
  if ([(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self _accessibilityIsFKARunningForFocusItem]&& [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self _axIsSystemApertureSceneComponent])
  {
    _axSpringBoardMainWindowScene = [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self _axSpringBoardMainWindowScene];
    focusSystem = [_axSpringBoardMainWindowScene focusSystem];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit;
    focusSystem = [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)&v6 focusSystem];
  }

  return focusSystem;
}

- (id)_axSpringBoardMainWindowScene
{
  v2 = [*MEMORY[0x29EDC8008] safeArrayForKey:@"_accessibilityActiveScenes"];
  v3 = [v2 axFirstObjectsUsingBlock:&__block_literal_global_322];

  return v3;
}

- (BOOL)_axIsSpringBoardMainSceneComponent
{
  objc_opt_class();
  v3 = [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self safeValueForKey:@"_windowScene"];
  v4 = __UIAccessibilityCastAsClass();

  _sceneIdentifier = [v4 _sceneIdentifier];
  LOBYTE(v3) = [_sceneIdentifier isEqualToString:@"com.apple.springboard"];

  return v3;
}

- (BOOL)_axIsSystemApertureSceneComponent
{
  objc_opt_class();
  v3 = [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self safeValueForKey:@"_windowScene"];
  v4 = __UIAccessibilityCastAsClass();

  _sceneIdentifier = [v4 _sceneIdentifier];
  LOBYTE(v3) = [_sceneIdentifier isEqualToString:@"SystemAperture"];

  return v3;
}

@end
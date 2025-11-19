@interface _UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsFKARunningForFocusItem;
- (BOOL)_axIsSpringBoardMainSceneComponent;
- (BOOL)_axIsSystemApertureSceneComponent;
- (id)_axSpringBoardMainWindowScene;
- (id)focusItemsInRect:(CGRect)a3;
- (id)focusSystem;
@end

@implementation _UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_UIFocusSystemSceneComponent" hasInstanceMethod:@"focusItemsInRect:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"_UIFocusSystemSceneComponent" hasInstanceMethod:@"_windowScene" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UIFocusSystemSceneComponent" hasInstanceMethod:@"focusSystem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIScreen" hasInstanceMethod:@"_preferredFocusedWindowScene" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIApplicationAccessibility" hasInstanceMethod:@"_accessibilityActiveScenes" withFullSignature:{"@", 0}];
}

- (BOOL)_accessibilityIsFKARunningForFocusItem
{
  v2 = [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self safeValueForKey:@"_windowScene"];
  v3 = [v2 _accessibilityIsFKARunningForFocusItem];

  return v3;
}

- (id)focusItemsInRect:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = _UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit;
  v4 = [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)&v12 focusItemsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if ([(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self _accessibilityIsFKARunningForFocusItem]&& [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self _axIsSpringBoardMainSceneComponent])
  {
    v5 = [*MEMORY[0x29EDC8008] safeArrayForKey:@"_accessibilityActiveScenes"];
    v6 = [v5 axFirstObjectsUsingBlock:&__block_literal_global_9];

    v7 = [v6 _accessibilityTraversalWindows];
    v8 = [v7 reverseObjectEnumerator];
    v9 = [v8 allObjects];

    v10 = [MEMORY[0x29EDB8D80] axArrayWithPossiblyNilArrays:{2, v4, v9}];
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
    v3 = [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self _axSpringBoardMainWindowScene];
    v4 = [v3 focusSystem];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit;
    v4 = [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)&v6 focusSystem];
  }

  return v4;
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

  v5 = [v4 _sceneIdentifier];
  LOBYTE(v3) = [v5 isEqualToString:@"com.apple.springboard"];

  return v3;
}

- (BOOL)_axIsSystemApertureSceneComponent
{
  objc_opt_class();
  v3 = [(_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit *)self safeValueForKey:@"_windowScene"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 _sceneIdentifier];
  LOBYTE(v3) = [v5 isEqualToString:@"SystemAperture"];

  return v3;
}

@end
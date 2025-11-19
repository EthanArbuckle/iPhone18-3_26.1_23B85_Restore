@interface _UIFocusSystemSceneComponentAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsFKARunningForFocusItem;
- (id)focusItemsInRect:(CGRect)a3;
@end

@implementation _UIFocusSystemSceneComponentAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIFocusSystemSceneComponent";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"focusItemsInRect:" withFullSignature:{v4, "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  objc_storeStrong(v6, obj);
}

- (BOOL)_accessibilityIsFKARunningForFocusItem
{
  v3 = [(_UIFocusSystemSceneComponentAccessibility *)self safeValueForKey:@"_windowScene"];
  v4 = [v3 _accessibilityIsFKARunningForFocusItem];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)focusItemsInRect:(CGRect)a3
{
  v28 = a3;
  v27 = self;
  v26 = a2;
  if ([(_UIFocusSystemSceneComponentAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v23 = 0;
    objc_opt_class();
    v13 = [(_UIFocusSystemSceneComponentAccessibility *)v27 safeValueForKey:@"_windowScene"];
    v22 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v13);
    v21 = MEMORY[0x29EDC9748](v22);
    objc_storeStrong(&v22, 0);
    v24 = v21;
    v10 = [v21 _accessibilityTraversalWindows];
    v9 = [v10 reverseObjectEnumerator];
    v20 = [v9 allObjects];
    MEMORY[0x29EDC9740](v9);
    *&v3 = MEMORY[0x29EDC9740](v10).n128_u64[0];
    v11 = [v24 _sceneForKeyboardDisplay];
    v19 = [v11 _focusSystemSceneComponent];
    MEMORY[0x29EDC9740](v11);
    v17 = 0;
    objc_opt_class();
    v12 = [v19 safeValueForKey:@"_windowScene"];
    v16 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v12);
    v15 = MEMORY[0x29EDC9748](v16);
    objc_storeStrong(&v16, 0);
    v18 = v15;
    v8 = [v15 _accessibilityTraversalWindows];
    v7 = [v8 reverseObjectEnumerator];
    v14 = [v7 allObjects];
    MEMORY[0x29EDC9740](v7);
    *&v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    v29 = [MEMORY[0x29EDB8D80] axArrayWithPossiblyNilArrays:{2, v4, v20, v14}];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    v25.receiver = v27;
    v25.super_class = _UIFocusSystemSceneComponentAccessibility;
    v29 = [(_UIFocusSystemSceneComponentAccessibility *)&v25 focusItemsInRect:v28.origin.x, v28.origin.y, v28.size.width, v28.size.height];
  }

  v5 = v29;

  return v5;
}

@end
@interface _UIFocusSystemSceneComponentAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsFKARunningForFocusItem;
- (id)focusItemsInRect:(CGRect)rect;
@end

@implementation _UIFocusSystemSceneComponentAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIFocusSystemSceneComponent";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"focusItemsInRect:" withFullSignature:{v4, "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  objc_storeStrong(v6, obj);
}

- (BOOL)_accessibilityIsFKARunningForFocusItem
{
  v3 = [(_UIFocusSystemSceneComponentAccessibility *)self safeValueForKey:@"_windowScene"];
  _accessibilityIsFKARunningForFocusItem = [v3 _accessibilityIsFKARunningForFocusItem];
  MEMORY[0x29EDC9740](v3);
  return _accessibilityIsFKARunningForFocusItem;
}

- (id)focusItemsInRect:(CGRect)rect
{
  rectCopy = rect;
  selfCopy = self;
  v26 = a2;
  if ([(_UIFocusSystemSceneComponentAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v23 = 0;
    objc_opt_class();
    v13 = [(_UIFocusSystemSceneComponentAccessibility *)selfCopy safeValueForKey:@"_windowScene"];
    v22 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v13);
    v21 = MEMORY[0x29EDC9748](v22);
    objc_storeStrong(&v22, 0);
    v24 = v21;
    _accessibilityTraversalWindows = [v21 _accessibilityTraversalWindows];
    reverseObjectEnumerator = [_accessibilityTraversalWindows reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    MEMORY[0x29EDC9740](reverseObjectEnumerator);
    *&v3 = MEMORY[0x29EDC9740](_accessibilityTraversalWindows).n128_u64[0];
    _sceneForKeyboardDisplay = [v24 _sceneForKeyboardDisplay];
    _focusSystemSceneComponent = [_sceneForKeyboardDisplay _focusSystemSceneComponent];
    MEMORY[0x29EDC9740](_sceneForKeyboardDisplay);
    v17 = 0;
    objc_opt_class();
    v12 = [_focusSystemSceneComponent safeValueForKey:@"_windowScene"];
    v16 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v12);
    v15 = MEMORY[0x29EDC9748](v16);
    objc_storeStrong(&v16, 0);
    v18 = v15;
    _accessibilityTraversalWindows2 = [v15 _accessibilityTraversalWindows];
    reverseObjectEnumerator2 = [_accessibilityTraversalWindows2 reverseObjectEnumerator];
    allObjects2 = [reverseObjectEnumerator2 allObjects];
    MEMORY[0x29EDC9740](reverseObjectEnumerator2);
    *&v4 = MEMORY[0x29EDC9740](_accessibilityTraversalWindows2).n128_u64[0];
    v29 = [MEMORY[0x29EDB8D80] axArrayWithPossiblyNilArrays:{2, v4, allObjects, allObjects2}];
    objc_storeStrong(&allObjects2, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&_focusSystemSceneComponent, 0);
    objc_storeStrong(&allObjects, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    v25.receiver = selfCopy;
    v25.super_class = _UIFocusSystemSceneComponentAccessibility;
    v29 = [(_UIFocusSystemSceneComponentAccessibility *)&v25 focusItemsInRect:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
  }

  v5 = v29;

  return v5;
}

@end
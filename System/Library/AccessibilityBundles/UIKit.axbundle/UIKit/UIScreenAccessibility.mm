@interface UIScreenAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsFKARunningForFocusItem;
- (id)_accessibilityNativeFocusElement;
- (id)_focusSystem;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation UIScreenAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIScreen";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v5 = "v";
  [location[0] validateClass:v3 hasInstanceMethod:@"didUpdateFocusInContext: withAnimationCoordinator:" withFullSignature:{v4, v4, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"_focusSystem" withFullSignature:{v4, 0}];
  [location[0] validateClass:@"UIFocusSystem" hasInstanceMethod:@"_setEnabled:" withFullSignature:{v5, "B", 0}];
  objc_storeStrong(v7, v6);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v19 = 0;
  objc_storeStrong(&v19, coordinator);
  v18.receiver = selfCopy;
  v18.super_class = UIScreenAccessibility;
  [(UIScreenAccessibility *)&v18 didUpdateFocusInContext:location[0] withAnimationCoordinator:v19];
  previouslyFocusedItem = [location[0] previouslyFocusedItem];
  nextFocusedItem = [location[0] nextFocusedItem];
  v14 = previouslyFocusedItem != nextFocusedItem;
  MEMORY[0x29EDC9740](nextFocusedItem);
  *&v5 = MEMORY[0x29EDC9740](previouslyFocusedItem).n128_u64[0];
  v17 = v14;
  if (v14)
  {
    _accessibilityNativeFocusPreferredElement = [*MEMORY[0x29EDC8008] _accessibilityNativeFocusPreferredElement];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7498], _accessibilityNativeFocusPreferredElement);
    nextFocusedView = [location[0] nextFocusedView];
    [nextFocusedView bounds];
    frame.origin.x = v6;
    frame.origin.y = v7;
    frame.size.width = v8;
    frame.size.height = v9;
    nextFocusedView2 = [location[0] nextFocusedView];
    UIAccessibilityZoomFocusChanged(5, frame, nextFocusedView2);
    MEMORY[0x29EDC9740](nextFocusedView2);
    MEMORY[0x29EDC9740](nextFocusedView);
    objc_storeStrong(&_accessibilityNativeFocusPreferredElement, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityNativeFocusElement
{
  location[2] = self;
  location[1] = a2;
  location[0] = AXLogFocusEngine();
  v6 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_error_impl(&dword_29C4D6000, log, type, "Accessing focus elment from a window instead of UIScreen", v5, 2u);
  }

  objc_storeStrong(location, 0);
  return [*MEMORY[0x29EDC8008] _accessibilityNativeFocusElement];
}

- (id)_focusSystem
{
  v12[2] = self;
  v12[1] = a2;
  v11.receiver = self;
  v11.super_class = UIScreenAccessibility;
  v12[0] = [(UIScreenAccessibility *)&v11 _focusSystem];
  v10 = v12[0] == 0;
  if (!v12[0] && (_UIAccessibilityFullKeyboardAccessEnabled() & 1) != 0 && (_UIApplicationIsExtension() & 1) != 0)
  {
    v8 = 0;
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    v6 = MEMORY[0x29EDC9748](v7);
    objc_storeStrong(&v7, 0);
    v9 = v6;
    _userInterfaceIdiom = [v6 _userInterfaceIdiom];
    if (_userInterfaceIdiom != 3 && _userInterfaceIdiom != 2)
    {
      v4 = MEMORY[0x29EDC9748](v12[0]);
      AXPerformBlockOnMainThreadAfterDelay();
      objc_storeStrong(&v4, 0);
    }

    objc_storeStrong(&v9, 0);
  }

  v3 = MEMORY[0x29EDC9748](v12[0]);
  objc_storeStrong(v12, 0);

  return v3;
}

void __37__UIScreenAccessibility__focusSystem__block_invoke(void *a1)
{
  v6[2] = a1;
  v6[1] = a1;
  v1 = MEMORY[0x29EDCA5F8];
  v2 = -1073741824;
  v3 = 0;
  v4 = __37__UIScreenAccessibility__focusSystem__block_invoke_2;
  v5 = &unk_29F30C7C8;
  v6[0] = MEMORY[0x29EDC9748](a1[4]);
  AXPerformSafeBlock();
  objc_storeStrong(v6, 0);
}

- (BOOL)_accessibilityIsFKARunningForFocusItem
{
  _userInterfaceIdiom = [(UIScreenAccessibility *)self _userInterfaceIdiom];
  v3 = 0;
  if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    v3 = 0;
    if (_userInterfaceIdiom != 3)
    {
      return _userInterfaceIdiom != 2;
    }
  }

  return v3;
}

@end
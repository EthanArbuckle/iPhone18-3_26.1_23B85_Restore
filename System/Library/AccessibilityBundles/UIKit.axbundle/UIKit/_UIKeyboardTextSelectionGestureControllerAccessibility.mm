@interface _UIKeyboardTextSelectionGestureControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setPanGestureState:(int64_t)a3;
@end

@implementation _UIKeyboardTextSelectionGestureControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = "q";
  v3 = @"_UIKeyboardTextSelectionGestureController";
  [location[0] validateClass:"q" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"panGestureState" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (void)setPanGestureState:(int64_t)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v8 = [(_UIKeyboardTextSelectionGestureControllerAccessibility *)self safeValueForKey:@"panGestureState"];
  v9 = [v8 integerValue];
  *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  v11 = v9;
  v10.receiver = v14;
  v10.super_class = _UIKeyboardTextSelectionGestureControllerAccessibility;
  [(_UIKeyboardTextSelectionGestureControllerAccessibility *)&v10 setPanGestureState:v12, v3];
  if (v12 != v11)
  {
    if (v11 || v12 != 1)
    {
      if (v11 == 1 || !v12)
      {
        v4 = *MEMORY[0x29EDC7EA8];
        v5 = accessibilityUIKitLocalizedString();
        UIAccessibilityPostNotification(v4, v5);
        MEMORY[0x29EDC9740](v5);
      }
    }

    else
    {
      notification = *MEMORY[0x29EDC7EA8];
      v7 = accessibilityUIKitLocalizedString();
      UIAccessibilityPostNotification(notification, v7);
      MEMORY[0x29EDC9740](v7);
    }
  }
}

@end
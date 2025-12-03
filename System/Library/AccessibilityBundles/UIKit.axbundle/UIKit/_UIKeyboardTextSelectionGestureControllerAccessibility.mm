@interface _UIKeyboardTextSelectionGestureControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setPanGestureState:(int64_t)state;
@end

@implementation _UIKeyboardTextSelectionGestureControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = "q";
  v3 = @"_UIKeyboardTextSelectionGestureController";
  [location[0] validateClass:"q" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"panGestureState" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (void)setPanGestureState:(int64_t)state
{
  selfCopy = self;
  v13 = a2;
  stateCopy = state;
  v8 = [(_UIKeyboardTextSelectionGestureControllerAccessibility *)self safeValueForKey:@"panGestureState"];
  integerValue = [v8 integerValue];
  *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  v11 = integerValue;
  v10.receiver = selfCopy;
  v10.super_class = _UIKeyboardTextSelectionGestureControllerAccessibility;
  [(_UIKeyboardTextSelectionGestureControllerAccessibility *)&v10 setPanGestureState:stateCopy, v3];
  if (stateCopy != v11)
  {
    if (v11 || stateCopy != 1)
    {
      if (v11 == 1 || !stateCopy)
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
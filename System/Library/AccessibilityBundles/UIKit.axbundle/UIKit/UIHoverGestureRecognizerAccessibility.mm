@interface UIHoverGestureRecognizerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axGesture;
- (int64_t)state;
- (uint64_t)_axIsListeningForNotifications;
- (uint64_t)_axSetIsListeningForNotifications:(uint64_t)result;
- (uint64_t)_axSetSimulatedState:(uint64_t)result;
- (uint64_t)_axSimulatedState;
- (void)_accessibilityFocusedElementChanged:(id)a3;
- (void)_accessibilityFocusedElementChangedToElement:(void *)a1;
- (void)_accessibilitySimulateStateChange;
- (void)_axSetOverrideStateEnabled:(id)obj forFocusedElement:;
@end

@implementation UIHoverGestureRecognizerAccessibility

- (uint64_t)_axIsListeningForNotifications
{
  if (a1)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_axSetIsListeningForNotifications:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

- (uint64_t)_axSimulatedState
{
  if (a1)
  {
    return __UIAccessibilityGetAssociatedInteger();
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_axSetSimulatedState:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedInteger();
  }

  return result;
}

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UIGestureRecognizer";
  [location[0] validateClass:@"UIHoverGestureRecognizer" isKindOfClass:?];
  [location[0] validateClass:@"UIGestureRecognizer" hasInstanceVariable:@"_targets" withType:"NSMutableArray"];
  v3 = @"UIGestureRecognizerTarget";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UIGestureRecognizerTarget" hasInstanceVariable:@"_target" withType:"@"];
  [location[0] validateClass:@"UIGestureRecognizer" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  objc_storeStrong(v6, obj);
}

- (int64_t)state
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UIHoverGestureRecognizerAccessibility;
  v4 = [(UIHoverGestureRecognizerAccessibility *)&v3 state];
  if (v4 <= 0)
  {
    return [(UIHoverGestureRecognizerAccessibility *)v6 _axSimulatedState];
  }

  else
  {
    return v4;
  }
}

- (void)_accessibilityFocusedElementChanged:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] userInfo];
  v3 = [v4 objectForKeyedSubscript:*MEMORY[0x29EDC7EC0]];
  [(UIHoverGestureRecognizerAccessibility *)v6 _accessibilityFocusedElementChangedToElement:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)_accessibilityFocusedElementChangedToElement:(void *)a1
{
  v18 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v18)
  {
    v15 = [(UIHoverGestureRecognizerAccessibility *)v18 _axGesture];
    v14 = [(UIHoverGestureRecognizerAccessibility *)v18 _axSimulatedState]> 0;
    v10 = [v15 view];
    [v10 accessibilityFrame];
    rect1.origin.x = v2;
    rect1.origin.y = v3;
    rect1.size.width = v4;
    rect1.size.height = v5;
    MEMORY[0x29EDC9740](v10);
    [location accessibilityFrame];
    rect2.origin.x = v6;
    rect2.origin.y = v7;
    rect2.size.width = v8;
    rect2.size.height = v9;
    CGRectContainsRect(rect1, rect2);
    [UIHoverGestureRecognizerAccessibility _axSetSimulatedState:v18];
    v11 = [(UIHoverGestureRecognizerAccessibility *)v18 _axSimulatedState]> 0;
    if (v14 || v11)
    {
      [(UIHoverGestureRecognizerAccessibility *)v18 _accessibilitySimulateStateChange];
    }

    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (id)_axGesture
{
  v6 = a1;
  if (a1)
  {
    v5 = 0;
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v3 = MEMORY[0x29EDC9748](v4);
    objc_storeStrong(&v4, 0);
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  v1 = v7;

  return v1;
}

- (void)_accessibilitySimulateStateChange
{
  v7 = a1;
  if (a1)
  {
    v6 = [(UIHoverGestureRecognizerAccessibility *)v7 _axGesture];
    v5 = [v6 delegate];
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && ([v5 gestureRecognizerShouldBegin:v6] & 1) == 0)
    {
      v4 = 1;
    }

    else
    {
      v3 = [v7 safeArrayForKey:@"_targets"];
      v1 = MEMORY[0x29EDC9748](v3);
      v2 = MEMORY[0x29EDC9748](v6);
      AXPerformSafeBlock();
      objc_storeStrong(&v2, 0);
      objc_storeStrong(&v1, 0);
      objc_storeStrong(&v3, 0);
      v4 = 0;
    }

    objc_storeStrong(&v5, 0);
    objc_storeStrong(&v6, 0);
  }
}

double __74__UIHoverGestureRecognizerAccessibility__accessibilitySimulateStateChange__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](*(a1 + 32));
  v10 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v10)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v10;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v6);
      v3 = [v12 target];
      [v3 performSelector:objc_msgSend(v12 withObject:{"action"), *(a1 + 40)}];
      *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v15 count:{16, v1}];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  *&result = MEMORY[0x29EDC9740](obj).n128_u64[0];
  return result;
}

- (void)_axSetOverrideStateEnabled:(id)obj forFocusedElement:
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v7)
  {
    if ((v6 & 1) == 0 || ([(UIHoverGestureRecognizerAccessibility *)v7 _axIsListeningForNotifications]& 1) != 0)
    {
      if ((v6 & 1) == 0 && ([(UIHoverGestureRecognizerAccessibility *)v7 _axIsListeningForNotifications]& 1) != 0)
      {
        [UIHoverGestureRecognizerAccessibility _axSetIsListeningForNotifications:v7];
        v3 = [MEMORY[0x29EDBA068] defaultCenter];
        [v3 removeObserver:v7 name:*MEMORY[0x29EDC7EB8] object:0];
        MEMORY[0x29EDC9740](v3);
        [UIHoverGestureRecognizerAccessibility _axSetSimulatedState:v7];
        [(UIHoverGestureRecognizerAccessibility *)v7 _accessibilitySimulateStateChange];
      }
    }

    else
    {
      [UIHoverGestureRecognizerAccessibility _axSetIsListeningForNotifications:v7];
      v4 = [MEMORY[0x29EDBA068] defaultCenter];
      [v4 addObserver:v7 selector:sel__accessibilityFocusedElementChanged_ name:*MEMORY[0x29EDC7EB8] object:0];
      MEMORY[0x29EDC9740](v4);
      [(UIHoverGestureRecognizerAccessibility *)v7 _accessibilityFocusedElementChangedToElement:?];
    }
  }

  objc_storeStrong(&location, 0);
}

@end
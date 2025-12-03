@interface UIHoverGestureRecognizerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axGesture;
- (int64_t)state;
- (uint64_t)_axIsListeningForNotifications;
- (uint64_t)_axSetIsListeningForNotifications:(uint64_t)result;
- (uint64_t)_axSetSimulatedState:(uint64_t)result;
- (uint64_t)_axSimulatedState;
- (void)_accessibilityFocusedElementChanged:(id)changed;
- (void)_accessibilityFocusedElementChangedToElement:(void *)element;
- (void)_accessibilitySimulateStateChange;
- (void)_axSetOverrideStateEnabled:(id)obj forFocusedElement:;
@end

@implementation UIHoverGestureRecognizerAccessibility

- (uint64_t)_axIsListeningForNotifications
{
  if (self)
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
  if (self)
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

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UIHoverGestureRecognizerAccessibility;
  state = [(UIHoverGestureRecognizerAccessibility *)&v3 state];
  if (state <= 0)
  {
    return [(UIHoverGestureRecognizerAccessibility *)selfCopy _axSimulatedState];
  }

  else
  {
    return state;
  }
}

- (void)_accessibilityFocusedElementChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  userInfo = [location[0] userInfo];
  v3 = [userInfo objectForKeyedSubscript:*MEMORY[0x29EDC7EC0]];
  [(UIHoverGestureRecognizerAccessibility *)selfCopy _accessibilityFocusedElementChangedToElement:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&userInfo, 0);
  objc_storeStrong(location, 0);
}

- (void)_accessibilityFocusedElementChangedToElement:(void *)element
{
  elementCopy = element;
  location = 0;
  objc_storeStrong(&location, a2);
  if (elementCopy)
  {
    _axGesture = [(UIHoverGestureRecognizerAccessibility *)elementCopy _axGesture];
    v14 = [(UIHoverGestureRecognizerAccessibility *)elementCopy _axSimulatedState]> 0;
    view = [_axGesture view];
    [view accessibilityFrame];
    rect1.origin.x = v2;
    rect1.origin.y = v3;
    rect1.size.width = v4;
    rect1.size.height = v5;
    MEMORY[0x29EDC9740](view);
    [location accessibilityFrame];
    rect2.origin.x = v6;
    rect2.origin.y = v7;
    rect2.size.width = v8;
    rect2.size.height = v9;
    CGRectContainsRect(rect1, rect2);
    [UIHoverGestureRecognizerAccessibility _axSetSimulatedState:elementCopy];
    v11 = [(UIHoverGestureRecognizerAccessibility *)elementCopy _axSimulatedState]> 0;
    if (v14 || v11)
    {
      [(UIHoverGestureRecognizerAccessibility *)elementCopy _accessibilitySimulateStateChange];
    }

    objc_storeStrong(&_axGesture, 0);
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
  selfCopy = self;
  if (self)
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
  selfCopy = self;
  if (self)
  {
    _axGesture = [(UIHoverGestureRecognizerAccessibility *)selfCopy _axGesture];
    delegate = [_axGesture delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0 && ([delegate gestureRecognizerShouldBegin:_axGesture] & 1) == 0)
    {
      v4 = 1;
    }

    else
    {
      v3 = [selfCopy safeArrayForKey:@"_targets"];
      v1 = MEMORY[0x29EDC9748](v3);
      v2 = MEMORY[0x29EDC9748](_axGesture);
      AXPerformSafeBlock();
      objc_storeStrong(&v2, 0);
      objc_storeStrong(&v1, 0);
      objc_storeStrong(&v3, 0);
      v4 = 0;
    }

    objc_storeStrong(&delegate, 0);
    objc_storeStrong(&_axGesture, 0);
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
  selfCopy = self;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (selfCopy)
  {
    if ((v6 & 1) == 0 || ([(UIHoverGestureRecognizerAccessibility *)selfCopy _axIsListeningForNotifications]& 1) != 0)
    {
      if ((v6 & 1) == 0 && ([(UIHoverGestureRecognizerAccessibility *)selfCopy _axIsListeningForNotifications]& 1) != 0)
      {
        [UIHoverGestureRecognizerAccessibility _axSetIsListeningForNotifications:selfCopy];
        defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
        [defaultCenter removeObserver:selfCopy name:*MEMORY[0x29EDC7EB8] object:0];
        MEMORY[0x29EDC9740](defaultCenter);
        [UIHoverGestureRecognizerAccessibility _axSetSimulatedState:selfCopy];
        [(UIHoverGestureRecognizerAccessibility *)selfCopy _accessibilitySimulateStateChange];
      }
    }

    else
    {
      [UIHoverGestureRecognizerAccessibility _axSetIsListeningForNotifications:selfCopy];
      defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
      [defaultCenter2 addObserver:selfCopy selector:sel__accessibilityFocusedElementChanged_ name:*MEMORY[0x29EDC7EB8] object:0];
      MEMORY[0x29EDC9740](defaultCenter2);
      [(UIHoverGestureRecognizerAccessibility *)selfCopy _accessibilityFocusedElementChangedToElement:?];
    }
  }

  objc_storeStrong(&location, 0);
}

@end
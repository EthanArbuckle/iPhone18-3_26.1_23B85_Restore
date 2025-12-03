@interface UIViewAnimationStateAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityAnimationTracker;
- (void)_accessibilityMarkAnimationNotInProgress:(void *)progress;
- (void)_accessibilitySetAnimationTracker:(uint64_t)tracker;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
@end

@implementation UIViewAnimationStateAccessibility

- (id)_accessibilityAnimationTracker
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &__UIViewAnimationState___accessibilityAnimationTracker);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetAnimationTracker:(uint64_t)tracker
{
  trackerCopy = tracker;
  location = 0;
  objc_storeStrong(&location, a2);
  if (trackerCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIViewAnimationState";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UIViewAnimationState" hasInstanceMethod:@"_outerPropertyAnimator:" withFullSignature:{"@", "B", 0}];
  [location[0] validateClass:@"UIViewPropertyAnimator" hasInstanceMethod:@"_animationState" withFullSignature:{"q", 0}];
  objc_storeStrong(v5, obj);
}

- (void)_accessibilityMarkAnimationNotInProgress:(void *)progress
{
  progressCopy = progress;
  location = 0;
  objc_storeStrong(&location, a2);
  if (progressCopy)
  {
    [progressCopy _accessibilitySetAnimationsInProgress:0];
  }

  objc_storeStrong(&location, 0);
}

- (void)dealloc
{
  v19 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v15 = a2;
  memset(__b, 0, sizeof(__b));
  obj = [(UIViewAnimationStateAccessibility *)selfCopy _accessibilityAnimationTracker];
  v9 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v6);
      oslog = AXLogUIA();
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        log = oslog;
        __os_log_helper_16_0_2_8_0_8_0(v17, selfCopy, v14);
        _os_log_impl(&dword_29C4D6000, log, type, "Animation tracker missed didStop, removing in dealloc: %p:%p", v17, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      [(UIViewAnimationStateAccessibility *)selfCopy _accessibilityMarkAnimationNotInProgress:v14];
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  *&v2 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  v10.receiver = selfCopy;
  v10.super_class = UIViewAnimationStateAccessibility;
  [(UIViewAnimationStateAccessibility *)&v10 dealloc];
}

- (void)animationDidStart:(id)start
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, start);
  v35 = location[0] != 0;
  v33 = 0;
  objc_opt_class();
  v25 = 0;
  v26 = &v25;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy__28;
  v30 = __Block_byref_object_dispose__28;
  v31 = 0;
  v20 = MEMORY[0x29EDCA5F8];
  v21 = 3221225472;
  v22 = __55__UIViewAnimationStateAccessibility_animationDidStart___block_invoke;
  v23 = &unk_29F30CC70;
  v24[1] = &v25;
  v24[0] = MEMORY[0x29EDC9748](selfCopy);
  AXPerformSafeBlock();
  v19 = MEMORY[0x29EDC9748](v26[5]);
  objc_storeStrong(v24, 0);
  _Block_object_dispose(&v25, 8);
  objc_storeStrong(&v31, 0);
  v32 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v19);
  if (v33)
  {
    abort();
  }

  v18 = MEMORY[0x29EDC9748](v32);
  objc_storeStrong(&v32, 0);
  v34 = v18;
  v12 = 0;
  if (v18)
  {
    v12 = 0;
    if ([v34 isUserInteractionEnabled])
    {
      v12 = [v34 safeIntegerForKey:@"_animationState"] == 4;
    }
  }

  v17 = v12;
  if (v12)
  {
    v35 = 0;
  }

  if (_AXSAutomationEnabled())
  {
    _accessibilityAnimationTracker = [(UIViewAnimationStateAccessibility *)selfCopy _accessibilityAnimationTracker];
    *&v3 = MEMORY[0x29EDC9740](_accessibilityAnimationTracker).n128_u64[0];
    if (!_accessibilityAnimationTracker)
    {
      v9 = selfCopy;
      v10 = [MEMORY[0x29EDB8E20] set];
      [(UIViewAnimationStateAccessibility *)v9 _accessibilitySetAnimationTracker:v10];
      MEMORY[0x29EDC9740](v10);
    }

    _accessibilityAnimationTracker2 = [(UIViewAnimationStateAccessibility *)selfCopy _accessibilityAnimationTracker];
    v8 = [_accessibilityAnimationTracker2 containsObject:location[0]];
    MEMORY[0x29EDC9740](_accessibilityAnimationTracker2);
    if (v8)
    {
      oslog = AXLogUIA();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v6 = type;
        __os_log_helper_16_0_0(v14);
        _os_log_error_impl(&dword_29C4D6000, log, v6, "The same animation was started twice. It's possible this will lead to mismatch animation tracking", v14, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    if (v35)
    {
      _accessibilityAnimationTracker3 = [(UIViewAnimationStateAccessibility *)selfCopy _accessibilityAnimationTracker];
      [_accessibilityAnimationTracker3 addObject:location[0]];
      MEMORY[0x29EDC9740](_accessibilityAnimationTracker3);
    }
  }

  if (v35)
  {
    [(UIViewAnimationStateAccessibility *)selfCopy _accessibilitySetAnimationsInProgress:1];
  }

  v13.receiver = selfCopy;
  v13.super_class = UIViewAnimationStateAccessibility;
  [(UIViewAnimationStateAccessibility *)&v13 animationDidStart:location[0]];
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

double __55__UIViewAnimationStateAccessibility_animationDidStart___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _outerPropertyAnimator:1];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, stop);
  finishedCopy = finished;
  v9 = 0;
  if (_AXSAutomationEnabled())
  {
    v4 = [(UIViewAnimationStateAccessibility *)selfCopy safeValueForKey:@"_animationID"];
    v5 = v9;
    v9 = v4;
    MEMORY[0x29EDC9740](v5);
  }

  if (location[0])
  {
    _accessibilityAnimationTracker = [(UIViewAnimationStateAccessibility *)selfCopy _accessibilityAnimationTracker];
    [_accessibilityAnimationTracker removeObject:location[0]];
    MEMORY[0x29EDC9740](_accessibilityAnimationTracker);
    [(UIViewAnimationStateAccessibility *)selfCopy _accessibilityMarkAnimationNotInProgress:?];
  }

  v8.receiver = selfCopy;
  v8.super_class = UIViewAnimationStateAccessibility;
  [(UIViewAnimationStateAccessibility *)&v8 animationDidStop:location[0] finished:finishedCopy];
  if (_AXSAutomationEnabled())
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC75D0], v9);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end
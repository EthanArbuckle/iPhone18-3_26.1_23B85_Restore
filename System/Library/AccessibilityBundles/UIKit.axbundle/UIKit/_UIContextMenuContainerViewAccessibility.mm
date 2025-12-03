@interface _UIContextMenuContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScrollDownPage;
- (BOOL)accessibilityScrollDownPageSupported;
- (BOOL)accessibilityScrollToVisibleWithChild:(id)child;
- (BOOL)accessibilityScrollUpPage;
- (BOOL)accessibilityScrollUpPageSupported;
- (double)_axTranslationForDetentIndex:(void *)index currentDetentIndex:(id)obj detents:;
- (id)_axDetentsForPanController:(uint64_t)controller;
- (id)_axPanController;
- (uint64_t)_axCurrentDetentIndexForPanController:(uint64_t)controller;
- (void)_axApplyTranslation:(id)obj forDetentIndex:(double)index panController:(double)controller;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation _UIContextMenuContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v10 = location;
  v9 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIContextMenuContainerView";
  v8 = "v";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v5 = @"_UIContextMenuPanController";
  [location[0] validateClass:?];
  v7 = @"UIView";
  [location[0] validateClass:v3 isKindOfClass:?];
  v4 = @"UIGestureRecognizer";
  [location[0] validateClass:@"UIPanGestureRecognizer" isKindOfClass:?];
  [location[0] validateClass:v4 hasInstanceVariable:@"_targets" withType:"NSMutableArray"];
  v6 = "@";
  [location[0] validateClass:v5 hasInstanceMethod:@"detents" withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceVariable:@"_currentDetentIndex" withType:"Q"];
  [location[0] validateClass:v5 hasInstanceMethod:@"_updateViewPositionsWithTranslation:location:ended:withVelocity:" withFullSignature:{v8, "{CAPoint3D=ddd}", "{CAPoint3D=ddd}", "B", "B", 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"didUpdateFocusInContext: withAnimationCoordinator:" withFullSignature:{v8, v6, v6, 0}];
  objc_storeStrong(v10, v9);
}

- (id)_axPanController
{
  v30 = *MEMORY[0x29EDCA608];
  v26[1] = self;
  if (self)
  {
    v26[0] = 0;
    v24 = 0;
    objc_opt_class();
    v23 = __UIAccessibilityCastAsClass();
    v22 = MEMORY[0x29EDC9748](v23);
    objc_storeStrong(&v23, 0);
    v25 = v22;
    memset(__b, 0, sizeof(__b));
    obj = [v22 gestureRecognizers];
    v14 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
    if (v14)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(__b[1] + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [v21 safeArrayForKey:@"_targets"];
          memset(v17, 0, sizeof(v17));
          v7 = MEMORY[0x29EDC9748](v19);
          v8 = [v7 countByEnumeratingWithState:v17 objects:v28 count:16];
          if (v8)
          {
            v4 = *v17[2];
            v5 = 0;
            v6 = v8;
            while (1)
            {
              v3 = v5;
              if (*v17[2] != v4)
              {
                objc_enumerationMutation(v7);
              }

              v18 = *(v17[1] + 8 * v5);
              v16 = [v18 safeValueForKey:@"_target"];
              NSClassFromString(&cfstr_Uicontextmenup.isa);
              if (objc_opt_isKindOfClass())
              {
                objc_storeStrong(v26, v16);
                v15 = 4;
              }

              else
              {
                v15 = 0;
              }

              objc_storeStrong(&v16, 0);
              if (v15)
              {
                break;
              }

              ++v5;
              if (v3 + 1 >= v6)
              {
                v5 = 0;
                v6 = [v7 countByEnumeratingWithState:v17 objects:v28 count:16];
                if (!v6)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x29EDC9740](v7);
          objc_storeStrong(&v19, 0);
        }

        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v27 = MEMORY[0x29EDC9748](v26[0]);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(v26, 0);
  }

  else
  {
    v27 = 0;
  }

  v1 = v27;

  return v1;
}

- (id)_axDetentsForPanController:(uint64_t)controller
{
  controllerCopy = controller;
  location = 0;
  objc_storeStrong(&location, a2);
  if (controllerCopy)
  {
    v6 = [location safeArrayForKey:@"detents"];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&location, 0);
  v2 = v6;

  return v2;
}

- (uint64_t)_axCurrentDetentIndexForPanController:(uint64_t)controller
{
  controllerCopy = controller;
  location = 0;
  objc_storeStrong(&location, a2);
  if (controllerCopy)
  {
    v5 = [location safeUnsignedIntegerForKey:@"_currentDetentIndex"];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(&location, 0);
  return v5;
}

- (double)_axTranslationForDetentIndex:(void *)index currentDetentIndex:(id)obj detents:
{
  selfCopy = self;
  v13 = a2;
  location[1] = index;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v15 = 0.0;
  v16 = 0;
  if (selfCopy)
  {
    v10 = 0;
    objc_opt_class();
    v7 = [location[0] objectAtIndexedSubscript:v13];
    v9 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v7);
    v8 = MEMORY[0x29EDC9748](v9);
    objc_storeStrong(&v9, 0);
    [v8 CGPointValue];
    v15 = v4;
    v16 = v5;
    MEMORY[0x29EDC9740](v8);
  }

  v11 = 1;
  objc_storeStrong(location, 0);
  return v15;
}

- (void)_axApplyTranslation:(id)obj forDetentIndex:(double)index panController:(double)controller
{
  *&v27 = index;
  *(&v27 + 1) = controller;
  selfCopy = self;
  v25 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (selfCopy)
  {
    v22 = [location safeIvarForKey:@"_currentDetentIndex"];
    if (v22)
    {
      *v22 = v25;
    }

    v21 = 0uLL;
    v16 = 0;
    objc_opt_class();
    v15 = __UIAccessibilityCastAsClass();
    v14 = MEMORY[0x29EDC9748](v15);
    objc_storeStrong(&v15, 0);
    [v14 bounds];
    v17 = v5;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    AX_CGRectGetCenter();
    *&v21 = v9;
    *(&v21 + 1) = v10;
    MEMORY[0x29EDC9740](v14);
    v11 = MEMORY[0x29EDC9748](location);
    v12 = v27;
    v13 = v21;
    AXPerformSafeBlock();
    objc_storeStrong(&v11, 0);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)accessibilityScrollToVisibleWithChild:(id)child
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, child);
  v18 = 0;
  [location[0] accessibilityFrame];
  v17.origin.x = v3;
  v17.origin.y = v4;
  v17.size.width = v5;
  v17.size.height = v6;
  [(_UIContextMenuContainerViewAccessibility *)selfCopy accessibilityFrame];
  v16 = v21;
  if (!CGRectContainsRect(v21, v17))
  {
    _axPanController = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axPanController];
    v14 = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axDetentsForPanController:_axPanController];
    v13 = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axCurrentDetentIndexForPanController:_axPanController];
    for (i = v13; i < [v14 count]; ++i)
    {
      v10 = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axTranslationForDetentIndex:v13 currentDetentIndex:v14 detents:?];
      v11 = v7;
      v22.origin.x = v17.origin.x + v10;
      v22.origin.y = v17.origin.y + v7;
      v22.size = v17.size;
      if (CGRectContainsRect(v16, v22))
      {
        [(_UIContextMenuContainerViewAccessibility *)selfCopy _axApplyTranslation:_axPanController forDetentIndex:v10 panController:v11];
        v18 = 1;
      }
    }

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&_axPanController, 0);
  }

  v9 = v18;
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (BOOL)accessibilityScrollUpPageSupported
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = [(_UIContextMenuContainerViewAccessibility *)self _axPanController];
  v5 = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axDetentsForPanController:?];
  v3 = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axCurrentDetentIndexForPanController:?];
  v4 = v3 < [v5 count] - 1;
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);
  return v4;
}

- (BOOL)accessibilityScrollUpPage
{
  selfCopy = self;
  v12 = a2;
  v11 = 0;
  _axPanController = [(_UIContextMenuContainerViewAccessibility *)self _axPanController];
  location = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axDetentsForPanController:_axPanController];
  v8 = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axCurrentDetentIndexForPanController:_axPanController];
  if (v8 < [location count] - 1)
  {
    v7 = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axTranslationForDetentIndex:v8 currentDetentIndex:location detents:?];
    [(_UIContextMenuContainerViewAccessibility *)selfCopy _axApplyTranslation:_axPanController forDetentIndex:v7 panController:v2];
    notification = *MEMORY[0x29EDC7EF0];
    v6 = accessibilityLocalizedString(@"context.menu.scrolled.up");
    UIAccessibilityPostNotification(notification, v6);
    MEMORY[0x29EDC9740](v6);
    v11 = 1;
  }

  v4 = v11;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&_axPanController, 0);
  return v4 & 1;
}

- (BOOL)accessibilityScrollDownPageSupported
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = [(_UIContextMenuContainerViewAccessibility *)self _axPanController];
  location = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axDetentsForPanController:?];
  v4 = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axCurrentDetentIndexForPanController:?];
  v3 = 0;
  if (v4)
  {
    v3 = v4 < [location count];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v6, 0);
  return v3;
}

- (BOOL)accessibilityScrollDownPage
{
  selfCopy = self;
  v12 = a2;
  v11 = 0;
  _axPanController = [(_UIContextMenuContainerViewAccessibility *)self _axPanController];
  location = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axDetentsForPanController:_axPanController];
  v8 = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axCurrentDetentIndexForPanController:_axPanController];
  if (v8 && v8 < [location count])
  {
    v7 = [(_UIContextMenuContainerViewAccessibility *)selfCopy _axTranslationForDetentIndex:v8 currentDetentIndex:location detents:?];
    [(_UIContextMenuContainerViewAccessibility *)selfCopy _axApplyTranslation:_axPanController forDetentIndex:v7 panController:v2];
    notification = *MEMORY[0x29EDC7EF0];
    v6 = accessibilityLocalizedString(@"context.menu.scrolled.down");
    UIAccessibilityPostNotification(notification, v6);
    MEMORY[0x29EDC9740](v6);
    v11 = 1;
  }

  v4 = v11;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&_axPanController, 0);
  return v4 & 1;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v23 = 0;
  objc_storeStrong(&v23, coordinator);
  v22.receiver = selfCopy;
  v22.super_class = _UIContextMenuContainerViewAccessibility;
  [(_UIContextMenuContainerViewAccessibility *)&v22 didUpdateFocusInContext:location[0] withAnimationCoordinator:v23];
  v17 = 0;
  v15 = 0;
  v7 = 0;
  if (([(_UIContextMenuContainerViewAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v21 = 0;
    objc_opt_class();
    nextFocusedItem = [location[0] nextFocusedItem];
    v20 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](nextFocusedItem);
    v19 = MEMORY[0x29EDC9748](v20);
    objc_storeStrong(&v20, 0);
    v18 = v19;
    v17 = 1;
    v16 = [v19 _accessibilityAncestorIsKindOf:objc_opt_class()];
    v15 = 1;
    v7 = v16 != 0;
  }

  if (v15)
  {
    MEMORY[0x29EDC9740](v16);
  }

  if (v17)
  {
    MEMORY[0x29EDC9740](v18);
  }

  if (v7)
  {
    v4 = v23;
    v8 = MEMORY[0x29EDCA5F8];
    v9 = -1073741824;
    v10 = 0;
    v11 = __93___UIContextMenuContainerViewAccessibility_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
    v12 = &unk_29F30E430;
    v13 = MEMORY[0x29EDC9748](selfCopy);
    v14 = MEMORY[0x29EDC9748](location[0]);
    [v4 addCoordinatedFocusingAnimations:&v8 completion:?];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

@end
@interface UIFocusRingManagerAccessibility
+ (Class)shapeLayerClassForItem:(id)item client:(id)client;
+ (void)_accessibilityPerformValidations:(id)validations;
+ (void)moveRingToFocusItem:(id)item forClient:(id)client;
+ (void)removeRingFromFocusItem:(id)item forClient:(id)client;
- (BOOL)_accessibilityFKAShouldFocusItem:(id)item;
- (BOOL)_focusItemWantsFocusRing:(id)ring forClient:(id)client;
- (id)_focusRingPathForItem:(id)item inView:(id)view;
@end

@implementation UIFocusRingManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v5 = "@";
  v4 = @"UIFocusRingManager";
  [location[0] validateClass:"@" hasClassMethod:"@" withFullSignature:0];
  v3 = "v";
  [location[0] validateClass:v4 hasClassMethod:@"moveRingToFocusItem:forClient:" withFullSignature:{v5, v5, 0}];
  [location[0] validateClass:v4 hasClassMethod:@"removeRingFromFocusItem:forClient:" withFullSignature:{v3, v5, v5, 0}];
  [location[0] validateClass:v4 hasClassMethod:@"manager" withFullSignature:{v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_removeActiveFocusLayersForClient:" withFullSignature:{v3, v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_focusRingPathForItem:inView:" withFullSignature:{v5, v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_focusItemWantsFocusRing:forClient:" withFullSignature:{"B", v5, v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_viewToAddFocusLayerForItem:forClient:" withFullSignature:{v5, v5, 0}];
  [location[0] validateClass:@"_UISizeTrackingView"];
  [location[0] validateClass:@"_UIScenePresentationView"];
  objc_storeStrong(v7, v6);
}

+ (Class)shapeLayerClassForItem:(id)item client:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v9 = 0;
  objc_storeStrong(&v9, client);
  if ([v9 isEqualToString:@"AXSpeakFingerManager"])
  {
    goto LABEL_4;
  }

  if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    [v9 isEqualToString:@"AXFKATextFieldClient"];
LABEL_4:
    v12 = objc_opt_class();
    v8 = 1;
    goto LABEL_6;
  }

  v7.receiver = selfCopy;
  v7.super_class = &OBJC_METACLASS___UIFocusRingManagerAccessibility;
  v12 = objc_msgSendSuper2(&v7, sel_shapeLayerClassForItem_client_, location[0], v9);
  v8 = 1;
LABEL_6:
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  v4 = v12;

  return v4;
}

- (BOOL)_focusItemWantsFocusRing:(id)ring forClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, ring);
  v19 = 0;
  objc_storeStrong(&v19, client);
  v18 = [v19 isEqualToString:@"AXSpeakFingerManager"];
  v16 = 0;
  objc_opt_class();
  v15 = __UIAccessibilityCastAsClass();
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v17 = v14;
  _accessibilityDisplayFocusIndicatorForFocusEverywhereView = 0;
  if ([v14 _accessibilityIsFocusForFocusEverywhereRunningForFocusItem])
  {
    _accessibilityDisplayFocusIndicatorForFocusEverywhereView = [v17 _accessibilityDisplayFocusIndicatorForFocusEverywhereView];
  }

  v13 = _accessibilityDisplayFocusIndicatorForFocusEverywhereView & 1;
  _accessibilityParentView = [v17 _accessibilityParentView];
  v11 = 0;
  if (([_accessibilityParentView _accessibilityIsFKARunningForFocusItem] & 1) == 0 || -[UIFocusRingManagerAccessibility _accessibilityFKAShouldFocusItem:](selfCopy, "_accessibilityFKAShouldFocusItem:", location[0]))
  {
    v6 = 1;
    if (([_accessibilityParentView _accessibilityIsFKARunningForFocusItem] & 1) == 0)
    {
      v6 = 1;
      if ((v18 & 1) == 0)
      {
        v6 = 1;
        if ((v13 & 1) == 0)
        {
          v6 = v11;
        }
      }
    }

    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v9.receiver = selfCopy;
      v9.super_class = UIFocusRingManagerAccessibility;
      v5 = [(UIFocusRingManagerAccessibility *)&v9 _focusItemWantsFocusRing:location[0] forClient:v19];
    }

    v22 = v5 != 0;
    v10 = 1;
  }

  else
  {
    v22 = 0;
    v10 = 1;
  }

  objc_storeStrong(&_accessibilityParentView, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v22;
}

- (id)_focusRingPathForItem:(id)item inView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v16 = 0;
  objc_storeStrong(&v16, view);
  traitCollection = [v16 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  *&v4 = MEMORY[0x29EDC9740](traitCollection).n128_u64[0];
  v15 = userInterfaceIdiom;
  v10 = 0;
  if (userInterfaceIdiom != 3)
  {
    v10 = v15 != 2;
  }

  v14 = v10;
  if (!v10 || ((v13 = [location[0] accessibilityPath]) == 0 ? (v12 = 0) : (v19 = UIAccessibilityConvertAccessibilityPathToViewCoordinates(), v12 = 1), objc_storeStrong(&v13, 0), !v12))
  {
    v11.receiver = selfCopy;
    v11.super_class = UIFocusRingManagerAccessibility;
    v19 = [(UIFocusRingManagerAccessibility *)&v11 _focusRingPathForItem:location[0] inView:v16, v4];
    v12 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v5 = v19;

  return v5;
}

+ (void)moveRingToFocusItem:(id)item forClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v17 = 0;
  objc_storeStrong(&v17, client);
  v15 = 0;
  objc_opt_class();
  v14 = __UIAccessibilityCastAsClass();
  v13 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v14, 0);
  v16 = v13;
  v4 = v13;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __65__UIFocusRingManagerAccessibility_moveRingToFocusItem_forClient___block_invoke;
  v11 = &unk_29F30D748;
  v12 = MEMORY[0x29EDC9748](v13);
  [v4 accessibilityEnumerateAncestorsUsingBlock:&v7];
  v21 = &moveRingToFocusItem_forClient__onceToken;
  v20 = 0;
  objc_storeStrong(&v20, &__block_literal_global_21);
  if (*v21 != -1)
  {
    dispatch_once(v21, v20);
  }

  objc_storeStrong(&v20, 0);
  if (_UIAccessibilityFullKeyboardAccessEnabled() & 1) != 0 && (([v17 isEqualToString:@"FocusEngineClient"] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"AXFKATextFieldClient")) && !_AXSFullKeyboardAccessFocusRingEnabled())
  {
    [MEMORY[0x29EDC7A98] removeRingFromFocusItem:location[0] forClient:v17];
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = &OBJC_METACLASS___UIFocusRingManagerAccessibility;
    objc_msgSendSuper2(&v6, sel_moveRingToFocusItem_forClient_, location[0], v17);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __65__UIFocusRingManagerAccessibility_moveRingToFocusItem_forClient___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (([location[0] _accessibilityRemembersLastFocusedChild] & 1) != 0 && location[0] != a1[4])
  {
    [location[0] _axSetLastFocusedChild:a1[4]];
  }

  objc_storeStrong(location, 0);
}

double __65__UIFocusRingManagerAccessibility_moveRingToFocusItem_forClient___block_invoke_2()
{
  v5 = [MEMORY[0x29EDBA068] defaultCenter];
  v3 = *MEMORY[0x29EDC8420];
  v4 = [MEMORY[0x29EDBA088] mainQueue];
  v0 = [v5 addObserverForName:v3 object:0 queue:? usingBlock:?];
  v1 = moveRingToFocusItem_forClient__FocusRingEnabledObserver;
  moveRingToFocusItem_forClient__FocusRingEnabledObserver = v0;
  MEMORY[0x29EDC9740](v1);
  MEMORY[0x29EDC9740](v4);
  *&result = MEMORY[0x29EDC9740](v5).n128_u64[0];
  return result;
}

void __65__UIFocusRingManagerAccessibility_moveRingToFocusItem_forClient___block_invoke_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  v4 = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
  v3 = [v4 windowScene];
  v8[0] = [v3 _accessibilityNativeFocusElement];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  v7 = _AXSFullKeyboardAccessFocusRingEnabled() != 0;
  if (v8[0])
  {
    if (v7)
    {
      [MEMORY[0x29EDC7A98] moveRingToFocusItem:v8[0] forClient:@"FocusEngineClient"];
    }

    else
    {
      [MEMORY[0x29EDC7A98] removeRingFromFocusItem:v8[0] forClient:@"FocusEngineClient"];
    }
  }

  else if (v7)
  {
    v6 = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
    if (v6)
    {
      v5 = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:v6];
      [v5 requestFocusUpdateToEnvironment:v5];
      objc_storeStrong(&v5, 0);
    }

    objc_storeStrong(&v6, 0);
  }

  AXPerformSafeBlock();
  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);
}

double __65__UIFocusRingManagerAccessibility_moveRingToFocusItem_forClient___block_invoke_4(uint64_t a1)
{
  v8 = a1;
  v7 = a1;
  v6 = 0;
  objc_opt_class();
  v3 = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
  v2 = [v3 firstResponder];
  v5 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](v3);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  [(UITextInputUIResponderAccessibility *)v4 _axDrawFocusRingAroundFirstResponderAndMoveFocus:?];
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

+ (void)removeRingFromFocusItem:(id)item forClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v15 = 0;
  objc_storeStrong(&v15, client);
  v14.receiver = selfCopy;
  v14.super_class = &OBJC_METACLASS___UIFocusRingManagerAccessibility;
  objc_msgSendSuper2(&v14, sel_removeRingFromFocusItem_forClient_, location[0], v15);
  if ((_UIAccessibilityFullKeyboardAccessEnabled() & 1) == 0)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 838860800;
    v9 = 48;
    v10 = __Block_byref_object_copy__10;
    v11 = __Block_byref_object_dispose__10;
    v12 = 0;
    AXPerformSafeBlock();
    v5 = MEMORY[0x29EDC9748](v7[5]);
    _Block_object_dispose(&v6, 8);
    objc_storeStrong(&v12, 0);
    v13 = v5;
    [v5 _removeActiveFocusLayersForClient:@"AXFKATextFieldClient"];
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

double __69__UIFocusRingManagerAccessibility_removeRingFromFocusItem_forClient___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 40) manager];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (BOOL)_accessibilityFKAShouldFocusItem:(id)item
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  NSClassFromString(&cfstr_Uisizetracking_0.isa);
  isKindOfClass = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSClassFromString(&cfstr_Uiscenepresent_0.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  objc_storeStrong(location, 0);
  return (isKindOfClass ^ 1) & 1;
}

@end
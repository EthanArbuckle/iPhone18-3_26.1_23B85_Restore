@interface UIFocusRingManagerAccessibility
+ (Class)shapeLayerClassForItem:(id)a3 client:(id)a4;
+ (void)_accessibilityPerformValidations:(id)a3;
+ (void)moveRingToFocusItem:(id)a3 forClient:(id)a4;
+ (void)removeRingFromFocusItem:(id)a3 forClient:(id)a4;
- (BOOL)_accessibilityFKAShouldFocusItem:(id)a3;
- (BOOL)_focusItemWantsFocusRing:(id)a3 forClient:(id)a4;
- (id)_focusRingPathForItem:(id)a3 inView:(id)a4;
@end

@implementation UIFocusRingManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

+ (Class)shapeLayerClassForItem:(id)a3 client:(id)a4
{
  v11 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
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

  v7.receiver = v11;
  v7.super_class = &OBJC_METACLASS___UIFocusRingManagerAccessibility;
  v12 = objc_msgSendSuper2(&v7, sel_shapeLayerClassForItem_client_, location[0], v9);
  v8 = 1;
LABEL_6:
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  v4 = v12;

  return v4;
}

- (BOOL)_focusItemWantsFocusRing:(id)a3 forClient:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = [v19 isEqualToString:@"AXSpeakFingerManager"];
  v16 = 0;
  objc_opt_class();
  v15 = __UIAccessibilityCastAsClass();
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v17 = v14;
  v7 = 0;
  if ([v14 _accessibilityIsFocusForFocusEverywhereRunningForFocusItem])
  {
    v7 = [v17 _accessibilityDisplayFocusIndicatorForFocusEverywhereView];
  }

  v13 = v7 & 1;
  v12 = [v17 _accessibilityParentView];
  v11 = 0;
  if (([v12 _accessibilityIsFKARunningForFocusItem] & 1) == 0 || -[UIFocusRingManagerAccessibility _accessibilityFKAShouldFocusItem:](v21, "_accessibilityFKAShouldFocusItem:", location[0]))
  {
    v6 = 1;
    if (([v12 _accessibilityIsFKARunningForFocusItem] & 1) == 0)
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
      v9.receiver = v21;
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

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v22;
}

- (id)_focusRingPathForItem:(id)a3 inView:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v8 = [v16 traitCollection];
  v9 = [v8 userInterfaceIdiom];
  *&v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  v15 = v9;
  v10 = 0;
  if (v9 != 3)
  {
    v10 = v15 != 2;
  }

  v14 = v10;
  if (!v10 || ((v13 = [location[0] accessibilityPath]) == 0 ? (v12 = 0) : (v19 = UIAccessibilityConvertAccessibilityPathToViewCoordinates(), v12 = 1), objc_storeStrong(&v13, 0), !v12))
  {
    v11.receiver = v18;
    v11.super_class = UIFocusRingManagerAccessibility;
    v19 = [(UIFocusRingManagerAccessibility *)&v11 _focusRingPathForItem:location[0] inView:v16, v4];
    v12 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v5 = v19;

  return v5;
}

+ (void)moveRingToFocusItem:(id)a3 forClient:(id)a4
{
  v19 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
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
    v6.receiver = v19;
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

+ (void)removeRingFromFocusItem:(id)a3 forClient:(id)a4
{
  v17 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14.receiver = v17;
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

- (BOOL)_accessibilityFKAShouldFocusItem:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
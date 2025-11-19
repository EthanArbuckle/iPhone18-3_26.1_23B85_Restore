@interface _UIFocusSystemKeyboardSceneComponentAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)focusSystem;
@end

@implementation _UIFocusSystemKeyboardSceneComponentAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIKeyboardWindowScene"];
  v3 = @"_UIFocusSystemSceneComponent";
  [location[0] validateClass:@"_UIFocusSystemKeyboardSceneComponent" isKindOfClass:?];
  v4 = "@";
  [location[0] validateClass:@"_UIFocusSystemSceneComponent" hasInstanceMethod:@"focusSystem" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"_windowScene" withFullSignature:{v4, 0}];
  [location[0] validateClass:@"UIScene" hasClassMethod:@"_scenesIncludingInternal:" withFullSignature:{v4, "B", 0}];
  objc_storeStrong(v6, obj);
}

- (id)focusSystem
{
  v49 = *MEMORY[0x29EDCA608];
  v46 = self;
  v45[1] = a2;
  if (([(_UIFocusSystemKeyboardSceneComponentAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) == 0)
  {
    goto LABEL_29;
  }

  v44 = 0;
  objc_opt_class();
  v11 = [(_UIFocusSystemKeyboardSceneComponentAccessibility *)v46 safeValueForKey:@"_windowScene"];
  v43 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v11);
  v42 = MEMORY[0x29EDC9748](v43);
  objc_storeStrong(&v43, 0);
  v45[0] = v42;
  memset(__b, 0, sizeof(__b));
  v39 = 0;
  objc_opt_class();
  v31 = 0;
  v32 = &v31;
  v33 = 838860800;
  v34 = 48;
  v35 = __Block_byref_object_copy__17;
  v36 = __Block_byref_object_dispose__17;
  v37 = 0;
  v25 = MEMORY[0x29EDCA5F8];
  v26 = -1073741824;
  v27 = 0;
  v28 = __64___UIFocusSystemKeyboardSceneComponentAccessibility_focusSystem__block_invoke;
  v29 = &unk_29F30CA38;
  v30 = &v31;
  AXPerformSafeBlock();
  v24 = MEMORY[0x29EDC9748](v32[5]);
  _Block_object_dispose(&v31, 8);
  objc_storeStrong(&v37, 0);
  v38 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v24);
  if (v39)
  {
    abort();
  }

  v23 = MEMORY[0x29EDC9748](v38);
  objc_storeStrong(&v38, 0);
  obj = v23;
  v10 = [v23 countByEnumeratingWithState:__b objects:v48 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v41 = *(__b[1] + 8 * v7);
      if (v41 != v45[0])
      {
        NSClassFromString(&cfstr_Uikeyboardwind.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = 0;
          objc_opt_class();
          v20 = __UIAccessibilityCastAsClass();
          if (v21)
          {
            abort();
          }

          v19 = MEMORY[0x29EDC9748](v20);
          objc_storeStrong(&v20, 0);
          v22 = v19;
          v18 = [v19 focusSystem];
          v16 = 0;
          v14 = 0;
          v4 = 0;
          if ([v18 _isEnabled])
          {
            v17 = [v22 screen];
            v16 = 1;
            v15 = [v45[0] screen];
            v14 = 1;
            v4 = v17 == v15;
          }

          if (v14)
          {
            MEMORY[0x29EDC9740](v15);
          }

          if (v16)
          {
            MEMORY[0x29EDC9740](v17);
          }

          if (v4)
          {
            v47 = MEMORY[0x29EDC9748](v18);
            v13 = 1;
          }

          else
          {
            v13 = 0;
          }

          objc_storeStrong(&v18, 0);
          objc_storeStrong(&v22, 0);
          if (v13)
          {
            break;
          }
        }
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v48 count:16];
        if (!v8)
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
LABEL_25:
    v13 = 0;
  }

  MEMORY[0x29EDC9740](obj);
  if (!v13)
  {
    v13 = 0;
  }

  objc_storeStrong(v45, 0);
  if (!v13)
  {
LABEL_29:
    v12.receiver = v46;
    v12.super_class = _UIFocusSystemKeyboardSceneComponentAccessibility;
    v47 = [(_UIFocusSystemKeyboardSceneComponentAccessibility *)&v12 focusSystem];
  }

  v2 = v47;

  return v2;
}

@end
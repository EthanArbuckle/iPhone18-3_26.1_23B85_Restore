@interface UIResponderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityFKAArrowKeysHandled;
- (id)_keyboardShortcutMenuLeaves;
@end

@implementation UIResponderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIResponder" hasInstanceMethod:@"_keyboardShortcutMenuLeaves" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)_accessibilityFKAArrowKeysHandled
{
  v38 = *MEMORY[0x29EDCA608];
  v36[2] = self;
  v36[1] = a2;
  v36[0] = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v34 = 0;
  objc_opt_class();
  v33 = __UIAccessibilityCastAsClass();
  v32 = MEMORY[0x29EDC9748](v33);
  objc_storeStrong(&v33, 0);
  v35 = v32;
  while (v35)
  {
    v31 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v35 keyCommands];
      v3 = v31;
      v31 = v2;
      MEMORY[0x29EDC9740](v3);
    }

    if (![v31 count])
    {
      v4 = [v35 _accessibilityKeyCommands];
      v5 = v31;
      v31 = v4;
      MEMORY[0x29EDC9740](v5);
    }

    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v31);
    v28 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
    if (v28)
    {
      v24 = *__b[2];
      v25 = 0;
      v26 = v28;
      while (1)
      {
        v23 = v25;
        if (*__b[2] != v24)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(__b[1] + 8 * v25);
        if (![v30 modifierFlags])
        {
          v21 = [v30 input];
          v22 = [v21 isEqualToString:*MEMORY[0x29EDC8178]];
          *&v6 = MEMORY[0x29EDC9740](v21).n128_u64[0];
          if (v22)
          {
            [v36[0] addObject:{@"↑", v6}];
          }

          else
          {
            v19 = [v30 input];
            v20 = [v19 isEqualToString:*MEMORY[0x29EDC8160]];
            *&v7 = MEMORY[0x29EDC9740](v19).n128_u64[0];
            if (v20)
            {
              [v36[0] addObject:{@"↓", v7}];
            }

            else
            {
              v17 = [v30 input];
              v18 = [v17 isEqualToString:*MEMORY[0x29EDC8168]];
              *&v8 = MEMORY[0x29EDC9740](v17).n128_u64[0];
              if (v18)
              {
                [v36[0] addObject:{@"←", v8}];
              }

              else
              {
                v15 = [v30 input];
                v16 = [v15 isEqualToString:*MEMORY[0x29EDC8170]];
                *&v9 = MEMORY[0x29EDC9740](v15).n128_u64[0];
                if (v16)
                {
                  [v36[0] addObject:{@"→", v9}];
                }
              }
            }
          }
        }

        ++v25;
        if (v23 + 1 >= v26)
        {
          v25 = 0;
          v26 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
          if (!v26)
          {
            break;
          }
        }
      }
    }

    *&v10 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    v11 = [v35 nextResponder];
    v12 = v35;
    v35 = v11;
    MEMORY[0x29EDC9740](v12);
    objc_storeStrong(&v31, 0);
  }

  v14 = MEMORY[0x29EDC9748](v36[0]);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(v36, 0);

  return v14;
}

- (id)_keyboardShortcutMenuLeaves
{
  v22 = self;
  v21[1] = a2;
  v20.receiver = self;
  v20.super_class = UIResponderAccessibility;
  v21[0] = [(UIResponderAccessibility *)&v20 _keyboardShortcutMenuLeaves];
  if (([(UIResponderAccessibility *)v22 _accessibilityIsFKARunningForFocusItem]& 1) == 0 || _AXSFullKeyboardAccessPassthroughModeEnabled())
  {
    goto LABEL_23;
  }

  v19 = [*MEMORY[0x29EDC8008] _accessibilityNativeFocusElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0;
    objc_opt_class();
    v6 = [*MEMORY[0x29EDC8008] _accessibilityNativeFocusElement];
    v15 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v6);
    v14 = MEMORY[0x29EDC9748](v15);
    objc_storeStrong(&v15, 0);
    v17 = v14;
    if (([v14 isFirstResponder] & 1) == 0 || (v2 = objc_msgSend(v17, "accessibilityTraits"), (v2 & (*MEMORY[0x29EDBDC08] | *MEMORY[0x29EDBDAF8])) == 0))
    {
      v12 = 0;
      if (v21[0])
      {
        objc_storeStrong(v21, v21[0]);
      }

      else
      {
        v13 = [MEMORY[0x29EDB8D80] array];
        v12 = 1;
        objc_storeStrong(v21, v13);
      }

      if (v12)
      {
        MEMORY[0x29EDC9740](v13);
      }

      v5 = [(UIResponderAccessibility *)v22 _accessibilityKeyCommands];
      v11 = [v5 mutableCopy];
      [v11 enumerateObjectsUsingBlock:{&__block_literal_global_31, MEMORY[0x29EDC9740](v5).n128_f64[0]}];
      if ([v11 count])
      {
        v9 = 0;
        v7 = 0;
        if (([(UIResponderAccessibility *)v22 _accessibilityKeyCommandsShouldOverrideKeyCommands]& 1) != 0)
        {
          v10 = [v11 arrayByAddingObjectsFromArray:v21[0]];
          v9 = 1;
          objc_storeStrong(v21, v10);
        }

        else
        {
          v8 = [v21[0] arrayByAddingObjectsFromArray:v11];
          v7 = 1;
          objc_storeStrong(v21, v8);
        }

        if (v7)
        {
          MEMORY[0x29EDC9740](v8);
        }

        if (v9)
        {
          MEMORY[0x29EDC9740](v10);
        }
      }

      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  else
  {
    v23 = MEMORY[0x29EDC9748](v21[0]);
    v18 = 1;
  }

  objc_storeStrong(&v19, 0);
  if (!v18)
  {
LABEL_23:
    v23 = MEMORY[0x29EDC9748](v21[0]);
    v18 = 1;
  }

  objc_storeStrong(v21, 0);
  v3 = v23;

  return v3;
}

void __55__UIResponderAccessibility__keyboardShortcutMenuLeaves__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [location[0] setWantsPriorityOverSystemBehavior:1];
  }

  objc_storeStrong(location, 0);
}

@end
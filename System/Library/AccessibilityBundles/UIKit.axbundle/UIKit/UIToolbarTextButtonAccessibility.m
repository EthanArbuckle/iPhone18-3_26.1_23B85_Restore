@interface UIToolbarTextButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityElementsHidden;
- (id)accessibilityLabel;
@end

@implementation UIToolbarTextButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UINavigationButton";
  [location[0] validateClass:?];
  [location[0] validateClass:@"UIToolbarTextButton" hasInstanceVariable:@"_title" withType:"NSString"];
  v4 = "@";
  [location[0] validateClass:@"UINavigationButton" hasInstanceMethod:@"title" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"image" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityLabel
{
  v24 = *MEMORY[0x29EDCA608];
  v21 = self;
  v20[1] = a2;
  v15 = [(UIToolbarTextButtonAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](v15).n128_u64[0];
  if (v15)
  {
    v22 = [(UIToolbarTextButtonAccessibility *)v21 accessibilityUserDefinedLabel];
  }

  else
  {
    v20[0] = [(UIToolbarTextButtonAccessibility *)v21 safeValueForKey:@"_title", v2];
    if (!v20[0])
    {
      v19.receiver = v21;
      v19.super_class = UIToolbarTextButtonAccessibility;
      v3 = [(UIToolbarTextButtonAccessibility *)&v19 accessibilityLabel];
      v4 = v20[0];
      v20[0] = v3;
      MEMORY[0x29EDC9740](v4);
    }

    if (!v20[0])
    {
      location = [(UIToolbarTextButtonAccessibility *)v21 safeValueForKey:@"subviews"];
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](location);
      v14 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
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

          v17 = *(__b[1] + 8 * v11);
          if ([v17 isAccessibilityElement])
          {
            v5 = [v17 accessibilityLabel];
            v6 = v20[0];
            v20[0] = v5;
            MEMORY[0x29EDC9740](v6);
          }

          if ([v20[0] length])
          {
            break;
          }

          ++v11;
          if (v9 + 1 >= v12)
          {
            v11 = 0;
            v12 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
            if (!v12)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
      objc_storeStrong(&location, 0);
    }

    v22 = MEMORY[0x29EDC9748](v20[0]);
    objc_storeStrong(v20, 0);
  }

  v7 = v22;

  return v7;
}

- (BOOL)accessibilityElementsHidden
{
  v34 = *MEMORY[0x29EDCA608];
  v31 = self;
  v30[1] = a2;
  v29 = 0;
  objc_opt_class();
  v28 = __UIAccessibilityCastAsClass();
  v27 = MEMORY[0x29EDC9748](v28);
  objc_storeStrong(&v28, 0);
  v30[0] = v27;
  v26 = [v27 safeValueForKey:@"subviews"];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v26);
  v12 = [obj countByEnumeratingWithState:__b objects:v33 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(__b[1] + 8 * v9);
      if ([v25 isAccessibilityElement])
      {
        NSClassFromString(&cfstr_Uinavigationbu.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v32 = 0;
          v17 = 1;
          goto LABEL_23;
        }

        v22 = 0;
        objc_opt_class();
        v6 = [(UIToolbarTextButtonAccessibility *)v31 safeValueForKey:@"title"];
        v21 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v6);
        if (v22)
        {
          abort();
        }

        v20 = MEMORY[0x29EDC9748](v21);
        objc_storeStrong(&v21, 0);
        v23 = v20;
        v18 = 0;
        if (!v20 || (v5 = 1, ![v23 length]))
        {
          v19 = [v25 safeValueForKey:@"image"];
          v18 = 1;
          v5 = v19 != 0;
        }

        if (v18)
        {
          MEMORY[0x29EDC9740](v19);
        }

        if (v5)
        {
          v32 = 0;
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        objc_storeStrong(&v23, 0);
        if (v17)
        {
          goto LABEL_23;
        }
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v33 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  v17 = 0;
LABEL_23:
  MEMORY[0x29EDC9740](obj);
  if (!v17)
  {
    v15 = 0;
    objc_opt_class();
    v4 = [(UIToolbarTextButtonAccessibility *)v31 safeValueForKey:@"_title"];
    v14 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v4);
    v13 = MEMORY[0x29EDC9748](v14);
    objc_storeStrong(&v14, 0);
    v16 = v13;
    v3 = 1;
    if (v13)
    {
      v3 = [v16 length] == 0;
    }

    v32 = v3;
    v17 = 1;
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(v30, 0);
  return v32;
}

@end
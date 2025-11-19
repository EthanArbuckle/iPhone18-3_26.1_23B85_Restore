@interface UITableViewCellReorderControlAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation UITableViewCellReorderControlAccessibility

- (BOOL)isAccessibilityElement
{
  v13 = self;
  v12 = a2;
  v10 = 0;
  objc_opt_class();
  v6 = [(UITableViewCellReorderControlAccessibility *)v13 _accessibilityAncestorIsKindOf:objc_opt_class()];
  v9 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v6);
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  v5 = [UITableViewCellAccessibility _accessibilityClientIgnoresReorderControl]^ 1;
  MEMORY[0x29EDC9740](v8);
  v11 = v5 & 1;
  if (v5)
  {
    v7 = [(UITableViewCellReorderControlAccessibility *)v13 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 showingDeleteConfirmation])
    {
      v14 = 0;
    }

    else
    {
      v4 = [(UITableViewCellReorderControlAccessibility *)v13 safeValueForKey:@"alpha"];
      [v4 floatValue];
      v14 = v2 > 0.0;
      MEMORY[0x29EDC9740](v4);
    }

    objc_storeStrong(&v7, 0);
  }

  else
  {
    return 0;
  }

  return v14;
}

- (id)accessibilityLabel
{
  v41 = *MEMORY[0x29EDCA608];
  v38[2] = self;
  v38[1] = a2;
  v38[0] = [(UITableViewCellReorderControlAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = 0;
    objc_opt_class();
    v34 = __UIAccessibilityCastAsSafeCategory();
    v33 = MEMORY[0x29EDC9748](v34);
    objc_storeStrong(&v34, 0);
    v36 = v33;
    v32 = [v33 _accessibilityRetrieveTableViewCellTextForReorderControl];
    if ([v32 length])
    {
      v31 = MEMORY[0x29EDC9748](v32);
      if ([v32 isAXAttributedString])
      {
        v2 = [v32 string];
        v3 = v31;
        v31 = v2;
        MEMORY[0x29EDC9740](v3);
      }

      v21 = MEMORY[0x29EDBA0F8];
      v22 = accessibilityLocalizedString(@"table.view.reorder.control.label");
      v30 = [v21 stringWithFormat:v31];
      v28 = [v30 rangeOfString:{v31, MEMORY[0x29EDC9740](v22).n128_f64[0]}];
      v29 = v4;
      v27 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v30];
      if ([v32 isAXAttributedString])
      {
        v26[0] = 0;
        v26[1] = 0;
        v25 = [v32 attributesAtIndex:0 effectiveRange:v26];
        memset(__b, 0, sizeof(__b));
        obj = MEMORY[0x29EDC9748](v25);
        v20 = [obj countByEnumeratingWithState:__b objects:v40 count:16];
        if (v20)
        {
          v16 = *__b[2];
          v17 = 0;
          v18 = v20;
          while (1)
          {
            v15 = v17;
            if (*__b[2] != v16)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(__b[1] + 8 * v17);
            v13 = v27;
            v14 = [v25 objectForKey:v24];
            [v13 setAttribute:? forKey:? withRange:?];
            *&v5 = MEMORY[0x29EDC9740](v14).n128_u64[0];
            ++v17;
            if (v15 + 1 >= v18)
            {
              v17 = 0;
              v18 = [obj countByEnumeratingWithState:__b objects:v40 count:{16, v5}];
              if (!v18)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x29EDC9740](obj);
        objc_storeStrong(&v25, 0);
      }

      v11 = [v38[0] accessibilityLanguage];
      v12 = 0;
      if (v11)
      {
        v12 = v28 != 0x7FFFFFFFFFFFFFFFLL;
      }

      *&v6 = MEMORY[0x29EDC9740](v11).n128_u64[0];
      if (v12)
      {
        v9 = v27;
        v10 = [v38[0] accessibilityLanguage];
        [v9 setAttribute:? forKey:? withRange:?];
        MEMORY[0x29EDC9740](v10);
      }

      v39 = MEMORY[0x29EDC9748](v27);
      v37 = 1;
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
    }

    else
    {
      v39 = accessibilityLocalizedString(@"table.view.reorder.control");
      v37 = 1;
    }

    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v36, 0);
  }

  else
  {
    v39 = 0;
    v37 = 1;
  }

  objc_storeStrong(v38, 0);
  v7 = v39;

  return v7;
}

@end
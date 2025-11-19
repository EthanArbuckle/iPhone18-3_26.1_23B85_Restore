@interface _UICollectionViewListCellReorderControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityPath;
@end

@implementation _UICollectionViewListCellReorderControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UICollectionViewListCellReorderControl" isKindOfClass:@"UIView"];
  [location[0] validateClass:@"UICollectionViewLayout" hasInstanceVariable:@"_swipeActionsModule" withType:"_UICollectionViewLayoutSwipeActionsModule"];
  [location[0] validateClass:@"_UICollectionViewLayoutSwipeActionsModule" hasInstanceMethod:@"indexPathsWithActiveSwipes" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)isAccessibilityElement
{
  v22 = self;
  v21[1] = a2;
  v20 = 0;
  objc_opt_class();
  v6 = [(_UICollectionViewListCellReorderControlAccessibility *)v22 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v19 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v6);
  v18 = MEMORY[0x29EDC9748](v19);
  objc_storeStrong(&v19, 0);
  v21[0] = v18;
  v16 = 0;
  objc_opt_class();
  v5 = [(_UICollectionViewListCellReorderControlAccessibility *)v22 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v15 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v17 = v14;
  if (!v21[0] || !v17 || ((v13 = [v21[0] collectionViewLayout], v11 = 0, v4 = objc_msgSend(v13, "safeValueForKey:", @"_swipeActionsModule"), v10 = __UIAccessibilitySafeClass(), MEMORY[0x29EDC9740](v4), v9 = MEMORY[0x29EDC9748](v10), objc_storeStrong(&v10, 0), v12 = objc_msgSend(v9, "indexPathsWithActiveSwipes"), *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0], (v8 = objc_msgSend(v17, "_accessibilityIndexPath", v2)) == 0) || (objc_msgSend(v12, "containsObject:", v8) & 1) == 0 ? (v7 = 0) : (v23 = 0, v7 = 1), objc_storeStrong(&v8, 0), objc_storeStrong(&v12, 0), objc_storeStrong(&v13, 0), !v7))
  {
    v23 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(v21, 0);
  return v23 & 1;
}

- (id)accessibilityLabel
{
  v37 = *MEMORY[0x29EDCA608];
  v34[2] = self;
  v34[1] = a2;
  v34[0] = [(_UICollectionViewListCellReorderControlAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [v34[0] _accessibilityBriefLabel];
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
        location = [v32 attributesAtIndex:0 effectiveRange:v26];
        memset(__b, 0, sizeof(__b));
        obj = MEMORY[0x29EDC9748](location);
        v20 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
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
            v14 = [location objectForKey:v24];
            [v13 setAttribute:? forKey:? withRange:?];
            *&v5 = MEMORY[0x29EDC9740](v14).n128_u64[0];
            ++v17;
            if (v15 + 1 >= v18)
            {
              v17 = 0;
              v18 = [obj countByEnumeratingWithState:__b objects:v36 count:{16, v5}];
              if (!v18)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x29EDC9740](obj);
        objc_storeStrong(&location, 0);
      }

      v11 = [v34[0] accessibilityLanguage];
      v12 = 0;
      if (v11)
      {
        v12 = v28 != 0x7FFFFFFFFFFFFFFFLL;
      }

      *&v6 = MEMORY[0x29EDC9740](v11).n128_u64[0];
      if (v12)
      {
        v9 = v27;
        v10 = [v34[0] accessibilityLanguage];
        [v9 setAttribute:? forKey:? withRange:?];
        MEMORY[0x29EDC9740](v10);
      }

      v35 = MEMORY[0x29EDC9748](v27);
      v33 = 1;
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
    }

    else
    {
      v35 = accessibilityLocalizedString(@"table.view.reorder.control");
      v33 = 1;
    }

    objc_storeStrong(&v32, 0);
  }

  else
  {
    v35 = 0;
    v33 = 1;
  }

  objc_storeStrong(v34, 0);
  v7 = v35;

  return v7;
}

- (id)accessibilityPath
{
  v7 = MEMORY[0x29EDC7948];
  [(_UICollectionViewListCellReorderControlAccessibility *)self accessibilityFrame];
  return [v7 bezierPathWithRect:{v2, v3, v4, v5}];
}

@end
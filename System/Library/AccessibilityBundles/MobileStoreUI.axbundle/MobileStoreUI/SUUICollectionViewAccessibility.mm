@interface SUUICollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityScrollToFrame:(CGRect)frame forView:(id)view;
- (BOOL)accessibilityScrollDownPageSupported;
- (BOOL)accessibilityScrollUpPageSupported;
@end

@implementation SUUICollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIStorePageCollectionViewLayout"];
  [validationsCopy validateClass:@"SUUIStorePageCollectionViewLayout" hasInstanceMethod:@"_itemPinningConfigurationForItemAtIndexPath:" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIStorePageItemPinningConfiguration" hasInstanceMethod:@"hasValidPinningStyle" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SUUIStorePageItemPinningConfiguration" hasInstanceMethod:@"pinningStyle" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SUUIStorePageItemPinningConfiguration" hasInstanceMethod:@"hasValidPinningContentInset" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SUUIStorePageItemPinningConfiguration" hasInstanceMethod:@"pinningContentInset" withFullSignature:{"{UIEdgeInsets=dddd}", 0}];
}

- (BOOL)accessibilityScrollDownPageSupported
{
  v3 = [(SUUICollectionViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Musicverticals.isa)];

  if (v3)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = SUUICollectionViewAccessibility;
  return [(SUUICollectionViewAccessibility *)&v5 accessibilityScrollDownPageSupported];
}

- (BOOL)accessibilityScrollUpPageSupported
{
  v3 = [(SUUICollectionViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Musicverticals.isa)];

  if (v3)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = SUUICollectionViewAccessibility;
  return [(SUUICollectionViewAccessibility *)&v5 accessibilityScrollUpPageSupported];
}

- (BOOL)_accessibilityScrollToFrame:(CGRect)frame forView:(id)view
{
  height = frame.size.height;
  x = frame.origin.x;
  width = frame.size.width;
  y = frame.origin.y;
  v67 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  selfCopy = self;
  collectionViewLayout = [(SUUICollectionViewAccessibility *)self collectionViewLayout];
  NSClassFromString(&cfstr_Suuistorepagec.isa);
  if (objc_opt_isKindOfClass())
  {
    v32 = [collectionViewLayout safeValueForKey:@"indexPathsForPinningItems"];
    v33 = [viewCopy _accessibilityAncestorIsKindOf:objc_opt_class()];
    if (v33)
    {
      v38 = [(SUUICollectionViewAccessibility *)self indexPathForCell:?];
      if (v38)
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        obj = v32;
        v7 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
        if (v7)
        {
          v8 = 0;
          v40 = *v63;
          do
          {
            v9 = 0;
            v10 = v8;
            do
            {
              if (*v63 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v62 + 1) + 8 * v9);
              v49 = 0;
              v50 = &v49;
              v51 = 0x3032000000;
              v52 = __Block_byref_object_copy_;
              *&v53 = __Block_byref_object_dispose_;
              *(&v53 + 1) = 0;
              v55 = MEMORY[0x29EDCA5F8];
              v56 = 3221225472;
              v57 = __71__SUUICollectionViewAccessibility__accessibilityScrollToFrame_forView___block_invoke;
              v58 = &unk_29F2D8DB8;
              v61 = &v49;
              v59 = collectionViewLayout;
              v60 = v11;
              AXPerformSafeBlock();
              v12 = *(v50 + 5);

              _Block_object_dispose(&v49, 8);
              v13 = 0.0;
              if ([v12 safeBoolForKey:@"hasValidPinningStyle"])
              {
                v14 = [v12 safeIntegerForKey:@"pinningStyle"];
                v8 = v14;
                if (v14 && v14 != 3 && [v12 safeBoolForKey:@"hasValidPinningContentInset"])
                {
                  v49 = 0;
                  v50 = &v49;
                  v51 = 0x4010000000;
                  v52 = &unk_29C0206A3;
                  v53 = 0u;
                  v54 = 0u;
                  v43 = MEMORY[0x29EDCA5F8];
                  v44 = 3221225472;
                  v45 = __71__SUUICollectionViewAccessibility__accessibilityScrollToFrame_forView___block_invoke_2;
                  v46 = &unk_29F2D8DE0;
                  v48 = &v49;
                  v47 = v12;
                  AXPerformSafeBlock();
                  v15 = v50[4];
                  v16 = v50[6];

                  _Block_object_dispose(&v49, 8);
                  v17 = [(SUUICollectionViewAccessibility *)selfCopy layoutAttributesForItemAtIndexPath:v11];
                  [v17 size];
                  v19 = v18;

                  section = [v11 section];
                  v21 = v15 + v16 + v19;
                  if (section < [v38 section] || (v24 = objc_msgSend(v11, "section"), v24 == objc_msgSend(v38, "section")) && (v25 = objc_msgSend(v11, "row"), v25 < objc_msgSend(v38, "row")))
                  {
                    v22 = v10 == 1 || v8 == 1;
                    v13 = 0.0;
                    if (v22)
                    {
                      v23 = v21;
                    }

                    else
                    {
                      v23 = v21 + 0.0;
                    }
                  }

                  else
                  {
                    v26 = [v11 isEqual:v38];
                    if (v8 == 5)
                    {
                      v27 = v26;
                    }

                    else
                    {
                      v27 = 1;
                    }

                    v23 = 0.0;
                    if (v27)
                    {
                      v13 = 0.0;
                    }

                    else
                    {
                      v13 = v21 + 0.0;
                    }
                  }
                }

                else
                {
                  v23 = 0.0;
                }
              }

              else
              {
                v23 = 0.0;
                v8 = v10;
              }

              y = y - v23;
              height = height + v13 + v23;
              ++v9;
              v10 = v8;
            }

            while (v7 != v9);
            v28 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
            v7 = v28;
          }

          while (v28);
        }
      }
    }
  }

  v42.receiver = selfCopy;
  v42.super_class = SUUICollectionViewAccessibility;
  height = [(SUUICollectionViewAccessibility *)&v42 _accessibilityScrollToFrame:viewCopy forView:x, y, width, height];

  v30 = *MEMORY[0x29EDCA608];
  return height;
}

uint64_t __71__SUUICollectionViewAccessibility__accessibilityScrollToFrame_forView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _itemPinningConfigurationForItemAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

void __71__SUUICollectionViewAccessibility__accessibilityScrollToFrame_forView___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) safeValueForKey:@"pinningContentInset"];
  [v7 UIEdgeInsetsValue];
  v2 = *(*(a1 + 40) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
}

@end
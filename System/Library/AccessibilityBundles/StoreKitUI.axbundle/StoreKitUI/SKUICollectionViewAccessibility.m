@interface SKUICollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityScrollToFrame:(CGRect)a3 forView:(id)a4;
- (BOOL)accessibilityScrollDownPageSupported;
- (BOOL)accessibilityScrollUpPageSupported;
@end

@implementation SKUICollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIStorePageCollectionViewLayout"];
  [v3 validateClass:@"SKUIStorePageCollectionViewLayout" hasInstanceMethod:@"_itemPinningConfigurationForItemAtIndexPath:" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIStorePageItemPinningConfiguration" hasInstanceMethod:@"hasValidPinningStyle" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SKUIStorePageItemPinningConfiguration" hasInstanceMethod:@"pinningStyle" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SKUIStorePageItemPinningConfiguration" hasInstanceMethod:@"hasValidPinningContentInset" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SKUIStorePageItemPinningConfiguration" hasInstanceMethod:@"pinningContentInset" withFullSignature:{"{UIEdgeInsets=dddd}", 0}];
}

- (BOOL)accessibilityScrollDownPageSupported
{
  v3 = [(SKUICollectionViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Musicverticals.isa)];

  if (v3)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = SKUICollectionViewAccessibility;
  return [(SKUICollectionViewAccessibility *)&v5 accessibilityScrollDownPageSupported];
}

- (BOOL)accessibilityScrollUpPageSupported
{
  v3 = [(SKUICollectionViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Musicverticals.isa)];

  if (v3)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = SKUICollectionViewAccessibility;
  return [(SKUICollectionViewAccessibility *)&v5 accessibilityScrollUpPageSupported];
}

- (BOOL)_accessibilityScrollToFrame:(CGRect)a3 forView:(id)a4
{
  height = a3.size.height;
  x = a3.origin.x;
  width = a3.size.width;
  y = a3.origin.y;
  v68 = *MEMORY[0x29EDCA608];
  v37 = a4;
  v38 = self;
  v36 = [(SKUICollectionViewAccessibility *)self collectionViewLayout];
  NSClassFromString(&cfstr_Skuistorepagec.isa);
  if (objc_opt_isKindOfClass())
  {
    v42 = v36;
    v32 = [v42 indexPathsForPinningItems];
    v33 = [v37 _accessibilityAncestorIsKindOf:objc_opt_class()];
    if (v33)
    {
      v39 = [(SKUICollectionViewAccessibility *)self indexPathForCell:?];
      if (v39)
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        obj = v32;
        v7 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
        if (v7)
        {
          v8 = 0;
          v41 = *v64;
          do
          {
            v9 = 0;
            v10 = v8;
            do
            {
              if (*v64 != v41)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v63 + 1) + 8 * v9);
              v50 = 0;
              v51 = &v50;
              v52 = 0x3032000000;
              v53 = __Block_byref_object_copy__3;
              *&v54 = __Block_byref_object_dispose__3;
              *(&v54 + 1) = 0;
              v56 = MEMORY[0x29EDCA5F8];
              v57 = 3221225472;
              v58 = __71__SKUICollectionViewAccessibility__accessibilityScrollToFrame_forView___block_invoke;
              v59 = &unk_29F304278;
              v62 = &v50;
              v60 = v42;
              v61 = v11;
              AXPerformSafeBlock();
              v12 = *(v51 + 5);

              _Block_object_dispose(&v50, 8);
              v13 = 0.0;
              if ([v12 safeBoolForKey:@"hasValidPinningStyle"])
              {
                v14 = [v12 safeIntegerForKey:@"pinningStyle"];
                v8 = v14;
                if (v14 && v14 != 3 && [v12 safeBoolForKey:@"hasValidPinningContentInset"])
                {
                  v50 = 0;
                  v51 = &v50;
                  v52 = 0x4010000000;
                  v53 = &unk_29C460E8B;
                  v54 = 0u;
                  v55 = 0u;
                  v44 = MEMORY[0x29EDCA5F8];
                  v45 = 3221225472;
                  v46 = __71__SKUICollectionViewAccessibility__accessibilityScrollToFrame_forView___block_invoke_2;
                  v47 = &unk_29F304190;
                  v49 = &v50;
                  v48 = v12;
                  AXPerformSafeBlock();
                  v15 = v51[4];
                  v16 = v51[6];

                  _Block_object_dispose(&v50, 8);
                  v17 = [(SKUICollectionViewAccessibility *)v38 layoutAttributesForItemAtIndexPath:v11];
                  [v17 size];
                  v19 = v18;

                  v20 = [v11 section];
                  v21 = v15 + v16 + v19;
                  if (v20 < [v39 section] || (v24 = objc_msgSend(v11, "section"), v24 == objc_msgSend(v39, "section")) && (v25 = objc_msgSend(v11, "row"), v25 < objc_msgSend(v39, "row")))
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
                    v26 = [v11 isEqual:{v39, v32, v33}];
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
            v28 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
            v7 = v28;
          }

          while (v28);
        }
      }
    }
  }

  v43.receiver = v38;
  v43.super_class = SKUICollectionViewAccessibility;
  v29 = [(SKUICollectionViewAccessibility *)&v43 _accessibilityScrollToFrame:v37 forView:x, y, width, height, v32];

  v30 = *MEMORY[0x29EDCA608];
  return v29;
}

uint64_t __71__SKUICollectionViewAccessibility__accessibilityScrollToFrame_forView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _itemPinningConfigurationForItemAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

void __71__SKUICollectionViewAccessibility__accessibilityScrollToFrame_forView___block_invoke_2(uint64_t a1)
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
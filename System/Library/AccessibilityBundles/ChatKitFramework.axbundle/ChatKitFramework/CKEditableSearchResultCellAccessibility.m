@interface CKEditableSearchResultCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
@end

@implementation CKEditableSearchResultCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKSearchViewController" hasInstanceMethod:@"searchControllers" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKSearchController" hasInstanceMethod:@"results" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKSearchController" hasInstanceMethod:@"menuElementsForResult:atIndexPath:sourceRect:" withFullSignature:{"@", "@", "@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (id)accessibilityCustomActions
{
  v52 = *MEMORY[0x29EDCA608];
  v29 = [MEMORY[0x29EDB8DE8] array];
  v50.receiver = self;
  v50.super_class = CKEditableSearchResultCellAccessibility;
  v3 = [(CKEditableSearchResultCellAccessibility *)&v50 accessibilityCustomActions];
  [v29 axSafelyAddObjectsFromArray:v3];

  objc_opt_class();
  v4 = [(CKEditableSearchResultCellAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v25 = __UIAccessibilityCastAsClass();

  v24 = [v25 delegate];
  v27 = [v24 safeArrayForKey:@"searchControllers"];
  v5 = [(CKEditableSearchResultCellAccessibility *)self _accessibilityIndexPath];
  v6 = [v5 section];
  if (v6 >= [v27 count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v27 objectAtIndex:{objc_msgSend(v5, "section")}];
  }

  v26 = [v7 safeArrayForKey:@"results"];
  v8 = [v5 row];
  if (v8 >= [v26 count])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v26 objectAtIndex:{objc_msgSend(v5, "row")}];
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__0;
  v48 = __Block_byref_object_dispose__0;
  v49 = 0;
  v35 = MEMORY[0x29EDCA5F8];
  v36 = 3221225472;
  v37 = __69__CKEditableSearchResultCellAccessibility_accessibilityCustomActions__block_invoke;
  v38 = &unk_29F2B08E0;
  v43 = &v44;
  v21 = v7;
  v39 = v21;
  v23 = v9;
  v40 = v23;
  v22 = v5;
  v41 = v22;
  v42 = self;
  AXPerformSafeBlock();
  v10 = v45[5];

  _Block_object_dispose(&v44, 8);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v31 objects:v51 count:16];
  if (v11)
  {
    v12 = *v32;
    v13 = MEMORY[0x29EDCA5F8];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [v15 title];
        if (!v16)
        {
          v17 = [v15 image];
          v16 = [v17 accessibilityLabel];
        }

        v18 = objc_alloc(MEMORY[0x29EDC78E0]);
        v30[0] = v13;
        v30[1] = 3221225472;
        v30[2] = __69__CKEditableSearchResultCellAccessibility_accessibilityCustomActions__block_invoke_2;
        v30[3] = &unk_29F2B0770;
        v30[4] = v15;
        v19 = [v18 initWithName:v16 actionHandler:v30];
        [v29 axSafelyAddObject:v19];
      }

      v11 = [obj countByEnumeratingWithState:&v31 objects:v51 count:16];
    }

    while (v11);
  }

  return v29;
}

uint64_t __69__CKEditableSearchResultCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  [*(a1 + 56) accessibilityFrame];
  *(*(*(a1 + 64) + 8) + 40) = [v2 menuElementsForResult:v3 atIndexPath:v4 sourceRect:?];

  return MEMORY[0x2A1C71028]();
}

@end
@interface GKCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformCustomAction:(int64_t)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
@end

@implementation GKCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GKCollectionViewCell" hasInstanceMethod:@"editActionsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKEditAction" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKEditAction" hasInstanceMethod:@"selector" withFullSignature:{":", 0}];
  [v3 validateClass:@"UIApplication" hasInstanceMethod:@"_gkSendAction: viaResponder: withObject:" withFullSignature:{"B", ":", "@", "@", 0}];
}

- (id)accessibilityCustomActions
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = [(GKCollectionViewCellAccessibility *)self safeValueForKey:@"editActionsView"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"_cell"];
  v20 = 0;
  v5 = [v4 safeValueForKey:@"editActions"];
  v6 = __UIAccessibilitySafeClass();

  v7 = [MEMORY[0x29EDB8DE8] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) safeValueForKey:{@"name", v16}];
        [v7 axSafelyAddObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x29EDCA608];

  return v7;
}

- (BOOL)accessibilityPerformCustomAction:(int64_t)a3
{
  v4 = [(GKCollectionViewCellAccessibility *)self safeValueForKey:@"editActionsView"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 safeValueForKey:@"_cell"];
  LOBYTE(v16) = 0;
  v7 = [v6 safeValueForKey:@"editActions"];
  v8 = __UIAccessibilitySafeClass();

  v9 = [v8 count];
  if (v9 > a3)
  {
    v10 = [v8 objectAtIndex:a3];
    v11 = __UIAccessibilitySafeClass();

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15 = v11;
    AXPerformSafeBlock();
    v12 = v17[3];

    _Block_object_dispose(&v16, 8);
    v14 = v6;
    AXPerformSafeBlock();
  }

  return v9 > a3;
}

uint64_t __70__GKCollectionViewCellAccessibility_accessibilityPerformCustomAction___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) selector];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __70__GKCollectionViewCellAccessibility_accessibilityPerformCustomAction___block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x29EDC7938] sharedApplication];
  [v2 _gkSendAction:a1[6] viaResponder:a1[4] withObject:a1[5]];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v6[1] = *MEMORY[0x29EDCA608];
  v2 = [(GKCollectionViewCellAccessibility *)self safeValueForKey:@"editActionsView"];
  if ([v2 _accessibilityViewIsVisible])
  {
    v6[0] = v2;
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

@end
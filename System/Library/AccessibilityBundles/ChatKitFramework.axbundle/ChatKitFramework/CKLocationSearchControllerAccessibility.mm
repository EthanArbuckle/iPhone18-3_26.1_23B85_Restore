@interface CKLocationSearchControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5;
@end

@implementation CKLocationSearchControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKLocationSearchController" isKindOfClass:@"CKSearchController"];
  [v3 validateClass:@"CKSearchController" hasInstanceMethod:@"cellForItemInCollectionView:atIndexPath:withIdentifier:" withFullSignature:{"@", "@", "@", "@", 0}];
  [v3 validateClass:@"CKSearchController"];
  [v3 validateClass:@"CKSearchController" hasInstanceMethod:@"results" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKSpotlightQueryResultUtilities"];
  [v3 validateClass:@"CKSpotlightQueryResultUtilities" hasClassMethod:@"contactForResult:" withFullSignature:{"@", "@", 0}];
}

- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = CKLocationSearchControllerAccessibility;
  v11 = [(CKLocationSearchControllerAccessibility *)&v26 cellForItemInCollectionView:v8 atIndexPath:v9 withIdentifier:v10];
  LOBYTE(v20) = 0;
  objc_opt_class();
  v12 = __UIAccessibilityCastAsSafeCategory();
  if (v12)
  {
    v13 = [(CKLocationSearchControllerAccessibility *)self safeArrayForKey:@"results"];
    v14 = [v9 row];
    if (v14 < [v13 count])
    {
      v15 = [v13 objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy__8;
      v24 = __Block_byref_object_dispose__8;
      v25 = 0;
      v18 = MEMORY[0x29EDCA5F8];
      v19 = v15;
      AXPerformSafeBlock();
      v16 = v21[5];

      _Block_object_dispose(&v20, 8);
      [v12 _axSetContact:{v16, v18, 3221225472, __98__CKLocationSearchControllerAccessibility_cellForItemInCollectionView_atIndexPath_withIdentifier___block_invoke, &unk_29F2B06F8}];
    }
  }

  return v11;
}

uint64_t __98__CKLocationSearchControllerAccessibility_cellForItemInCollectionView_atIndexPath_withIdentifier___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [NSClassFromString(&cfstr_Ckspotlightque.isa) contactForResult:*(a1 + 32)];

  return MEMORY[0x2A1C71028]();
}

@end
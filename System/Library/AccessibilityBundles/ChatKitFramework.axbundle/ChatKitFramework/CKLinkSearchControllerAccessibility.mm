@interface CKLinkSearchControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier;
@end

@implementation CKLinkSearchControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKLinkSearchController" isKindOfClass:@"CKSearchController"];
  [validationsCopy validateClass:@"CKSearchController"];
  [validationsCopy validateClass:@"CKSearchController" hasInstanceMethod:@"results" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKSearchController" hasInstanceMethod:@"cellForItemInCollectionView:atIndexPath:withIdentifier:" withFullSignature:{"@", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"CKSpotlightQueryResultUtilities"];
  [validationsCopy validateClass:@"CKSpotlightQueryResultUtilities" hasClassMethod:@"contactForResult:" withFullSignature:{"@", "@", 0}];
}

- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = CKLinkSearchControllerAccessibility;
  v11 = [(CKLinkSearchControllerAccessibility *)&v26 cellForItemInCollectionView:viewCopy atIndexPath:pathCopy withIdentifier:identifierCopy];
  LOBYTE(v20) = 0;
  objc_opt_class();
  v12 = __UIAccessibilityCastAsSafeCategory();
  if (v12)
  {
    v13 = [(CKLinkSearchControllerAccessibility *)self safeArrayForKey:@"results"];
    v14 = [pathCopy row];
    if (v14 < [v13 count])
    {
      v15 = [v13 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy__7;
      v24 = __Block_byref_object_dispose__7;
      v25 = 0;
      v18 = MEMORY[0x29EDCA5F8];
      v19 = v15;
      AXPerformSafeBlock();
      v16 = v21[5];

      _Block_object_dispose(&v20, 8);
      [v12 _axSetContact:{v16, v18, 3221225472, __94__CKLinkSearchControllerAccessibility_cellForItemInCollectionView_atIndexPath_withIdentifier___block_invoke, &unk_29F2B06F8}];
    }
  }

  return v11;
}

uint64_t __94__CKLinkSearchControllerAccessibility_cellForItemInCollectionView_atIndexPath_withIdentifier___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [NSClassFromString(&cfstr_Ckspotlightque.isa) contactForResult:*(a1 + 32)];

  return MEMORY[0x2A1C71028]();
}

@end
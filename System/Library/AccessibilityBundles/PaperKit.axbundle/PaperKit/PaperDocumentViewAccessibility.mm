@interface PaperDocumentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)axInsertFormFieldsIntoHierarchy;
- (void)axRemoveFormFieldFromHierarchy:(id)hierarchy;
@end

@implementation PaperDocumentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PaperKit.PaperDocumentView"];
  [validationsCopy validateClass:@"PDFView"];
  [validationsCopy validateClass:@"PaperKit.PaperDocumentView" hasSwiftField:@"pdfView" withSwiftType:"Optional<PDFView>"];
  [validationsCopy validateClass:@"PaperKit.PaperDocumentView" hasInstanceMethod:@"axDetectedFormElements" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PaperKit.PaperDocumentView" hasInstanceMethod:@"axCurrentPageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PaperKit.PaperDocumentView" hasInstanceMethod:@"axTapOnShapeView:" withFullSignature:{"v", "@", 0}];
  if (NSClassFromString(&cfstr_Pdfpageviewacc.isa))
  {
    [validationsCopy validateClass:@"PDFPageViewAccessibility" hasInstanceMethod:@"_accessibilityInsertAnnotation:" withFullSignature:{"B", "@", 0}];
    [validationsCopy validateClass:@"PDFPageViewAccessibility" hasInstanceMethod:@"_accessibilityRemoveAnnotation:" withFullSignature:{"B", "@", 0}];
  }
}

- (void)axInsertFormFieldsIntoHierarchy
{
  v43 = *MEMORY[0x29EDCA608];
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy_;
  v40[4] = __Block_byref_object_dispose_;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  v27 = MEMORY[0x29EDCA5F8];
  v28 = 3221225472;
  v29 = __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke;
  v30 = &unk_29F2E1470;
  selfCopy = self;
  v32 = v40;
  val = self;
  v33 = &v34;
  AXPerformSafeBlock();
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = v35[5];
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v42 count:16];
  if (v3)
  {
    v4 = *v24;
    v13 = v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        accessibilityContainer = [v6 accessibilityContainer];
        NSClassFromString(&cfstr_PaperkitFormfi.isa);
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          location = 0;
          p_location = &location;
          v21 = 0x2020000000;
          v22 = 0;
          from[1] = MEMORY[0x29EDCA5F8];
          from[2] = 3221225472;
          v18[0] = __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke_2;
          v18[1] = &unk_29F2E1498;
          v18[3] = &location;
          v18[4] = v40;
          v18[2] = v6;
          AXPerformSafeBlock();
          v9 = *(p_location + 24);
          _Block_object_dispose(&location, 8);
          if (v9 == 1)
          {
            objc_initWeak(&location, v6);
            objc_initWeak(from, val);
            v14[0] = MEMORY[0x29EDCA5F8];
            v14[1] = 3221225472;
            v14[2] = __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke_3;
            v14[3] = &unk_29F2E14E8;
            objc_copyWeak(&v15, from);
            objc_copyWeak(&v16, &location);
            [v6 setAccessibilityActivateBlock:v14];
            accessibilityTraits = [v6 accessibilityTraits];
            [v6 setAccessibilityTraits:*MEMORY[0x29EDC7598] | accessibilityTraits];
            objc_destroyWeak(&v16);
            objc_destroyWeak(&v15);
            objc_destroyWeak(from);
            objc_destroyWeak(&location);
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v23 objects:v42 count:16];
    }

    while (v3);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v40, 8);

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) axCurrentPageView];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) axDetectedFormElements];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2A1C71028]();
}

uint64_t __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke_2(void *a1)
{
  result = [*(*(a1[6] + 8) + 40) _accessibilityInsertAnnotation:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke_3(uint64_t a1)
{
  objc_copyWeak(&v3, (a1 + 32));
  objc_copyWeak(&v4, (a1 + 40));
  AXPerformSafeBlock();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v3);
  return 1;
}

void __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained axTapOnShapeView:v2];
}

- (void)axRemoveFormFieldFromHierarchy:(id)hierarchy
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy_;
  v4[4] = __Block_byref_object_dispose_;
  v5 = 0;
  hierarchyCopy = hierarchy;
  AXPerformSafeBlock();

  _Block_object_dispose(v4, 8);
}

uint64_t __65__PaperDocumentViewAccessibility_axRemoveFormFieldFromHierarchy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) axCurrentPageView];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 48) + 8) + 40);

  return [v6 _accessibilityRemoveAnnotation:v5];
}

@end
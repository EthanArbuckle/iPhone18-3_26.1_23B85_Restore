@interface CanvasElementContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)automationElements;
- (id)markupController;
- (unint64_t)accessibilityTraits;
@end

@implementation CanvasElementContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PPKMarkupContainerViewController"];
  [validationsCopy validateClass:@"PaperKit.MarkupContainerViewController" hasSwiftField:@"editingMode" withSwiftType:"CanvasEditingMode"];
}

- (unint64_t)accessibilityTraits
{
  markupController = [(CanvasElementContainerViewAccessibility *)self markupController];
  v4 = [markupController safeSwiftValueForKey:@"editingMode"];
  v5 = [v4 description];

  if ([v5 isEqualToString:@"PaperKit.CanvasEditingMode.allowsAll"])
  {
    accessibilityTraits = *MEMORY[0x29EDC7F68];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CanvasElementContainerViewAccessibility;
    accessibilityTraits = [(CanvasElementContainerViewAccessibility *)&v8 accessibilityTraits];
  }

  return accessibilityTraits;
}

- (id)markupController
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __59__CanvasElementContainerViewAccessibility_markupController__block_invoke;
  v5[3] = &unk_29F2E1598;
  v5[4] = &v6;
  v2 = [(CanvasElementContainerViewAccessibility *)self _accessibilityFindViewAncestor:v5 startWithSelf:0];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __59__CanvasElementContainerViewAccessibility_markupController__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Ppkmarkupconta.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v3);
  }

  return isKindOfClass & 1;
}

- (id)automationElements
{
  v9 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  subviews = [v3 subviews];

  if (subviews)
  {
    automationElements = subviews;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CanvasElementContainerViewAccessibility;
    automationElements = [(CanvasElementContainerViewAccessibility *)&v8 automationElements];
  }

  v6 = automationElements;

  return v6;
}

@end
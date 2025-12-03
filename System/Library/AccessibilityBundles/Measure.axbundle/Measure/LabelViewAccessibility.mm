@interface LabelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (NSString)_accessibilityCurrentMeasurementString;
- (NSString)_accessibilityLastSavedMeasurementString;
- (id)_accessibilityLabelElementsWithAccessibilityContainer:(id)container;
- (id)_axLabelElementForMeasureID:(id)d accessibilityContainer:(id)container;
@end

@implementation LabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Measure.LabelView" hasInstanceMethod:@"labels" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Measure.LabelRender" hasInstanceMethod:@"speakableString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Measure.LabelRender" hasInstanceMethod:@"accessibilityFrameForLabelContainer" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"Measure.LabelRender" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"Measure.LabelRender" hasInstanceMethod:@"labelNode" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MeasureFoundation.WorldLine" hasInstanceMethod:@"identifiersOfObjectsComposedInto" withFullSignature:{"@", 0}];
}

- (id)_axLabelElementForMeasureID:(id)d accessibilityContainer:(id)container
{
  dCopy = d;
  containerCopy = container;
  objc_opt_class();
  v8 = [(LabelViewAccessibility *)self safeValueForKey:@"labels"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [v9 objectForKeyedSubscript:dCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 _accessibilityValueForKey:@"LabelRenderAXElement"];
    if (!v12)
    {
      v12 = [[AXMeasureLabelAccessibilityElement alloc] initWithAccessibilityContainer:containerCopy];
      [(AXMeasureLabelAccessibilityElement *)v12 setLabelRender:v11];
      [v11 _accessibilitySetRetainedValue:v12 forKey:@"LabelRenderAXElement"];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)_accessibilityLastSavedMeasurementString
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v3 = AXMeasureAccessibilityStateObserver();
  axOrderedWorldLineIDs = [v3 axOrderedWorldLineIDs];

  v13 = 0;
  objc_opt_class();
  v5 = [(LabelViewAccessibility *)self safeValueForKey:@"labels"];
  v6 = __UIAccessibilityCastAsClass();

  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __66__LabelViewAccessibility__accessibilityLastSavedMeasurementString__block_invoke;
  v10[3] = &unk_29F2CE660;
  v7 = v6;
  v11 = v7;
  v12 = &v14;
  [axOrderedWorldLineIDs enumerateObjectsWithOptions:2 usingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __66__LabelViewAccessibility__accessibilityLastSavedMeasurementString__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (([v9 safeIntegerForKey:@"state"] - 3) >= 2)
  {
    v6 = [v9 safeStringForKey:@"speakableString"];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (NSString)_accessibilityCurrentMeasurementString
{
  v3 = AXMeasureAccessibilityStateObserver();
  axOrderedWorldLineIDs = [v3 axOrderedWorldLineIDs];
  lastObject = [axOrderedWorldLineIDs lastObject];

  objc_opt_class();
  v6 = [(LabelViewAccessibility *)self safeValueForKey:@"labels"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 objectForKeyedSubscript:lastObject];
  if (([v8 safeIntegerForKey:@"state"] - 3) > 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v8 safeStringForKey:@"speakableString"];
  }

  return v9;
}

- (id)_accessibilityLabelElementsWithAccessibilityContainer:(id)container
{
  v28 = *MEMORY[0x29EDCA608];
  containerCopy = container;
  array = [MEMORY[0x29EDB8DE8] array];
  v21 = AXMeasureAccessibilityStateObserver();
  [v21 axOrderedWorldLineIDs];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    firstObject = 0;
    v8 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = firstObject;
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        axWorldLines = [v21 axWorldLines];
        v13 = [axWorldLines objectForKeyedSubscript:v11];

        v14 = [v13 safeArrayForKey:@"identifiersOfObjectsComposedInto"];
        firstObject = [v14 firstObject];

        if (v10 && ([v10 isEqual:firstObject] & 1) == 0)
        {
          v15 = [(LabelViewAccessibility *)self _axLabelElementForMeasureID:v10 accessibilityContainer:containerCopy];
          [v15 setIsRectangleArea:1];
          [array axSafelyAddObject:v15];
        }

        v16 = [(LabelViewAccessibility *)self _axLabelElementForMeasureID:v11 accessibilityContainer:containerCopy];
        [v16 setIsRectangleSideLength:firstObject != 0];
        [array axSafelyAddObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
    if (firstObject)
    {
      v17 = [(LabelViewAccessibility *)self _axLabelElementForMeasureID:firstObject accessibilityContainer:containerCopy];
      [v17 setIsRectangleArea:1];
      [array axSafelyAddObject:v17];
    }
  }

  v18 = *MEMORY[0x29EDCA608];

  return array;
}

@end
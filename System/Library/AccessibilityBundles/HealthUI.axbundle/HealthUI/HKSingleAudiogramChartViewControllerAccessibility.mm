@interface HKSingleAudiogramChartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axCollectSeriesDataForGraphView:(id)view;
- (id)_axHearingSensitivityFormatter;
- (id)_axSelectedXCoordinateForGraphView:(id)view;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetupGraphViewDescription;
- (void)_axUpdateAXElementsForGraphView;
- (void)_axUpdateSelectionAXElementsForGraphView;
- (void)graphView:(id)view didUpdateSelectedPoint:(id)point;
- (void)graphViewDidEndSelection:(id)selection;
@end

@implementation HKSingleAudiogramChartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HKSingleAudiogramChartViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"HKSingleAudiogramChartViewController" hasInstanceMethod:@"graphView:didUpdateSelectedPoint:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"HKSingleAudiogramChartViewController" hasInstanceMethod:@"graphViewDidEndSelection:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HKSingleAudiogramChartViewController" hasInstanceMethod:@"_formattedFrequencyStringForFrequency:" withFullSignature:{"@", "d", 0}];
  [validationsCopy validateClass:@"HKSingleAudiogramChartViewController" hasInstanceMethod:@"scalarGraphViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKSingleAudiogramChartViewController" hasInstanceMethod:@"annotationViewDataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKAudiogramAnnotationViewDataSource" hasSwiftFieldOfAnyClass:@"hearingSensitivityFormatter"];
  [validationsCopy validateClass:@"HKInteractiveChartHearingSensitivityFormatter" isKindOfClass:@"HKInteractiveChartDataFormatter"];
  [validationsCopy validateClass:@"HKInteractiveChartDataFormatter" hasInstanceMethod:@"formattedSelectedRangeLabelDataWithChartData:context:" withFullSignature:{"@", "@", "q", 0}];
  [validationsCopy validateClass:@"HKInteractiveChartDataFormatter" hasInstanceMethod:@"valueStringFromNumber:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"HKScalarGraphViewController" isKindOfClass:@"HKGraphViewController"];
  [validationsCopy validateClass:@"HKGraphViewController" hasInstanceMethod:@"graphView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKGraphView" hasInstanceMethod:@"allSeries" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKGraphView" hasInstanceMethod:@"overlayView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKGraphView" hasInstanceMethod:@"enumerateVisibleCoordinatesForSeries:block:" withFullSignature:{"v", "@", "@?", 0}];
  [validationsCopy validateClass:@"HKGraphView" hasInstanceVariable:@"_seriesGroupRows" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"HKGraphSeries" hasInstanceMethod:@"visibleValueRange" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKValueRange" hasInstanceMethod:@"minValue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKValueRange" hasInstanceMethod:@"maxValue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_HKLineSeriesBlockCoordinate" hasInstanceMethod:@"userInfo" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_HKLineSeriesBlockCoordinate" hasInstanceMethod:@"coordinate" withFullSignature:{"{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"HKAudiogramChartData" hasInstanceMethod:@"frequencyHertz" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"HKAudiogramChartData" hasInstanceMethod:@"sensitivityDBHL" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"HKAudiogramChartData" hasInstanceMethod:@"isLeftEar" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HKSelectedRangeData" hasInstanceMethod:@"titleOverride" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HKSelectedRangeData" hasInstanceMethod:@"attributedString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_HKGraphViewSeriesGroup" hasInstanceMethod:@"selectionContext" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_HKGraphViewSelectionContext" hasInstanceMethod:@"selectedRangeBoundariesXValue" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = HKSingleAudiogramChartViewControllerAccessibility;
  [(HKSingleAudiogramChartViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(HKSingleAudiogramChartViewControllerAccessibility *)self _axSetupGraphViewDescription];
  [(HKSingleAudiogramChartViewControllerAccessibility *)self _axUpdateAXElementsForGraphView];
}

- (void)graphView:(id)view didUpdateSelectedPoint:(id)point
{
  v5.receiver = self;
  v5.super_class = HKSingleAudiogramChartViewControllerAccessibility;
  [(HKSingleAudiogramChartViewControllerAccessibility *)&v5 graphView:view didUpdateSelectedPoint:point];
  [(HKSingleAudiogramChartViewControllerAccessibility *)self _axUpdateSelectionAXElementsForGraphView];
}

- (void)graphViewDidEndSelection:(id)selection
{
  v4.receiver = self;
  v4.super_class = HKSingleAudiogramChartViewControllerAccessibility;
  [(HKSingleAudiogramChartViewControllerAccessibility *)&v4 graphViewDidEndSelection:selection];
  [(HKSingleAudiogramChartViewControllerAccessibility *)self _axUpdateSelectionAXElementsForGraphView];
}

- (void)_axSetupGraphViewDescription
{
  v3 = [(HKSingleAudiogramChartViewControllerAccessibility *)self safeValueForKey:@"scalarGraphViewController"];
  v4 = [v3 safeUIViewForKey:@"graphView"];

  if (v4)
  {
    [v4 _accessibilitySetShouldHitTestFallBackToNearestChild:1];
    v5 = accessibilityYodelLocalizedString(@"frequency.axis.title");
    [v4 _accessibilitySetRetainedValue:v5 forKey:@"kAXGraphViewXAxisTitle"];

    v6 = accessibilityYodelLocalizedString(@"audiogram.value.and.unit");
    [v4 _accessibilitySetRetainedValue:v6 forKey:@"kAXGraphViewYAxisValueUnit"];
    v20 = 0;
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    navigationController = [v7 navigationController];
    navigationBar = [navigationController navigationBar];
    topItem = [navigationBar topItem];
    title = [topItem title];
    [v4 _accessibilitySetRetainedValue:title forKey:@"kAXGraphViewDisplayName"];

    _axHearingSensitivityFormatter = [(HKSingleAudiogramChartViewControllerAccessibility *)self _axHearingSensitivityFormatter];
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __81__HKSingleAudiogramChartViewControllerAccessibility__axSetupGraphViewDescription__block_invoke;
    v17[3] = &unk_29F2C43B8;
    v18 = _axHearingSensitivityFormatter;
    v19 = v6;
    v13 = v6;
    v14 = _axHearingSensitivityFormatter;
    v15 = MEMORY[0x29C2D9420](v17);
    v16 = MEMORY[0x29C2D9420]();
    [v4 _accessibilitySetRetainedValue:v16 forKey:@"kAXGraphViewYValueDescriptorBlock"];
  }
}

id __81__HKSingleAudiogramChartViewControllerAccessibility__axSetupGraphViewDescription__block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v4 = MEMORY[0x29EDCA5F8];
  v5 = *(a1 + 32);
  AXPerformSafeBlock();
  v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:*(a1 + 40), v7[5], v4, 3221225472, __81__HKSingleAudiogramChartViewControllerAccessibility__axSetupGraphViewDescription__block_invoke_434, &unk_29F2C4390];

  _Block_object_dispose(&v6, 8);

  return v2;
}

void __81__HKSingleAudiogramChartViewControllerAccessibility__axSetupGraphViewDescription__block_invoke_434(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x29EDBA070] numberWithDouble:*(a1 + 48)];
  v4 = [v2 valueStringFromNumber:v3];
  v5 = __UIAccessibilityCastAsClass();

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)_axUpdateAXElementsForGraphView
{
  v113 = *MEMORY[0x29EDCA608];
  v2 = [(HKSingleAudiogramChartViewControllerAccessibility *)self safeValueForKey:@"scalarGraphViewController"];
  v65 = [v2 safeUIViewForKey:@"graphView"];

  if (v65)
  {
    _axHearingSensitivityFormatter = [(HKSingleAudiogramChartViewControllerAccessibility *)self _axHearingSensitivityFormatter];
    v3 = [(HKSingleAudiogramChartViewControllerAccessibility *)self _axCollectSeriesDataForGraphView:v65];
    v62 = [(HKSingleAudiogramChartViewControllerAccessibility *)self _axSelectedXCoordinateForGraphView:v65];
    [v62 floatValue];
    v5 = v4;
    v60 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v61 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v69 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v68 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = v3;
    v63 = [obj countByEnumeratingWithState:&v105 objects:v112 count:16];
    if (v63)
    {
      v6 = (v5 + -1.0);
      v58 = *v106;
      v7 = *MEMORY[0x29EDB90B8];
      v8 = (v6 + 2);
      v9 = v6;
      v56 = *MEMORY[0x29EDC7FC0];
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v106 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v105 + 1) + 8 * i);
          v99 = 0;
          v100 = &v99;
          v101 = 0x3032000000;
          v102 = __Block_byref_object_copy_;
          v103 = __Block_byref_object_dispose_;
          v104 = 0;
          v11 = objc_opt_new();
          v98 = 0u;
          v97 = 0u;
          v96 = 0u;
          v95 = 0u;
          v66 = v10;
          v12 = [v66 countByEnumeratingWithState:&v95 objects:v111 count:16];
          v13 = v7;
          if (v12)
          {
            v14 = *v96;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v96 != v14)
                {
                  objc_enumerationMutation(v66);
                }

                v16 = *(*(&v95 + 1) + 8 * j);
                v17 = [v16 safeValueForKey:@"userInfo"];
                [v11 axSafelyAddObject:v17];
                [v16 safeCGPointForKey:@"coordinate"];
                v13 = v18;
                [v17 safeDoubleForKey:@"frequencyHertz"];
                v20 = v19;
                [v17 safeDoubleForKey:@"sensitivityDBHL"];
                v22 = v21;
                v23 = [v17 safeBoolForKey:@"isLeftEar"];
                v88 = MEMORY[0x29EDCA5F8];
                v89 = 3221225472;
                v90 = __84__HKSingleAudiogramChartViewControllerAccessibility__axUpdateAXElementsForGraphView__block_invoke;
                v91 = &unk_29F2C4390;
                v93 = &v99;
                selfCopy = self;
                v94 = v20;
                AXPerformSafeBlock();
                v24 = objc_alloc(MEMORY[0x29EDB8060]);
                v25 = [MEMORY[0x29EDB8068] valueWithCategory:v100[5]];
                v26 = [MEMORY[0x29EDB8068] valueWithNumber:v22];
                v27 = [v24 initWithX:v25 y:v26];

                if (v23)
                {
                  v28 = v69;
                }

                else
                {
                  v28 = v68;
                }

                [v28 axSafelyAddObject:v27];
              }

              v12 = [v66 countByEnumeratingWithState:&v95 objects:v111 count:16];
            }

            while (v12);
          }

          [v61 axSafelyAddObject:v100[5]];
          v82 = 0;
          v83 = &v82;
          v84 = 0x3032000000;
          v85 = __Block_byref_object_copy_;
          v86 = __Block_byref_object_dispose_;
          v87 = 0;
          v75 = MEMORY[0x29EDCA5F8];
          v76 = 3221225472;
          v77 = __84__HKSingleAudiogramChartViewControllerAccessibility__axUpdateAXElementsForGraphView__block_invoke_2;
          v78 = &unk_29F2C43E0;
          v81 = &v82;
          v79 = _axHearingSensitivityFormatter;
          v67 = v11;
          v80 = v67;
          AXPerformSafeBlock();
          v29 = objc_opt_new();
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v30 = v83[5];
          v31 = [v30 countByEnumeratingWithState:&v71 objects:v110 count:16];
          if (v31)
          {
            v32 = *v72;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v72 != v32)
                {
                  objc_enumerationMutation(v30);
                }

                v34 = *(*(&v71 + 1) + 8 * k);
                v35 = [v34 safeStringForKey:@"titleOverride"];
                [v29 axSafelyAddObject:v35];
                objc_opt_class();
                v36 = [v34 safeValueForKey:@"attributedString"];
                v37 = __UIAccessibilityCastAsClass();

                string = [v37 string];
                [v29 axSafelyAddObject:string];
              }

              v31 = [v30 countByEnumeratingWithState:&v71 objects:v110 count:16];
            }

            while (v31);
          }

          v39 = [v65 safeUIViewForKey:@"overlayView"];
          v40 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:v65];
          v41 = MEMORY[0x29C2D9150](v29);
          [v39 frame];
          v43 = v42;
          [v65 frame];
          v45 = v44;
          [v65 frame];
          [v40 setAccessibilityFrameInContainerSpace:{v13 + v43, v45, 3.0}];
          [v40 setAccessibilityLabel:v41];
          v46 = [MEMORY[0x29EDBA070] numberWithDouble:v13];
          [v40 _accessibilitySetRetainedValue:v46 forKey:@"kAXAccessibilityHealthUIAudiogramChartPointX"];

          v47 = v13 > v8 || v62 == 0;
          if (!v47 && v13 >= v9)
          {
            [v40 setAccessibilityTraits:v56];
          }

          [v60 addObject:v40];

          _Block_object_dispose(&v82, 8);
          _Block_object_dispose(&v99, 8);
        }

        v63 = [obj countByEnumeratingWithState:&v105 objects:v112 count:16];
      }

      while (v63);
    }

    [v65 setAccessibilityElements:v60];
    [v65 _accessibilitySetRetainedValue:v61 forKey:@"kAXGraphViewGraphElementsXValues"];
    v48 = objc_alloc(MEMORY[0x29EDB8070]);
    v49 = accessibilityYodelLocalizedString(@"left.ear");
    v50 = [v48 initWithName:v49 isContinuous:1 dataPoints:v69];

    v51 = objc_alloc(MEMORY[0x29EDB8070]);
    v52 = accessibilityYodelLocalizedString(@"right.ear");
    v53 = [v51 initWithName:v52 isContinuous:1 dataPoints:v68];

    v109[0] = v50;
    v109[1] = v53;
    v54 = [MEMORY[0x29EDB8D80] arrayWithObjects:v109 count:2];
    [v65 _accessibilitySetRetainedValue:v54 forKey:@"kAXGraphViewGraphElementsSeriesDescription"];
  }

  v55 = *MEMORY[0x29EDCA608];
}

void __84__HKSingleAudiogramChartViewControllerAccessibility__axUpdateAXElementsForGraphView__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) _formattedFrequencyStringForFrequency:*(a1 + 48)];
  v3 = __UIAccessibilityCastAsClass();

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __84__HKSingleAudiogramChartViewControllerAccessibility__axUpdateAXElementsForGraphView__block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) formattedSelectedRangeLabelDataWithChartData:*(a1 + 40) context:0];
  v3 = __UIAccessibilityCastAsClass();

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_axCollectSeriesDataForGraphView:(id)view
{
  v32 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  v30 = 0;
  objc_opt_class();
  v4 = [viewCopy safeValueForKey:@"allSeries"];
  v5 = __UIAccessibilityCastAsClass();

  v23 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v22 = *v27;
    do
    {
      v10 = 0;
      v11 = v8;
      v12 = v9;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v26 + 1) + 8 * v10) safeValueForKey:@"visibleValueRange"];
        v30 = 0;
        objc_opt_class();
        v14 = [v13 safeValueForKey:@"minValue"];
        v9 = __UIAccessibilityCastAsClass();

        if (v30 == 1)
        {
          goto LABEL_15;
        }

        v30 = 0;
        objc_opt_class();
        v15 = [v13 safeValueForKey:@"maxValue"];
        v8 = __UIAccessibilityCastAsClass();

        if (v30 == 1)
        {
LABEL_15:
          abort();
        }

        v24 = viewCopy;
        v25 = v23;
        AXPerformSafeBlock();

        ++v10;
        v11 = v8;
        v12 = v9;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  [viewCopy _accessibilitySetRetainedValue:v9 forKey:@"kAXGraphViewYAxisMin"];
  [viewCopy _accessibilitySetRetainedValue:v8 forKey:@"kAXGraphViewYAxisMax"];
  allKeys = [v23 allKeys];
  v17 = [allKeys sortedArrayUsingComparator:&__block_literal_global_0];

  v18 = [v23 objectsForKeys:v17 notFoundMarker:MEMORY[0x29EDB8E90]];

  v19 = *MEMORY[0x29EDCA608];

  return v18;
}

void __86__HKSingleAudiogramChartViewControllerAccessibility__axCollectSeriesDataForGraphView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __86__HKSingleAudiogramChartViewControllerAccessibility__axCollectSeriesDataForGraphView___block_invoke_2;
  v3[3] = &unk_29F2C4408;
  v4 = *(a1 + 48);
  [v1 enumerateVisibleCoordinatesForSeries:v2 block:v3];
}

void __86__HKSingleAudiogramChartViewControllerAccessibility__axCollectSeriesDataForGraphView___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 safeValueForKey:@"userInfo"];
    [v6 safeDoubleForKey:@"frequencyHertz"];
    v7 = [MEMORY[0x29EDBA070] numberWithDouble:?];
    v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
    if (v8)
    {
      v9 = v8;
      [v8 axSafelyAddObject:v5];
    }

    else
    {
      v12[0] = v5;
      v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
      v9 = [v10 mutableCopy];
    }

    [*(a1 + 32) setObject:v9 forKey:v7];
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (void)_axUpdateSelectionAXElementsForGraphView
{
  v38 = *MEMORY[0x29EDCA608];
  v3 = [(HKSingleAudiogramChartViewControllerAccessibility *)self safeValueForKey:@"scalarGraphViewController"];
  v4 = [v3 safeUIViewForKey:@"graphView"];

  v5 = [(HKSingleAudiogramChartViewControllerAccessibility *)self _axSelectedXCoordinateForGraphView:v4];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    accessibilityElements = [v4 accessibilityElements];
    v10 = [accessibilityElements countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = (v8 + -1.0);
      v13 = (v12 + 2);
      v14 = v12;
      v15 = *v29;
      v16 = *MEMORY[0x29EDC7FC0];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(accessibilityElements);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = [v18 _accessibilityValueForKey:@"kAXAccessibilityHealthUIAudiogramChartPointX"];
          [v19 floatValue];
          v21 = v20;

          if (v21 <= v13 && v21 >= v14)
          {
            [v18 setAccessibilityTraits:v16];
          }
        }

        v11 = [accessibilityElements countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    accessibilityElements = [v4 accessibilityElements];
    v23 = [accessibilityElements countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(accessibilityElements);
          }

          [*(*(&v32 + 1) + 8 * j) setAccessibilityTraits:0];
        }

        v24 = [accessibilityElements countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v24);
    }
  }

  v27 = *MEMORY[0x29EDCA608];
}

- (id)_axHearingSensitivityFormatter
{
  v2 = [(HKSingleAudiogramChartViewControllerAccessibility *)self safeValueForKey:@"annotationViewDataSource"];
  v3 = [v2 safeSwiftValueForKey:@"hearingSensitivityFormatter"];

  return v3;
}

- (id)_axSelectedXCoordinateForGraphView:(id)view
{
  v29 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  v26 = 0;
  objc_opt_class();
  v4 = [viewCopy safeValueForKey:@"_seriesGroupRows"];
  v5 = __UIAccessibilityCastAsClass();

  v20 = viewCopy;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v22 + 1) + 8 * v10) safeValueForKey:@"selectionContext"];
      v26 = 0;
      objc_opt_class();
      v12 = [v11 safeValueForKey:@"selectedRangeBoundariesXValue"];
      v13 = __UIAccessibilityCastAsClass();

      if (v26 == 1)
      {
LABEL_19:
        abort();
      }

      memset(v21, 0, sizeof(v21));
      v14 = v13;
      if ([v14 countByEnumeratingWithState:v21 objects:v27 count:16])
      {
        v15 = **(&v21[0] + 1);
        v26 = 0;
        objc_opt_class();
        v16 = __UIAccessibilityCastAsClass();
        if (v26 == 1)
        {
          goto LABEL_19;
        }

        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v17 = 0;
  }

  v18 = *MEMORY[0x29EDCA608];

  return v17;
}

@end
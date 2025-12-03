@interface AKOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axShouldExposeDrawingElement;
- (id)_accessibilityCreateOverlayViewElement;
- (id)accessibilityElements;
@end

@implementation AKOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKOverlayView" hasInstanceMethod:@"pageController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKPageController" hasInstanceMethod:@"pageIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"AKPageController" hasInstanceMethod:@"inkPageOverlayController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKInkPageOverlayController" hasInstanceMethod:@"inkOverlayView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKInkOverlayView" hasInstanceMethod:@"canvasView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKInkOverlayView_iOS" isKindOfClass:@"AKInkOverlayView"];
  [validationsCopy validateClass:@"AKPageController" hasInstanceMethod:@"controller" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKController" hasInstanceMethod:@"toolController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKController" hasInstanceMethod:@"annotationEditingEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AKController" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"AKToolController" hasInstanceMethod:@"toolMode" withFullSignature:{"Q", 0}];
}

- (BOOL)_axShouldExposeDrawingElement
{
  v3 = [(AKOverlayViewAccessibility *)self safeValueForKey:@"pageController"];
  v4 = [v3 safeUnsignedIntegerForKey:@"pageIndex"];

  v5 = [(AKOverlayViewAccessibility *)self safeValueForKey:@"pageController"];
  v6 = [v5 safeValueForKey:@"controller"];

  v7 = [v6 safeUnsignedIntegerForKey:@"currentPageIndex"];
  v8 = [v6 safeValueForKey:@"toolController"];
  if ([v8 safeUnsignedIntegerForKey:@"toolMode"] && v4 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v6 safeBoolForKey:@"annotationEditingEnabled"];
  }

  return v9;
}

- (id)_accessibilityCreateOverlayViewElement
{
  if ([(AKOverlayViewAccessibility *)self _axShouldExposeDrawingElement])
  {
    _axOverlayViewElement = [(AKOverlayViewAccessibility *)self _axOverlayViewElement];
    if (!_axOverlayViewElement)
    {
      _axOverlayViewElement = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
      objc_initWeak(&location, self);
      v8[0] = MEMORY[0x29EDCA5F8];
      v8[1] = 3221225472;
      v8[2] = __68__AKOverlayViewAccessibility__accessibilityCreateOverlayViewElement__block_invoke;
      v8[3] = &unk_29F29D480;
      objc_copyWeak(&v9, &location);
      [_axOverlayViewElement _setAccessibilityLabelBlock:v8];
      v4 = accessibilityLocalizedString(@"drawing.hint");
      [_axOverlayViewElement setAccessibilityHint:v4];

      [_axOverlayViewElement setAccessibilityActivationPoint:{-1.0, -1.0}];
      v6[0] = MEMORY[0x29EDCA5F8];
      v6[1] = 3221225472;
      v6[2] = __68__AKOverlayViewAccessibility__accessibilityCreateOverlayViewElement__block_invoke_2;
      v6[3] = &unk_29F29D4A8;
      objc_copyWeak(&v7, &location);
      [_axOverlayViewElement _setAccessibilityFrameBlock:v6];
      [(AKOverlayViewAccessibility *)self _axSetOverlayViewElement:_axOverlayViewElement];
      objc_destroyWeak(&v7);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    _axOverlayViewElement = 0;
  }

  return _axOverlayViewElement;
}

id __68__AKOverlayViewAccessibility__accessibilityCreateOverlayViewElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"pageController"];
  [v2 safeUnsignedIntegerForKey:@"pageIndex"];

  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"page.index");
  v5 = AXFormatInteger();
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

double __68__AKOverlayViewAccessibility__accessibilityCreateOverlayViewElement__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];
  v3 = v2;

  return v3;
}

- (id)accessibilityElements
{
  v36 = *MEMORY[0x29EDCA608];
  v33.receiver = self;
  v33.super_class = AKOverlayViewAccessibility;
  accessibilityElements = [(AKOverlayViewAccessibility *)&v33 accessibilityElements];
  v4 = accessibilityElements;
  if (accessibilityElements)
  {
    v5 = accessibilityElements;
  }

  else
  {
    _accessibilityCreateOverlayViewElement = [(AKOverlayViewAccessibility *)self _accessibilityCreateOverlayViewElement];
    v32 = 0;
    objc_opt_class();
    v7 = [(AKOverlayViewAccessibility *)self safeValueForKey:@"pageController"];
    v8 = [v7 safeValueForKey:@"layerPresentationManager"];
    v9 = [v8 safeValueForKey:@"rootLayer"];
    v10 = __UIAccessibilityCastAsClass();

    sublayers = [v10 sublayers];
    _axOverlayViewLayers = [(AKOverlayViewAccessibility *)self _axOverlayViewLayers];
    v27 = v10;
    if (([sublayers isEqualToArray:_axOverlayViewLayers] & 1) == 0)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = _axOverlayViewLayers;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v28 + 1) + 8 * i) setAccessibilityContainer:0];
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v35 count:16];
        }

        while (v15);
      }

      _axOverlayViewLayers = [sublayers copy];
      [(AKOverlayViewAccessibility *)self _axSetOverlayViewLayers:_axOverlayViewLayers];
    }

    if (_accessibilityCreateOverlayViewElement)
    {
      v34 = _accessibilityCreateOverlayViewElement;
      v18 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v34 count:1];
      v5 = [v18 arrayByAddingObjectsFromArray:_axOverlayViewLayers];
    }

    else
    {
      v5 = _axOverlayViewLayers;
    }

    v32 = 0;
    v19 = [(AKOverlayViewAccessibility *)self safeValueForKey:@"pageController"];
    v20 = [v19 safeValueForKey:@"inkPageOverlayController"];
    v21 = [v20 safeValueForKey:@"inkOverlayView"];
    v22 = [v21 safeValueForKey:@"canvasView"];
    v23 = __UIAccessibilitySafeClass();

    if (v32 == 1)
    {
      abort();
    }

    if (v23)
    {
      v24 = [v5 arrayByAddingObject:v23];

      v5 = v24;
    }
  }

  v25 = *MEMORY[0x29EDCA608];

  return v5;
}

@end
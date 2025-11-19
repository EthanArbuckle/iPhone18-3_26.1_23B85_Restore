@interface AKOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axShouldExposeDrawingElement;
- (id)_accessibilityCreateOverlayViewElement;
- (id)accessibilityElements;
@end

@implementation AKOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKOverlayView" hasInstanceMethod:@"pageController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKPageController" hasInstanceMethod:@"pageIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"AKPageController" hasInstanceMethod:@"inkPageOverlayController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKInkPageOverlayController" hasInstanceMethod:@"inkOverlayView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKInkOverlayView" hasInstanceMethod:@"canvasView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKInkOverlayView_iOS" isKindOfClass:@"AKInkOverlayView"];
  [v3 validateClass:@"AKPageController" hasInstanceMethod:@"controller" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKController" hasInstanceMethod:@"toolController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKController" hasInstanceMethod:@"annotationEditingEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AKController" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"AKToolController" hasInstanceMethod:@"toolMode" withFullSignature:{"Q", 0}];
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
    v3 = [(AKOverlayViewAccessibility *)self _axOverlayViewElement];
    if (!v3)
    {
      v3 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
      objc_initWeak(&location, self);
      v8[0] = MEMORY[0x29EDCA5F8];
      v8[1] = 3221225472;
      v8[2] = __68__AKOverlayViewAccessibility__accessibilityCreateOverlayViewElement__block_invoke;
      v8[3] = &unk_29F29D480;
      objc_copyWeak(&v9, &location);
      [v3 _setAccessibilityLabelBlock:v8];
      v4 = accessibilityLocalizedString(@"drawing.hint");
      [v3 setAccessibilityHint:v4];

      [v3 setAccessibilityActivationPoint:{-1.0, -1.0}];
      v6[0] = MEMORY[0x29EDCA5F8];
      v6[1] = 3221225472;
      v6[2] = __68__AKOverlayViewAccessibility__accessibilityCreateOverlayViewElement__block_invoke_2;
      v6[3] = &unk_29F29D4A8;
      objc_copyWeak(&v7, &location);
      [v3 _setAccessibilityFrameBlock:v6];
      [(AKOverlayViewAccessibility *)self _axSetOverlayViewElement:v3];
      objc_destroyWeak(&v7);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
  v3 = [(AKOverlayViewAccessibility *)&v33 accessibilityElements];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(AKOverlayViewAccessibility *)self _accessibilityCreateOverlayViewElement];
    v32 = 0;
    objc_opt_class();
    v7 = [(AKOverlayViewAccessibility *)self safeValueForKey:@"pageController"];
    v8 = [v7 safeValueForKey:@"layerPresentationManager"];
    v9 = [v8 safeValueForKey:@"rootLayer"];
    v10 = __UIAccessibilityCastAsClass();

    v11 = [v10 sublayers];
    v12 = [(AKOverlayViewAccessibility *)self _axOverlayViewLayers];
    v27 = v10;
    if (([v11 isEqualToArray:v12] & 1) == 0)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = v12;
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

      v12 = [v11 copy];
      [(AKOverlayViewAccessibility *)self _axSetOverlayViewLayers:v12];
    }

    if (v6)
    {
      v34 = v6;
      v18 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v34 count:1];
      v5 = [v18 arrayByAddingObjectsFromArray:v12];
    }

    else
    {
      v5 = v12;
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
@interface PXFocusTimelineViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (void)layoutSubviews;
@end

@implementation PXFocusTimelineViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXFocusTimelineView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PXFocusTimelineView" hasInstanceVariable:@"_focusEventsView" withType:"UIView"];
  [v3 validateClass:@"PXFocusTimelineView" hasInstanceVariable:@"_focusEvents" withType:"NSMutableArray"];
  [v3 validateClass:@"PXFocusTimelineView" hasInstanceMethod:@"_axDescriptionForFocusEvent:" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = [(PXFocusTimelineViewAccessibility *)self _axFocusTimelineViewAXElements];
  if (!v3)
  {
    v26.receiver = self;
    v26.super_class = PXFocusTimelineViewAccessibility;
    v4 = [(PXFocusTimelineViewAccessibility *)&v26 accessibilityElements];
    if (v4)
    {
      v25.receiver = self;
      v25.super_class = PXFocusTimelineViewAccessibility;
      v5 = [(PXFocusTimelineViewAccessibility *)&v25 accessibilityElements];
      v6 = [v5 mutableCopy];
    }

    else
    {
      v6 = [MEMORY[0x29EDB8DE8] array];
    }

    v7 = [(PXFocusTimelineViewAccessibility *)self safeUIViewForKey:@"_focusEventsView"];
    v8 = [(PXFocusTimelineViewAccessibility *)self safeArrayForKey:@"_focusEvents"];
    v9 = [v7 subviews];
    v10 = [v9 mutableCopy];

    [v10 sortUsingSelector:sel_accessibilityCompareGeometry_];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x4010000000;
    v22[3] = "";
    v11 = *(MEMORY[0x29EDB90D8] + 16);
    v23 = *MEMORY[0x29EDB90D8];
    v24 = v11;
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = __57__PXFocusTimelineViewAccessibility_accessibilityElements__block_invoke;
    v21[3] = &unk_29F2E6298;
    v21[4] = v22;
    v12 = [v10 ax_filteredArrayUsingBlock:v21];
    v13 = [v12 mutableCopy];

    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __57__PXFocusTimelineViewAccessibility_accessibilityElements__block_invoke_2;
    v16[3] = &unk_29F2E62C0;
    v14 = v13;
    v17 = v14;
    objc_copyWeak(&v19, &location);
    v3 = v6;
    v18 = v3;
    [v8 enumerateObjectsUsingBlock:v16];
    [(PXFocusTimelineViewAccessibility *)self _setAXFocusTimelineViewAXElements:v3];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    _Block_object_dispose(v22, 8);
  }

  return v3;
}

BOOL __57__PXFocusTimelineViewAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  [a2 accessibilityFrame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (CGRectEqualToRect(v10, *(*(*(a1 + 32) + 8) + 32)))
  {
    return 0;
  }

  v9 = *(*(a1 + 32) + 8);
  v9[4] = x;
  v9[5] = y;
  v9[6] = width;
  v9[7] = height;
  return a2 != 0;
}

void __57__PXFocusTimelineViewAccessibility_accessibilityElements__block_invoke_2(id *a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([a1[4] count] > a3)
  {
    v6 = [a1[4] objectAtIndex:a3];
    [v6 setIsAccessibilityElement:1];
    MEMORY[0x29C2E6930](@"PXFocusTimelineEvent");
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v8 = [v7 accessibilityFocusEventTimeString];
      v9 = [v7 accessibilityFocusEventTypeString];
      v10 = __UIAXStringForVariables();
      [v6 setAccessibilityLabel:{v10, v9, @"__AXStringForVariablesSentinel"}];

      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__1;
      v19 = __Block_byref_object_dispose__1;
      v20 = 0;
      objc_copyWeak(&v14, a1 + 6);
      v13 = v7;
      AXPerformSafeBlock();
      v11 = v16[5];

      objc_destroyWeak(&v14);
      _Block_object_dispose(&v15, 8);

      [v6 setAccessibilityValue:v11];
      [v6 setAccessibilityTraits:*MEMORY[0x29EDC7FA0]];
      v12 = accessibilityPhotosUICoreLocalizedString(@"focus.hint");
      [v6 setAccessibilityHint:v12];
    }

    [a1[5] axSafelyAddObject:v6];
  }
}

void __57__PXFocusTimelineViewAccessibility_accessibilityElements__block_invoke_506(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _axDescriptionForFocusEvent:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXFocusTimelineViewAccessibility;
  [(PXFocusTimelineViewAccessibility *)&v3 layoutSubviews];
  [(PXFocusTimelineViewAccessibility *)self _setAXFocusTimelineViewAXElements:0];
}

@end
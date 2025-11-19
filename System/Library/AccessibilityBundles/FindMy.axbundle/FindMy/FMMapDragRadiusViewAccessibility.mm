@interface FMMapDragRadiusViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axInitialHandleState;
- (void)_axSetUpHandleImageView;
- (void)initialize;
@end

@implementation FMMapDragRadiusViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"handleImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"initialize" withFullSignature:{"v", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"isDragging" withFullSignature:{"B", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"isMinimum" withFullSignature:{"B", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"isMaximum" withFullSignature:{"B", 0}];
  [v3 validateProtocol:@"FMMapDragRadiusViewDelegate" hasRequiredInstanceMethod:@"willStartDraggingHandle:"];
  [v3 validateProtocol:@"FMMapDragRadiusViewDelegate" hasRequiredInstanceMethod:@"didStopDraggingHandle:"];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"setIsDragging:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"setIsMaximum:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"setIsMinimum:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"currentHandleDistance" withFullSignature:{"d", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"currentHandleDistanceNormalized" withFullSignature:{"d", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"popAnimateHandle" withFullSignature:{"v", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"_axSetCustomRadius:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"minPoint" withFullSignature:{"{CGPoint=dd}", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"maxPoint" withFullSignature:{"{CGPoint=dd}", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"usesMetric" withFullSignature:{"B", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"maximumRadiusNormalized" withFullSignature:{"d", 0}];
  [v3 validateClass:@"FMMapDragRadiusView" hasInstanceMethod:@"minimumRadiusNormalized" withFullSignature:{"d", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = FMMapDragRadiusViewAccessibility;
  [(FMMapDragRadiusViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(FMMapDragRadiusViewAccessibility *)self _axInitialHandleState];
  [(FMMapDragRadiusViewAccessibility *)self _axSetUpHandleImageView];
}

- (void)_axInitialHandleState
{
  LOBYTE(v10) = 0;
  objc_opt_class();
  v3 = [(FMMapDragRadiusViewAccessibility *)self safeValueForKey:@"handleImageView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 frame];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v13 = &unk_29BDE8187;
  v14 = *MEMORY[0x29EDB90B8];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3010000000;
  v8 = &unk_29BDE8187;
  v9 = v14;
  AXPerformSafeBlock();
  v11[4];
  AXPerformSafeBlock();
  v6[4];
  AXPerformSafeBlock();
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v10, 8);
}

uint64_t __57__FMMapDragRadiusViewAccessibility__axInitialHandleState__block_invoke(uint64_t a1)
{
  [*(a1 + 32) maxPoint];
  v2 = *(*(a1 + 40) + 8);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  result = [*(a1 + 32) minPoint];
  v6 = *(*(a1 + 48) + 8);
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  return result;
}

- (void)initialize
{
  v3.receiver = self;
  v3.super_class = FMMapDragRadiusViewAccessibility;
  [(FMMapDragRadiusViewAccessibility *)&v3 initialize];
  [(FMMapDragRadiusViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axSetUpHandleImageView
{
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(FMMapDragRadiusViewAccessibility *)self safeValueForKey:@"handleImageView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setIsAccessibilityElement:1];
  v5 = accessibilityLocalizedString(@"location.range.handle");
  [v4 setAccessibilityLabel:v5];

  v6 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F60] | v6];
  objc_initWeak(&location, v4);
  objc_initWeak(&from, self);
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke;
  v15[3] = &unk_29F2BEB40;
  objc_copyWeak(&v16, &from);
  [v4 _setAccessibilityValueBlock:v15];
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_3;
  v13[3] = &unk_29F2BEB40;
  objc_copyWeak(&v14, &from);
  [v4 _setAccessibilityHintBlock:v13];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_4;
  v10[3] = &unk_29F2BEB68;
  objc_copyWeak(&v11, &from);
  objc_copyWeak(&v12, &location);
  [v4 _setAccessibilityIncrementBlock:v10];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_8;
  v7[3] = &unk_29F2BEB68;
  objc_copyWeak(&v8, &from);
  objc_copyWeak(&v9, &location);
  [v4 _setAccessibilityDecrementBlock:v7];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

id __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeBoolForKey:@"isMinimum"];

  v4 = objc_loadWeakRetained((a1 + 32));
  LODWORD(WeakRetained) = [v4 safeBoolForKey:@"isMaximum"];

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0x10000000000000;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0x7FEFFFFFFFFFFFFFLL;
  objc_copyWeak(&v15, (a1 + 32));
  AXPerformSafeBlock();
  if (WeakRetained)
  {
    v5 = v17[3];
  }

  else
  {
    v6 = v21;
    if (v3)
    {
      v6 = v20;
    }

    v7 = *(v6[1] + 24);
    v5 = v17[3];
    if (v5 > v7)
    {
      v8 = v7;
      goto LABEL_8;
    }
  }

  v8 = v5;
LABEL_8:
  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 usesMetric];

  v11 = MEMORY[0x29EDBA0F8];
  if (v10)
  {
    accessibilityLocalizedString(@"distance.in.meters");
  }

  else
  {
    accessibilityLocalizedString(@"distance.in.feet");
  }
  v12 = ;
  v13 = [v11 stringWithFormat:v12, v8];

  objc_destroyWeak(&v15);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);

  return v13;
}

void __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained minimumRadiusNormalized];
  *(*(*(a1 + 32) + 8) + 24) = v3;

  v4 = objc_loadWeakRetained((a1 + 56));
  [v4 maximumRadiusNormalized];
  *(*(*(a1 + 40) + 8) + 24) = v5;

  v7 = objc_loadWeakRetained((a1 + 56));
  [v7 currentHandleDistanceNormalized];
  *(*(*(a1 + 48) + 8) + 24) = v6;
}

id __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeBoolForKey:@"isMinimum"];

  if (v3)
  {
    v4 = @"distance.minimum.reached";
LABEL_5:
    v7 = accessibilityLocalizedString(v4);
    goto LABEL_7;
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 safeBoolForKey:@"isMaximum"];

  if (v6)
  {
    v4 = @"distance.maximum.reached";
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

void __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"delegate"];

  v10 = 0;
  objc_opt_class();
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = __UIAccessibilityCastAsClass();

  objc_copyWeak(&v8, (a1 + 32));
  objc_copyWeak(&v9, (a1 + 40));
  v6 = v5;
  v7 = v3;
  AXPerformSafeBlock();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
}

void __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_5(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setIsDragging:1];

  v3 = objc_loadWeakRetained(a1 + 6);
  [v3 setIsMaximum:0];

  v4 = objc_loadWeakRetained(a1 + 6);
  [v4 setIsMinimum:0];

  v5 = objc_loadWeakRetained(a1 + 7);
  [v5 setHighlighted:1];

  [a1[4] setNeedsDisplay];
  v6 = a1[5];
  v7 = NSProtocolFromString(&cfstr_Fmmapdragradiu_1.isa);
  LODWORD(v6) = [v6 conformsToProtocol:v7];

  if (v6)
  {
    v8 = a1[5];
    v9 = objc_loadWeakRetained(a1 + 6);
    [v8 willStartDraggingHandle:v9];
  }

  v10 = objc_loadWeakRetained(a1 + 7);
  [v10 frame];
  v12 = v11;
  v14 = v13;

  v15 = v12 + 3.0;
  v16 = objc_loadWeakRetained(a1 + 6);
  [v16 maxPoint];
  v18 = v17;

  if (v15 > v18)
  {
    v19 = objc_loadWeakRetained(a1 + 6);
    [v19 setIsMaximum:1];

    v20 = accessibilityLocalizedString(@"distance.maximum.reached");
    UIAccessibilitySpeakOrQueueIfNeeded();

    v15 = v18;
  }

  v44.size.width = 24.0;
  v44.size.height = 24.0;
  v44.origin.x = v15;
  v44.origin.y = v14;
  v45 = CGRectIntegral(v44);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  v25 = objc_loadWeakRetained(a1 + 7);
  [v25 setFrame:{x, y, width, height}];

  [a1[4] setNeedsDisplay];
  v26 = objc_loadWeakRetained(a1 + 6);
  v27 = [v26 safeBoolForKey:@"isMaximum"];

  if (v27)
  {
    v28 = 241401.0;
  }

  else
  {
    v29 = objc_loadWeakRetained(a1 + 6);
    [v29 currentHandleDistance];
    v28 = v30;
  }

  v31 = objc_loadWeakRetained(a1 + 6);
  [v31 _axSetCustomRadius:v28];

  objc_initWeak(&location, a1[4]);
  v32 = dispatch_time(0, 50000000);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_6;
  block[3] = &unk_29F2BEB68;
  objc_copyWeak(&v41, a1 + 6);
  objc_copyWeak(&v42, &location);
  v33 = MEMORY[0x29EDCA578];
  dispatch_after(v32, MEMORY[0x29EDCA578], block);
  objc_initWeak(&from, a1[5]);
  v34 = dispatch_time(0, 300000000);
  v35[0] = MEMORY[0x29EDCA5F8];
  v35[1] = 3221225472;
  v35[2] = __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_7;
  v35[3] = &unk_29F2BEB90;
  objc_copyWeak(&v36, &from);
  objc_copyWeak(&v37, a1 + 6);
  objc_copyWeak(&v38, &location);
  dispatch_after(v34, v33, v35);

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

void __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsDragging:0];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setNeedsDisplay];
}

void __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_7(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = objc_loadWeakRetained(a1 + 5);
  [WeakRetained didStopDraggingHandle:v3];

  v4 = objc_loadWeakRetained(a1 + 5);
  [v4 popAnimateHandle];

  v5 = objc_loadWeakRetained(a1 + 6);
  [v5 setNeedsDisplay];
}

void __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"delegate"];

  v10 = 0;
  objc_opt_class();
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = __UIAccessibilityCastAsClass();

  objc_copyWeak(&v8, (a1 + 32));
  objc_copyWeak(&v9, (a1 + 40));
  v6 = v5;
  v7 = v3;
  AXPerformSafeBlock();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
}

void __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_9(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setIsDragging:1];

  v3 = objc_loadWeakRetained(a1 + 6);
  [v3 setIsMaximum:0];

  v4 = objc_loadWeakRetained(a1 + 6);
  [v4 setIsMinimum:0];

  v5 = objc_loadWeakRetained(a1 + 7);
  [v5 setHighlighted:1];

  [a1[4] setNeedsDisplay];
  v6 = a1[5];
  v7 = NSProtocolFromString(&cfstr_Fmmapdragradiu_1.isa);
  LODWORD(v6) = [v6 conformsToProtocol:v7];

  if (v6)
  {
    v8 = a1[5];
    v9 = objc_loadWeakRetained(a1 + 6);
    [v8 willStartDraggingHandle:v9];
  }

  v10 = objc_loadWeakRetained(a1 + 7);
  [v10 frame];
  v12 = v11;
  v14 = v13;

  v15 = v12 + -3.0;
  v16 = objc_loadWeakRetained(a1 + 6);
  [v16 minPoint];
  v18 = v17;

  if (v15 < v18)
  {
    v19 = objc_loadWeakRetained(a1 + 6);
    [v19 setIsMinimum:1];

    v20 = accessibilityLocalizedString(@"distance.minimum.reached");
    UIAccessibilitySpeakOrQueueIfNeeded();

    v15 = v18;
  }

  v44.size.width = 24.0;
  v44.size.height = 24.0;
  v44.origin.x = v15;
  v44.origin.y = v14;
  v45 = CGRectIntegral(v44);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  v25 = objc_loadWeakRetained(a1 + 7);
  [v25 setFrame:{x, y, width, height}];

  [a1[4] setNeedsDisplay];
  v26 = objc_loadWeakRetained(a1 + 6);
  v27 = [v26 safeBoolForKey:@"isMinimum"];

  if (v27)
  {
    v28 = 100.0;
  }

  else
  {
    v29 = objc_loadWeakRetained(a1 + 6);
    [v29 currentHandleDistance];
    v28 = v30;
  }

  v31 = objc_loadWeakRetained(a1 + 6);
  [v31 _axSetCustomRadius:v28];

  objc_initWeak(&location, a1[4]);
  v32 = dispatch_time(0, 50000000);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_10;
  block[3] = &unk_29F2BEB68;
  objc_copyWeak(&v41, a1 + 6);
  objc_copyWeak(&v42, &location);
  v33 = MEMORY[0x29EDCA578];
  dispatch_after(v32, MEMORY[0x29EDCA578], block);
  objc_initWeak(&from, a1[5]);
  v34 = dispatch_time(0, 300000000);
  v35[0] = MEMORY[0x29EDCA5F8];
  v35[1] = 3221225472;
  v35[2] = __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_11;
  v35[3] = &unk_29F2BEB90;
  objc_copyWeak(&v36, &from);
  objc_copyWeak(&v37, a1 + 6);
  objc_copyWeak(&v38, &location);
  dispatch_after(v34, v33, v35);

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

void __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsDragging:0];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setNeedsDisplay];
}

void __59__FMMapDragRadiusViewAccessibility__axSetUpHandleImageView__block_invoke_11(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = objc_loadWeakRetained(a1 + 5);
  [WeakRetained didStopDraggingHandle:v3];

  v4 = objc_loadWeakRetained(a1 + 5);
  [v4 popAnimateHandle];

  v5 = objc_loadWeakRetained(a1 + 6);
  [v5 setNeedsDisplay];
}

@end
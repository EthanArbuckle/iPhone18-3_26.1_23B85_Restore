@interface CAMModeDialAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)_axCurrentCameraMode;
- (id)accessibilityCustomActions;
- (void)_axAdjustValue:(BOOL)a3;
- (void)setSelectedMode:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMModeDialAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMModeDial" hasInstanceMethod:@"setSelectedMode: animated:" withFullSignature:{"v", "q", "B", 0}];
  [v3 validateClass:@"CAMModeDial" hasInstanceMethod:@"selectedMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMModeDial" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMModeDial" hasInstanceMethod:@"_items" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMModeDialItem" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMFullscreenViewfinder"];
  [v3 validateClass:@"CAMFullscreenViewfinder" hasInstanceMethod:@"setControlDrawerExpanded:forReason:animated:" withFullSignature:{"v", "B", "q", "B", 0}];
}

- (CGRect)accessibilityFrame
{
  if (AXDeviceIsPad())
  {
    [(CAMModeDialAccessibility *)self bounds];
    v6.origin.y = v3 + 60.0;
    v6.size.height = v4 + -120.0;
    return UIAccessibilityConvertFrameToScreenCoordinates(v6, self);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CAMModeDialAccessibility;
    [(CAMModeDialAccessibility *)&v5 accessibilityFrame];
  }

  return result;
}

- (void)setSelectedMode:(int64_t)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = CAMModeDialAccessibility;
  [(CAMModeDialAccessibility *)&v4 setSelectedMode:a3 animated:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)_axCurrentCameraMode
{
  v3 = [(CAMModeDialAccessibility *)self safeValueForKey:@"selectedMode"];
  [v3 unsignedIntegerValue];

  v4 = [(CAMModeDialAccessibility *)self safeValueForKey:@"_items"];
  v5 = __UIAccessibilitySafeClass();

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v11 = v5;
  AXPerformSafeBlock();
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);
  v7 = [v6 safeValueForKey:@"title"];

  v8 = [v7 lowercaseString];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2A213F7C0];

  return v9;
}

void __48__CAMModeDialAccessibility__axCurrentCameraMode__block_invoke(void *a1)
{
  v2 = a1[4];
  v6 = [MEMORY[0x29EDBA070] numberWithInteger:a1[6]];
  v3 = [v2 objectForKey:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_axAdjustValue:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMModeDialAccessibility *)self safeValueForKey:@"selectedMode"];
  [v5 unsignedIntegerValue];

  LOBYTE(v16) = 0;
  v6 = [(CAMModeDialAccessibility *)self safeValueForKey:@"_modes"];
  v7 = __UIAccessibilitySafeClass();

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = v7;
  AXPerformSafeBlock();
  v9 = v17[3];

  _Block_object_dispose(&v16, 8);
  if (v3)
  {
    LOBYTE(v16) = 0;
    v10 = [(CAMModeDialAccessibility *)self safeValueForKey:@"_modes"];
    v11 = __UIAccessibilitySafeClass();

    if (v16 == 1)
    {
      abort();
    }

    v12 = [v11 count];

    if (v12 - 1 >= v9 + 1)
    {
      v13 = v9 + 1;
    }

    else
    {
      v13 = v12 - 1;
    }
  }

  else
  {
    if (v9 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v9;
    }

    v13 = v14 - 1;
  }

  v15 = [v8 objectAtIndex:v13];
  [v15 integerValue];

  AXPerformSafeBlock();
}

void __43__CAMModeDialAccessibility__axAdjustValue___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [MEMORY[0x29EDBA070] numberWithInteger:a1[6]];
  *(*(a1[5] + 8) + 24) = [v2 indexOfObject:v3];
}

void __43__CAMModeDialAccessibility__axAdjustValue___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSelectedMode:*(a1 + 40) animated:1];
  [*(a1 + 32) sendActionsForControlEvents:4096];
  v2 = [*(a1 + 32) _axCurrentCameraMode];
  UIAccessibilitySpeak();
}

- (id)accessibilityCustomActions
{
  v13[1] = *MEMORY[0x29EDCA608];
  v3 = [(CAMModeDialAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_14 startWithSelf:1];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v4 = objc_alloc(MEMORY[0x29EDC78E0]);
    v5 = accessibilityCameraUILocalizedString(@"camera.controls.show");
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __54__CAMModeDialAccessibility_accessibilityCustomActions__block_invoke_2;
    v10[3] = &unk_29F2ACCC8;
    objc_copyWeak(&v11, &location);
    v6 = [v4 initWithName:v5 actionHandler:v10];

    v13[0] = v6;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CAMModeDialAccessibility;
    v7 = [(CAMModeDialAccessibility *)&v9 accessibilityCustomActions];
  }

  return v7;
}

uint64_t __54__CAMModeDialAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2CF1C0](@"CAMFullscreenViewfinder");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __54__CAMModeDialAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __54__CAMModeDialAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setControlDrawerExpanded:1 forReason:4 animated:1];
}

@end
@interface CAMDrawerSharedLibraryButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)_axLabelForSharedLibraryMode:(int64_t)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation CAMDrawerSharedLibraryButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMDrawerSharedLibraryButton" hasInstanceMethod:@"sharedLibraryMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMDrawerSharedLibraryButton" hasInstanceMethod:@"setSharedLibraryMode:animated:" withFullSignature:{"v", "q", "B", 0}];
  [v3 validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_itemLabels" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_cachedMenuItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDrawerSharedLibraryButton" isKindOfClass:@"CAMControlDrawerButton"];
  [v3 validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CAMControlDrawerMenuItem" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDrawerSharedLibraryButton" isKindOfClass:@"CAMControlDrawerMenuButton"];
}

- (BOOL)accessibilityActivate
{
  if (AXRequestingClient() == 3)
  {
    v3 = [(CAMDrawerSharedLibraryButtonAccessibility *)self safeValueForKey:@"sharedLibraryMode"];
    [v3 integerValue];

    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CAMDrawerSharedLibraryButtonAccessibility;
    return [(CAMDrawerSharedLibraryButtonAccessibility *)&v5 accessibilityActivate];
  }
}

void __66__CAMDrawerSharedLibraryButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSharedLibraryMode:*(a1 + 40) animated:0];
  v1 = __UIAccessibilitySafeClass();
  [v1 sendActionsForControlEvents:4096];
}

- (id)_axLabelForSharedLibraryMode:(int64_t)a3
{
  if (a3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityCameraUILocalizedString(off_29F2ACDE8[a3]);
  }

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(CAMDrawerSharedLibraryButtonAccessibility *)self safeIntegerForKey:@"sharedLibraryMode"];

  return [(CAMDrawerSharedLibraryButtonAccessibility *)self _axLabelForSharedLibraryMode:v3];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CAMDrawerSharedLibraryButtonAccessibility;
  [(CAMDrawerSharedLibraryButtonAccessibility *)&v9 layoutSubviews];
  v3 = [(CAMDrawerSharedLibraryButtonAccessibility *)self safeArrayForKey:@"_itemLabels"];
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy_;
  v7[4] = __Block_byref_object_dispose_;
  v8 = [(CAMDrawerSharedLibraryButtonAccessibility *)self safeArrayForKey:@"_cachedMenuItems"];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __59__CAMDrawerSharedLibraryButtonAccessibility_layoutSubviews__block_invoke;
  v4[3] = &unk_29F2ACDC8;
  v4[4] = v7;
  objc_copyWeak(&v5, &location);
  [v3 enumerateObjectsUsingBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
  _Block_object_dispose(v7, 8);
}

void __59__CAMDrawerSharedLibraryButtonAccessibility_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [v5 setIsAccessibilityElement:1];
  if ([*(*(*(a1 + 32) + 8) + 40) count] > a3)
  {
    v6 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndex:a3];
    v7 = [v6 safeIntegerForKey:@"value"];

    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __59__CAMDrawerSharedLibraryButtonAccessibility_layoutSubviews__block_invoke_2;
    v13[3] = &unk_29F2ACD78;
    objc_copyWeak(v14, (a1 + 40));
    v14[1] = v7;
    [v5 _setAccessibilityTraitsBlock:v13];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [WeakRetained _axLabelForSharedLibraryMode:v7];

    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __59__CAMDrawerSharedLibraryButtonAccessibility_layoutSubviews__block_invoke_3;
    v11[3] = &unk_29F2ACDA0;
    v10 = v9;
    v12 = v10;
    [v5 _setAccessibilityLabelBlock:v11];

    objc_destroyWeak(v14);
  }
}

uint64_t __59__CAMDrawerSharedLibraryButtonAccessibility_layoutSubviews__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeIntegerForKey:@"sharedLibraryMode"] == *(a1 + 40))
  {
    v3 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v3 = 1;
  }

  v4 = *MEMORY[0x29EDC7F70];

  return v3 | v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMDrawerSharedLibraryButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMDrawerSharedLibraryButtonAccessibility *)&v3 accessibilityTraits];
}

@end
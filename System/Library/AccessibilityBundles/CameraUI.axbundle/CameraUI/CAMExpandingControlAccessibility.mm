@interface CAMExpandingControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityCustomActions;
- (unint64_t)accessibilityTraits;
- (void)setExpanded:(BOOL)a3;
@end

@implementation CAMExpandingControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMExpandingControl" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CAMExpandingControl" hasInstanceMethod:@"setExpanded:" withFullSignature:{"v", "B", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMExpandingControlAccessibility;
  return *MEMORY[0x29EDC7FE8] | [(CAMExpandingControlAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityCustomActions
{
  v20[1] = *MEMORY[0x29EDCA608];
  if ([(CAMExpandingControlAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    objc_initWeak(&location, self);
    v3 = objc_alloc(MEMORY[0x29EDC78E0]);
    v4 = accessibilityCameraKitLocalizedString(@"CONTROL_COLLAPSE");
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __62__CAMExpandingControlAccessibility_accessibilityCustomActions__block_invoke;
    v16[3] = &unk_29F2ACCC8;
    objc_copyWeak(&v17, &location);
    v5 = [v3 initWithName:v4 actionHandler:v16];

    v20[0] = v5;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v20 count:1];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = accessibilityCameraKitLocalizedString(@"CONTROL_EXPAND");
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 3221225472;
    v13 = __62__CAMExpandingControlAccessibility_accessibilityCustomActions__block_invoke_3;
    v14 = &unk_29F2ACCC8;
    objc_copyWeak(&v15, &location);
    v9 = [v7 initWithName:v8 actionHandler:&v11];

    v19 = v9;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v19 count:{1, v11, v12, v13, v14}];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v6;
}

uint64_t __62__CAMExpandingControlAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __62__CAMExpandingControlAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExpanded:0];
}

uint64_t __62__CAMExpandingControlAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __62__CAMExpandingControlAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExpanded:1];
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [(CAMExpandingControlAccessibility *)self safeBoolForKey:@"isExpanded"];
  if (v2)
  {
    AXPerformSafeBlock();
  }

  return v2;
}

void __62__CAMExpandingControlAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setExpanded:0];
  v2 = *MEMORY[0x29EDC7ED8];
  v3 = *(a1 + 32);

  UIAccessibilityPostNotification(v2, v3);
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CAMExpandingControlAccessibility;
  [(CAMExpandingControlAccessibility *)&v5 setExpanded:?];
  if (v3)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
  }
}

@end
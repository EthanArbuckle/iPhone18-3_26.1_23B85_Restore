@interface SFUnifiedBarItemViewAccessibility
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation SFUnifiedBarItemViewAccessibility

- (id)accessibilityLabel
{
  v18.receiver = self;
  v18.super_class = SFUnifiedBarItemViewAccessibility;
  v3 = [(SFUnifiedBarItemViewAccessibility *)&v18 accessibilityLabel];
  if (!v3)
  {
    v4 = [(SFUnifiedBarItemViewAccessibility *)self safeValueForKey:@"item"];
    if (!v4)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy_;
      v16 = __Block_byref_object_dispose_;
      v17 = 0;
      v6 = MEMORY[0x29EDCA5F8];
      v7 = 3221225472;
      v8 = __55__SFUnifiedBarItemViewAccessibility_accessibilityLabel__block_invoke;
      v9 = &unk_29F2D6778;
      v10 = self;
      v11 = &v12;
      AXPerformSafeBlock();
      v4 = v13[5];
      _Block_object_dispose(&v12, 8);
    }

    v3 = [v4 accessibilityLabel];
  }

  return v3;
}

void __55__SFUnifiedBarItemViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) allTargets];
  v2 = [v5 anyObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 _allSubviews];

  return v3;
}

@end
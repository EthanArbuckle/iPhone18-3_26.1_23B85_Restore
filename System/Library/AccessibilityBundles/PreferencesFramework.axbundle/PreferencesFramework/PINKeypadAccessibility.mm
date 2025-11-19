@interface PINKeypadAccessibility
- (id)_accessibilityInternalChildren;
@end

@implementation PINKeypadAccessibility

- (id)_accessibilityInternalChildren
{
  objc_initWeak(location, self);
  v34 = MEMORY[0x29EDCA5F8];
  v35 = 3221225472;
  v36 = __56__PINKeypadAccessibility__accessibilityInternalChildren__block_invoke;
  v37 = &unk_29F2ED328;
  objc_copyWeak(&v38, location);
  UIAccessibilityPerformBlockForOrientationChange();
  v3 = MEMORY[0x29EDC7620];
  v4 = [(PINKeypadAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    [(PINKeypadAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:*v3];
    v5 = 0;
    v6 = *MEMORY[0x29EDC7FB0];
    v17 = *MEMORY[0x29EDC7F90];
    do
    {
      if (v5 != 9)
      {
        v7 = [objc_allocWithZone(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
        [v7 setAccessibilityTraits:v17 | v6];
        v8 = AX_kKeyStrs[v5];
        if ([(__CFString *)v8 length]== 1)
        {
          [MEMORY[0x29EDBA0F8] localizedStringWithFormat:@"%d", -[__CFString intValue](v8, "intValue")];
        }

        else
        {
          accessibilityLocalizedString(v8);
        }
        v9 = ;
        from = 0;
        p_from = &from;
        v30 = 0x3032000000;
        v31 = __Block_byref_object_copy_;
        v32 = __Block_byref_object_dispose_;
        v33 = 0;
        v21 = MEMORY[0x29EDCA5F8];
        v22 = 3221225472;
        v23 = __56__PINKeypadAccessibility__accessibilityInternalChildren__block_invoke_329;
        v24 = &unk_29F2ED350;
        v25 = self;
        v26 = &from;
        v27 = v5;
        AXPerformSafeBlock();
        v10 = p_from[5];
        _Block_object_dispose(&from, 8);

        if (v10)
        {
          v11 = [v10 accessibilityLabel];
          if ([v11 length])
          {
            v12 = v4;
            v13 = v6;
            v14 = v11;

            v9 = v14;
            v6 = v13;
            v4 = v12;
          }
        }

        objc_initWeak(&from, self);
        [v7 setAccessibilityLabel:v9];
        v18[0] = MEMORY[0x29EDCA5F8];
        v18[1] = 3221225472;
        v18[2] = __56__PINKeypadAccessibility__accessibilityInternalChildren__block_invoke_2;
        v18[3] = &unk_29F2ED378;
        objc_copyWeak(&v19, &from);
        v18[4] = self;
        v20 = v5;
        [v7 _setAccessibilityFrameBlock:v18];
        [v4 addObject:v7];
        objc_destroyWeak(&v19);
        objc_destroyWeak(&from);
      }

      ++v5;
    }

    while (v5 != 12);
  }

  v15 = v4;

  objc_destroyWeak(&v38);
  objc_destroyWeak(location);

  return v15;
}

void __56__PINKeypadAccessibility__accessibilityInternalChildren__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
}

uint64_t __56__PINKeypadAccessibility__accessibilityInternalChildren__block_invoke_329(uint64_t a1)
{
  v2 = [*(a1 + 32) _buttonForKeyAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

double __56__PINKeypadAccessibility__accessibilityInternalChildren__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = 0;
  v13 = &v12;
  v14 = 0x4010000000;
  v15 = &unk_29C1B616F;
  v16 = 0u;
  v17 = 0u;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  AXPerformSafeBlock();
  v3 = v13[4];
  v4 = v13[5];
  v5 = v13[6];
  v6 = v13[7];
  _Block_object_dispose(&v12, 8);
  UIAccessibilityFrameForBounds();
  v8 = v7;

  return v8;
}

uint64_t __56__PINKeypadAccessibility__accessibilityInternalChildren__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _rectForKey:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

@end
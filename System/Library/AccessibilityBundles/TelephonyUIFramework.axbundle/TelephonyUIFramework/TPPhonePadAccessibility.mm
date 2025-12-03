@interface TPPhonePadAccessibility
- (id)_accessibilityScannerGroupElements;
- (id)accessibilityElements;
@end

@implementation TPPhonePadAccessibility

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  v4 = [(TPPhonePadAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v6 = *v3;
    v29 = v5;
    [TPPhonePadAccessibility _accessibilitySetRetainedValue:"_accessibilitySetRetainedValue:forKey:" forKey:?];
    v7 = 0;
    v28 = *MEMORY[0x29EDC7F90] | *MEMORY[0x29EDC7FB0];
    v8 = *MEMORY[0x29EDB8F00];
    do
    {
      v9 = [objc_allocWithZone(TPButtonAccessibilityElement) initWithAccessibilityContainer:self];
      v10 = AX_kKeyStrs[v7];
      v11 = [(TPPhonePadAccessibility *)self _buttonForKeyAtIndex:v7];
      v12 = v11;
      if (v11)
      {
        accessibilityLabel = [v11 accessibilityLabel];
        if ([accessibilityLabel length])
        {
          v14 = accessibilityLabel;

          accessibilityTraits = [v12 accessibilityTraits];
          v10 = v14;
        }

        else
        {
          accessibilityTraits = v28;
        }
      }

      else
      {
        accessibilityTraits = v28;
      }

      [v9 setAccessibilityTraits:accessibilityTraits];
      v16 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v10];
      [v16 setAttribute:v8 forKey:*MEMORY[0x29EDBD960]];
      [v9 setAccessibilityLabel:v16];
      v17 = MEMORY[0x29EDBD7E8];
      lowercaseString = [(__CFString *)AX_kLettersStrings[v7] lowercaseString];
      v19 = [v17 axAttributedStringWithString:lowercaseString];

      [v19 setAttribute:v8 forKey:*MEMORY[0x29EDBD930]];
      [v9 setAccessibilityHint:v19];
      v30 = 0;
      v31 = &v30;
      v32 = 0x4010000000;
      v33 = &unk_29C4B18DE;
      v34 = 0u;
      v35 = 0u;
      AXPerformSafeBlock();
      v20 = v31[4];
      v21 = v31[5];
      v22 = v31[6];
      v23 = v31[7];
      _Block_object_dispose(&v30, 8);
      [v9 setAccessibilityFrameInContainerSpace:{v20, v21, v22, v23}];
      accessibilityLabel2 = [v9 accessibilityLabel];
      v25 = [accessibilityLabel2 length];

      if (v25)
      {
        [v29 addObject:v9];
      }

      ++v7;
    }

    while (v7 != 12);
    v4 = v29;
  }

  v26 = v4;

  return v26;
}

uint64_t __48__TPPhonePadAccessibility_accessibilityElements__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _rectForKey:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (id)_accessibilityScannerGroupElements
{
  v19[2] = *MEMORY[0x29EDCA608];
  v17 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:4];
  accessibilityElements = [(TPPhonePadAccessibility *)self accessibilityElements];
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = AX_kKeyStrs;
  do
  {
    v7 = 0;
    v8 = 0;
    ++v5;
    do
    {
      if ([(__CFString *)v6[v7] length])
      {
        v9 = 1;
      }

      else
      {
        v10 = [(TPPhonePadAccessibility *)self _buttonForKeyAtIndex:v3 + v7];
        accessibilityLabel = [v10 accessibilityLabel];
        v9 = [accessibilityLabel length] != 0;
      }

      v8 += v9;
      ++v7;
    }

    while (v7 != 3);
    v12 = [accessibilityElements subarrayWithRange:{v4, v8}];
    v18[0] = @"GroupElements";
    v18[1] = @"GroupTraits";
    v19[0] = v12;
    v19[1] = &unk_2A2346110;
    v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    [v17 addObject:v13];
    v4 += v8;

    v3 += 3;
    v6 += 3;
  }

  while (v5 != 4);

  v14 = *MEMORY[0x29EDCA608];

  return v17;
}

@end
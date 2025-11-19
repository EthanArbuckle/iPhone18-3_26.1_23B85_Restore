@interface SKUIAttributedStringViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityLinks;
- (id)accessibilityCustomRotorItemsAtIndex:(int64_t)a3;
- (id)accessibilityCustomRotors;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIAttributedStringViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIAttributedStringView" hasInstanceVariable:@"_layout" withType:"SKUIAttributedStringLayout"];
  [v3 validateClass:@"SKUIAttributedStringLayout" hasInstanceMethod:@"attributedString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIAttributedStringView" hasInstanceMethod:@"requiredBadges" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIAttributedStringView" hasInstanceMethod:@"_setupTapLocatorContainer" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SKUIAttributedStringView" hasInstanceVariable:@"_containsLinks" withType:"B"];
  [v3 validateClass:@"SKUIAttributedStringView" hasInstanceVariable:@"_layoutManager" withType:"NSLayoutManager"];
  [v3 validateClass:@"SKUIAttributedStringView" hasInstanceVariable:@"_textContainer" withType:"NSTextContainer"];
  [v3 validateClass:@"SKUIAttributedStringView" hasInstanceVariable:@"_requiredBadges" withType:"NSArray"];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(SKUIAttributedStringViewAccessibility *)self accessibilityLabel];
  v3 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  LOBYTE(v2) = [v4 length] != 0;
  return v2;
}

- (id)accessibilityLabel
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = [(SKUIAttributedStringViewAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(SKUIAttributedStringViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v26 = 0;
    objc_opt_class();
    v25 = 0;
    v5 = [(SKUIAttributedStringViewAccessibility *)self safeValueForKey:@"_layout"];
    v6 = __UIAccessibilitySafeClass();

    v7 = [v6 safeValueForKey:@"attributedString"];
    v8 = __UIAccessibilityCastAsClass();

    if (v26 == 1)
    {
      abort();
    }

    v4 = [v8 string];
  }

  v26 = 0;
  objc_opt_class();
  v9 = [(SKUIAttributedStringViewAccessibility *)self safeValueForKey:@"_requiredBadges"];
  v10 = __UIAccessibilityCastAsClass();

  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if (v16)
        {
          v20 = [v16 accessibilityLabel];
          v17 = __UIAXStringForVariables();

          v4 = v17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x29EDCA608];

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v14.receiver = self;
  v14.super_class = SKUIAttributedStringViewAccessibility;
  v18 = [(SKUIAttributedStringViewAccessibility *)&v14 accessibilityTraits];
  LOBYTE(v12[0]) = 0;
  objc_opt_class();
  v13 = 0;
  v3 = [(SKUIAttributedStringViewAccessibility *)self safeValueForKey:@"_layout"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"attributedString"];
  v6 = __UIAccessibilityCastAsClass();

  if (LOBYTE(v12[0]) == 1)
  {
    abort();
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v7 = [v6 length];
  v8 = *MEMORY[0x29EDC7638];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __60__SKUIAttributedStringViewAccessibility_accessibilityTraits__block_invoke;
  v11[3] = &unk_29F3040F0;
  v11[4] = v12;
  v11[5] = &v15;
  [v6 enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v11}];
  v9 = v16[3];
  _Block_object_dispose(v12, 8);

  _Block_object_dispose(&v15, 8);
  return v9;
}

uint64_t __60__SKUIAttributedStringViewAccessibility_accessibilityTraits__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 lineHeight];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  if (*(*(*(a1 + 32) + 8) + 24) > 20.0)
  {
    *(*(*(a1 + 40) + 8) + 24) |= *MEMORY[0x29EDC7F80];
  }

  return result;
}

- (id)_accessibilityLinks
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SKUIAttributedStringViewAccessibility *)self safeValueForKey:@"_containsLinks"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [(SKUIAttributedStringViewAccessibility *)self safeValueForKey:@"layout"];
    v7 = [v6 safeValueForKey:@"attributedString"];

    v8 = [v7 length];
    if (v8 >= 1)
    {
      v9 = v8;
      v24 = MEMORY[0x29EDCA5F8];
      v25 = 3221225472;
      v26 = __60__SKUIAttributedStringViewAccessibility__accessibilityLinks__block_invoke;
      v27 = &unk_29F304118;
      v28 = self;
      AXPerformSafeBlock();
      v10 = [(SKUIAttributedStringViewAccessibility *)self safeValueForKey:@"_layoutManager"];
      v11 = [(SKUIAttributedStringViewAccessibility *)self safeValueForKey:@"_textContainer"];
      v15 = MEMORY[0x29EDCA5F8];
      v16 = 3221225472;
      v17 = __60__SKUIAttributedStringViewAccessibility__accessibilityLinks__block_invoke_2;
      v18 = &unk_29F304140;
      v19 = v10;
      v20 = v11;
      v21 = self;
      v22 = v7;
      v23 = v3;
      v12 = v11;
      v13 = v10;
      [v22 enumerateAttribute:@"SKUILinkAttributeName" inRange:0 options:v9 usingBlock:{0, &v15}];
    }

    [(SKUIAttributedStringViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"kAXLinks", v15, v16, v17, v18];
  }

  return v3;
}

void __60__SKUIAttributedStringViewAccessibility__accessibilityLinks__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    [*(a1 + 32) boundingRectForGlyphRange:a3 inTextContainer:{a4, *(a1 + 40)}];
    v10 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:*(a1 + 48)];
    v7 = [*(a1 + 56) attributedSubstringFromRange:{a3, a4}];
    v8 = [v7 string];
    [v10 setAccessibilityLabel:v8];

    v9 = *(a1 + 48);
    UIAccessibilityFrameForBounds();
    [v10 setAccessibilityFrame:?];
    [v10 setAccessibilityTraits:*MEMORY[0x29EDC7F98]];
    [*(a1 + 64) addObject:v10];
  }
}

- (id)accessibilityCustomRotors
{
  v16[1] = *MEMORY[0x29EDCA608];
  v3 = [(SKUIAttributedStringViewAccessibility *)self _accessibilityLinks];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(SKUIAttributedStringViewAccessibility *)self _accessibilityValueForKey:@"AXCustomRotor"];
    if (!v5)
    {
      objc_initWeak(&location, self);
      v6 = objc_alloc(MEMORY[0x29EDC78E8]);
      v10 = MEMORY[0x29EDCA5F8];
      v11 = 3221225472;
      v12 = __66__SKUIAttributedStringViewAccessibility_accessibilityCustomRotors__block_invoke;
      v13 = &unk_29F304168;
      objc_copyWeak(&v14, &location);
      v5 = [v6 initWithSystemType:1 itemSearchBlock:&v10];
      [(SKUIAttributedStringViewAccessibility *)self _accessibilitySetRetainedValue:v5 forKey:@"AXCustomRotor", v10, v11, v12, v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    v16[0] = v5;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v16 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

id __66__SKUIAttributedStringViewAccessibility_accessibilityCustomRotors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _accessibilityLinks];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 _accessibilityCustomRotorResultHelper:v3 array:v5];

  return v7;
}

- (id)accessibilityCustomRotorItemsAtIndex:(int64_t)a3
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SKUIAttributedStringViewAccessibility *)self _accessibilityLinks];
  }

  return v5;
}

@end
@interface SearchUIMovieCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SearchUIMovieCardSectionViewAccessibility)initWithRowModel:(id)a3 feedbackDelegate:(id)a4;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SearchUIMovieCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TLKMediaInfoView"];
  [v3 validateClass:@"TLKMediaInfoView" hasInstanceMethod:@"contents" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKDetailsSection"];
  [v3 validateClass:@"TLKDetailsSection" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKDetailsSection" hasInstanceMethod:@"details" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKMultilineText"];
  [v3 validateClass:@"TLKMultilineText" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIMovieCardSectionView" hasInstanceMethod:@"initWithRowModel:feedbackDelegate:" withFullSignature:{"@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v31 = *MEMORY[0x29EDCA608];
  v29.receiver = self;
  v29.super_class = SearchUIMovieCardSectionViewAccessibility;
  [(SearchUIMovieCardSectionViewAccessibility *)&v29 _accessibilityLoadAccessibilityInformation];
  v23 = objc_alloc_init(MEMORY[0x29EDBA078]);
  [v23 setNumberStyle:3];
  v28 = 0;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v22 = v2;
  v3 = [v2 subviews];
  v4 = [v3 firstObject];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = v4;
  v5 = [v4 subviews];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v28 = 0;
        objc_opt_class();
        v11 = __UIAccessibilityCastAsClass();
        if (v28 == 1)
        {
          abort();
        }

        v12 = v11;
        if (v11)
        {
          v13 = [v11 text];
          v14 = [v23 numberFromString:v13];
          v15 = v14;
          if (v14)
          {
            [v14 floatValue];
            if (v16 >= 0.6)
            {
              v17 = @"movie.rotten.tomatoes.fresh";
            }

            else
            {
              v17 = @"movie.rotten.tomatoes.rotten";
            }

            v18 = accessibilityLocalizedString(v17);
            v19 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@, %@", v13, v18];
            [v12 setAccessibilityLabel:v19];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x29EDCA608];
}

- (id)accessibilityLabel
{
  v40 = *MEMORY[0x29EDCA608];
  v3 = [(SearchUIMovieCardSectionViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_11];
  v37.receiver = self;
  v37.super_class = SearchUIMovieCardSectionViewAccessibility;
  v4 = [(SearchUIMovieCardSectionViewAccessibility *)&v37 accessibilityLabel];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v3;
  obj = [v3 safeValueForKey:@"contents"];
  v26 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v26)
  {
    v25 = *v34;
    do
    {
      v5 = 0;
      v6 = v4;
      do
      {
        v28 = v6;
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * v5);
        v8 = [v7 safeValueForKey:{@"title", v18, v20, v22}];
        v27 = [v8 safeStringForKey:@"text"];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v9 = [v7 safeValueForKey:@"details"];
        v10 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          v13 = &stru_2A22CFF00;
          do
          {
            v14 = 0;
            v15 = v13;
            do
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v19 = [*(*(&v29 + 1) + 8 * v14) safeStringForKey:{@"text", v19, v21}];
              v21 = @"__AXStringForVariablesSentinel";
              v13 = __UIAXStringForVariables();

              ++v14;
              v15 = v13;
            }

            while (v11 != v14);
            v11 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:{16, v19, @"__AXStringForVariablesSentinel"}];
          }

          while (v11);
        }

        else
        {
          v13 = &stru_2A22CFF00;
        }

        v20 = v13;
        v22 = @"__AXStringForVariablesSentinel";
        v18 = v27;
        v4 = __UIAXStringForVariables();

        ++v5;
        v6 = v4;
      }

      while (v5 != v26);
      v26 = [obj countByEnumeratingWithState:&v33 objects:v39 count:{16, v27, v13, @"__AXStringForVariablesSentinel"}];
    }

    while (v26);
  }

  v16 = *MEMORY[0x29EDCA608];

  return v4;
}

uint64_t __63__SearchUIMovieCardSectionViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Tlkmediainfovi.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __83__SearchUIMovieCardSectionViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Searchuimoviec_2.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SearchUIMovieCardSectionViewAccessibility)initWithRowModel:(id)a3 feedbackDelegate:(id)a4
{
  v6.receiver = self;
  v6.super_class = SearchUIMovieCardSectionViewAccessibility;
  v4 = [(SearchUIMovieCardSectionViewAccessibility *)&v6 initWithRowModel:a3 feedbackDelegate:a4];
  [(SearchUIMovieCardSectionViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  return v4;
}

@end
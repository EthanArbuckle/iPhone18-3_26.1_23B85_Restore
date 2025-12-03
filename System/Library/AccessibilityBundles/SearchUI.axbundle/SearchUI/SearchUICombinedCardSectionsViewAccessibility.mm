@interface SearchUICombinedCardSectionsViewAccessibility
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axGetFooterSectionView;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_axSetInfoOnButton:(id)button;
@end

@implementation SearchUICombinedCardSectionsViewAccessibility

- (id)_accessibilitySupplementaryFooterViews
{
  v18 = *MEMORY[0x29EDCA608];
  _axGetFooterSectionView = [(SearchUICombinedCardSectionsViewAccessibility *)self _axGetFooterSectionView];
  v4 = _axGetFooterSectionView;
  if (_axGetFooterSectionView)
  {
    _accessibilitySupplementaryFooterViews = [_axGetFooterSectionView _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_8];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(_accessibilitySupplementaryFooterViews);
          }

          [(SearchUICombinedCardSectionsViewAccessibility *)self _axSetInfoOnButton:*(*(&v12 + 1) + 8 * i)];
        }

        v7 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SearchUICombinedCardSectionsViewAccessibility;
    _accessibilitySupplementaryFooterViews = [(SearchUICombinedCardSectionsViewAccessibility *)&v16 _accessibilitySupplementaryFooterViews];
  }

  v10 = *MEMORY[0x29EDCA608];

  return _accessibilitySupplementaryFooterViews;
}

uint64_t __87__SearchUICombinedCardSectionsViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Tlktextbutton.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 isAccessibilityElement])
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accessibilityLabel
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = [(SearchUICombinedCardSectionsViewAccessibility *)self safeArrayForKey:@"visibleArrangedSubviews"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = &stru_2A22CFF00;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        accessibilityLabel = [*(*(&v13 + 1) + 8 * v7) accessibilityLabel];
        v12 = @"__AXStringForVariablesSentinel";
        v6 = __AXStringForVariables();

        ++v7;
        v8 = v6;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:{16, accessibilityLabel, @"__AXStringForVariablesSentinel"}];
    }

    while (v4);
  }

  else
  {
    v6 = &stru_2A22CFF00;
  }

  v9 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)accessibilityValue
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = [(SearchUICombinedCardSectionsViewAccessibility *)self safeArrayForKey:@"visibleArrangedSubviews"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = &stru_2A22CFF00;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        accessibilityValue = [*(*(&v13 + 1) + 8 * v7) accessibilityValue];
        v12 = @"__AXStringForVariablesSentinel";
        v6 = __AXStringForVariables();

        ++v7;
        v8 = v6;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:{16, accessibilityValue, @"__AXStringForVariablesSentinel"}];
    }

    while (v4);
  }

  else
  {
    v6 = &stru_2A22CFF00;
  }

  v9 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)_axGetFooterSectionView
{
  v16 = *MEMORY[0x29EDCA608];
  [(SearchUICombinedCardSectionsViewAccessibility *)self safeArrayForKey:@"visibleArrangedSubviews"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        NSClassFromString(&cfstr_Searchuiattrib.isa);
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (void)_axSetInfoOnButton:(id)button
{
  buttonCopy = button;
  if (buttonCopy)
  {
    v8 = buttonCopy;
    [buttonCopy setIsAccessibilityElement:1];
    accessibilityLabel = [v8 accessibilityLabel];
    if (![accessibilityLabel length])
    {
      v5 = [v8 safeValueForKey:@"_richTitle"];
      v6 = [v5 safeStringForKey:@"text"];

      if ([v6 length])
      {
        accessibilityLabel = v6;
      }

      else
      {
        accessibilityLabel = [v8 safeStringForKey:@"_title"];

        if (![accessibilityLabel length])
        {
          v7 = accessibilityLocalizedString(@"search.go.safari");
          [v8 setAccessibilityLabel:v7];

          goto LABEL_8;
        }

        v6 = accessibilityLabel;
      }

      [v8 setAccessibilityLabel:v6];
    }

LABEL_8:

    buttonCopy = v8;
  }
}

@end
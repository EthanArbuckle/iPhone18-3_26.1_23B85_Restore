@interface SUUISectionHeaderViewAccessibility
- (BOOL)_axHasOnlyStringViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation SUUISectionHeaderViewAccessibility

- (void)layoutSubviews
{
  v18 = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = SUUISectionHeaderViewAccessibility;
  [(SUUISectionHeaderViewAccessibility *)&v16 layoutSubviews];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  subviews = [(SUUISectionHeaderViewAccessibility *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = *MEMORY[0x29EDC7F70] | *MEMORY[0x29EDBDC00];
    v8 = *MEMORY[0x29EDC7F80];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ((v7 & [v10 _accessibilityNativeTraits]) == 0)
        {
          [v10 setAccessibilityTraits:{v8 | objc_msgSend(v10, "accessibilityTraits")}];
        }
      }

      v5 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (BOOL)_axHasOnlyStringViews
{
  v16 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [(SUUISectionHeaderViewAccessibility *)self subviews];
  v3 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        NSClassFromString(&cfstr_Suuiattributed.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v4 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

- (id)accessibilityLabel
{
  v19 = *MEMORY[0x29EDCA608];
  subviews = [(SUUISectionHeaderViewAccessibility *)self subviews];
  string = [MEMORY[0x29EDBA0F8] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = subviews;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        NSClassFromString(&cfstr_Suuiattributed.isa);
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 _accessibilityViewIsVisible])
        {
          accessibilityLabel = [v9 accessibilityLabel];
          v10 = __AXStringForVariables();

          string = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x29EDCA608];

  return string;
}

- (unint64_t)accessibilityTraits
{
  v17 = *MEMORY[0x29EDCA608];
  if ([(SUUISectionHeaderViewAccessibility *)self _axHasOnlyStringViews])
  {
    [(SUUISectionHeaderViewAccessibility *)self subviews];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v15 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          NSClassFromString(&cfstr_Suuiattributed.isa);
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 _accessibilityViewIsVisible])
          {
            accessibilityTraits = [v8 accessibilityTraits];

            goto LABEL_14;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    accessibilityTraits = *MEMORY[0x29EDC7578];
LABEL_14:
  }

  else
  {
    accessibilityTraits = *MEMORY[0x29EDC7FA0];
  }

  v10 = *MEMORY[0x29EDCA608];
  return accessibilityTraits;
}

@end
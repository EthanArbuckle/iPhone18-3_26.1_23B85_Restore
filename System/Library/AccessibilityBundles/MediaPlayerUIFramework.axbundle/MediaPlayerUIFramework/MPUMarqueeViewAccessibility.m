@interface MPUMarqueeViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation MPUMarqueeViewAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(MPUMarqueeViewAccessibility *)self storedIsAccessibilityElement];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v6 = [(MPUMarqueeViewAccessibility *)self accessibilityLabel];
    v5 = [v6 length] != 0;
  }

  return v5;
}

- (id)accessibilityLabel
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = [(MPUMarqueeViewAccessibility *)self safeValueForKey:@"contentView"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 subviews];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = &stru_2A2200CA8;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v9 accessibilityLabel];
          v10 = __UIAXStringForVariables();

          v7 = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_2A2200CA8;
  }

  v11 = *MEMORY[0x29EDCA608];

  return v7;
}

@end
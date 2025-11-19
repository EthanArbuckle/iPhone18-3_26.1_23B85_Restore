@interface MTUIViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)_accessibilityObscuredScreenAllowedViews;
@end

@implementation MTUIViewAccessibility

- (id)_accessibilityObscuredScreenAllowedViews
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = [(MTUIViewAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"modalSearchView"])
  {
  }

  else
  {
    v4 = [(MTUIViewAccessibility *)self accessibilityIdentifier];
    v5 = [v4 isEqualToString:@"ModalPopup"];

    if (!v5)
    {
      v22.receiver = self;
      v22.super_class = MTUIViewAccessibility;
      v8 = [(MTUIViewAccessibility *)&v22 _accessibilityObscuredScreenAllowedViews];
      goto LABEL_18;
    }
  }

  v21 = objc_getAssociatedObject(self, &MTAXSearchDelegateObject);
  v6 = [v21 safeValueForKey:@"_searchBar"];
  v7 = [MEMORY[0x29EDB8DE8] array];
  v8 = v7;
  if (v6)
  {
    [v7 addObject:v6];
  }

  v9 = [(MTUIViewAccessibility *)self superview];
  v10 = [v9 subviews];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v16 accessibilityIdentifier];
        v18 = [v17 isEqualToString:@"DismissView"];

        if (v18)
        {
          [v8 addObject:v16];
          goto LABEL_16;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

LABEL_18:
  v19 = *MEMORY[0x29EDCA608];

  return v8;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(MTUIViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"DismissView"];

  if (v4)
  {
    [(MTUIViewAccessibility *)self alpha];
    if (v5 > 0.0 && ![(MTUIViewAccessibility *)self isHidden])
    {
      return 1;
    }
  }

  v7.receiver = self;
  v7.super_class = MTUIViewAccessibility;
  return [(MTUIViewAccessibility *)&v7 isAccessibilityElement];
}

@end
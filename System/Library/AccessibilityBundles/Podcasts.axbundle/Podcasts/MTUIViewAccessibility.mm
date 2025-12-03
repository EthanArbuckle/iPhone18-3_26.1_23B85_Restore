@interface MTUIViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)_accessibilityObscuredScreenAllowedViews;
@end

@implementation MTUIViewAccessibility

- (id)_accessibilityObscuredScreenAllowedViews
{
  v28 = *MEMORY[0x29EDCA608];
  accessibilityIdentifier = [(MTUIViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"modalSearchView"])
  {
  }

  else
  {
    accessibilityIdentifier2 = [(MTUIViewAccessibility *)self accessibilityIdentifier];
    v5 = [accessibilityIdentifier2 isEqualToString:@"ModalPopup"];

    if (!v5)
    {
      v22.receiver = self;
      v22.super_class = MTUIViewAccessibility;
      _accessibilityObscuredScreenAllowedViews = [(MTUIViewAccessibility *)&v22 _accessibilityObscuredScreenAllowedViews];
      goto LABEL_18;
    }
  }

  v21 = objc_getAssociatedObject(self, &MTAXSearchDelegateObject);
  v6 = [v21 safeValueForKey:@"_searchBar"];
  array = [MEMORY[0x29EDB8DE8] array];
  _accessibilityObscuredScreenAllowedViews = array;
  if (v6)
  {
    [array addObject:v6];
  }

  superview = [(MTUIViewAccessibility *)self superview];
  subviews = [superview subviews];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = subviews;
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
        accessibilityIdentifier3 = [v16 accessibilityIdentifier];
        v18 = [accessibilityIdentifier3 isEqualToString:@"DismissView"];

        if (v18)
        {
          [_accessibilityObscuredScreenAllowedViews addObject:v16];
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

  return _accessibilityObscuredScreenAllowedViews;
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(MTUIViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"DismissView"];

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
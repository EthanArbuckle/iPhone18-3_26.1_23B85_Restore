@interface SUUIOverlayContainerViewAccessibility
- (id)_accessibilityObscuredScreenAllowedViews;
- (id)accessibilityElements;
@end

@implementation SUUIOverlayContainerViewAccessibility

- (id)accessibilityElements
{
  v3 = [(SUUIOverlayContainerViewAccessibility *)self _accessibilityValueForKey:@"Backstop"];
  if (!v3)
  {
    v3 = [[StoreBackstopAccessibilityElement alloc] initWithAccessibilityContainer:self];
    v4 = UIKitAccessibilityLocalizedString();
    [(StoreBackstopAccessibilityElement *)v3 setAccessibilityLabel:v4];

    v5 = UIKitAccessibilityLocalizedString();
    [(StoreBackstopAccessibilityElement *)v3 setAccessibilityHint:v5];

    [(SUUIOverlayContainerViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"Backstop"];
  }

  v6 = [(SUUIOverlayContainerViewAccessibility *)self subviews];
  v7 = [v6 arrayByAddingObject:v3];

  return v7;
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = [(SUUIOverlayContainerViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"OverlayCaptureView"];

  if (v4)
  {
    v24 = 0;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v6 = [v5 superview];
    v7 = [v6 subviews];

    v8 = [MEMORY[0x29EDB8DE8] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 accessibilityIdentifier];
          v16 = [v15 isEqualToString:@"FloatingPreview"];

          if (v16)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {

      goto LABEL_15;
    }
  }

  v19.receiver = self;
  v19.super_class = SUUIOverlayContainerViewAccessibility;
  v8 = [(SUUIOverlayContainerViewAccessibility *)&v19 _accessibilityObscuredScreenAllowedViews];
LABEL_15:
  v17 = *MEMORY[0x29EDCA608];

  return v8;
}

@end
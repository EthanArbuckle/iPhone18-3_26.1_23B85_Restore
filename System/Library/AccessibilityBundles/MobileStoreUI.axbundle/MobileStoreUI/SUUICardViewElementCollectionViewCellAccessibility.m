@interface SUUICardViewElementCollectionViewCellAccessibility
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityFindPlayButton;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axAdornedImageElement;
- (id)_axLockupElements;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUICardViewElementCollectionViewCellAccessibility

- (id)_axLockupElements
{
  v19 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v3 = [(SUUICardViewElementCollectionViewCellAccessibility *)self safeValueForKey:@"allExistingViews"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [MEMORY[0x29EDB8DE8] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        NSClassFromString(&cfstr_Suuihorizontal_5.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSClassFromString(&cfstr_Suuihorizontal_1.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSClassFromString(&cfstr_Suuiattributed.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              NSClassFromString(&cfstr_Suuistyledbutt_0.isa);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                NSClassFromString(&cfstr_Suuistacklistc_0.isa);
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }
            }
          }
        }

        [v5 addObject:{v11, v14}];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)_axAdornedImageElement
{
  v19 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v3 = [(SUUICardViewElementCollectionViewCellAccessibility *)self safeValueForKey:@"allExistingViews"];
  v4 = __UIAccessibilityCastAsClass();

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        NSClassFromString(&cfstr_Suuiadornedima.isa);
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)accessibilityLabel
{
  v24 = *MEMORY[0x29EDCA608];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axLockupElements];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v17 = [*(*(&v19 + 1) + 8 * v8) accessibilityLabel];
        v18 = @"__AXStringForVariablesSentinel";
        v6 = __UIAXStringForVariables();

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:{16, v17, @"__AXStringForVariablesSentinel"}];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (![v6 length])
  {
    objc_opt_class();
    v10 = [(SUUICardViewElementCollectionViewCellAccessibility *)self safeValueForKey:@"allExistingViews"];
    v11 = __UIAccessibilityCastAsClass();
    v12 = MEMORY[0x29C2E1480]();

    v6 = v12;
  }

  if (![v6 length])
  {
    v13 = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axAdornedImageElement];

    if (v13)
    {
      v14 = accessibilityLocalizedString(@"play");

      v6 = v14;
    }
  }

  v15 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v23 = *MEMORY[0x29EDCA608];
  v7 = a4;
  if ([(SUUICardViewElementCollectionViewCellAccessibility *)self pointInside:v7 withEvent:x, y])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(SUUICardViewElementCollectionViewCellAccessibility *)self _accessibilitySupplementaryFooterViews];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          [(SUUICardViewElementCollectionViewCellAccessibility *)self convertPoint:v13 toView:x, y];
          v14 = [v13 _accessibilityHitTest:v7 withEvent:?];
          if ([v14 isAccessibilityElement])
          {

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v17.receiver = self;
    v17.super_class = SUUICardViewElementCollectionViewCellAccessibility;
    v14 = [(SUUICardViewElementCollectionViewCellAccessibility *)&v17 _accessibilityHitTest:v7 withEvent:x, y];
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  v15 = *MEMORY[0x29EDCA608];

  return v14;
}

- (id)_accessibilityFindPlayButton
{
  v2 = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axAdornedImageElement];
  v3 = [v2 safeValueForKey:@"_reuseView"];
  v4 = [v3 safeValueForKey:@"_playButton"];

  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)accessibilityActivate
{
  v3 = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axAdornedImageElement];

  if (!v3)
  {
    return 0;
  }

  v4 = [(SUUICardViewElementCollectionViewCellAccessibility *)self _accessibilityFindPlayButton];
  v5 = [v4 accessibilityActivate];

  return v5;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v32 = *MEMORY[0x29EDCA608];
  v21 = [MEMORY[0x29EDB8DE8] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axLockupElements];
  v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    v18 = *v27;
    do
    {
      v6 = 0;
      v19 = v4;
      do
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * v6);
        NSClassFromString(&cfstr_Suuistyledbutt_0.isa);
        if (objc_opt_isKindOfClass())
        {
          [v21 addObject:v7];
        }

        else
        {
          v8 = [v7 _accessibilitySupplementaryFooterViews];
          v9 = [MEMORY[0x29EDB8DE8] array];
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v10 = v8;
          v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v23;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v23 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v22 + 1) + 8 * i);
                NSClassFromString(&cfstr_Suuihorizontal_1.isa);
                if (objc_opt_isKindOfClass())
                {
                  NSClassFromString(&cfstr_Suuiimageview.isa);
                  if (objc_opt_isKindOfClass())
                  {
                    continue;
                  }
                }

                [v9 addObject:{v15, v18}];
              }

              v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v12);
          }

          if ([v9 count])
          {
            [v21 addObjectsFromArray:v9];
          }

          v5 = v18;
          v4 = v19;
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x29EDCA608];

  return v21;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axAdornedImageElement];

  if (v3)
  {
    v4 = [(SUUICardViewElementCollectionViewCellAccessibility *)self _accessibilityFindPlayButton];
    [v4 accessibilityActivationPoint];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SUUICardViewElementCollectionViewCellAccessibility;
    [(SUUICardViewElementCollectionViewCellAccessibility *)&v11 accessibilityActivationPoint];
  }

  result.y = v10;
  result.x = v9;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SUUICardViewElementCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SUUICardViewElementCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityCustomActions
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(SUUICardViewElementCollectionViewCellAccessibility *)self _axLockupElements];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        NSClassFromString(&cfstr_Suuihorizontal_5.isa);
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 accessibilityCustomActions];
          v9 = [v8 count];

          if (v9)
          {
            v10 = [v7 accessibilityCustomActions];
            goto LABEL_12;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

@end
@interface SUUIVerticalLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_playAction:(id)a3;
- (BOOL)hasOnlyStringViews;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityFindPlayButton;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SUUIVerticalLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIViewReuseCollectionViewCell" hasInstanceMethod:@"allExistingViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIVerticalLockupCollectionViewCell" hasInstanceVariable:@"_lockupView" withType:"SUUIVerticalLockupView"];
  [v3 validateClass:@"SUUIVerticalLockupCollectionViewCell" isKindOfClass:@"SUUICollectionViewCell"];
  [v3 validateClass:@"SUUIImageView"];
  [v3 validateClass:@"SUUIAdornedImageView" hasInstanceVariable:@"_reuseView" withType:"SUUIAdornedImageViewReuseView"];
  [v3 validateClass:@"SUUIAdornedImageViewReuseView" hasInstanceVariable:@"_playButton" withType:"SUUIPlayButton"];
}

- (BOOL)hasOnlyStringViews
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self safeValueForKey:@"_lockupView"];
  v3 = __UIAccessibilitySafeClass();

  v19 = 0;
  v4 = [v3 safeValueForKey:@"subviews"];
  v5 = __UIAccessibilitySafeClass();

  NSClassFromString(&cfstr_Suuiattributed.isa);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

- (id)accessibilityCustomActions
{
  v11[1] = *MEMORY[0x29EDCA608];
  v3 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilityFindPlayButton];
  v4 = v3;
  if (v3 && ([v3 accessibilityLabel], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v5 target:self selector:sel__playAction_];
    v11[0] = v7;
    v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (id)_accessibilityFindPlayButton
{
  v18 = *MEMORY[0x29EDCA608];
  [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilitySupplementaryFooterViewsForThisCell:1 includeText:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
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
        v8 = [v7 accessibilityIdentification];
        v9 = [v8 isEqualToString:@"PlayButton"];

        if (v9)
        {
          v10 = v7;
          goto LABEL_11;
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
LABEL_11:

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (BOOL)_playAction:(id)a3
{
  v3 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilityFindPlayButton];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityActivate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accessibilityLabel
{
  v33 = *MEMORY[0x29EDCA608];
  v2 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self safeValueForKey:@"_lockupView"];
  v3 = __UIAccessibilitySafeClass();

  v31 = 0;
  v4 = [v3 safeValueForKey:@"subviews"];
  v5 = __UIAccessibilitySafeClass();

  v25 = v3;
  NSClassFromString(&cfstr_Suuiimageview.isa);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (!v7)
  {
    v9 = 0;
    v26 = 0;
    goto LABEL_18;
  }

  v8 = v7;
  v9 = 0;
  v26 = 0;
  v10 = *v28;
  v11 = 0x29EDC7000uLL;
  do
  {
    v12 = 0;
    do
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
      {
        [v13 accessibilityLabel];
        v9 = v14 = v9;
LABEL_9:

        goto LABEL_10;
      }

      v15 = *(v11 + 2392);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && [v13 _accessibilityViewIsVisible])
      {
        v14 = [v13 accessibilityLabel];
        v23 = v14;
        v24 = @"__AXStringForVariablesSentinel";
        __UIAXStringForVariables();
        v17 = v16 = v11;

        v26 = v17;
        v11 = v16;
        goto LABEL_9;
      }

LABEL_10:
      ++v12;
    }

    while (v8 != v12);
    v18 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    v8 = v18;
  }

  while (v18);
LABEL_18:

  v19 = v26;
  if (![v26 length])
  {
    v20 = v9;

    v19 = v20;
  }

  v21 = *MEMORY[0x29EDCA608];

  return v19;
}

- (id)accessibilityValue
{
  v2 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilityFindPlayButton];
  v3 = [v2 safeValueForKey:@"_indeterminate"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"indeterminate.playback");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accessibilityElements
{
  if ([(SUUIVerticalLockupCollectionViewCellAccessibility *)self isAccessibilityElement])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilitySupplementaryFooterViewsForThisCell:0 includeText:1];
  }

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(SUUIVerticalLockupCollectionViewCellAccessibility *)self isAccessibilityElement]&& ([(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilityFindPlayButton], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilitySupplementaryFooterViewsForThisCell:0 includeText:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilityFindPlayButton];
  if (v3)
  {
    [(SUUIVerticalLockupCollectionViewCellAccessibility *)self accessibilityFrame];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SUUIVerticalLockupCollectionViewCellAccessibility;
    [(SUUIVerticalLockupCollectionViewCellAccessibility *)&v10 accessibilityActivationPoint];
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v26 = *MEMORY[0x29EDCA608];
  v7 = a4;
  if (_AXSAutomationEnabled())
  {
    [(SUUIVerticalLockupCollectionViewCellAccessibility *)self _accessibilitySupplementaryFooterViewsForThisCell:1 includeText:1];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v24 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          [(SUUIVerticalLockupCollectionViewCellAccessibility *)self convertPoint:v13 toView:x, y];
          v14 = [v13 _accessibilityHitTest:v7 withEvent:?];
          if ([v14 isAccessibilityElement])
          {
            v15 = [v14 accessibilityIdentification];
            v16 = [v15 isEqualToString:@"PlayButton"];

            if (v16)
            {
              v17 = [v14 accessibilityLabel];
              [v14 setAccessibilityIdentifier:v17];

              goto LABEL_14;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SUUIVerticalLockupCollectionViewCellAccessibility;
  v14 = [(SUUIVerticalLockupCollectionViewCellAccessibility *)&v20 _accessibilityHitTest:v7 withEvent:x, y];
LABEL_14:

  v18 = *MEMORY[0x29EDCA608];

  return v14;
}

@end
@interface SKUIStyledButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsACategoryButton;
- (BOOL)_axButtonType:(BOOL)type;
- (BOOL)_axIsCloseButton;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIStyledButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUISectionHeaderView"];
  [validationsCopy validateClass:@"SKUIStyledButton" hasInstanceVariable:@"_attributedStringView" withType:"SKUIAttributedStringView"];
  [validationsCopy validateClass:@"SKUIStyledButton" hasInstanceVariable:@"_itemOfferButton" withType:"SKUIItemOfferButton"];
  [validationsCopy validateClass:@"SKUIStyledButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

- (BOOL)_accessibilityIsACategoryButton
{
  v2 = [(SKUIStyledButtonAccessibility *)self safeValueForKey:@"imageView"];
  accessibilityIdentifier = [v2 accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"AppStoreBrowseCategoryDownChevron"];

  return v4;
}

- (BOOL)_axButtonType:(BOOL)type
{
  typeCopy = type;
  superview = [(SKUIStyledButtonAccessibility *)self superview];
  NSClassFromString(&cfstr_Skuihorizontal_3.isa);
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SKUIStyledButtonAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Skuicardviewel_0.isa)];

    if (v6)
    {
      subviews = [superview subviews];
      if ([subviews count] != 3)
      {
        goto LABEL_19;
      }

      v8 = [subviews objectAtIndexedSubscript:0];
      NSClassFromString(&cfstr_Skuitogglebutt_0.isa);
      if (objc_opt_isKindOfClass())
      {
        v9 = [subviews objectAtIndexedSubscript:1];
        NSClassFromString(&cfstr_Skuistyledbutt_0.isa);
        if (objc_opt_isKindOfClass())
        {
          v10 = [subviews objectAtIndexedSubscript:2];
          NSClassFromString(&cfstr_Skuistyledbutt_0.isa);
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v12 = [subviews objectAtIndexedSubscript:0];
            if ([v12 _accessibilityViewIsVisible])
            {
LABEL_10:

              goto LABEL_11;
            }

            v13 = [subviews objectAtIndexedSubscript:1];
            if ([v13 _accessibilityViewIsVisible])
            {

              goto LABEL_10;
            }

            v18 = [subviews objectAtIndexedSubscript:2];
            _accessibilityViewIsVisible = [v18 _accessibilityViewIsVisible];

            if (!_accessibilityViewIsVisible)
            {
LABEL_11:
              v14 = [subviews objectAtIndexedSubscript:1];

              if (v14 == self && !typeCopy || ([subviews objectAtIndexedSubscript:2], v15 = objc_claimAutoreleasedReturnValue(), v15, v16 = 0, v15 == self) && typeCopy)
              {
                v16 = 1;
              }

              goto LABEL_20;
            }

            v8 = [subviews objectAtIndexedSubscript:2];
            [v8 setAccessibilityIdentifier:@"AXCloseButton"];
            goto LABEL_18;
          }

LABEL_19:
          v16 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }

LABEL_18:

      goto LABEL_19;
    }
  }

  v16 = 0;
LABEL_21:

  return v16;
}

- (BOOL)_axIsCloseButton
{
  v26 = *MEMORY[0x29EDCA608];
  superview = [(SKUIStyledButtonAccessibility *)self superview];
  NSClassFromString(&cfstr_Skuihorizontal_3.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(SKUIStyledButtonAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Skuicardviewel_0.isa)], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    subviews = [superview subviews];
    if ([subviews count] == 1 && (objc_msgSend(subviews, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), NSClassFromString(&cfstr_Skuistyledbutt_0.isa), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
    {
      v8 = [subviews objectAtIndexedSubscript:0];
      subviews2 = [v8 subviews];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = subviews2;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            NSClassFromString(&cfstr_Skuiattributed_0.isa);
            if (objc_opt_isKindOfClass())
            {
              accessibilityLabel = [v15 accessibilityLabel];
              v17 = [accessibilityLabel length];

              if (!v17)
              {
                v18 = 1;
                goto LABEL_18;
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v18 = 0;
LABEL_18:
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

- (id)accessibilityLabel
{
  v3 = [(SKUIStyledButtonAccessibility *)self safeValueForKey:@"_itemOfferButton"];
  if (![v3 _accessibilityViewIsVisible])
  {
    if ([(SKUIStyledButtonAccessibility *)self _accessibilityIsACategoryButton])
    {
      v5 = @"category.button";
    }

    else
    {
      accessibilityIdentifier = [(SKUIStyledButtonAccessibility *)self accessibilityIdentifier];
      if ([accessibilityIdentifier isEqualToString:@"AXCloseButton"])
      {
      }

      else
      {
        _axIsCloseButton = [(SKUIStyledButtonAccessibility *)self _axIsCloseButton];

        if (!_axIsCloseButton)
        {
          if ([(SKUIStyledButtonAccessibility *)self _axIsShareButtonInConnect])
          {
            v5 = @"share.button";
          }

          else
          {
            if (![(SKUIStyledButtonAccessibility *)self _axIsPostButtonInConnect])
            {
              v10 = [(SKUIStyledButtonAccessibility *)self safeValueForKey:@"_attributedStringView"];
              accessibilityLabel = [v10 accessibilityLabel];

              if ([accessibilityLabel length])
              {
                accessibilityLabel2 = accessibilityLabel;
              }

              else
              {
                v13.receiver = self;
                v13.super_class = SKUIStyledButtonAccessibility;
                accessibilityLabel2 = [(SKUIStyledButtonAccessibility *)&v13 accessibilityLabel];
              }

              v8 = accessibilityLabel2;

              goto LABEL_11;
            }

            v5 = @"post.label";
          }

          goto LABEL_9;
        }
      }

      v5 = @"close.button";
    }

LABEL_9:
    accessibilityLabel3 = accessibilitySKUILocalizedString(v5);
    goto LABEL_10;
  }

  accessibilityLabel3 = [v3 accessibilityLabel];
LABEL_10:
  v8 = accessibilityLabel3;
LABEL_11:

  return v8;
}

- (id)accessibilityValue
{
  if ([(SKUIStyledButtonAccessibility *)self _accessibilityIsACategoryButton]|| [(SKUIStyledButtonAccessibility *)self _axIsShareButtonInConnect]|| [(SKUIStyledButtonAccessibility *)self _axIsPostButtonInConnect])
  {
    v3 = [(SKUIStyledButtonAccessibility *)self safeValueForKey:@"_attributedStringView"];
    accessibilityLabel = [v3 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  if ([(SKUIStyledButtonAccessibility *)self _accessibilityIsACategoryButton])
  {
    v2 = accessibilitySKUILocalizedString(@"category.hint");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = SKUIStyledButtonAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(SKUIStyledButtonAccessibility *)&v8 accessibilityTraits];
  superview = [(SKUIStyledButtonAccessibility *)self superview];
  NSClassFromString(&cfstr_Skuisectionhea_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = *MEMORY[0x29EDC7F80];
  if ((isKindOfClass & 1) == 0)
  {
    v6 = 0;
  }

  return v3 | v6;
}

@end
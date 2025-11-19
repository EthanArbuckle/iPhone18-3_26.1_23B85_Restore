@interface SUUIStyledButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsACategoryButton;
- (BOOL)_axButtonType:(BOOL)a3;
- (BOOL)_axIsCloseButton;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUIStyledButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUISectionHeaderView"];
  [v3 validateClass:@"SUUIStyledButton" hasInstanceVariable:@"_attributedStringView" withType:"SUUIAttributedStringView"];
  [v3 validateClass:@"SUUIStyledButton" hasInstanceVariable:@"_itemOfferButton" withType:"SUUIItemOfferButton"];
  [v3 validateClass:@"SUUIStyledButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

- (BOOL)_accessibilityIsACategoryButton
{
  v2 = [(SUUIStyledButtonAccessibility *)self safeValueForKey:@"imageView"];
  v3 = [v2 accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AppStoreBrowseCategoryDownChevron"];

  return v4;
}

- (BOOL)_axButtonType:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIStyledButtonAccessibility *)self superview];
  NSClassFromString(&cfstr_Suuihorizontal_1.isa);
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SUUIStyledButtonAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Suuicardviewel_0.isa)];

    if (v6)
    {
      v7 = [v5 subviews];
      if ([v7 count] != 3)
      {
        goto LABEL_19;
      }

      v8 = [v7 objectAtIndexedSubscript:0];
      NSClassFromString(&cfstr_Suuitogglebutt.isa);
      if (objc_opt_isKindOfClass())
      {
        v9 = [v7 objectAtIndexedSubscript:1];
        NSClassFromString(&cfstr_Suuistyledbutt_0.isa);
        if (objc_opt_isKindOfClass())
        {
          v10 = [v7 objectAtIndexedSubscript:2];
          NSClassFromString(&cfstr_Suuistyledbutt_0.isa);
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v12 = [v7 objectAtIndexedSubscript:0];
            if ([v12 _accessibilityViewIsVisible])
            {
LABEL_10:

              goto LABEL_11;
            }

            v13 = [v7 objectAtIndexedSubscript:1];
            if ([v13 _accessibilityViewIsVisible])
            {

              goto LABEL_10;
            }

            v18 = [v7 objectAtIndexedSubscript:2];
            v19 = [v18 _accessibilityViewIsVisible];

            if (!v19)
            {
LABEL_11:
              v14 = [v7 objectAtIndexedSubscript:1];

              if (v14 == self && !v3 || ([v7 objectAtIndexedSubscript:2], v15 = objc_claimAutoreleasedReturnValue(), v15, v16 = 0, v15 == self) && v3)
              {
                v16 = 1;
              }

              goto LABEL_20;
            }

            v8 = [v7 objectAtIndexedSubscript:2];
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
  v3 = [(SUUIStyledButtonAccessibility *)self superview];
  NSClassFromString(&cfstr_Suuihorizontal_1.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(SUUIStyledButtonAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Suuicardviewel_0.isa)], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 subviews];
    if ([v5 count] == 1 && (objc_msgSend(v5, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), NSClassFromString(&cfstr_Suuistyledbutt_0.isa), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
    {
      v8 = [v5 objectAtIndexedSubscript:0];
      v9 = [v8 subviews];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v9;
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
            NSClassFromString(&cfstr_Suuiattributed.isa);
            if (objc_opt_isKindOfClass())
            {
              v16 = [v15 accessibilityLabel];
              v17 = [v16 length];

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
  v3 = [(SUUIStyledButtonAccessibility *)self safeValueForKey:@"_itemOfferButton"];
  if (![v3 _accessibilityViewIsVisible])
  {
    if ([(SUUIStyledButtonAccessibility *)self _accessibilityIsACategoryButton])
    {
      v5 = @"category.button";
    }

    else
    {
      v6 = [(SUUIStyledButtonAccessibility *)self accessibilityIdentifier];
      if ([v6 isEqualToString:@"AXCloseButton"])
      {
      }

      else
      {
        v7 = [(SUUIStyledButtonAccessibility *)self _axIsCloseButton];

        if (!v7)
        {
          if ([(SUUIStyledButtonAccessibility *)self _axIsShareButtonInConnect])
          {
            v5 = @"share.button";
          }

          else
          {
            if (![(SUUIStyledButtonAccessibility *)self _axIsPostButtonInConnect])
            {
              v10 = [(SUUIStyledButtonAccessibility *)self safeValueForKey:@"_attributedStringView"];
              v11 = [v10 accessibilityLabel];

              if ([v11 length])
              {
                v12 = v11;
              }

              else
              {
                v13.receiver = self;
                v13.super_class = SUUIStyledButtonAccessibility;
                v12 = [(SUUIStyledButtonAccessibility *)&v13 accessibilityLabel];
              }

              v8 = v12;

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
    v4 = accessibilityLocalizedString(v5);
    goto LABEL_10;
  }

  v4 = [v3 accessibilityLabel];
LABEL_10:
  v8 = v4;
LABEL_11:

  return v8;
}

- (id)accessibilityValue
{
  if ([(SUUIStyledButtonAccessibility *)self _accessibilityIsACategoryButton]|| [(SUUIStyledButtonAccessibility *)self _axIsShareButtonInConnect]|| [(SUUIStyledButtonAccessibility *)self _axIsPostButtonInConnect])
  {
    v3 = [(SUUIStyledButtonAccessibility *)self safeValueForKey:@"_attributedStringView"];
    v4 = [v3 accessibilityLabel];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityHint
{
  if ([(SUUIStyledButtonAccessibility *)self _accessibilityIsACategoryButton])
  {
    v2 = accessibilityLocalizedString(@"category.hint");
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
  v8.super_class = SUUIStyledButtonAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(SUUIStyledButtonAccessibility *)&v8 accessibilityTraits];
  v4 = [(SUUIStyledButtonAccessibility *)self superview];
  NSClassFromString(&cfstr_Suuisectionhea_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = *MEMORY[0x29EDC7F80];
  if ((isKindOfClass & 1) == 0)
  {
    v6 = 0;
  }

  return v3 | v6;
}

@end
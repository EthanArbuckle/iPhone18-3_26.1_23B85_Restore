@interface UINavigationBarAccessibility_UIViewAccessibilityAdditions
- (BOOL)__accessibilitySupportsActivateAction;
- (BOOL)_accessibilityIsNavigationView;
- (BOOL)_accessibilityIsTitleElement;
- (BOOL)_accessibilityServesAsFirstElement;
- (BOOL)_accessibilityUIViewCanPerformEscapeAction;
- (BOOL)_accessibilityUserTestingIsRightNavButton;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityAXAttributedLabel;
- (id)accessibilityLanguage;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetNavigationViewInfo:(id)a3;
@end

@implementation UINavigationBarAccessibility_UIViewAccessibilityAdditions

- (void)_accessibilitySetNavigationViewInfo:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityIsNavigationView
{
  if (a1)
  {
    v1 = [a1 _accessibilityNavigationViewInfo];
    v3 = v1 != 0;
    MEMORY[0x29EDC9740](v1);
  }

  else
  {
    return 0;
  }

  return v3;
}

- (id)_accessibilityAXAttributedLabel
{
  v28 = self;
  v27[1] = a2;
  if (![(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    goto LABEL_31;
  }

  v27[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v28 _accessibilityNavigationViewInfo];
  v25 = 0;
  v23 = 0;
  v21 = 0;
  v19 = 0;
  v14 = 0;
  if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v28 _accessibilityIsTitleElement])
  {
    v26 = [(_UIAccessibilityNavigationViewInfo *)v27[0] navigationItem];
    v25 = 1;
    v24 = [v26 _accessibilityAXAttributedLabel];
    v23 = 1;
    v14 = 0;
    if (v24)
    {
      v22 = [(_UIAccessibilityNavigationViewInfo *)v27[0] navigationItem];
      v21 = 1;
      v20 = [v22 titleView];
      v19 = 1;
      v14 = v20 == 0;
    }
  }

  if (v19)
  {
    MEMORY[0x29EDC9740](v20);
  }

  if (v21)
  {
    MEMORY[0x29EDC9740](v22);
  }

  if (v23)
  {
    MEMORY[0x29EDC9740](v24);
  }

  if (v25)
  {
    MEMORY[0x29EDC9740](v26);
  }

  if (v14)
  {
    v13 = [(_UIAccessibilityNavigationViewInfo *)v27[0] navigationItem];
    v29 = [v13 _accessibilityAXAttributedLabel];
    MEMORY[0x29EDC9740](v13);
    v18 = 1;
  }

  else
  {
    v17 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v28 _accessibilityPotentiallyAttributedValueForNonAttributedSelector:sel_accessibilityLabel attributedSelector:sel_accessibilityAttributedLabel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithCFAttributedString:v17];
      v18 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = MEMORY[0x29EDC9748](v17);
        v18 = 1;
      }

      else
      {
        v12 = [(_UIAccessibilityNavigationViewInfo *)v27[0] barButtonItem];
        *&v2 = MEMORY[0x29EDC9740](v12).n128_u64[0];
        if (v12)
        {
          v11 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v28 _accessibilityNavigationViewInfo];
          v10 = [(_UIAccessibilityNavigationViewInfo *)v11 barButtonItem];
          v29 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v28 _accessibilityComputedLabelForNavigationBarWithAssociatedBarButtonItem:?];
          MEMORY[0x29EDC9740](v10);
          MEMORY[0x29EDC9740](v11);
          v18 = 1;
        }

        else
        {
          v9 = [(_UIAccessibilityNavigationViewInfo *)v27[0] navigationItem];
          MEMORY[0x29EDC9740](v9);
          if (!v9 || ((location = -[_UIAccessibilityNavigationViewInfo navigationItem](v27[0]), v8 = [location _accessibilityAXAttributedLabel], *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0], !v8) ? ((v7 = objc_msgSend(location, "title", v3), *&v4 = MEMORY[0x29EDC9740](v7).n128_u64[0], !v7) ? (v18 = 0) : (v29 = objc_msgSend(location, "title", v4), v18 = 1)) : (v29 = objc_msgSend(location, "_accessibilityAXAttributedLabel", v3), v18 = 1), objc_storeStrong(&location, 0), !v18))
          {
            v18 = 0;
          }
        }
      }
    }

    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(v27, 0);
  if (!v18)
  {
LABEL_31:
    v15.receiver = v28;
    v15.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    v29 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v15 _accessibilityAXAttributedLabel];
  }

  v5 = v29;

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v20 = self;
  v19[1] = a2;
  if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    v19[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v20 _accessibilityNavigationViewInfo];
    v18 = 0;
    v13 = [(_UIAccessibilityNavigationViewInfo *)v19[0] barButtonItem];
    *&v2 = MEMORY[0x29EDC9740](v13).n128_u64[0];
    if (v13)
    {
      v18 |= *MEMORY[0x29EDC7F70];
    }

    else
    {
      v17 = [(_UIAccessibilityNavigationViewInfo *)v19[0] navigationItem];
      v11 = [v17 title];
      v12 = [v11 length];
      *&v3 = MEMORY[0x29EDC9740](v11).n128_u64[0];
      if (v12)
      {
        v18 |= *MEMORY[0x29EDC7FD0] | *MEMORY[0x29EDC7F80];
      }

      else
      {
        v10 = [v17 titleView];
        *&v4 = MEMORY[0x29EDC9740](v10).n128_u64[0];
        if (v10)
        {
          location = [v17 titleView];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 |= *MEMORY[0x29EDC7F70];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = *MEMORY[0x29EDC7F88];
              v8 = [location gestureRecognizers];
              v9 = 1;
              if (![v8 count])
              {
                v9 = [location isUserInteractionEnabled];
              }

              MEMORY[0x29EDC9740](v8);
              if (v9)
              {
                v18 |= *MEMORY[0x29EDC7F70];
              }
            }

            else
            {
              v7 = location;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 |= *MEMORY[0x29EDC7FD0] | *MEMORY[0x29EDC7F80];
              }
            }
          }

          objc_storeStrong(&location, 0);
        }
      }

      objc_storeStrong(&v17, 0);
    }

    v15.receiver = v20;
    v15.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    v5 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v15 accessibilityTraits:v2];
    v21 = v5 | v18;
    objc_storeStrong(v19, 0);
  }

  else
  {
    v14.receiver = v20;
    v14.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    return [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v14 accessibilityTraits];
  }

  return v21;
}

- (BOOL)isAccessibilityElement
{
  v19 = self;
  v18[1] = a2;
  if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    v18[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v19 _accessibilityNavigationViewInfo];
    v9 = [(_UIAccessibilityNavigationViewInfo *)v18[0] navigationItem];
    v17 = [v9 titleView];
    *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    if (v17)
    {
      location = [v17 safeArrayForKey:{@"gestureRecognizers", v2}];
      v15 = [location count];
      v7 = [v17 isAccessibilityUserDefinedElement];
      v14 = [v7 BOOLValue];
      v13 = [v17 safeBoolForKey:{@"userInteractionEnabled", MEMORY[0x29EDC9740](v7).n128_f64[0]}];
      objc_opt_class();
      v8 = 1;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (v8 = 1, (v14 & 1) == 0))
        {
          if (([v17 safeBoolForKey:@"isUserInteractionEnabled"] & 1) == 0 || (v8 = 1, (v14 & 1) == 0))
          {
            if (!v15 || (v8 = 1, (v14 & 1) == 0))
            {
              v6 = 0;
              if (v13)
              {
                v6 = v14;
              }

              v8 = v6;
            }
          }
        }
      }

      v12 = v8 & 1;
      v20 = v8 & 1;
      v11 = 1;
      objc_storeStrong(&location, 0);
    }

    else
    {
      v4 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v19 _accessibilityAXAttributedLabel];
      v5 = 0;
      if ([v4 length])
      {
        v5 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v19 _accessibilityViewIsVisible];
      }

      v20 = v5 & 1;
      MEMORY[0x29EDC9740](v4);
      v11 = 1;
    }

    objc_storeStrong(&v17, 0);
    objc_storeStrong(v18, 0);
  }

  else
  {
    v10.receiver = v19;
    v10.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    v20 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v10 isAccessibilityElement];
  }

  return v20 & 1;
}

- (BOOL)accessibilityActivate
{
  v9 = self;
  location[1] = a2;
  if (!-[UINavigationBarAccessibility_UIViewAccessibilityAdditions _accessibilityIsNavigationView](self) || ((location[0] = -[UINavigationBarAccessibility_UIViewAccessibilityAdditions _accessibilityNavigationViewInfo](v9, "_accessibilityNavigationViewInfo"), v5 = -[_UIAccessibilityNavigationViewInfo barButtonItem](location[0]), MEMORY[0x29EDC9740](v5), !v5) ? (v7 = 0) : (v4 = -[_UIAccessibilityNavigationViewInfo navigationBar](location[0]), v3 = -[_UIAccessibilityNavigationViewInfo barButtonItem](location[0]), [v4 _accessibility_triggerBarButtonItem:?], MEMORY[0x29EDC9740](v3), MEMORY[0x29EDC9740](v4), v10 = 1, v7 = 1), objc_storeStrong(location, 0), !v7))
  {
    v6.receiver = v9;
    v6.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    v10 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v6 accessibilityActivate];
  }

  return v10 & 1;
}

- (BOOL)__accessibilitySupportsActivateAction
{
  v8 = self;
  v7 = a2;
  v11 = &__accessibilitySupportsActivateAction_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_568);
  if (*v11 != -1)
  {
    dispatch_once(v11, location);
  }

  objc_storeStrong(&location, 0);
  v5.receiver = v8;
  v5.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
  v6 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v5 __accessibilitySupportsActivateAction];
  if (v6)
  {
    v4 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v8 _accessibilityGetBlockForAttribute:17];
    v2 = objc_opt_class();
    v9 = class_getInstanceMethod(v2, sel_accessibilityActivate) != __accessibilitySupportsActivateAction_categoryMethod || v4 || [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v8 _accessibilityIsNavigationView];
    objc_storeStrong(&v4, 0);
  }

  else
  {
    return 0;
  }

  return v9;
}

- (BOOL)_accessibilityUIViewCanPerformEscapeAction
{
  v5 = self;
  location[1] = a2;
  if (![(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView]|| ((location[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v5 _accessibilityNavigationViewInfo], ([(_UIAccessibilityNavigationViewInfo *)location[0] isCancelItem]& 1) == 0) ? (v3 = 0) : (v6 = 1, v3 = 1), objc_storeStrong(location, 0), !v3))
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)accessibilityPerformEscape
{
  v6 = self;
  location[1] = a2;
  if (![(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView]|| ((location[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v6 _accessibilityNavigationViewInfo], ([(_UIAccessibilityNavigationViewInfo *)location[0] isCancelItem]& 1) == 0) ? (v4 = 0) : (v7 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v6 accessibilityActivate], v4 = 1), objc_storeStrong(location, 0), !v4))
  {
    v3.receiver = v6;
    v3.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    v7 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v3 accessibilityPerformEscape];
  }

  return v7 & 1;
}

- (BOOL)_accessibilityIsTitleElement
{
  v10 = self;
  location[1] = a2;
  if (![(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    goto LABEL_10;
  }

  location[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v10 _accessibilityNavigationViewInfo];
  v3 = [(_UIAccessibilityNavigationViewInfo *)location[0] barButtonItem];
  v7 = 0;
  v4 = 0;
  if (!v3)
  {
    v8 = [(_UIAccessibilityNavigationViewInfo *)location[0] navigationItem];
    v7 = 1;
    v4 = v8 != 0;
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](v3);
  if (v4)
  {
    v11 = 1;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  if (!v6)
  {
LABEL_10:
    v5.receiver = v10;
    v5.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    v11 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v5 _accessibilityIsTitleElement];
  }

  return v11 & 1;
}

- (BOOL)_accessibilityServesAsFirstElement
{
  v8 = self;
  v7 = a2;
  if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    v5 = 0;
    v3 = 0;
    if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v8 _accessibilityIsTitleElement])
    {
      v6 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v8 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uipopoverview.isa)];
      v5 = 1;
      v3 = v6 != 0;
    }

    v9 = v3;
    if (v5)
    {
      MEMORY[0x29EDC9740](v6);
    }
  }

  else
  {
    v4.receiver = v8;
    v4.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    return [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v4 _accessibilityServesAsFirstElement];
  }

  return v9;
}

- (id)accessibilityLanguage
{
  v7 = self;
  v6[1] = a2;
  if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    v6[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v7 _accessibilityNavigationViewInfo];
    v5 = [(_UIAccessibilityNavigationViewInfo *)v6[0] navigationItem];
    v8 = [v5 accessibilityLanguage];
    objc_storeStrong(&v5, 0);
    objc_storeStrong(v6, 0);
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    v8 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v4 accessibilityLanguage];
  }

  v2 = v8;

  return v2;
}

- (BOOL)_accessibilityUserTestingIsRightNavButton
{
  v6 = self;
  v5 = a2;
  if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    v3 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v6 _accessibilityNavigationViewInfo];
    v7 = [(_UIAccessibilityNavigationViewInfo *)v3 isRightItem]& 1;
    MEMORY[0x29EDC9740](v3);
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    return [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v4 _accessibilityUserTestingIsRightNavButton];
  }

  return v7;
}

@end
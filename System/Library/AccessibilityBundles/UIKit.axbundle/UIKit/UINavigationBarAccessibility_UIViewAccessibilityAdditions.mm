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
- (void)_accessibilitySetNavigationViewInfo:(id)info;
@end

@implementation UINavigationBarAccessibility_UIViewAccessibilityAdditions

- (void)_accessibilitySetNavigationViewInfo:(id)info
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityIsNavigationView
{
  if (self)
  {
    _accessibilityNavigationViewInfo = [self _accessibilityNavigationViewInfo];
    v3 = _accessibilityNavigationViewInfo != 0;
    MEMORY[0x29EDC9740](_accessibilityNavigationViewInfo);
  }

  else
  {
    return 0;
  }

  return v3;
}

- (id)_accessibilityAXAttributedLabel
{
  selfCopy = self;
  v27[1] = a2;
  if (![(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    goto LABEL_31;
  }

  v27[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityNavigationViewInfo];
  v25 = 0;
  v23 = 0;
  v21 = 0;
  v19 = 0;
  v14 = 0;
  if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityIsTitleElement])
  {
    navigationItem = [(_UIAccessibilityNavigationViewInfo *)v27[0] navigationItem];
    v25 = 1;
    _accessibilityAXAttributedLabel = [navigationItem _accessibilityAXAttributedLabel];
    v23 = 1;
    v14 = 0;
    if (_accessibilityAXAttributedLabel)
    {
      navigationItem2 = [(_UIAccessibilityNavigationViewInfo *)v27[0] navigationItem];
      v21 = 1;
      titleView = [navigationItem2 titleView];
      v19 = 1;
      v14 = titleView == 0;
    }
  }

  if (v19)
  {
    MEMORY[0x29EDC9740](titleView);
  }

  if (v21)
  {
    MEMORY[0x29EDC9740](navigationItem2);
  }

  if (v23)
  {
    MEMORY[0x29EDC9740](_accessibilityAXAttributedLabel);
  }

  if (v25)
  {
    MEMORY[0x29EDC9740](navigationItem);
  }

  if (v14)
  {
    navigationItem3 = [(_UIAccessibilityNavigationViewInfo *)v27[0] navigationItem];
    _accessibilityAXAttributedLabel2 = [navigationItem3 _accessibilityAXAttributedLabel];
    MEMORY[0x29EDC9740](navigationItem3);
    v18 = 1;
  }

  else
  {
    v17 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityPotentiallyAttributedValueForNonAttributedSelector:sel_accessibilityLabel attributedSelector:sel_accessibilityAttributedLabel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _accessibilityAXAttributedLabel2 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithCFAttributedString:v17];
      v18 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _accessibilityAXAttributedLabel2 = MEMORY[0x29EDC9748](v17);
        v18 = 1;
      }

      else
      {
        barButtonItem = [(_UIAccessibilityNavigationViewInfo *)v27[0] barButtonItem];
        *&v2 = MEMORY[0x29EDC9740](barButtonItem).n128_u64[0];
        if (barButtonItem)
        {
          _accessibilityNavigationViewInfo = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityNavigationViewInfo];
          barButtonItem2 = [(_UIAccessibilityNavigationViewInfo *)_accessibilityNavigationViewInfo barButtonItem];
          _accessibilityAXAttributedLabel2 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityComputedLabelForNavigationBarWithAssociatedBarButtonItem:?];
          MEMORY[0x29EDC9740](barButtonItem2);
          MEMORY[0x29EDC9740](_accessibilityNavigationViewInfo);
          v18 = 1;
        }

        else
        {
          navigationItem4 = [(_UIAccessibilityNavigationViewInfo *)v27[0] navigationItem];
          MEMORY[0x29EDC9740](navigationItem4);
          if (!navigationItem4 || ((location = -[_UIAccessibilityNavigationViewInfo navigationItem](v27[0]), v8 = [location _accessibilityAXAttributedLabel], *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0], !v8) ? ((v7 = objc_msgSend(location, "title", v3), *&v4 = MEMORY[0x29EDC9740](v7).n128_u64[0], !v7) ? (v18 = 0) : (_accessibilityAXAttributedLabel2 = objc_msgSend(location, "title", v4), v18 = 1)) : (_accessibilityAXAttributedLabel2 = objc_msgSend(location, "_accessibilityAXAttributedLabel", v3), v18 = 1), objc_storeStrong(&location, 0), !v18))
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
    v15.receiver = selfCopy;
    v15.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    _accessibilityAXAttributedLabel2 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v15 _accessibilityAXAttributedLabel];
  }

  v5 = _accessibilityAXAttributedLabel2;

  return v5;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v19[1] = a2;
  if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    v19[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityNavigationViewInfo];
    v18 = 0;
    barButtonItem = [(_UIAccessibilityNavigationViewInfo *)v19[0] barButtonItem];
    *&v2 = MEMORY[0x29EDC9740](barButtonItem).n128_u64[0];
    if (barButtonItem)
    {
      v18 |= *MEMORY[0x29EDC7F70];
    }

    else
    {
      navigationItem = [(_UIAccessibilityNavigationViewInfo *)v19[0] navigationItem];
      title = [navigationItem title];
      v12 = [title length];
      *&v3 = MEMORY[0x29EDC9740](title).n128_u64[0];
      if (v12)
      {
        v18 |= *MEMORY[0x29EDC7FD0] | *MEMORY[0x29EDC7F80];
      }

      else
      {
        titleView = [navigationItem titleView];
        *&v4 = MEMORY[0x29EDC9740](titleView).n128_u64[0];
        if (titleView)
        {
          location = [navigationItem titleView];
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
              gestureRecognizers = [location gestureRecognizers];
              isUserInteractionEnabled = 1;
              if (![gestureRecognizers count])
              {
                isUserInteractionEnabled = [location isUserInteractionEnabled];
              }

              MEMORY[0x29EDC9740](gestureRecognizers);
              if (isUserInteractionEnabled)
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

      objc_storeStrong(&navigationItem, 0);
    }

    v15.receiver = selfCopy;
    v15.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    v5 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v15 accessibilityTraits:v2];
    v21 = v5 | v18;
    objc_storeStrong(v19, 0);
  }

  else
  {
    v14.receiver = selfCopy;
    v14.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    return [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v14 accessibilityTraits];
  }

  return v21;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v18[1] = a2;
  if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    v18[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityNavigationViewInfo];
    navigationItem = [(_UIAccessibilityNavigationViewInfo *)v18[0] navigationItem];
    titleView = [navigationItem titleView];
    *&v2 = MEMORY[0x29EDC9740](navigationItem).n128_u64[0];
    if (titleView)
    {
      location = [titleView safeArrayForKey:{@"gestureRecognizers", v2}];
      v15 = [location count];
      isAccessibilityUserDefinedElement = [titleView isAccessibilityUserDefinedElement];
      bOOLValue = [isAccessibilityUserDefinedElement BOOLValue];
      v13 = [titleView safeBoolForKey:{@"userInteractionEnabled", MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_f64[0]}];
      objc_opt_class();
      v8 = 1;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (v8 = 1, (bOOLValue & 1) == 0))
        {
          if (([titleView safeBoolForKey:@"isUserInteractionEnabled"] & 1) == 0 || (v8 = 1, (bOOLValue & 1) == 0))
          {
            if (!v15 || (v8 = 1, (bOOLValue & 1) == 0))
            {
              v6 = 0;
              if (v13)
              {
                v6 = bOOLValue;
              }

              v8 = v6;
            }
          }
        }
      }

      v12 = v8 & 1;
      isAccessibilityElement = v8 & 1;
      v11 = 1;
      objc_storeStrong(&location, 0);
    }

    else
    {
      _accessibilityAXAttributedLabel = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityAXAttributedLabel];
      _accessibilityViewIsVisible = 0;
      if ([_accessibilityAXAttributedLabel length])
      {
        _accessibilityViewIsVisible = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityViewIsVisible];
      }

      isAccessibilityElement = _accessibilityViewIsVisible & 1;
      MEMORY[0x29EDC9740](_accessibilityAXAttributedLabel);
      v11 = 1;
    }

    objc_storeStrong(&titleView, 0);
    objc_storeStrong(v18, 0);
  }

  else
  {
    v10.receiver = selfCopy;
    v10.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    isAccessibilityElement = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v10 isAccessibilityElement];
  }

  return isAccessibilityElement & 1;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  location[1] = a2;
  if (!-[UINavigationBarAccessibility_UIViewAccessibilityAdditions _accessibilityIsNavigationView](self) || ((location[0] = -[UINavigationBarAccessibility_UIViewAccessibilityAdditions _accessibilityNavigationViewInfo](selfCopy, "_accessibilityNavigationViewInfo"), v5 = -[_UIAccessibilityNavigationViewInfo barButtonItem](location[0]), MEMORY[0x29EDC9740](v5), !v5) ? (v7 = 0) : (v4 = -[_UIAccessibilityNavigationViewInfo navigationBar](location[0]), v3 = -[_UIAccessibilityNavigationViewInfo barButtonItem](location[0]), [v4 _accessibility_triggerBarButtonItem:?], MEMORY[0x29EDC9740](v3), MEMORY[0x29EDC9740](v4), accessibilityActivate = 1, v7 = 1), objc_storeStrong(location, 0), !v7))
  {
    v6.receiver = selfCopy;
    v6.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    accessibilityActivate = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v6 accessibilityActivate];
  }

  return accessibilityActivate & 1;
}

- (BOOL)__accessibilitySupportsActivateAction
{
  selfCopy = self;
  v7 = a2;
  v11 = &__accessibilitySupportsActivateAction_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_568);
  if (*v11 != -1)
  {
    dispatch_once(v11, location);
  }

  objc_storeStrong(&location, 0);
  v5.receiver = selfCopy;
  v5.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
  __accessibilitySupportsActivateAction = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v5 __accessibilitySupportsActivateAction];
  if (__accessibilitySupportsActivateAction)
  {
    v4 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityGetBlockForAttribute:17];
    v2 = objc_opt_class();
    v9 = class_getInstanceMethod(v2, sel_accessibilityActivate) != __accessibilitySupportsActivateAction_categoryMethod || v4 || [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityIsNavigationView];
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
  selfCopy = self;
  location[1] = a2;
  if (![(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView]|| ((location[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityNavigationViewInfo], ([(_UIAccessibilityNavigationViewInfo *)location[0] isCancelItem]& 1) == 0) ? (v3 = 0) : (v6 = 1, v3 = 1), objc_storeStrong(location, 0), !v3))
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  location[1] = a2;
  if (![(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView]|| ((location[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityNavigationViewInfo], ([(_UIAccessibilityNavigationViewInfo *)location[0] isCancelItem]& 1) == 0) ? (v4 = 0) : (accessibilityPerformEscape = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy accessibilityActivate], v4 = 1), objc_storeStrong(location, 0), !v4))
  {
    v3.receiver = selfCopy;
    v3.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    accessibilityPerformEscape = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v3 accessibilityPerformEscape];
  }

  return accessibilityPerformEscape & 1;
}

- (BOOL)_accessibilityIsTitleElement
{
  selfCopy = self;
  location[1] = a2;
  if (![(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    goto LABEL_10;
  }

  location[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityNavigationViewInfo];
  barButtonItem = [(_UIAccessibilityNavigationViewInfo *)location[0] barButtonItem];
  v7 = 0;
  v4 = 0;
  if (!barButtonItem)
  {
    navigationItem = [(_UIAccessibilityNavigationViewInfo *)location[0] navigationItem];
    v7 = 1;
    v4 = navigationItem != 0;
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](navigationItem);
  }

  MEMORY[0x29EDC9740](barButtonItem);
  if (v4)
  {
    _accessibilityIsTitleElement = 1;
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
    v5.receiver = selfCopy;
    v5.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    _accessibilityIsTitleElement = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v5 _accessibilityIsTitleElement];
  }

  return _accessibilityIsTitleElement & 1;
}

- (BOOL)_accessibilityServesAsFirstElement
{
  selfCopy = self;
  v7 = a2;
  if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    v5 = 0;
    v3 = 0;
    if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityIsTitleElement])
    {
      v6 = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uipopoverview.isa)];
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
    v4.receiver = selfCopy;
    v4.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    return [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v4 _accessibilityServesAsFirstElement];
  }

  return v9;
}

- (id)accessibilityLanguage
{
  selfCopy = self;
  v6[1] = a2;
  if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    v6[0] = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityNavigationViewInfo];
    navigationItem = [(_UIAccessibilityNavigationViewInfo *)v6[0] navigationItem];
    accessibilityLanguage = [navigationItem accessibilityLanguage];
    objc_storeStrong(&navigationItem, 0);
    objc_storeStrong(v6, 0);
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    accessibilityLanguage = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v4 accessibilityLanguage];
  }

  v2 = accessibilityLanguage;

  return v2;
}

- (BOOL)_accessibilityUserTestingIsRightNavButton
{
  selfCopy = self;
  v5 = a2;
  if ([(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)self _accessibilityIsNavigationView])
  {
    _accessibilityNavigationViewInfo = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)selfCopy _accessibilityNavigationViewInfo];
    v7 = [(_UIAccessibilityNavigationViewInfo *)_accessibilityNavigationViewInfo isRightItem]& 1;
    MEMORY[0x29EDC9740](_accessibilityNavigationViewInfo);
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UINavigationBarAccessibility_UIViewAccessibilityAdditions;
    return [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)&v4 _accessibilityUserTestingIsRightNavButton];
  }

  return v7;
}

@end
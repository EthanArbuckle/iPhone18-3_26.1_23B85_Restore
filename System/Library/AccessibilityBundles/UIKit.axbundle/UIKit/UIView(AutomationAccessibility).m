@interface UIView(AutomationAccessibility)
- (uint64_t)_accessibilityUserTestingIsBackNavButton;
- (uint64_t)_accessibilityUserTestingIsCancelButton;
- (uint64_t)_accessibilityUserTestingIsDefaultButton;
- (uint64_t)_accessibilityUserTestingIsDestructiveButton;
- (uint64_t)_accessibilityUserTestingIsPreferredButton;
@end

@implementation UIView(AutomationAccessibility)

- (uint64_t)_accessibilityUserTestingIsDefaultButton
{
  v3 = [a1 _accessibilityValueForKey:@"AXIsDefaultButton"];
  *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  if (v3)
  {
    v5 = [a1 _accessibilityBoolValueForKey:{@"AXIsDefaultButton", v1}] & 1;
  }

  else
  {
    v5 = [(UIView *)a1 _accessibilityUserTestingIsTypeOfButton:?];
  }

  return v5 & 1;
}

- (uint64_t)_accessibilityUserTestingIsCancelButton
{
  v3 = [a1 _accessibilityValueForKey:@"AXIsCancelButton"];
  *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  if (v3)
  {
    v5 = [a1 _accessibilityBoolValueForKey:{@"AXIsCancelButton", v1}] & 1;
  }

  else
  {
    v5 = [(UIView *)a1 _accessibilityUserTestingIsTypeOfButton:?];
  }

  return v5 & 1;
}

- (uint64_t)_accessibilityUserTestingIsDestructiveButton
{
  v7 = a1;
  v6 = a2;
  v4 = [a1 _accessibilityValueForKey:@"AXIsDestructiveButton"];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v4)
  {
    v8 = [v7 _accessibilityBoolValueForKey:{@"AXIsDestructiveButton", v2}] & 1;
  }

  else
  {
    v5.receiver = v7;
    v5.super_class = &off_2A23AD218;
    v8 = objc_msgSendSuper2(&v5, sel__accessibilityUserTestingIsDestructiveButton, v2) & 1;
  }

  return v8 & 1;
}

- (uint64_t)_accessibilityUserTestingIsPreferredButton
{
  v7 = a1;
  v6 = a2;
  v4 = [a1 _accessibilityValueForKey:@"AXIsPreferredButton"];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v4)
  {
    v8 = [v7 _accessibilityBoolValueForKey:{@"AXIsPreferredButton", v2}] & 1;
  }

  else
  {
    v5.receiver = v7;
    v5.super_class = &off_2A23AD218;
    v8 = objc_msgSendSuper2(&v5, sel__accessibilityUserTestingIsPreferredButton, v2) & 1;
  }

  return v8 & 1;
}

- (uint64_t)_accessibilityUserTestingIsBackNavButton
{
  v23 = a1;
  v22 = a2;
  if ([a1 isAccessibilityElement] & 1) != 0 && (objc_msgSend(v23, "_accessibilityViewIsVisible"))
  {
    if ([v23 _accessibilityIsFrameOutOfBounds])
    {
      v24 = 0;
    }

    else
    {
      NSClassFromString(&cfstr_Uinavigationit_0.isa);
      if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Uinavigationit_2.isa), (objc_opt_isKindOfClass()))
      {
        v10 = [v23 safeValueForKey:@"_item"];
        v2 = [v10 safeValueForKey:@"_backButtonView"];
        v24 = v23 == v2;
        MEMORY[0x29EDC9740](v2);
        MEMORY[0x29EDC9740](v10);
      }

      else
      {
        NSClassFromString(&cfstr_Uinavigationbu.isa);
        v20 = 0;
        isKindOfClass = 0;
        if (objc_opt_isKindOfClass())
        {
          v21 = [v23 superview];
          v20 = 1;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }

        if (v20)
        {
          MEMORY[0x29EDC9740](v21);
        }

        if (isKindOfClass)
        {
          v8 = [v23 superview];
          v19 = [v8 safeValueForKey:@"_visualProvider"];
          MEMORY[0x29EDC9740](v8);
          v18 = 0;
          NSClassFromString(&cfstr_Uinavigationba_0.isa);
          if (objc_opt_isKindOfClass())
          {
            v3 = [v19 safeValueForKey:@"_leftViews"];
            v4 = v18;
            v18 = v3;
            MEMORY[0x29EDC9740](v4);
          }

          if (v18)
          {
            location = [v23 _accessibilityAncestorIsKindOf:objc_opt_class()];
            v14 = 0;
            v12 = 0;
            v7 = 0;
            if ([v18 indexOfObjectIdenticalTo:v23] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v15 = [location currentBackButton];
              v14 = 1;
              v6 = 1;
              if (v15 != v23)
              {
                v13 = [location topItem];
                v12 = 1;
                v6 = [v13 leftItemsSupplementBackButton];
              }

              v7 = v6;
            }

            v24 = v7 & 1;
            if (v12)
            {
              MEMORY[0x29EDC9740](v13);
            }

            if (v14)
            {
              MEMORY[0x29EDC9740](v15);
            }

            v17 = 1;
            objc_storeStrong(&location, 0);
          }

          else
          {
            v24 = 0;
            v17 = 1;
          }

          objc_storeStrong(&v18, 0);
          objc_storeStrong(&v19, 0);
        }

        else
        {
          v11.receiver = v23;
          v11.super_class = &off_2A23AD218;
          v24 = objc_msgSendSuper2(&v11, sel__accessibilityUserTestingIsBackNavButton) & 1;
        }
      }
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

@end
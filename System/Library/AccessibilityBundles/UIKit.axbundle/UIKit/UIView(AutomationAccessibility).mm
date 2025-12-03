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
  v3 = [self _accessibilityValueForKey:@"AXIsDefaultButton"];
  *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  if (v3)
  {
    v5 = [self _accessibilityBoolValueForKey:{@"AXIsDefaultButton", v1}] & 1;
  }

  else
  {
    v5 = [(UIView *)self _accessibilityUserTestingIsTypeOfButton:?];
  }

  return v5 & 1;
}

- (uint64_t)_accessibilityUserTestingIsCancelButton
{
  v3 = [self _accessibilityValueForKey:@"AXIsCancelButton"];
  *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  if (v3)
  {
    v5 = [self _accessibilityBoolValueForKey:{@"AXIsCancelButton", v1}] & 1;
  }

  else
  {
    v5 = [(UIView *)self _accessibilityUserTestingIsTypeOfButton:?];
  }

  return v5 & 1;
}

- (uint64_t)_accessibilityUserTestingIsDestructiveButton
{
  selfCopy = self;
  v6 = a2;
  v4 = [self _accessibilityValueForKey:@"AXIsDestructiveButton"];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v4)
  {
    v8 = [selfCopy _accessibilityBoolValueForKey:{@"AXIsDestructiveButton", v2}] & 1;
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = &off_2A23AD218;
    v8 = objc_msgSendSuper2(&v5, sel__accessibilityUserTestingIsDestructiveButton, v2) & 1;
  }

  return v8 & 1;
}

- (uint64_t)_accessibilityUserTestingIsPreferredButton
{
  selfCopy = self;
  v6 = a2;
  v4 = [self _accessibilityValueForKey:@"AXIsPreferredButton"];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v4)
  {
    v8 = [selfCopy _accessibilityBoolValueForKey:{@"AXIsPreferredButton", v2}] & 1;
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = &off_2A23AD218;
    v8 = objc_msgSendSuper2(&v5, sel__accessibilityUserTestingIsPreferredButton, v2) & 1;
  }

  return v8 & 1;
}

- (uint64_t)_accessibilityUserTestingIsBackNavButton
{
  selfCopy = self;
  v22 = a2;
  if ([self isAccessibilityElement] & 1) != 0 && (objc_msgSend(selfCopy, "_accessibilityViewIsVisible"))
  {
    if ([selfCopy _accessibilityIsFrameOutOfBounds])
    {
      v24 = 0;
    }

    else
    {
      NSClassFromString(&cfstr_Uinavigationit_0.isa);
      if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Uinavigationit_2.isa), (objc_opt_isKindOfClass()))
      {
        v10 = [selfCopy safeValueForKey:@"_item"];
        v2 = [v10 safeValueForKey:@"_backButtonView"];
        v24 = selfCopy == v2;
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
          superview = [selfCopy superview];
          v20 = 1;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }

        if (v20)
        {
          MEMORY[0x29EDC9740](superview);
        }

        if (isKindOfClass)
        {
          superview2 = [selfCopy superview];
          v19 = [superview2 safeValueForKey:@"_visualProvider"];
          MEMORY[0x29EDC9740](superview2);
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
            location = [selfCopy _accessibilityAncestorIsKindOf:objc_opt_class()];
            v14 = 0;
            v12 = 0;
            v7 = 0;
            if ([v18 indexOfObjectIdenticalTo:selfCopy] != 0x7FFFFFFFFFFFFFFFLL)
            {
              currentBackButton = [location currentBackButton];
              v14 = 1;
              leftItemsSupplementBackButton = 1;
              if (currentBackButton != selfCopy)
              {
                topItem = [location topItem];
                v12 = 1;
                leftItemsSupplementBackButton = [topItem leftItemsSupplementBackButton];
              }

              v7 = leftItemsSupplementBackButton;
            }

            v24 = v7 & 1;
            if (v12)
            {
              MEMORY[0x29EDC9740](topItem);
            }

            if (v14)
            {
              MEMORY[0x29EDC9740](currentBackButton);
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
          v11.receiver = selfCopy;
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
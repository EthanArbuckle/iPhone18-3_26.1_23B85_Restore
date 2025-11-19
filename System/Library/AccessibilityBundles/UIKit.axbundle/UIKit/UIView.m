@interface UIView
- (BOOL)_accessibilityUserTestingIsTypeOfButton:(void *)a1;
- (id)_accessibilitySecureTextForString:(uint64_t)a1;
- (uint64_t)_accessibilityTextAreaTraits;
@end

@implementation UIView

- (uint64_t)_accessibilityTextAreaTraits
{
  v6 = a1;
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  location = [v6 safeValueForKey:@"textInputTraits"];
  if (([location safeBoolForKey:@"isSecureTextEntry"] & 1) != 0 && (objc_msgSend(location, "safeBoolForKey:", @"displaySecureTextUsingPlainText") & 1) == 0)
  {
    v5 |= *MEMORY[0x29EDC7568];
  }

  v2 = [v6 safeValueForKey:@"isEnabled"];
  v3 = [v2 BOOLValue];
  MEMORY[0x29EDC9740](v2);
  if ((v3 & 1) == 0)
  {
    v5 |= *MEMORY[0x29EDC7FA8];
  }

  v7 = v5;
  objc_storeStrong(&location, 0);
  return v7;
}

- (id)_accessibilitySecureTextForString:(uint64_t)a1
{
  v10 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v10)
  {
    v7 = [objc_allocWithZone(MEMORY[0x29EDBA050]) init];
    v6 = [location length];
    for (i = 0; i < v6; ++i)
    {
      [v7 appendString:@"•"];
    }

    v4 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v7];
    [v4 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD9B0]];
    v11 = MEMORY[0x29EDC9748](v4);
    v8 = 1;
    objc_storeStrong(&v4, 0);
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v11 = 0;
    v8 = 1;
  }

  objc_storeStrong(&location, 0);
  v2 = v11;

  return v2;
}

- (BOOL)_accessibilityUserTestingIsTypeOfButton:(void *)a1
{
  v23 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v23)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 838860800;
    v17 = 48;
    v18 = __Block_byref_object_copy__29;
    v19 = __Block_byref_object_dispose__29;
    v20 = 0;
    v7 = MEMORY[0x29EDCA5F8];
    v8 = -1073741824;
    v9 = 0;
    v10 = __75__UIView_AutomationAccessibility___accessibilityUserTestingIsTypeOfButton___block_invoke;
    v11 = &unk_29F30D3D8;
    v12 = &v14;
    v13 = [v23 _accessibilityFindViewAncestor:? startWithSelf:?];
    if (v15[5])
    {
      v6 = [v15[5] indexOfObject:v23];
      v5 = -1;
      if ([location isEqualToString:@"default"])
      {
        v4 = [v13 safeValueForKey:@"_defaultButton"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = [v4 integerValue];
        }

        if (v5 == -1 && v6 == [v15[5] count] - 1)
        {
          v24 = 1;
          v21 = 1;
        }

        else
        {
          v21 = 0;
        }

        objc_storeStrong(&v4, 0);
        if (v21)
        {
          goto LABEL_19;
        }
      }

      else if ([location isEqualToString:@"cancel"])
      {
        v3 = [v13 safeValueForKey:@"_cancelButton"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = [v3 integerValue];
        }

        objc_storeStrong(&v3, 0);
      }

      v24 = v6 == v5;
      v21 = 1;
    }

    else
    {
      v24 = 0;
      v21 = 1;
    }

LABEL_19:
    objc_storeStrong(&v13, 0);
    _Block_object_dispose(&v14, 8);
    objc_storeStrong(&v20, 0);
    goto LABEL_20;
  }

  v24 = 0;
  v21 = 1;
LABEL_20:
  objc_storeStrong(&location, 0);
  return v24;
}

uint64_t __75__UIView_AutomationAccessibility___accessibilityUserTestingIsTypeOfButton___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [location[0] safeValueForKey:@"_buttons"];
    v4 = *(a1[4] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
    MEMORY[0x29EDC9740](v5);
    v10 = 1;
  }

  else
  {
    if ([location[0] accessibilityIsWindow])
    {
      *a3 = 1;
    }

    v10 = 0;
  }

  objc_storeStrong(location, 0);
  return v10 & 1;
}

@end
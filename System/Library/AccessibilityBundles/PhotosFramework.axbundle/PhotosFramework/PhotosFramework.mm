id accessibilityCameraUILocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityCameraUILocalizedString_axBundle;
  if (accessibilityCameraUILocalizedString_axBundle)
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = _AXSCopyPathForAccessibilityBundle();
  v5 = [v3 bundleWithPath:v4];
  v6 = accessibilityCameraUILocalizedString_axBundle;
  accessibilityCameraUILocalizedString_axBundle = v5;

  v2 = accessibilityCameraUILocalizedString_axBundle;
  if (accessibilityCameraUILocalizedString_axBundle)
  {
LABEL_3:
    v7 = [v2 localizedStringForKey:v1 value:&stru_2A227EB10 table:@"CameraUIStrings"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id accessibilityPLServicesLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityPLServicesLocalizedString_axBundle;
  if (accessibilityPLServicesLocalizedString_axBundle)
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = _AXSCopyPathForAccessibilityBundle();
  v5 = [v3 bundleWithPath:v4];
  v6 = accessibilityPLServicesLocalizedString_axBundle;
  accessibilityPLServicesLocalizedString_axBundle = v5;

  v2 = accessibilityPLServicesLocalizedString_axBundle;
  if (accessibilityPLServicesLocalizedString_axBundle)
  {
LABEL_3:
    v7 = [v2 localizedStringForKey:v1 value:&stru_2A227EB10 table:@"PhotoLibraryServicesStrings"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id AXCombineStringsWithoutDuplicates(void *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = a1;
  if ([v1 count])
  {
    v2 = [MEMORY[0x29EDB8DE8] array];
    v3 = [MEMORY[0x29EDB8E20] set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length] && (objc_msgSend(v3, "containsObject:", v9) & 1) == 0)
          {
            [v2 addObject:v9];
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    if ([v2 count])
    {
      if ([v2 count] == 1)
      {
        [v2 firstObject];
      }

      else
      {
        [v2 componentsJoinedByString:{@", "}];
      }
      v10 = ;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

void sub_29C114D44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}
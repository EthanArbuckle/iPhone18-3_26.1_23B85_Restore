id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A22A12D8 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_29C192F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  objc_destroyWeak((v48 + 32));
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak((v46 + 32));
  objc_destroyWeak((v47 + 32));
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a40);
  objc_destroyWeak(&a45);
  objc_destroyWeak((v49 - 200));
  objc_destroyWeak((v49 - 160));
  objc_destroyWeak((v49 - 120));
  objc_destroyWeak((v49 - 112));
  _Unwind_Resume(a1);
}

void sub_29C1932C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_29C19386C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_29C194D04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_29C19591C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C196D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_29C197160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AXWidgetFamilyType(void *a1)
{
  v1 = [a1 safeIntegerForKey:@"family"] - 10;
  if (v1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityLocalizedString(off_29F2EBFB0[v1]);
  }

  return v2;
}

id AXWidgetAndAppName(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 safeValueForKey:@"extensionIdentity"];
  v5 = [v4 safeStringForKey:@"containerBundleIdentifier"];
  v6 = AXAppNameForBundleId();

  if (a2)
  {
    v7 = @"editing.wrapper.inline.complication.label";
  }

  else
  {
    v7 = @"editing.wrapper.grouped.complication.label";
  }

  v8 = accessibilityLocalizedString(v7);
  v9 = [v3 safeStringForKey:@"displayName"];

  v12 = AXCFormattedString();
  v10 = __UIAXStringForVariables();

  return v10;
}

id AXWidgetDescription(void *a1)
{
  v1 = [a1 safeStringForKey:@"widgetDescription"];
  if ([v1 length])
  {
    v2 = MEMORY[0x29EDB8058];
    v3 = accessibilityLocalizedString(@"widget.description");
    v4 = [v2 customContentWithLabel:v3 value:v1];

    [v4 setImportance:1];
    v5 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v4}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t AXIsWidgetConfigurable(void *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = [a1 safeValueForKey:@"intent"];
  if (v1)
  {
    NSClassFromString(&cfstr_Inappintent.isa);
    if (objc_opt_isKindOfClass())
    {
      v2 = 1;
    }

    else
    {
      v3 = [v1 safeValueForKey:@"_codableDescription"];
      v4 = [v3 safeDictionaryForKey:@"attributes"];
      v5 = [v4 allValues];

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            if ([*(*(&v12 + 1) + 8 * i) safeBoolForKey:{@"isConfigurable", v12}])
            {
              v2 = 1;
              goto LABEL_15;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v2 = 0;
LABEL_15:
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id AXRemoveWidgetLabel(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString(@"editing.minus.close.box.button.label");
  v3 = AXWidgetAndAppName(v1, 0);

  v4 = AXCFormattedString();

  return v4;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59BA0](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}
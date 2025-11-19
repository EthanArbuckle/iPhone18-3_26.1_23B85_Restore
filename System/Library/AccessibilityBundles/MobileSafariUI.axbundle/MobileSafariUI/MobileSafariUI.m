void sub_29BFE8A08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.MobileSafariUI.axbundle"], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A2229B78 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_29BFEA2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BFEAF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BFEB3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_29BFECE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id accessibilityMobileSafariLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityMobileSafariLocalizedString_axBundle;
  if (!accessibilityMobileSafariLocalizedString_axBundle)
  {
    v3 = MEMORY[0x29EDB9F48];
    v4 = AXAccessibilityBundlesDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"MobileSafari.axbundle"];
    v6 = [v3 bundleWithPath:v5];
    v7 = accessibilityMobileSafariLocalizedString_axBundle;
    accessibilityMobileSafariLocalizedString_axBundle = v6;

    v2 = accessibilityMobileSafariLocalizedString_axBundle;
    if (!accessibilityMobileSafariLocalizedString_axBundle)
    {
      accessibilityMobileSafariLocalizedString_cold_1();
    }
  }

  v8 = [v2 localizedStringForKey:v1 value:&stru_2A2229B78 table:@"Accessibility"];

  return v8;
}

id accessibilitySafariServicesLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilitySafariServicesLocalizedString_axBundle;
  if (!accessibilitySafariServicesLocalizedString_axBundle)
  {
    v3 = MEMORY[0x29EDB9F48];
    v4 = AXAccessibilityBundlesDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"SafariServices.axbundle"];
    v6 = [v3 bundleWithPath:v5];
    v7 = accessibilitySafariServicesLocalizedString_axBundle;
    accessibilitySafariServicesLocalizedString_axBundle = v6;

    v2 = accessibilitySafariServicesLocalizedString_axBundle;
    if (!accessibilitySafariServicesLocalizedString_axBundle)
    {
      accessibilitySafariServicesLocalizedString_cold_1();
    }
  }

  v8 = [v2 localizedStringForKey:v1 value:&stru_2A2229B78 table:@"SafariServicesAccessibility"];

  return v8;
}

id accessibilitySafariScribbleLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilitySafariScribbleLocalizedString_axBundle;
  if (!accessibilitySafariScribbleLocalizedString_axBundle)
  {
    v3 = MEMORY[0x29EDB9F48];
    v4 = AXAccessibilityBundlesDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"MobileSafariFramework.axbundle"];
    v6 = [v3 bundleWithPath:v5];
    v7 = accessibilitySafariScribbleLocalizedString_axBundle;
    accessibilitySafariScribbleLocalizedString_axBundle = v6;

    v2 = accessibilitySafariScribbleLocalizedString_axBundle;
    if (!accessibilitySafariScribbleLocalizedString_axBundle)
    {
      accessibilitySafariScribbleLocalizedString_cold_1();
    }
  }

  v8 = [v2 localizedStringForKey:v1 value:&stru_2A2229B78 table:@"SafariScribbleAccessibility"];

  return v8;
}

id profileSymbolAccessibilityLabel(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"person.lanyardcard.fill"])
  {
    v2 = @"profile.icon.person.lanyardcard.fill";
    goto LABEL_25;
  }

  if ([v1 isEqualToString:@"emoji.face.grinning.inverse"])
  {
    v2 = @"profile.icon.emoji.face.grinning.inverse";
    goto LABEL_25;
  }

  if ([v1 isEqualToString:@"rocket.fill"])
  {
    v2 = @"profile.icon.rocket.fill";
    goto LABEL_25;
  }

  if ([v1 isEqualToString:@"book.closed.fill"])
  {
    v2 = @"profile.icon.book.closed.fill";
    goto LABEL_25;
  }

  if ([v1 isEqualToString:@"graduationcap.fill"])
  {
    v2 = @"profile.icon.graduationcap.fill";
    goto LABEL_25;
  }

  if ([v1 isEqualToString:@"figure.stand"])
  {
    v2 = @"profile.icon.figure.stand";
    goto LABEL_25;
  }

  if ([v1 isEqualToString:@"wrench.and.screwdriver.fill"])
  {
    v2 = @"profile.icon.wrench.and.screwdriver.fill";
    goto LABEL_25;
  }

  if ([v1 isEqualToString:@"paintpalette.fill"])
  {
    v2 = @"profile.icon.paintpalette.fill";
    goto LABEL_25;
  }

  if ([v1 isEqualToString:@"globe.americas.fill"])
  {
    v2 = @"profile.icon.globe.americas.fill";
    goto LABEL_25;
  }

  if ([v1 isEqualToString:@"airplane.departure"])
  {
    v2 = @"profile.icon.airplane.departure";
    goto LABEL_25;
  }

  if ([v1 isEqualToString:@"person.fill"])
  {
    v2 = @"profile.icon.person.fill";
    goto LABEL_25;
  }

  if ([v1 isEqualToString:@"ellipsis"])
  {
    v2 = @"profile.icon.ellipsis";
LABEL_25:
    v3 = accessibilityMobileSafariLocalizedString(v2);
    if (v3)
    {
      goto LABEL_27;
    }
  }

  v3 = accessibilityUIKitSymbolNamesLocalizedString();
LABEL_27:

  return v3;
}

void sub_29BFF126C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BFF1978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}
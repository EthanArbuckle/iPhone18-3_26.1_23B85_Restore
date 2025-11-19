void sub_29C218904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

  v8 = [v2 localizedStringForKey:v1 value:&stru_2A22C4700 table:@"Accessibility"];

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

  v8 = [v2 localizedStringForKey:v1 value:&stru_2A22C4700 table:@"SafariServicesAccessibility"];

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

  v8 = [v2 localizedStringForKey:v1 value:&stru_2A22C4700 table:@"SafariScribbleAccessibility"];

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

void sub_29C21A2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C21C29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C21C6D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_29C21DCF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2A1C59B50](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}
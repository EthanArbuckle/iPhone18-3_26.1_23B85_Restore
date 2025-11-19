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

  v8 = [v2 localizedStringForKey:v1 value:&stru_2A22281C8 table:@"Accessibility"];

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

  v8 = [v2 localizedStringForKey:v1 value:&stru_2A22281C8 table:@"SafariServicesAccessibility"];

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

  v8 = [v2 localizedStringForKey:v1 value:&stru_2A22281C8 table:@"SafariScribbleAccessibility"];

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

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.MobileSafariSettings.axbundle"], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A22281C8 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}
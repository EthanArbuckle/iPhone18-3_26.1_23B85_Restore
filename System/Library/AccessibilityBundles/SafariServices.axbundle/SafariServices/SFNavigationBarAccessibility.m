@interface SFNavigationBarAccessibility
@end

@implementation SFNavigationBarAccessibility

void __64___SFNavigationBarAccessibility__accessibilityAutoReaderAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v2 navigationBarReaderButtonWasTapped:*(a1 + 32)];
}

id __75___SFNavigationBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained safeValueForKey:@"delegate"];

  MEMORY[0x29C2EB320](@"BrowserController");
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeBoolForKey:@"isShowingReader"];
    v5 = [v3 safeValueForKey:@"_tabController"];
    v6 = [v5 safeValueForKey:@"activeTabDocument"];
    v7 = __UIAccessibilitySafeClass();

    v8 = [v7 safeValueForKey:@"prepareToUseReader"];
    v9 = @"readerContext";
    v10 = v7;
  }

  else
  {
    MEMORY[0x29C2EB320](@"_SFBrowserContentViewController");
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v4 = [v3 safeBoolForKey:@"_showingReader"];
    v10 = [v3 safeValueForKey:@"webViewController"];
    v7 = v10;
    v9 = @"readerController";
  }

  v11 = [v10 safeValueForKey:v9];
  v12 = [v11 safeBoolForKey:@"isReaderAvailable"];

  if (v4)
  {
    v13 = @"hide.reader.action";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    v13 = @"show.reader.action";
  }

  v14 = accessibilitySafariServicesLocalizedString(v13);
  if (v14)
  {
    v15 = v14;
    v16 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v14 target:*(a1 + 32) selector:sel__accessibilityAutoReaderAction_];
    v19[0] = v16;
    v17 = [MEMORY[0x29EDB8D80] arrayWithObjects:v19 count:1];

    goto LABEL_12;
  }

LABEL_11:
  v17 = 0;
LABEL_12:

  return v17;
}

id __50___SFNavigationBarAccessibility__axUpdateURLValue__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"_URLLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 safeUIViewForKey:@"_securityAnnotationLabel"];
  v7 = [v6 _accessibilityViewIsVisible];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 safeUIViewForKey:@"_securityAnnotationLabel"];
    v14 = [v9 accessibilityLabel];
    v10 = __UIAXStringForVariables();

    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v11 safeValueForKey:{@"item", v14, @"__AXStringForVariablesSentinel"}];
    LODWORD(v8) = [v12 safeBoolForKey:@"showsSecurityAnnotation"];

    if (v8)
    {
      v15 = accessibilitySafariServicesLocalizedString(@"sensitive.field.in.insecure.page");
      v4 = __UIAXStringForVariables();
    }

    else
    {
      v4 = v10;
    }
  }

  return v4;
}

@end
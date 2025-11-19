@interface MFComposeWebViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)set_leadingInputAssistantItemGroups:(id)a3;
- (void)set_trailingInputAssistantItemGroups:(id)a3;
@end

@implementation MFComposeWebViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFComposeWebView" hasInstanceMethod:@"_leadingInputAssistantItemGroups" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFComposeWebView" hasInstanceMethod:@"_trailingInputAssistantItemGroups" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFComposeWebView" hasInstanceMethod:@"set_leadingInputAssistantItemGroups:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MFComposeWebView" hasInstanceMethod:@"set_trailingInputAssistantItemGroups:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MFComposeWebView" hasInstanceMethod:@"_shouldShowMarkupButton" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v62 = *MEMORY[0x29EDCA608];
  v58.receiver = self;
  v58.super_class = MFComposeWebViewAccessibility;
  [(MFComposeWebViewAccessibility *)&v58 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(MFComposeWebViewAccessibility *)self safeValueForKey:@"_leadingInputAssistantItemGroups"];
  v4 = __UIAccessibilityCastAsClass();

  v57 = 0;
  objc_opt_class();
  v5 = [(MFComposeWebViewAccessibility *)self safeValueForKey:@"_trailingInputAssistantItemGroups"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v6, "count") + objc_msgSend(v4, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v53 + 1) + 8 * i) barButtonItems];
        [v7 axSafelyAddObjectsFromArray:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v10);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v49 + 1) + 8 * j) barButtonItems];
        [v7 axSafelyAddObjectsFromArray:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v16);
  }

  v38 = v14;
  v39 = v8;
  v43 = self;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v7;
  v20 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v46;
    v23 = *MEMORY[0x29EDBB340];
    v24 = *MEMORY[0x29EDBB348];
    v41 = *MEMORY[0x29EDBB350];
    v42 = *MEMORY[0x29EDBB358];
    v40 = *MEMORY[0x29EDBB338];
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v46 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v45 + 1) + 8 * k);
        v27 = [v26 image];
        v28 = [v27 imageAsset];
        v29 = [v28 safeValueForKey:@"assetName"];

        v30 = [v29 containsString:v23];
        v31 = @"format.toolbar.button";
        if (v30)
        {
          goto LABEL_29;
        }

        if ([v29 containsString:v24])
        {
          if ([(MFComposeWebViewAccessibility *)v43 safeBoolForKey:@"_shouldShowMarkupButton"])
          {
            v31 = @"markup.button";
          }

          else
          {
            v31 = @"drawing.button";
          }

LABEL_29:
          v36 = accessibilityLocalizedString(v31);
          [v26 setAccessibilityLabel:v36];

          goto LABEL_30;
        }

        v32 = [v29 containsString:v42];
        v31 = @"scan.document.button";
        if (v32)
        {
          goto LABEL_29;
        }

        v33 = [v29 containsString:@"compose-accessory-close"];
        v31 = @"close.toolbar.button";
        if (v33)
        {
          goto LABEL_29;
        }

        v34 = [v29 containsString:v41];
        v31 = @"insert.photo.label";
        if (v34)
        {
          goto LABEL_29;
        }

        v35 = [v29 containsString:v40];
        v31 = @"add.attachment.button";
        if (v35)
        {
          goto LABEL_29;
        }

LABEL_30:
      }

      v21 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v21);
  }

  v37 = *MEMORY[0x29EDCA608];
}

- (void)set_leadingInputAssistantItemGroups:(id)a3
{
  v4.receiver = self;
  v4.super_class = MFComposeWebViewAccessibility;
  [(MFComposeWebViewAccessibility *)&v4 set_leadingInputAssistantItemGroups:a3];
  [(MFComposeWebViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)set_trailingInputAssistantItemGroups:(id)a3
{
  v4.receiver = self;
  v4.super_class = MFComposeWebViewAccessibility;
  [(MFComposeWebViewAccessibility *)&v4 set_trailingInputAssistantItemGroups:a3];
  [(MFComposeWebViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
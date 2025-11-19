@interface OBPrivacySplashListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (OBPrivacySplashListViewAccessibility)initWithContentList:(id)a3 dataDetectorTypes:(unint64_t)a4 scrollView:(id)a5;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetupTextViewForSwitchControl:(id)a3;
@end

@implementation OBPrivacySplashListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OBPrivacySplashListView" hasInstanceVariable:@"_textViews" withType:"NSMutableArray"];
  [v3 validateClass:@"OBPrivacySplashListView" hasInstanceMethod:@"initWithContentList:dataDetectorTypes:scrollView:" withFullSignature:{"@", "Q", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v36 = *MEMORY[0x29EDCA608];
  v34.receiver = self;
  v34.super_class = OBPrivacySplashListViewAccessibility;
  [(OBPrivacySplashListViewAccessibility *)&v34 _accessibilityLoadAccessibilityInformation];
  v33 = 0;
  objc_opt_class();
  v27 = self;
  v3 = [(OBPrivacySplashListViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:0];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 delegate];
  NSClassFromString(&cfstr_Obprivacysplas_1.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ([v4 contentSize], v8 = v7, objc_msgSend(v4, "bounds"), v8 > v9) && _AXSAssistiveTouchScannerEnabled())
  {
    v10 = MEMORY[0x29C2E3D80]() ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v33 = 0;
  objc_opt_class();
  v11 = [(OBPrivacySplashListViewAccessibility *)v27 safeValueForKey:@"_textViews"];
  v12 = __UIAccessibilityCastAsClass();

  if (v12)
  {
    v25 = v12;
    v26 = v4;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = v13;
    v15 = *v30;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v33 = 0;
        objc_opt_class();
        v18 = __UIAccessibilityCastAsClass();
        if (v33 == 1)
        {
          abort();
        }

        v19 = v18;
        v20 = [v18 text];
        if ([v20 length])
        {
        }

        else
        {
          v21 = [v19 attributedText];
          v22 = [v21 string];
          v23 = [v22 length];

          if (!v23)
          {
            [v19 setIsAccessibilityElement:0];
            goto LABEL_21;
          }
        }

        [v19 _accessibilitySetTextViewShouldBreakUpParagraphs:{1, v25, v26}];
        if (v10)
        {
          [(OBPrivacySplashListViewAccessibility *)v27 _axSetupTextViewForSwitchControl:v19];
        }

LABEL_21:
      }

      v14 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (!v14)
      {
LABEL_23:

        v12 = v25;
        v4 = v26;
        break;
      }
    }
  }

  v24 = *MEMORY[0x29EDCA608];
}

uint64_t __82__OBPrivacySplashListViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (OBPrivacySplashListViewAccessibility)initWithContentList:(id)a3 dataDetectorTypes:(unint64_t)a4 scrollView:(id)a5
{
  v7.receiver = self;
  v7.super_class = OBPrivacySplashListViewAccessibility;
  v5 = [(OBPrivacySplashListViewAccessibility *)&v7 initWithContentList:a3 dataDetectorTypes:a4 scrollView:a5];
  [(OBPrivacySplashListViewAccessibility *)v5 _accessibilityLoadAccessibilityInformation];

  return v5;
}

- (void)_axSetupTextViewForSwitchControl:(id)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = [v3 accessibilityElements];
  if ([v4 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9++) setAccessibilityRespondsToUserInteraction:{1, v11}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [v3 setIsAccessibilityElement:1];
    [v3 setAccessibilityRespondsToUserInteraction:1];
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end
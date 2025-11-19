@interface SafariUIApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityAlternateActionForURL:(id)a3;
- (BOOL)_accessibilityLoadURL:(id)a3;
- (BOOL)_accessibilityWebSearchResultsActive;
- (id)_accessibilityActiveURL;
- (id)_accessibilityMainBrowserController;
- (id)_accessibilityRetrieveWebViewForSearchResults;
- (id)_getScribbleController;
- (id)_iosAccessibilityAttributeValue:(int64_t)a3;
- (id)_iosAccessibilityAttributeValue:(int64_t)a3 forParameter:(id)a4;
@end

@implementation SafariUIApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WebHTMLView" hasInstanceMethod:@"accessibilityRootElement" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIWebBrowserFindOnPageHighlighter" hasInstanceMethod:@"setSearchText: matchLimit:" withFullSignature:{"v", "@", "Q", 0}];
  [v3 validateClass:@"UIWebBrowserFindOnPageHighlighter" hasInstanceMethod:@"numberOfMatches" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"TabDocument" hasInstanceMethod:@"loadURL: userDriven:" withFullSignature:{"@", "@", "B", 0}];
  [v3 validateClass:@"TabDocument" hasInstanceVariable:@"_findCompletionProvider" withType:"FindOnPageCompletionProvider"];
  [v3 validateClass:@"TabController" hasInstanceMethod:@"activeTabDocument" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TabDocument" hasInstanceMethod:@"URLString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Application" hasInstanceMethod:@"browserWindowController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TabDocument" hasInstanceVariable:@"_sfScribbleController" withType:"SFScribbleController"];
  [v3 validateClass:@"SFScribbleController" hasInstanceVariable:@"_elementController" withType:"WBSScribbleController"];
  [v3 validateClass:@"SFScribbleController" hasInstanceMethod:@"_hideSelectedElement" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SFScribbleController" hasInstanceMethod:@"_setSelectedElement:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SFScribbleController" hasInstanceMethod:@"_updateScribbleControllerForElementAtPoint:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"WBSScribbleController" hasInstanceMethod:@"getElementAtPoint:completion:" withFullSignature:{"v", "{CGPoint=dd}", "@?", 0}];
  [v3 validateClass:@"WBSScribbleElement" hasInstanceVariable:@"_targetedElements" withType:"NSArray"];
  [v3 validateClass:@"WBSScribbleElement" hasInstanceVariable:@"_screenReaderText" withType:"NSString"];
}

- (id)_accessibilityMainBrowserController
{
  v27 = *MEMORY[0x29EDCA608];
  v25 = 0;
  v2 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_browserWindowController"];
  v3 = __UIAccessibilitySafeClass();

  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 safeArrayForKey:@"browserControllers"];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v20 = v3;
    v7 = *v22;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v25 = 0;
        objc_opt_class();
        v10 = [v9 safeValueForKey:@"rootViewController"];
        v11 = __UIAccessibilityCastAsClass();

        if (v25 == 1)
        {
          goto LABEL_19;
        }

        v12 = [v11 view];
        v13 = [v12 window];

        v14 = [v13 windowScene];
        v15 = [v14 keyWindow];

        if (v13 == v15)
        {
          v25 = 0;
          v17 = __UIAccessibilitySafeClass();
          if (v25 == 1)
          {
LABEL_19:
            abort();
          }

          v16 = v17;

          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v16 = 0;
LABEL_14:
    v3 = v20;
  }

  else
  {
    v16 = 0;
  }

  v18 = *MEMORY[0x29EDCA608];

  return v16;
}

- (BOOL)_accessibilityWebSearchResultsActive
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = AXUIApplicationWindows();
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v12 + 1) + 8 * v6) firstResponder];
      v8 = 1;
      v9 = [v7 _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:1];

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t __72__SafariUIApplicationAccessibility__accessibilityWebSearchResultsActive__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"SFFindOnPageBarIdentifier"];

  return v3;
}

- (id)_accessibilityRetrieveWebViewForSearchResults
{
  v3 = [(SafariUIApplicationAccessibility *)self _accessibilityMainBrowserController];
  v4 = v3;
  if (!v3 || ([v3 safeValueForKey:@"browserView"], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "safeValueForKey:", @"webView"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = [(SafariUIApplicationAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Webview_0.isa)];
  }

  return v6;
}

- (id)_accessibilityActiveURL
{
  objc_opt_class();
  v3 = [(SafariUIApplicationAccessibility *)self _accessibilityMainBrowserController];
  v4 = __UIAccessibilityCastAsSafeCategory();

  v5 = [v4 accessibilityActiveTabDocument];
  v6 = __UIAccessibilitySafeClass();

  v7 = [v6 safeValueForKey:@"URLString"];

  return v7;
}

- (BOOL)_accessibilityLoadURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    v5 = [(SafariUIApplicationAccessibility *)self _accessibilityMainBrowserController];
    v6 = __UIAccessibilityCastAsSafeCategory();

    v7 = [v6 accessibilityActiveTabDocument];
    v8 = __UIAccessibilitySafeClass();

    v12 = v8;
    v13 = [objc_alloc(MEMORY[0x29EDB8E70]) initWithString:v4];
    v9 = v13;
    v10 = v8;
    AXPerformSafeBlock();
  }

  return v4 != 0;
}

- (BOOL)_accessibilityAlternateActionForURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x29EDB8E70] URLWithString:v3];
  v5 = v4;
  if (v4)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__0;
    v14 = __Block_byref_object_dispose__0;
    v15 = 0;
    v9 = v4;
    AXPerformSafeBlock();
    v6 = v11[5];

    _Block_object_dispose(&v10, 8);
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __72__SafariUIApplicationAccessibility__accessibilityAlternateActionForURL___block_invoke(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Tabdocument.isa) urlForExternalURL:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_iosAccessibilityAttributeValue:(int64_t)a3
{
  if (a3 == 5073)
  {
    v3 = [(SafariUIApplicationAccessibility *)self _getScribbleController];
    v4 = [v3 safeBoolForKey:@"isScribbling"];
    v5 = [MEMORY[0x29EDBA070] numberWithBool:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SafariUIApplicationAccessibility;
    v5 = [(SafariUIApplicationAccessibility *)&v7 _iosAccessibilityAttributeValue:?];
  }

  return v5;
}

uint64_t __87__SafariUIApplicationAccessibility__iosAccessibilityPerformAction_withValue_fencePort___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 == 4201)
  {
    return [*(result + 32) _setSelectedElement:0];
  }

  if (v1 == 4200)
  {
    return [*(result + 32) _hideSelectedElement];
  }

  return result;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)a3 forParameter:(id)a4
{
  v69 = *MEMORY[0x29EDCA608];
  v6 = a4;
  if (a3 == 94100)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 pointValue];
      v8 = v7;
      v10 = v9;
      v11 = [(SafariUIApplicationAccessibility *)self _getScribbleController];
      v35 = v11;
      if (v11)
      {
        v63 = 0;
        v64 = &v63;
        v65 = 0x2020000000;
        v66 = 0;
        *buf = 0;
        v58 = buf;
        v59 = 0x3032000000;
        v60 = __Block_byref_object_copy__0;
        v61 = __Block_byref_object_dispose__0;
        v62 = 0;
        v48 = MEMORY[0x29EDCA5F8];
        v49 = 3221225472;
        v50 = __81__SafariUIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke;
        v51 = &unk_29F2D7C80;
        v12 = v11;
        v55 = v8;
        v56 = v10;
        v52 = v12;
        v53 = buf;
        v54 = &v63;
        AXPerformSafeBlock();
        v13 = *MEMORY[0x29EDB8FC0];
        while ((v64[3] & 1) == 0)
        {
          CFRunLoopGetCurrent();
          CFRunLoopRunSpecific();
        }

        if (*(v58 + 5))
        {
          v40 = MEMORY[0x29EDCA5F8];
          v41 = 3221225472;
          v42 = __81__SafariUIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke_418;
          v43 = &unk_29F2D7CA8;
          v44 = v12;
          v45 = v8;
          v46 = v10;
          AXPerformSafeBlock();

          [*(v58 + 5) safeArrayForKey:@"targetedElements"];
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v16 = v37 = 0u;
          v17 = 0;
          v18 = [v16 countByEnumeratingWithState:&v36 objects:v68 count:16];
          if (v18)
          {
            v19 = *v37;
            do
            {
              v20 = 0;
              v21 = v17;
              do
              {
                if (*v37 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v33 = [*(*(&v36 + 1) + 8 * v20) safeStringForKey:{@"screenReaderText", v33, v34}];
                v34 = @"__AXStringForVariablesSentinel";
                v17 = __UIAXStringForVariables();

                ++v20;
                v21 = v17;
              }

              while (v18 != v20);
              v18 = [v16 countByEnumeratingWithState:&v36 objects:v68 count:16, v33, @"__AXStringForVariablesSentinel"];
            }

            while (v18);
          }

          if ([v17 length])
          {
            [*(v58 + 5) safeCGRectForKey:@"geometry"];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v14 = [MEMORY[0x29EDB8E00] dictionary];
            [v14 setObject:v17 forKey:@"AXScribbleRenderedTextKey"];
            v30 = [MEMORY[0x29EDBA168] valueWithRect:{v23, v25, v27, v29}];
            [v14 setObject:v30 forKey:@"AXScribbleGeometryKey"];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v16 = AXLogAppAccessibility();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&dword_29BFE7000, v16, OS_LOG_TYPE_DEFAULT, "[Scribble] no element found at point", v47, 2u);
          }

          v14 = 0;
        }

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(&v63, 8);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v15 = AXLogAppAccessibility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29BFE7000, v15, OS_LOG_TYPE_DEFAULT, "[Scribble] attribute value is not an NSValue", buf, 2u);
      }

      v14 = 0;
    }
  }

  else
  {
    v67.receiver = self;
    v67.super_class = SafariUIApplicationAccessibility;
    v14 = [(SafariUIApplicationAccessibility *)&v67 _iosAccessibilityAttributeValue:a3 forParameter:v6];
  }

  v31 = *MEMORY[0x29EDCA608];

  return v14;
}

void __81__SafariUIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_elementController"];
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __81__SafariUIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke_2;
  v3[3] = &unk_29F2D7C58;
  v4 = *(a1 + 40);
  [v2 getElementAtPoint:v3 completion:{*(a1 + 56), *(a1 + 64)}];
}

void __81__SafariUIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = a2;
  v7 = a3;
  v8 = AXLogAppAccessibility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_29BFE7000, v8, OS_LOG_TYPE_DEFAULT, "[Scribble] error getting element at point: %@", &v10, 0xCu);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;

  v9 = *MEMORY[0x29EDCA608];
}

- (id)_getScribbleController
{
  objc_opt_class();
  v3 = [(SafariUIApplicationAccessibility *)self _accessibilityMainBrowserController];
  v4 = __UIAccessibilityCastAsSafeCategory();

  v5 = [v4 accessibilityActiveTabDocument];
  v6 = __UIAccessibilitySafeClass();

  v7 = [v6 safeValueForKey:@"_sfScribbleController"];

  return v7;
}

@end
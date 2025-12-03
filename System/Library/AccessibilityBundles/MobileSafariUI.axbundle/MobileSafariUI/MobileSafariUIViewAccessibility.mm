@interface MobileSafariUIViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsFrameOutOfBounds;
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation MobileSafariUIViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"setShowingReader:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"goBack" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceVariable:@"_tabController" withType:"TabController"];
  [validationsCopy validateClass:@"TabController" hasInstanceMethod:@"activeTabDocument" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TabDocument" hasInstanceMethod:@"canGoBack" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"rootViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Application" hasInstanceVariable:@"_browserWindowController" withType:"BrowserWindowController"];
  [validationsCopy validateClass:@"BrowserWindowController" hasInstanceMethod:@"browserControllers" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  v46 = *MEMORY[0x29EDCA608];
  accessibilityIdentification = [(MobileSafariUIViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"PageView"];

  if (!v4)
  {
    v28.receiver = self;
    v28.super_class = MobileSafariUIViewAccessibility;
    accessibilityPerformEscape = [(MobileSafariUIViewAccessibility *)&v28 accessibilityPerformEscape];
    goto LABEL_25;
  }

  v5 = [(MobileSafariUIViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uidimmingview.isa)];

  if (!v5)
  {
    v44 = 0;
    v7 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_browserWindowController"];
    v8 = __UIAccessibilitySafeClass();

    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = [v8 safeArrayForKey:@"browserControllers"];
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v27 = v8;
      v12 = *v41;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          v44 = 0;
          objc_opt_class();
          v15 = [v14 safeValueForKey:@"rootViewController"];
          v16 = __UIAccessibilityCastAsClass();

          if (v44 == 1)
          {
            abort();
          }

          view = [v16 view];
          window = [view window];
          window2 = [(MobileSafariUIViewAccessibility *)self window];

          if (window == window2)
          {
            v20 = v14;
            goto LABEL_17;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v20 = 0;
LABEL_17:
      v8 = v27;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v20 safeValueForKey:@"isShowingReader"];
    bOOLValue = [v21 BOOLValue];

    if (bOOLValue)
    {
      v35 = MEMORY[0x29EDCA5F8];
      v36 = 3221225472;
      v37 = __61__MobileSafariUIViewAccessibility_accessibilityPerformEscape__block_invoke;
      v38 = &unk_29F2D7A98;
      v39 = v20;
      AXPerformSafeBlock();
      accessibilityPerformEscape = 1;
      v23 = v39;
    }

    else
    {
      v34.receiver = self;
      v34.super_class = MobileSafariUIViewAccessibility;
      if ([(MobileSafariUIViewAccessibility *)&v34 accessibilityPerformEscape])
      {
        accessibilityPerformEscape = 1;
        goto LABEL_24;
      }

      v26 = [v20 safeValueForKey:@"_tabController"];
      v23 = [v26 safeValueForKey:@"activeTabDocument"];

      if ([v23 safeBoolForKey:@"canGoBack"])
      {
        v29 = MEMORY[0x29EDCA5F8];
        v30 = 3221225472;
        v31 = __61__MobileSafariUIViewAccessibility_accessibilityPerformEscape__block_invoke_2;
        v32 = &unk_29F2D7A98;
        v33 = v20;
        AXPerformSafeBlock();

        accessibilityPerformEscape = 1;
      }

      else
      {
        accessibilityPerformEscape = 0;
      }
    }

LABEL_24:
    goto LABEL_25;
  }

  accessibilityPerformEscape = 0;
LABEL_25:
  v24 = *MEMORY[0x29EDCA608];
  return accessibilityPerformEscape;
}

void __61__MobileSafariUIViewAccessibility_accessibilityPerformEscape__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) performSelector:sel_goBack];
  v1 = *MEMORY[0x29EDC7EA8];
  v2 = accessibilityLocalizedString(@"previous.page.action");
  UIAccessibilityPostNotification(v1, v2);
}

- (BOOL)_accessibilityIsFrameOutOfBounds
{
  accessibilityIdentification = [(MobileSafariUIViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"titleTextViewContainer"];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MobileSafariUIViewAccessibility;
  return [(MobileSafariUIViewAccessibility *)&v6 _accessibilityIsFrameOutOfBounds];
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentification = [(MobileSafariUIViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"titleTextViewContainer"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MobileSafariUIViewAccessibility;
  return [(MobileSafariUIViewAccessibility *)&v6 isAccessibilityElement];
}

- (id)accessibilityLabel
{
  v29 = *MEMORY[0x29EDCA608];
  accessibilityIdentification = [(MobileSafariUIViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"titleTextViewContainer"];

  if (!v4)
  {
    v23.receiver = self;
    v23.super_class = MobileSafariUIViewAccessibility;
    accessibilityLabel = [(MobileSafariUIViewAccessibility *)&v23 accessibilityLabel];
    goto LABEL_30;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  subviews = [(MobileSafariUIViewAccessibility *)self subviews];
  v6 = [subviews countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v6)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_20;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v25;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(subviews);
      }

      v12 = *(*(&v24 + 1) + 8 * i);
      accessibilityIdentification2 = [v12 accessibilityIdentification];
      v14 = accessibilityIdentification2;
      if (!v9 && ([accessibilityIdentification2 isEqualToString:@"titleTextView"] & 1) != 0)
      {
        v9 = v12;
LABEL_13:
        v15 = v12;
        goto LABEL_15;
      }

      if (v8)
      {
        goto LABEL_15;
      }

      if ([v14 isEqualToString:@"lockView"])
      {
        v8 = v12;
        goto LABEL_13;
      }

      v8 = 0;
LABEL_15:
    }

    v7 = [subviews countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v7);
LABEL_20:

  string = [MEMORY[0x29EDBA050] string];
  accessibilityLabel2 = [v9 accessibilityLabel];
  if ([accessibilityLabel2 length])
  {
    [string appendString:accessibilityLabel2];
  }

  accessibilityLabel3 = [v8 accessibilityLabel];

  if ([accessibilityLabel3 length])
  {
    if ([string length])
    {
      [string appendString:@" "];
    }

    [string appendString:accessibilityLabel3];
  }

  if ([string length])
  {
    v20 = string;
  }

  else
  {
    v20 = 0;
  }

  accessibilityLabel = v20;

LABEL_30:
  v21 = *MEMORY[0x29EDCA608];

  return accessibilityLabel;
}

@end
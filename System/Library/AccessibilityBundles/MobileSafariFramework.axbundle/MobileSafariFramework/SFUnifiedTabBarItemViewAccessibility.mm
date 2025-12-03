@interface SFUnifiedTabBarItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityScrollToVisible;
- (BOOL)_axSearchFieldIsActive;
- (CGRect)accessibilityFrame;
- (SFUnifiedTabBarItemViewAccessibility)initWithFrame:(CGRect)frame;
- (_NSRange)_accessibilityRowRange;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)_accessibilityVisibleTextRange;
- (id)_accessibilityResponderElement;
- (id)_accessibilityScrollAncestor;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)_axScribbleOverlay;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)cursor withString:(id)string;
- (void)_accessibilitySetFormatButtonLabel;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)_accessibilityUpdateWebExtensionLabels;
- (void)makeFormatMenuButton;
- (void)setExtensionButtonConfiguration:(id)configuration;
- (void)setOverlayConfiguration:(id)configuration;
@end

@implementation SFUnifiedTabBarItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceVariable:@"_titleContainer" withType:"SFUnifiedTabBarItemTitleContainerView"];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceMethod:@"searchField" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceVariable:@"_voiceSearchButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceVariable:@"_closeButton" withType:"SFUnifiedTabBarItemViewCloseButton"];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceVariable:@"_accessoryButtonArrangement" withType:"SFUnifiedTabBarItemAccessoryButtonArrangement"];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceVariable:@"_active" withType:"B"];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemAccessoryButtonArrangement" hasInstanceMethod:@"leadingButtonTypes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemAccessoryButtonArrangement" hasInstanceMethod:@"trailingButtonTypes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceMethod:@"_viewForAccessoryButtonOfType:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceMethod:@"showsCloseButton" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBar"];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" isKindOfClass:@"SFUnifiedBarItemView"];
  [validationsCopy validateClass:@"SFUnifiedBarItemView" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFUnifiedBarItem" hasInstanceMethod:@"isPinned" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBar" hasInstanceMethod:@"itemArrangement" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBar" hasInstanceVariable:@"_scrollView" withType:"UIScrollView"];
  [validationsCopy validateClass:@"SFUnifiedTabBar" hasInstanceMethod:@"scrollToItem:animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemArrangement" hasInstanceMethod:@"items" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceVariable:@"_formatMenuButton" withType:"SFNavigationBarToggleButton"];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceMethod:@"makeFormatMenuButton" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceVariable:@"_extensionButtonConfiguration" withType:"SFWebExtensionButtonConfiguration"];
  [validationsCopy validateClass:@"SFWebExtensionButtonConfiguration" hasInstanceMethod:@"buttons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceVariable:@"_firstExtensionButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceVariable:@"_secondExtensionButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceMethod:@"setExtensionButtonConfiguration:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SFWebExtensionButton" hasInstanceMethod:@"extension" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WBSWebExtensionData" hasInstanceMethod:@"displayShortName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceVariable:@"_overlayView" withType:"SFURLFieldOverlayView"];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceMethod:@"setOverlayConfiguration:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SFURLFieldOverlayView" hasInstanceVariable:@"_textLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SFURLFieldOverlayView" hasInstanceVariable:@"_buttons" withType:"NSArray"];
  [validationsCopy validateClass:@"SFUnifiedTabBarItemView" hasInstanceVariable:@"_hasHiddenElements" withType:"BOOL"];
}

- (BOOL)_axSearchFieldIsActive
{
  v2 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"searchField"];
  _accessibilityViewIsVisible = [v2 _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

- (id)_axScribbleOverlay
{
  v2 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"_overlayView"];
  v3 = v2;
  if (v2 && [v2 _accessibilityViewIsVisible])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  _axScribbleOverlay = [(SFUnifiedTabBarItemViewAccessibility *)self _axScribbleOverlay];
  if (_axScribbleOverlay)
  {
    v12 = 0;
    objc_opt_class();
    v4 = [_axScribbleOverlay safeValueForKey:@"_textLabel"];
    accessibilityLabel = __UIAccessibilityCastAsClass();

    text = [accessibilityLabel text];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SFUnifiedTabBarItemViewAccessibility;
    accessibilityLabel = [(SFUnifiedTabBarItemViewAccessibility *)&v11 accessibilityLabel];
    if (!accessibilityLabel)
    {
      if ([(SFUnifiedTabBarItemViewAccessibility *)self safeBoolForKey:@"_active"])
      {
        v7 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"_titleContainer"];
        accessibilityLabel = [v7 accessibilityLabel];
      }

      else
      {
        accessibilityLabel = 0;
      }
    }

    v8 = [(SFUnifiedTabBarItemViewAccessibility *)self safeValueForKey:@"item"];
    if ([v8 safeBoolForKey:@"isPinned"])
    {
      v10 = accessibilityMobileSafariLocalizedString(@"tab.pinned");
      text = __AXStringForVariables();
    }

    else
    {
      text = accessibilityLabel;
    }
  }

  return text;
}

- (CGRect)accessibilityFrame
{
  if ([(SFUnifiedTabBarItemViewAccessibility *)self _axSearchFieldIsActive])
  {
    selfCopy = self;
    v3 = &selfCopy;
  }

  else
  {
    _axScribbleOverlay = [(SFUnifiedTabBarItemViewAccessibility *)self _axScribbleOverlay];

    if (_axScribbleOverlay)
    {
      selfCopy2 = self;
      v3 = &selfCopy2;
    }

    else
    {
      selfCopy3 = self;
      v3 = &selfCopy3;
    }
  }

  v3[1] = SFUnifiedTabBarItemViewAccessibility;
  objc_msgSendSuper2(v3, sel_accessibilityFrame, selfCopy3);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (_NSRange)_accessibilityVisibleTextRange
{
  if ([(SFUnifiedTabBarItemViewAccessibility *)self _axSearchFieldIsActive])
  {
    v3 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"searchField"];
    _accessibilityVisibleTextRange = [v3 _accessibilityVisibleTextRange];
    v6 = v5;

    _accessibilityVisibleTextRange2 = _accessibilityVisibleTextRange;
    v8 = v6;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SFUnifiedTabBarItemViewAccessibility;
    _accessibilityVisibleTextRange2 = [(SFUnifiedTabBarItemViewAccessibility *)&v9 _accessibilityVisibleTextRange];
  }

  result.length = v8;
  result.location = _accessibilityVisibleTextRange2;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ([(SFUnifiedTabBarItemViewAccessibility *)self _axSearchFieldIsActive])
  {
    v6 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"searchField"];
    [v6 _accessibilitySetSelectedTextRange:{location, length}];
  }
}

- (void)_accessibilityReplaceCharactersAtCursor:(unint64_t)cursor withString:(id)string
{
  stringCopy = string;
  if ([(SFUnifiedTabBarItemViewAccessibility *)self _axSearchFieldIsActive])
  {
    v6 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"searchField"];
    [v6 _accessibilityReplaceCharactersAtCursor:cursor withString:stringCopy];
  }
}

- (unint64_t)accessibilityTraits
{
  if ([(SFUnifiedTabBarItemViewAccessibility *)self _axSearchFieldIsActive])
  {
    v3 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"searchField"];
    accessibilityTraits = [v3 accessibilityTraits];

    return accessibilityTraits;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SFUnifiedTabBarItemViewAccessibility;
    accessibilityTraits2 = [(SFUnifiedTabBarItemViewAccessibility *)&v10 accessibilityTraits];
    _axScribbleOverlay = [(SFUnifiedTabBarItemViewAccessibility *)self _axScribbleOverlay];

    if (_axScribbleOverlay)
    {
      return *MEMORY[0x29EDC7FA0];
    }

    else
    {
      v8 = [(SFUnifiedTabBarItemViewAccessibility *)self safeBoolForKey:@"_active"];
      v9 = *MEMORY[0x29EDC7588];
      if (v8)
      {
        v9 = 0;
      }

      return v9 | accessibilityTraits2;
    }
  }
}

- (_NSRange)_accessibilityRowRange
{
  if (([(SFUnifiedTabBarItemViewAccessibility *)self safeBoolForKey:@"_active"]& 1) != 0)
  {
    v3 = 0;
    v4 = 0x7FFFFFFFLL;
  }

  else
  {
    v5 = [(SFUnifiedTabBarItemViewAccessibility *)self safeValueForKey:@"delegate"];
    MEMORY[0x29C2E0540](@"SFUnifiedTabBar");
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 safeValueForKey:@"itemArrangement"];
      v7 = [v6 safeArrayForKey:@"items"];

      v8 = [(SFUnifiedTabBarItemViewAccessibility *)self safeValueForKey:@"item"];
      v9 = [v7 indexOfObject:v8];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = 0;
        v3 = 0;
      }

      else
      {
        v4 = v9;
        v3 = [v7 count];
      }
    }

    else
    {
      v4 = 0;
      v3 = 0;
    }
  }

  v10 = v4;
  v11 = v3;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)_accessibilityResponderElement
{
  if ([(SFUnifiedTabBarItemViewAccessibility *)self _axSearchFieldIsActive])
  {
    v3 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"searchField"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  if ([(SFUnifiedTabBarItemViewAccessibility *)self _axSearchFieldIsActive])
  {
    v3 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"searchField"];
    _accessibilitySelectedTextRange = [v3 _accessibilitySelectedTextRange];
    v6 = v5;

    _accessibilitySelectedTextRange2 = _accessibilitySelectedTextRange;
    v8 = v6;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SFUnifiedTabBarItemViewAccessibility;
    _accessibilitySelectedTextRange2 = [(SFUnifiedTabBarItemViewAccessibility *)&v9 _accessibilitySelectedTextRange];
  }

  result.length = v8;
  result.location = _accessibilitySelectedTextRange2;
  return result;
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v36 = *MEMORY[0x29EDCA608];
  _axScribbleOverlay = [(SFUnifiedTabBarItemViewAccessibility *)self _axScribbleOverlay];

  if (_axScribbleOverlay)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    selfCopy2 = self;
    if ([(SFUnifiedTabBarItemViewAccessibility *)self _axSearchFieldIsActive])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v5 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"searchField"];
      _accessibilitySupplementaryHeaderViews = [v5 _accessibilitySupplementaryHeaderViews];

      v7 = [_accessibilitySupplementaryHeaderViews countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v7)
      {
        v8 = *v31;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v31 != v8)
            {
              objc_enumerationMutation(_accessibilitySupplementaryHeaderViews);
            }

            [v3 axSafelyAddObject:*(*(&v30 + 1) + 8 * i)];
          }

          v7 = [_accessibilitySupplementaryHeaderViews countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v7);
      }

      selfCopy2 = self;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [(SFUnifiedTabBarItemViewAccessibility *)selfCopy2 safeValueForKey:@"_accessoryButtonArrangement"];
    obj = [v10 safeArrayForKey:@"leadingButtonTypes"];

    v11 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v11)
    {
      v12 = *v27;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * j);
          v20 = 0;
          v21 = &v20;
          v22 = 0x3032000000;
          v23 = __Block_byref_object_copy__1;
          v24 = __Block_byref_object_dispose__1;
          v25 = 0;
          AXPerformSafeBlock();
          v15 = v21[5];
          _Block_object_dispose(&v20, 8);

          [v3 axSafelyAddObject:v15];
        }

        v11 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x29EDCA608];

  return v3;
}

uint64_t __78__SFUnifiedTabBarItemViewAccessibility__accessibilitySupplementaryHeaderViews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _viewForAccessoryButtonOfType:{objc_msgSend(*(a1 + 40), "integerValue")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilitySupplementaryFooterViews
{
  v45 = *MEMORY[0x29EDCA608];
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  selfCopy = self;
  _axScribbleOverlay = [(SFUnifiedTabBarItemViewAccessibility *)self _axScribbleOverlay];
  v22 = _axScribbleOverlay;
  if (_axScribbleOverlay)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = [_axScribbleOverlay safeArrayForKey:@"_buttons"];
    v6 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v6)
    {
      v7 = *v39;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v39 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [v3 axSafelyAddObject:*(*(&v38 + 1) + 8 * i)];
        }

        v6 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v6);
    }
  }

  else
  {
    if ([(SFUnifiedTabBarItemViewAccessibility *)self _axSearchFieldIsActive])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"searchField"];
      _accessibilitySupplementaryFooterViews = [v9 _accessibilitySupplementaryFooterViews];

      v11 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v11)
      {
        v12 = *v35;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(_accessibilitySupplementaryFooterViews);
            }

            [v3 axSafelyAddObject:*(*(&v34 + 1) + 8 * j)];
          }

          v11 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v34 objects:v43 count:16];
        }

        while (v11);
      }

      self = selfCopy;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [(SFUnifiedTabBarItemViewAccessibility *)self safeValueForKey:@"_accessoryButtonArrangement"];
    v5 = [v14 safeArrayForKey:@"trailingButtonTypes"];

    v15 = [v5 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v15)
    {
      v16 = *v31;
      do
      {
        for (k = 0; k != v15; ++k)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v5);
          }

          v18 = *(*(&v30 + 1) + 8 * k);
          v24 = 0;
          v25 = &v24;
          v26 = 0x3032000000;
          v27 = __Block_byref_object_copy__1;
          v28 = __Block_byref_object_dispose__1;
          v29 = 0;
          AXPerformSafeBlock();
          v19 = v25[5];
          _Block_object_dispose(&v24, 8);

          [v3 axSafelyAddObject:v19];
        }

        v15 = [v5 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v15);
    }
  }

  v20 = *MEMORY[0x29EDCA608];

  return v3;
}

uint64_t __78__SFUnifiedTabBarItemViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _viewForAccessoryButtonOfType:{objc_msgSend(*(a1 + 40), "integerValue")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (void)_accessibilityUpdateWebExtensionLabels
{
  v3 = [(SFUnifiedTabBarItemViewAccessibility *)self safeValueForKey:@"_extensionButtonConfiguration"];
  v10 = [v3 safeArrayForKey:@"buttons"];

  if ([v10 count] >= 2)
  {
    v4 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"_secondExtensionButton"];
    v5 = [v10 objectAtIndexedSubscript:1];
    v6 = [v5 safeValueForKeyPath:@"extension.displayShortName"];
    [v4 setAccessibilityLabel:v6];
  }

  if ([v10 count])
  {
    v7 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"_firstExtensionButton"];
    v8 = [v10 objectAtIndexedSubscript:0];
    v9 = [v8 safeValueForKeyPath:@"extension.displayShortName"];
    [v7 setAccessibilityLabel:v9];
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v15.receiver = self;
  v15.super_class = SFUnifiedTabBarItemViewAccessibility;
  [(SFUnifiedTabBarItemViewAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilitySafariServicesLocalizedString(@"buttonbar.voicesearch");
  v4 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"_voiceSearchButton"];
  [v4 setAccessibilityLabel:v3];

  v5 = accessibilitySafariServicesLocalizedString(@"buttonbar.mediaStateMute");
  v6 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"_mediaStateMuteButton"];
  [v6 setAccessibilityLabel:v5];

  v7 = accessibilitySafariServicesLocalizedString(@"buttonbar.moreMenu");
  v8 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"_moreMenuButtonContainer"];
  [v8 setAccessibilityLabel:v7];

  v9 = accessibilitySafariServicesLocalizedString(@"buttonbar.reload");
  v10 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"_reloadButton"];
  [v10 setAccessibilityLabel:v9];

  v11 = accessibilitySafariServicesLocalizedString(@"buttonbar.stop");
  v12 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"_stopButton"];
  [v12 setAccessibilityLabel:v11];

  v13 = accessibilitySafariServicesLocalizedString(@"buttonbar.manageExtensions");
  v14 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"_multipleExtensionsButton"];
  [v14 setAccessibilityLabel:v13];

  [(SFUnifiedTabBarItemViewAccessibility *)self _accessibilitySetFormatButtonLabel];
  [(SFUnifiedTabBarItemViewAccessibility *)self _accessibilityUpdateWebExtensionLabels];
}

- (void)makeFormatMenuButton
{
  v3.receiver = self;
  v3.super_class = SFUnifiedTabBarItemViewAccessibility;
  [(SFUnifiedTabBarItemViewAccessibility *)&v3 makeFormatMenuButton];
  [(SFUnifiedTabBarItemViewAccessibility *)self _accessibilitySetFormatButtonLabel];
}

- (void)_accessibilitySetFormatButtonLabel
{
  objc_initWeak(&location, self);
  v3 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"_formatMenuButton"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __74__SFUnifiedTabBarItemViewAccessibility__accessibilitySetFormatButtonLabel__block_invoke;
  v4[3] = &unk_29F2D6910;
  objc_copyWeak(&v5, &location);
  [v3 setAccessibilityLabelBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __74__SFUnifiedTabBarItemViewAccessibility__accessibilitySetFormatButtonLabel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"_hasHiddenElements"];

  if (v2)
  {
    accessibilitySafariScribbleLocalizedString(@"buttonbar.formatMenu.distractions.hidden");
  }

  else
  {
    accessibilitySafariServicesLocalizedString(@"buttonbar.formatMenu");
  }
  v3 = ;

  return v3;
}

- (SFUnifiedTabBarItemViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SFUnifiedTabBarItemViewAccessibility;
  v3 = [(SFUnifiedTabBarItemViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SFUnifiedTabBarItemViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (id)accessibilityValue
{
  _axScribbleOverlay = [(SFUnifiedTabBarItemViewAccessibility *)self _axScribbleOverlay];
  if (_axScribbleOverlay)
  {
    accessibilityValue = 0;
    goto LABEL_8;
  }

  if ([(SFUnifiedTabBarItemViewAccessibility *)self _axSearchFieldIsActive])
  {
    v5 = @"searchField";
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SFUnifiedTabBarItemViewAccessibility;
    accessibilityValue = [(SFUnifiedTabBarItemViewAccessibility *)&v8 accessibilityValue];
    if (accessibilityValue)
    {
      goto LABEL_8;
    }

    v5 = @"_titleContainer";
  }

  v6 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:v5];
  accessibilityValue = [v6 accessibilityValue];

LABEL_8:

  return accessibilityValue;
}

- (id)accessibilityHint
{
  v6.receiver = self;
  v6.super_class = SFUnifiedTabBarItemViewAccessibility;
  accessibilityHint = [(SFUnifiedTabBarItemViewAccessibility *)&v6 accessibilityHint];
  if (!accessibilityHint)
  {
    v4 = [(SFUnifiedTabBarItemViewAccessibility *)self safeUIViewForKey:@"_titleContainer"];
    accessibilityHint = [v4 accessibilityHint];
  }

  return accessibilityHint;
}

- (BOOL)_accessibilityScrollToVisible
{
  v3 = [(SFUnifiedTabBarItemViewAccessibility *)self safeValueForKey:@"delegate"];
  [(SFUnifiedTabBarItemViewAccessibility *)self safeValueForKey:@"item"];
  v8 = v7 = v3;
  v4 = v8;
  v5 = v3;
  AXPerformSafeBlock();

  return 1;
}

- (id)_accessibilityScrollAncestor
{
  v2 = [(SFUnifiedTabBarItemViewAccessibility *)self safeValueForKey:@"delegate"];
  v3 = [v2 safeValueForKey:@"_scrollView"];

  return v3;
}

- (void)setExtensionButtonConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = SFUnifiedTabBarItemViewAccessibility;
  [(SFUnifiedTabBarItemViewAccessibility *)&v4 setExtensionButtonConfiguration:configuration];
  [(SFUnifiedTabBarItemViewAccessibility *)self _accessibilityUpdateWebExtensionLabels];
}

- (void)setOverlayConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = SFUnifiedTabBarItemViewAccessibility;
  [(SFUnifiedTabBarItemViewAccessibility *)&v5 setOverlayConfiguration:configuration];
  _axScribbleOverlay = [(SFUnifiedTabBarItemViewAccessibility *)self _axScribbleOverlay];

  if (_axScribbleOverlay)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
  }
}

@end
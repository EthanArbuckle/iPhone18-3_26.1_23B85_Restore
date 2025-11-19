@interface SBHAddWidgetDetailSheetViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_addPage:(id)a3;
- (void)_createViews;
- (void)addButtonTapped:(id)a3;
@end

@implementation SBHAddWidgetDetailSheetViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBHAddWidgetDetailSheetViewController" hasInstanceMethod:@"widgetGalleryStackView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHAddWidgetDetailSheetViewController" hasInstanceMethod:@"widgetGalleryScrollView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHAddWidgetDetailSheetViewController" hasInstanceMethod:@"_createViews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBHAddWidgetDetailSheetViewController" hasInstanceMethod:@"_addPage:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBHAddWidgetDetailSheetViewController" hasInstanceMethod:@"scrollViewDidScroll:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBHAddWidgetDetailSheetViewController" hasInstanceMethod:@"addButtonTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBHAddWidgetDetailSheetViewController" hasInstanceMethod:@"applicationWidgetCollection" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHApplicationWidgetCollection" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (void)_createViews
{
  v4.receiver = self;
  v4.super_class = SBHAddWidgetDetailSheetViewControllerAccessibility;
  [(SBHAddWidgetDetailSheetViewControllerAccessibility *)&v4 _createViews];
  v3 = [(SBHAddWidgetDetailSheetViewControllerAccessibility *)self safeValueForKey:@"widgetGalleryScrollView"];
  [v3 _accessibilitySetPagingEnabled:1];
}

- (void)_addPage:(id)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v22.receiver = self;
  v22.super_class = SBHAddWidgetDetailSheetViewControllerAccessibility;
  v11 = a3;
  [(SBHAddWidgetDetailSheetViewControllerAccessibility *)&v22 _addPage:?];
  v12 = [(SBHAddWidgetDetailSheetViewControllerAccessibility *)self safeValueForKey:@"widgetGalleryStackView"];
  v4 = [(SBHAddWidgetDetailSheetViewControllerAccessibility *)self safeValueForKey:@"widgetGalleryScrollView"];
  objc_initWeak(&location, v4);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v12 arrangedSubviews];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = *v18;
    v8 = MEMORY[0x29EDCA5F8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        objc_initWeak(&from, v10);
        v13[0] = v8;
        v13[1] = 3221225472;
        v13[2] = __63__SBHAddWidgetDetailSheetViewControllerAccessibility__addPage___block_invoke;
        v13[3] = &unk_29F3002B0;
        objc_copyWeak(&v14, &from);
        objc_copyWeak(&v15, &location);
        [v10 _setAccessibilityElementsHiddenBlock:v13];
        objc_destroyWeak(&v15);
        objc_destroyWeak(&v14);
        objc_destroyWeak(&from);
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  objc_destroyWeak(&location);
}

uint64_t __63__SBHAddWidgetDetailSheetViewControllerAccessibility__addPage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 accessibilityFrame];
  v18.origin.x = v12;
  v18.origin.y = v13;
  v18.size.width = v14;
  v18.size.height = v15;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  CGRectIntersection(v17, v18);
  LODWORD(WeakRetained) = AX_CGRectAlmostEqualToRect();

  return WeakRetained ^ 1;
}

- (void)addButtonTapped:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBHAddWidgetDetailSheetViewControllerAccessibility;
  [(SBHAddWidgetDetailSheetViewControllerAccessibility *)&v11 addButtonTapped:a3];
  v4 = [(SBHAddWidgetDetailSheetViewControllerAccessibility *)self safeValueForKey:@"_applicationWidgetCollection"];
  v5 = [v4 safeStringForKey:@"displayName"];

  v6 = MEMORY[0x29EDBA0F8];
  v7 = accessibilityLocalizedString(@"widget.added");
  v8 = &stru_2A230FAF0;
  if (v5)
  {
    v8 = v5;
  }

  v9 = [v6 localizedStringWithFormat:v7, v8];

  v10 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v9];
  [v10 setAttribute:&unk_2A2318CB0 forKey:*MEMORY[0x29EDBD860]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v10);
}

@end
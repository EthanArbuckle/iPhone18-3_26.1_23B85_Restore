@interface BookmarksNavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (id)_segmentedControlItemForCollection:(id)a3;
- (id)_setAccessibilityLabelForItem:(id)a3 fromCollection:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)transitionConductor:(id)a3 didEndTransitionFromView:(id)a4 toView:(id)a5;
@end

@implementation BookmarksNavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BookmarksNavigationController" hasInstanceMethod:@"_segmentedControlItemForCollection:" withFullSignature:{"@", "@", 0}];
  [v3 validateProtocol:@"BookmarksNavigationControllerDelegate" hasOptionalInstanceMethod:@"bookmarksNavigationControllerDidPressDoneButton:"];
  [v3 validateClass:@"BookmarksNavigationController" hasInstanceVariable:@"_topLevelCollections" withType:"NSArray"];
  [v3 validateClass:@"BookmarksNavigationController" hasInstanceVariable:@"_collectionSegmentedControl" withType:"UISegmentedControl"];
  [v3 validateClass:@"BrowserRootViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"BookmarksNavigationController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"BookmarksNavigationController" isKindOfClass:@"UINavigationController"];
  [v3 validateClass:@"UINavigationController" hasInstanceMethod:@"transitionConductor:didEndTransitionFromView:toView:" withFullSignature:{"v", "@", "@", "@", 0}];
  [v3 validateClass:@"BrowserController" hasInstanceMethod:@"rootViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Application" hasInstanceVariable:@"_browserWindowController" withType:"BrowserWindowController"];
  [v3 validateClass:@"BrowserWindowController" hasInstanceMethod:@"browserControllers" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = BookmarksNavigationControllerAccessibility;
  [(BookmarksNavigationControllerAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(BookmarksNavigationControllerAccessibility *)self safeValueForKey:@"_collectionSegmentedControl"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    objc_opt_class();
    v5 = [(BookmarksNavigationControllerAccessibility *)self safeValueForKey:@"_topLevelCollections"];
    v6 = __UIAccessibilityCastAsClass();

    if ([v4 numberOfSegments])
    {
      v7 = 0;
      do
      {
        v8 = [v4 imageForSegmentAtIndex:v7];
        objc_opt_class();
        v9 = [v6 objectAtIndex:v7];
        v10 = __UIAccessibilityCastAsClass();

        v11 = [(BookmarksNavigationControllerAccessibility *)self _setAccessibilityLabelForItem:v8 fromCollection:v10];
        ++v7;
      }

      while ([v4 numberOfSegments] > v7);
    }
  }
}

- (id)_segmentedControlItemForCollection:(id)a3
{
  v8.receiver = self;
  v8.super_class = BookmarksNavigationControllerAccessibility;
  v4 = a3;
  v5 = [(BookmarksNavigationControllerAccessibility *)&v8 _segmentedControlItemForCollection:v4];
  v6 = [(BookmarksNavigationControllerAccessibility *)self _setAccessibilityLabelForItem:v5 fromCollection:v4, v8.receiver, v8.super_class];

  return v6;
}

- (id)_setAccessibilityLabelForItem:(id)a3 fromCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isEqualToString:@"BookmarksCollection"])
  {
    v7 = @"buttonbar.bookmarks.text";
  }

  else if ([v6 isEqualToString:@"CloudTabsCollection"])
  {
    v7 = @"bookmarks.nav.icloud";
  }

  else if ([v6 isEqualToString:@"HistoryCollection"])
  {
    v7 = @"bookmarks.nav.history";
  }

  else if ([v6 isEqualToString:@"ReadingListCollection"])
  {
    v7 = @"reading.list.button";
  }

  else
  {
    if (![v6 isEqualToString:@"SocialLinksCollection"])
    {
      goto LABEL_12;
    }

    v7 = @"bookmarks.nav.social";
  }

  v8 = accessibilityLocalizedString(v7);
  [v5 setAccessibilityLabel:v8];

LABEL_12:

  return v5;
}

- (void)transitionConductor:(id)a3 didEndTransitionFromView:(id)a4 toView:(id)a5
{
  v8 = *MEMORY[0x29EDC7F10];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  _UIAccessibilityBlockPostingOfNotification();
  v12.receiver = self;
  v12.super_class = BookmarksNavigationControllerAccessibility;
  [(BookmarksNavigationControllerAccessibility *)&v12 transitionConductor:v11 didEndTransitionFromView:v10 toView:v9];

  _UIAccessibilityUnblockPostingOfNotification();
}

- (BOOL)accessibilityPerformEscape
{
  v35 = *MEMORY[0x29EDCA608];
  v3 = [(BookmarksNavigationControllerAccessibility *)self safeValueForKey:@"_bookmarksNavigationControllerDelegate"];
  if ((AXDeviceIsPad() & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v27 = 0;
    v6 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_browserWindowController"];
    v5 = __UIAccessibilitySafeClass();

    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [v5 safeArrayForKey:@"browserControllers"];
    v7 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v20 = v5;
      v21 = v3;
      v9 = *v24;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v27 = 0;
          objc_opt_class();
          v12 = [v11 safeValueForKey:@"rootViewController"];
          v13 = __UIAccessibilityCastAsClass();

          if (v27 == 1)
          {
            abort();
          }

          v14 = [v13 view];
          v15 = [v14 window];
          v16 = [(BookmarksNavigationControllerAccessibility *)self view];
          v17 = [v16 window];

          if (v15 == v17)
          {
            v4 = [v11 accessibilityPerformEscape];
            goto LABEL_16;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v4 = 0;
LABEL_16:
      v5 = v20;
      v3 = v21;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v28 = MEMORY[0x29EDCA5F8];
    v29 = 3221225472;
    v30 = __72__BookmarksNavigationControllerAccessibility_accessibilityPerformEscape__block_invoke;
    v31 = &unk_29F2D7B48;
    v32 = v3;
    v33 = self;
    AXPerformSafeBlock();
    v4 = 1;
    v5 = v32;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v4;
}

@end
@interface BookmarksNavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (id)_segmentedControlItemForCollection:(id)collection;
- (id)_setAccessibilityLabelForItem:(id)item fromCollection:(id)collection;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)transitionConductor:(id)conductor didEndTransitionFromView:(id)view toView:(id)toView;
@end

@implementation BookmarksNavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BookmarksNavigationController" hasInstanceMethod:@"_segmentedControlItemForCollection:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateProtocol:@"BookmarksNavigationControllerDelegate" hasOptionalInstanceMethod:@"bookmarksNavigationControllerDidPressDoneButton:"];
  [validationsCopy validateClass:@"BookmarksNavigationController" hasInstanceVariable:@"_topLevelCollections" withType:"NSArray"];
  [validationsCopy validateClass:@"BookmarksNavigationController" hasInstanceVariable:@"_collectionSegmentedControl" withType:"UISegmentedControl"];
  [validationsCopy validateClass:@"BrowserRootViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"BookmarksNavigationController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"BookmarksNavigationController" isKindOfClass:@"UINavigationController"];
  [validationsCopy validateClass:@"UINavigationController" hasInstanceMethod:@"transitionConductor:didEndTransitionFromView:toView:" withFullSignature:{"v", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"rootViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Application" hasInstanceVariable:@"_browserWindowController" withType:"BrowserWindowController"];
  [validationsCopy validateClass:@"BrowserWindowController" hasInstanceMethod:@"browserControllers" withFullSignature:{"@", 0}];
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

- (id)_segmentedControlItemForCollection:(id)collection
{
  v8.receiver = self;
  v8.super_class = BookmarksNavigationControllerAccessibility;
  collectionCopy = collection;
  v5 = [(BookmarksNavigationControllerAccessibility *)&v8 _segmentedControlItemForCollection:collectionCopy];
  v6 = [(BookmarksNavigationControllerAccessibility *)self _setAccessibilityLabelForItem:v5 fromCollection:collectionCopy, v8.receiver, v8.super_class];

  return v6;
}

- (id)_setAccessibilityLabelForItem:(id)item fromCollection:(id)collection
{
  itemCopy = item;
  collectionCopy = collection;
  if ([collectionCopy isEqualToString:@"BookmarksCollection"])
  {
    v7 = @"buttonbar.bookmarks.text";
  }

  else if ([collectionCopy isEqualToString:@"CloudTabsCollection"])
  {
    v7 = @"bookmarks.nav.icloud";
  }

  else if ([collectionCopy isEqualToString:@"HistoryCollection"])
  {
    v7 = @"bookmarks.nav.history";
  }

  else if ([collectionCopy isEqualToString:@"ReadingListCollection"])
  {
    v7 = @"reading.list.button";
  }

  else
  {
    if (![collectionCopy isEqualToString:@"SocialLinksCollection"])
    {
      goto LABEL_12;
    }

    v7 = @"bookmarks.nav.social";
  }

  v8 = accessibilityLocalizedString(v7);
  [itemCopy setAccessibilityLabel:v8];

LABEL_12:

  return itemCopy;
}

- (void)transitionConductor:(id)conductor didEndTransitionFromView:(id)view toView:(id)toView
{
  v8 = *MEMORY[0x29EDC7F10];
  toViewCopy = toView;
  viewCopy = view;
  conductorCopy = conductor;
  _UIAccessibilityBlockPostingOfNotification();
  v12.receiver = self;
  v12.super_class = BookmarksNavigationControllerAccessibility;
  [(BookmarksNavigationControllerAccessibility *)&v12 transitionConductor:conductorCopy didEndTransitionFromView:viewCopy toView:toViewCopy];

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

          view = [v13 view];
          window = [view window];
          view2 = [(BookmarksNavigationControllerAccessibility *)self view];
          window2 = [view2 window];

          if (window == window2)
          {
            accessibilityPerformEscape = [v11 accessibilityPerformEscape];
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

      accessibilityPerformEscape = 0;
LABEL_16:
      v5 = v20;
      v3 = v21;
    }

    else
    {
      accessibilityPerformEscape = 0;
    }
  }

  else
  {
    v28 = MEMORY[0x29EDCA5F8];
    v29 = 3221225472;
    v30 = __72__BookmarksNavigationControllerAccessibility_accessibilityPerformEscape__block_invoke;
    v31 = &unk_29F2D7B48;
    v32 = v3;
    selfCopy = self;
    AXPerformSafeBlock();
    accessibilityPerformEscape = 1;
    v5 = v32;
  }

  v18 = *MEMORY[0x29EDCA608];
  return accessibilityPerformEscape;
}

@end
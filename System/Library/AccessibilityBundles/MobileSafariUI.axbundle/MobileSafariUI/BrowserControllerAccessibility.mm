@interface BrowserControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (id)_accessibilitySpeakThisViews;
- (id)accessibilityActiveTabDocument;
- (id)accessibilityCurrentWebView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateVisibleContentInset;
- (void)_axUpdateVisibleContentInsetForScrollView:(id)view;
- (void)_initSubviews;
- (void)browserViewController:(id)controller didCreateUnifiedBar:(id)bar;
- (void)dealloc;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)tabDocumentDidCompleteCheckForAppBanner:(id)banner;
- (void)updateInsetsForBackgroundWebView:(id)view;
@end

@implementation BrowserControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BrowserController" hasInstanceVariable:@"_rootViewController" withType:"BrowserRootViewController"];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"tabDocumentDidCompleteCheckForAppBanner:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"TabDocument" hasInstanceMethod:@"appBanner" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"browserViewController:didCreateUnifiedBar:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"setShowingReader: animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"isShowingReader" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"tabController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"_initSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceVariable:@"_tabController" withType:"TabController"];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"scrollViewDidScrollToTop:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"scrollViewShouldScrollToTop:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"TabController" hasInstanceMethod:@"activeTabDocument" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TabDocument" hasInstanceMethod:@"frontWebView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"updateInsetsForBackgroundWebView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"isPrivateBrowsingEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceVariable:@"_scrollView" withType:"UIScrollView"];
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceMethod:@"documentAndTopBarsContainerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TabController" hasInstanceVariable:@"_tabCollectionViewManager" withType:"TabCollectionViewManager"];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"webView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"rootViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceMethod:@"navigationBar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceMethod:@"unifiedBar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFBarRegistration" hasInstanceVariable:@"_bookmarksItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"BrowserController" hasInstanceVariable:@"_barManager" withType:"_SFBarManager"];
  [validationsCopy validateClass:@"_SFBarManager" hasInstanceVariable:@"_barToRegistrationMap" withType:"NSMapTable"];
}

- (void)browserViewController:(id)controller didCreateUnifiedBar:(id)bar
{
  v5.receiver = self;
  v5.super_class = BrowserControllerAccessibility;
  [(BrowserControllerAccessibility *)&v5 browserViewController:controller didCreateUnifiedBar:bar];
  [(BrowserControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityActiveTabDocument
{
  v2 = [(BrowserControllerAccessibility *)self safeValueForKey:@"tabController"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"activeTabDocument"];

  return v4;
}

- (id)_accessibilitySpeakThisViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  accessibilityCurrentWebView = [(BrowserControllerAccessibility *)self accessibilityCurrentWebView];
  if (accessibilityCurrentWebView)
  {
    [array addObject:accessibilityCurrentWebView];
  }

  return array;
}

- (id)accessibilityCurrentWebView
{
  accessibilityActiveTabDocument = [(BrowserControllerAccessibility *)self accessibilityActiveTabDocument];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"frontWebView"];

  return v4;
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  v8.receiver = self;
  v8.super_class = BrowserControllerAccessibility;
  v5 = [(BrowserControllerAccessibility *)&v8 scrollViewShouldScrollToTop:topCopy];
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    if (v5 | !UIAccessibilityIsSwitchControlRunning())
    {
      goto LABEL_6;
    }

LABEL_5:
    v7.receiver = self;
    v7.super_class = BrowserControllerAccessibility;
    v5 = [(BrowserControllerAccessibility *)&v7 scrollViewShouldScrollToTop:topCopy];
    goto LABEL_6;
  }

  if (!v5)
  {
    goto LABEL_5;
  }

  v5 = 1;
LABEL_6:

  return v5;
}

- (void)scrollViewDidScrollToTop:(id)top
{
  topCopy = top;
  v6.receiver = self;
  v6.super_class = BrowserControllerAccessibility;
  [(BrowserControllerAccessibility *)&v6 scrollViewDidScrollToTop:topCopy];
  v5 = topCopy;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __59__BrowserControllerAccessibility_scrollViewDidScrollToTop___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityScrollStatus];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v1);
}

- (void)_axUpdateVisibleContentInset
{
  objc_opt_class();
  v3 = [(BrowserControllerAccessibility *)self safeValueForKey:@"_scrollView"];
  v4 = __UIAccessibilityCastAsClass();

  [(BrowserControllerAccessibility *)self _axUpdateVisibleContentInsetForScrollView:v4];
}

- (void)_axUpdateVisibleContentInsetForScrollView:(id)view
{
  viewCopy = view;
  [viewCopy contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  v11 = [(BrowserControllerAccessibility *)self safeValueForKey:@"webView"];
  v12 = __UIAccessibilityCastAsClass();

  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  objc_opt_class();
  v21 = [(BrowserControllerAccessibility *)self safeValueForKey:@"rootViewController"];
  v22 = [v21 safeValueForKey:@"navigationBar"];
  v23 = __UIAccessibilityCastAsClass();

  [v23 bounds];
  [v12 convertRect:v23 fromView:?];
  MaxY = CGRectGetMaxY(v25);
  v26.origin.x = v14;
  v26.origin.y = v16;
  v26.size.width = v18;
  v26.size.height = v20;
  [viewCopy _accessibilitySetVisibleContentInset:{fmax(MaxY - CGRectGetMinY(v26), 0.0), v6, v8, v10}];
}

- (void)updateInsetsForBackgroundWebView:(id)view
{
  v6.receiver = self;
  v6.super_class = BrowserControllerAccessibility;
  viewCopy = view;
  [(BrowserControllerAccessibility *)&v6 updateInsetsForBackgroundWebView:viewCopy];
  scrollView = [viewCopy scrollView];

  [(BrowserControllerAccessibility *)self _axUpdateVisibleContentInsetForScrollView:scrollView];
}

- (void)_initSubviews
{
  v3.receiver = self;
  v3.super_class = BrowserControllerAccessibility;
  [(BrowserControllerAccessibility *)&v3 _initSubviews];
  [(BrowserControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)tabDocumentDidCompleteCheckForAppBanner:(id)banner
{
  v5.receiver = self;
  v5.super_class = BrowserControllerAccessibility;
  bannerCopy = banner;
  [(BrowserControllerAccessibility *)&v5 tabDocumentDidCompleteCheckForAppBanner:bannerCopy];
  v4 = [bannerCopy safeUIViewForKey:{@"appBanner", v5.receiver, v5.super_class}];

  [v4 _accessibilitySetSortPriority:51];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v23 = *MEMORY[0x29EDCA608];
  v21.receiver = self;
  v21.super_class = BrowserControllerAccessibility;
  [(BrowserControllerAccessibility *)&v21 _accessibilityLoadAccessibilityInformation];
  [(BrowserControllerAccessibility *)self _axUpdateVisibleContentInset];
  v3 = [(BrowserControllerAccessibility *)self safeValueForKey:@"_rootViewController"];
  [v3 _accessibilityLoadAccessibilityInformation];
  v4 = [v3 safeValueForKey:@"documentAndTopBarsContainerView"];
  [v4 accessibilitySetIdentification:@"PageView"];

  v20 = 0;
  objc_opt_class();
  v5 = [(BrowserControllerAccessibility *)self safeValueForKey:@"_barManager"];
  v6 = [v5 safeValueForKey:@"_barToRegistrationMap"];
  v7 = __UIAccessibilityCastAsClass();

  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  objectEnumerator = [v7 objectEnumerator];
  v9 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v16 + 1) + 8 * i) _accessibilityLoadAccessibilityInformation];
      }

      v10 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v10);
  }

  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accessibilityKeyboardDidHide_ name:*MEMORY[0x29EDC8198] object:0];

  v14 = [v3 safeValueForKey:@"unifiedBar"];
  [v14 _accessibilitySetSortPriority:50];

  v15 = *MEMORY[0x29EDCA608];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC8198] object:0];

  v4.receiver = self;
  v4.super_class = BrowserControllerAccessibility;
  [(BrowserControllerAccessibility *)&v4 dealloc];
}

@end
@interface AVMobileChromelessContentTabsViewControllerAccessibility
- (void)contentTabsView:(id)view didChangeContentTab:(id)tab withReason:(unint64_t)reason;
@end

@implementation AVMobileChromelessContentTabsViewControllerAccessibility

- (void)contentTabsView:(id)view didChangeContentTab:(id)tab withReason:(unint64_t)reason
{
  viewCopy = view;
  tabCopy = tab;
  v12.receiver = self;
  v12.super_class = AVMobileChromelessContentTabsViewControllerAccessibility;
  [(AVMobileChromelessContentTabsViewControllerAccessibility *)&v12 contentTabsView:viewCopy didChangeContentTab:tabCopy withReason:reason];
  objc_initWeak(&location, viewCopy);
  objc_copyWeak(&v10, &location);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __107__AVMobileChromelessContentTabsViewControllerAccessibility_contentTabsView_didChangeContentTab_withReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _accessibilityFindSubviewDescendant:&__block_literal_global_7];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v1);
}

uint64_t __107__AVMobileChromelessContentTabsViewControllerAccessibility_contentTabsView_didChangeContentTab_withReason___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  if (v2)
  {
    MEMORY[0x29C2C6300](@"AVMobileChromelessContentTabsViewController");
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

@end
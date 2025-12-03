@interface WKContentViewAccessibility__MessageUI__WebKit
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axRepostFirstResponderWhenReady;
- (void)dealloc;
- (void)willMoveToWindow:(id)window;
@end

@implementation WKContentViewAccessibility__MessageUI__WebKit

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = WKContentViewAccessibility__MessageUI__WebKit;
  [(WKContentViewAccessibility__MessageUI__WebKit *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v4 = MEMORY[0x29EDCA5F8];
  objc_copyWeak(&v5, &location);
  v3 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{-[WKContentViewAccessibility__MessageUI__WebKit hash](self, "hash", v4, 3221225472, __91__WKContentViewAccessibility__MessageUI__WebKit__accessibilityLoadAccessibilityInformation__block_invoke, &unk_29F2D1930)}];
  AXAddNotificationCallback();

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_axRepostFirstResponderWhenReady
{
  _accessibilityResponderElement = [(WKContentViewAccessibility__MessageUI__WebKit *)self _accessibilityResponderElement];

  if (_accessibilityResponderElement)
  {
    v4 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{-[WKContentViewAccessibility__MessageUI__WebKit hash](self, "hash")}];
    AXRemoveNotificationCallback();

    _UIAccessibilitySetAssociatedElementContextForNextNotification();
    v5 = *MEMORY[0x29EDC7448];

    UIAccessibilityPostNotification(v5, 0);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    _axFirstResponderStartRepost = [(WKContentViewAccessibility__MessageUI__WebKit *)self _axFirstResponderStartRepost];
    [_axFirstResponderStartRepost doubleValue];
    v9 = Current - v8;

    if (v9 < 3.0)
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

- (void)willMoveToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = WKContentViewAccessibility__MessageUI__WebKit;
  [(WKContentViewAccessibility__MessageUI__WebKit *)&v4 willMoveToWindow:window];
  [(WKContentViewAccessibility__MessageUI__WebKit *)self _accessibilityLoadAccessibilityInformation];
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{-[WKContentViewAccessibility__MessageUI__WebKit hash](self, "hash")}];
  AXRemoveNotificationCallback();

  v4.receiver = self;
  v4.super_class = WKContentViewAccessibility__MessageUI__WebKit;
  [(WKContentViewAccessibility__MessageUI__WebKit *)&v4 dealloc];
}

@end
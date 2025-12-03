@interface HWBrowserViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnounceHandwritingViewScroll;
- (void)_axUpdateAndFocusCanvas;
- (void)_clear:(id)_clear;
- (void)_inkViewTouchesEndedNotification:(id)notification;
- (void)_scrollPageToLeft:(id)left;
- (void)_scrollPageToRight:(id)right;
- (void)_undo:(id)_undo;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setCurrentHandwritingItem:(id)item;
- (void)viewDidLoad;
@end

@implementation HWBrowserViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HWBrowserViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"HWBrowserViewController" hasInstanceMethod:@"canvasView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HWBrowserViewController" hasInstanceMethod:@"currentHandwritingItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HWBrowserViewController" hasInstanceMethod:@"handwritingScrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HWBrowserViewController" hasInstanceMethod:@"_clear:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HWBrowserViewController" hasInstanceMethod:@"_undo:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HWBrowserViewController" hasInstanceMethod:@"_scrollPageToLeft:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HWBrowserViewController" hasInstanceMethod:@"_scrollPageToRight:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HWBrowserViewController" hasInstanceMethod:@"_inkViewTouchesEndedNotification:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HWBrowserViewController" hasInstanceMethod:@"scrollViewDidScroll:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HWBrowserViewController" hasInstanceMethod:@"scrollViewDidEndScrollingAnimation:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HWBrowserViewControllerAccessibility;
  [(HWBrowserViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HWBrowserViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v3 setAccessibilityViewIsModal:AXDeviceIsPhoneIdiom()];
  v4 = [(HWBrowserViewControllerAccessibility *)self safeValueForKey:@"handwritingScrollView"];
  [v4 _accessibilitySetVisibleContentInset:{*MEMORY[0x29EDC80C8], *(MEMORY[0x29EDC80C8] + 8), *(MEMORY[0x29EDC80C8] + 16), *(MEMORY[0x29EDC80C8] + 24)}];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HWBrowserViewControllerAccessibility;
  [(HWBrowserViewControllerAccessibility *)&v3 viewDidLoad];
  [(HWBrowserViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setCurrentHandwritingItem:(id)item
{
  v4.receiver = self;
  v4.super_class = HWBrowserViewControllerAccessibility;
  [(HWBrowserViewControllerAccessibility *)&v4 setCurrentHandwritingItem:item];
  [(HWBrowserViewControllerAccessibility *)self _axUpdateAndFocusCanvas];
  [(HWBrowserViewControllerAccessibility *)self _axSetShouldAnnounceScroll:0];
}

- (void)_clear:(id)_clear
{
  v4.receiver = self;
  v4.super_class = HWBrowserViewControllerAccessibility;
  [(HWBrowserViewControllerAccessibility *)&v4 _clear:_clear];
  [(HWBrowserViewControllerAccessibility *)self _axUpdateAndFocusCanvas];
}

- (void)_undo:(id)_undo
{
  v4.receiver = self;
  v4.super_class = HWBrowserViewControllerAccessibility;
  [(HWBrowserViewControllerAccessibility *)&v4 _undo:_undo];
  [(HWBrowserViewControllerAccessibility *)self _axSetShouldAnnounceScroll:0];
}

- (void)_scrollPageToLeft:(id)left
{
  leftCopy = left;
  v8 = 0;
  objc_opt_class();
  v5 = [(HWBrowserViewControllerAccessibility *)self safeValueForKey:@"handwritingScrollView"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 contentOffset];
  [(HWBrowserViewControllerAccessibility *)self _axSetLastContentOffsetX:?];
  v7.receiver = self;
  v7.super_class = HWBrowserViewControllerAccessibility;
  [(HWBrowserViewControllerAccessibility *)&v7 _scrollPageToLeft:leftCopy];
}

- (void)_scrollPageToRight:(id)right
{
  rightCopy = right;
  v8 = 0;
  objc_opt_class();
  v5 = [(HWBrowserViewControllerAccessibility *)self safeValueForKey:@"handwritingScrollView"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 contentOffset];
  [(HWBrowserViewControllerAccessibility *)self _axSetLastContentOffsetX:?];
  v7.receiver = self;
  v7.super_class = HWBrowserViewControllerAccessibility;
  [(HWBrowserViewControllerAccessibility *)&v7 _scrollPageToRight:rightCopy];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4.receiver = self;
  v4.super_class = HWBrowserViewControllerAccessibility;
  [(HWBrowserViewControllerAccessibility *)&v4 scrollViewDidScroll:scroll];
  [(HWBrowserViewControllerAccessibility *)self _axAnnounceHandwritingViewScroll];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  v4.receiver = self;
  v4.super_class = HWBrowserViewControllerAccessibility;
  [(HWBrowserViewControllerAccessibility *)&v4 scrollViewDidEndScrollingAnimation:animation];
  [(HWBrowserViewControllerAccessibility *)self _axSetShouldAnnounceScroll:1];
}

- (void)_inkViewTouchesEndedNotification:(id)notification
{
  v4.receiver = self;
  v4.super_class = HWBrowserViewControllerAccessibility;
  [(HWBrowserViewControllerAccessibility *)&v4 _inkViewTouchesEndedNotification:notification];
  [(HWBrowserViewControllerAccessibility *)self _axUpdateAndFocusCanvas];
}

- (void)_axUpdateAndFocusCanvas
{
  v2 = [(HWBrowserViewControllerAccessibility *)self safeValueForKey:@"canvasView"];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v2);
}

- (void)_axAnnounceHandwritingViewScroll
{
  objc_opt_class();
  v3 = [(HWBrowserViewControllerAccessibility *)self safeValueForKey:@"handwritingScrollView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 contentOffset];
  v6 = v5;
  [(HWBrowserViewControllerAccessibility *)self _axLastContentOffsetX];
  if (v6 != v7)
  {
    v8 = v7;
    if ([(HWBrowserViewControllerAccessibility *)self _axShouldAnnounceScroll])
    {
      if (v6 >= v8)
      {
        v9 = @"scrolled.right";
      }

      else
      {
        v9 = @"scrolled.left";
      }

      v10 = accessibilityLocalizedString(v9);
      UIAccessibilitySpeak();

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    }
  }
}

@end
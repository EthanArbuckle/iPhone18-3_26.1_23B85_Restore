@interface CKBrowserSwitcherViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityScrollStatusForScrollView:(id)view;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)browserTransitionCoordinatorWillCollapseOrDismiss:(id)dismiss withReason:(int64_t)reason;
- (void)browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:(id)fullscreen withReason:(int64_t)reason;
- (void)loadView;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setCurrentViewController:(id)controller;
@end

@implementation CKBrowserSwitcherViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKBrowserSwitcherViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CKBrowserSwitcherViewController" hasInstanceVariable:@"_currentViewController" withType:"UIViewController<CKBrowserViewControllerProtocol>"];
  [validationsCopy validateClass:@"CKBrowserSwitcherViewController" hasInstanceMethod:@"setCurrentViewController:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKBrowserSwitcherViewController" hasInstanceMethod:@"browserTransitionCoordinatorWillCollapseOrDismiss:withReason:" withFullSignature:{"v", "@", "q", 0}];
  [validationsCopy validateClass:@"CKBrowserSwitcherViewController" hasInstanceMethod:@"browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:withReason:" withFullSignature:{"v", "@", "q", 0}];
  [validationsCopy validateClass:@"CKBrowserSwitcherViewController" hasInstanceVariable:@"_currentVisiblePlugin" withType:"IMBalloonPlugin"];
  [validationsCopy validateClass:@"IMBalloonPlugin" hasInstanceMethod:@"browserDisplayName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKBrowserSwitcherViewController" hasInstanceMethod:@"grabberView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKAppGrabberView" hasInstanceVariable:@"_closeButton" withType:"UIButton"];
  [validationsCopy validateClass:@"CKBrowserSwitcherViewController" hasInstanceMethod:@"appGrabberViewCloseButtonTapped:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CKBrowserSwitcherViewControllerAccessibility;
  [(CKBrowserSwitcherViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(CKBrowserSwitcherViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 _accessibilitySetBoolValue:1 forKey:@"shouldBypassCollectionViewAX"];
  [v4 _accessibilitySetOpaqueElementScrollsContentIntoView:0];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CKBrowserSwitcherViewControllerAccessibility;
  [(CKBrowserSwitcherViewControllerAccessibility *)&v3 loadView];
  [(CKBrowserSwitcherViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setCurrentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CKBrowserSwitcherViewControllerAccessibility *)self safeValueForKey:@"_currentViewController"];
  v8.receiver = self;
  v8.super_class = CKBrowserSwitcherViewControllerAccessibility;
  [(CKBrowserSwitcherViewControllerAccessibility *)&v8 setCurrentViewController:controllerCopy];
  if (v5 != controllerCopy && [(CKBrowserSwitcherViewControllerAccessibility *)self _axIsScrollingByDragGesture])
  {
    v6 = *MEMORY[0x29EDC7ED8];
    v7 = [controllerCopy safeValueForKey:@"view"];
    UIAccessibilityPostNotification(v6, v7);

    [(CKBrowserSwitcherViewControllerAccessibility *)self _axSetIsScrollingByDragGesture:0];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v4.receiver = self;
  v4.super_class = CKBrowserSwitcherViewControllerAccessibility;
  [(CKBrowserSwitcherViewControllerAccessibility *)&v4 scrollViewWillBeginDragging:dragging];
  [(CKBrowserSwitcherViewControllerAccessibility *)self _axSetIsScrollingByDragGesture:1];
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(CKBrowserSwitcherViewControllerAccessibility *)self safeValueForKey:@"grabberView"];
  v4 = [v3 safeValueForKey:@"_closeButton"];
  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      [(CKBrowserSwitcherViewControllerAccessibility *)self appGrabberViewCloseButtonTapped:0];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
      return 1;
    }
  }

  else
  {
  }

  v7.receiver = self;
  v7.super_class = CKBrowserSwitcherViewControllerAccessibility;
  return [(CKBrowserSwitcherViewControllerAccessibility *)&v7 accessibilityPerformEscape];
}

- (void)browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:(id)fullscreen withReason:(int64_t)reason
{
  v6.receiver = self;
  v6.super_class = CKBrowserSwitcherViewControllerAccessibility;
  [(CKBrowserSwitcherViewControllerAccessibility *)&v6 browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:fullscreen withReason:reason];
  v5 = [(CKBrowserSwitcherViewControllerAccessibility *)self safeUIViewForKey:@"grabberView"];
  [v5 _accessibilitySetBoolValue:1 forKey:@"_axBrowserIsExpanded"];
}

- (void)browserTransitionCoordinatorWillCollapseOrDismiss:(id)dismiss withReason:(int64_t)reason
{
  v6.receiver = self;
  v6.super_class = CKBrowserSwitcherViewControllerAccessibility;
  [(CKBrowserSwitcherViewControllerAccessibility *)&v6 browserTransitionCoordinatorWillCollapseOrDismiss:dismiss withReason:reason];
  v5 = [(CKBrowserSwitcherViewControllerAccessibility *)self safeUIViewForKey:@"grabberView"];
  [v5 _accessibilitySetBoolValue:0 forKey:@"_axBrowserIsExpanded"];
}

- (id)accessibilityScrollStatusForScrollView:(id)view
{
  viewCopy = view;
  [viewCopy _accessibilityPageIndex];
  [viewCopy _accessibilityPageCount];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"browser.page.format");
  v7 = AXFormatInteger();
  v8 = AXFormatInteger();
  v9 = [v5 localizedStringWithFormat:v6, v7, v8];

  v10 = [(CKBrowserSwitcherViewControllerAccessibility *)self safeValueForKey:@"_currentVisiblePlugin"];
  objc_opt_class();
  v11 = [v10 safeValueForKey:@"browserDisplayName"];
  v12 = __UIAccessibilityCastAsClass();

  v13 = __UIAXStringForVariables();

  return v13;
}

@end
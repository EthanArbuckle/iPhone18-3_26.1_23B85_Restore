@interface NCFullScreenPresentableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_animateTransitionToDetailStateForTrigger:(int64_t)a3;
- (void)_axHandleStandByAnnouncementFinished;
@end

@implementation NCFullScreenPresentableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCFullScreenPresentableViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"NCFullScreenPresentableViewController" hasInstanceVariable:@"_bannerView" withType:"NCFullScreenStagingBannerView"];
  [v3 validateClass:@"NCFullScreenStagingBannerView" hasInstanceMethod:@"stage" withFullSignature:{"q", 0}];
  [v3 validateClass:@"NCFullScreenPresentableViewController" hasInstanceVariable:@"_notificationRequest" withType:"NCNotificationRequest"];
  [v3 validateClass:@"NCNotificationRequest" hasInstanceMethod:@"content" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationContent" hasInstanceMethod:@"defaultHeader" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCFullScreenStagingBannerView" hasInstanceVariable:@"_dateLabel" withType:"UILabel"];
  [v3 validateClass:@"NCFullScreenStagingBannerView" hasInstanceVariable:@"_detailPrimaryLabel" withType:"UILabel"];
  [v3 validateClass:@"NCFullScreenStagingBannerView" hasInstanceVariable:@"_detailSecondaryLabel" withType:"UILabel"];
  [v3 validateClass:@"NCFullScreenPresentableViewController" hasInstanceMethod:@"_animateTransitionToDetailStateForTrigger:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"NCFullScreenPresentableViewController" hasInstanceMethod:@"requestTransitionBlockingAssertionWithReason:" withFullSignature:{"@", "@", 0}];
}

- (void)_axHandleStandByAnnouncementFinished
{
  v3 = [(NCFullScreenPresentableViewControllerAccessibility *)self safeValueForKey:@"bannerView"];
  v4 = [v3 safeValueForKey:@"_detailPrimaryLabel"];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v4);
  AXPerformBlockOnMainThreadAfterDelay();
  v5 = [MEMORY[0x29EDBA068] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x29EDC7E98] object:0];
}

void __90__NCFullScreenPresentableViewControllerAccessibility__axHandleStandByAnnouncementFinished__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _axGetAssertion];
  [v1 invalidateWithReason:@"vot finished speaking"];
}

- (void)_animateTransitionToDetailStateForTrigger:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = NCFullScreenPresentableViewControllerAccessibility;
  [(NCFullScreenPresentableViewControllerAccessibility *)&v14 _animateTransitionToDetailStateForTrigger:a3];
  v4 = [(NCFullScreenPresentableViewControllerAccessibility *)self safeValueForKey:@"bannerView"];
  if ([v4 safeIntForKey:@"stage"] == 2)
  {
    v5 = [(NCFullScreenPresentableViewControllerAccessibility *)self requestTransitionBlockingAssertionWithReason:@"detail banner loaded"];
    [(NCFullScreenPresentableViewControllerAccessibility *)self _axSetAssertion:v5];
    v6 = [(NCFullScreenPresentableViewControllerAccessibility *)self safeValueForKey:@"_notificationRequest"];
    v7 = [v6 safeValueForKey:@"content"];
    v8 = [v7 safeValueForKey:@"defaultHeader"];

    v9 = [v4 safeValueForKey:@"_dateLabel"];
    v10 = [v4 safeValueForKey:@"_detailPrimaryLabel"];
    v11 = [v4 safeValueForKey:@"_detailSecondaryLabel"];
    v12 = __UIAXStringForVariables();
    v13 = [MEMORY[0x29EDBA068] defaultCenter];
    [v13 addObserver:self selector:sel__axHandleStandByAnnouncementFinished name:*MEMORY[0x29EDC7E98] object:0];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v12);
  }
}

@end
@interface SBNotificationBannerDestinationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_dismissPresentableCompleted:(id)a3;
- (void)notificationViewControllerWillBeginUserInteraction:(id)a3;
@end

@implementation SBNotificationBannerDestinationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"_cancelReplaceTimer" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"_cancelDismissTimer" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"_dismissPresentableCompleted:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"notificationViewControllerWillBeginUserInteraction:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"notificationViewControllerDidEndUserInteraction:" withFullSignature:{"v", "@", 0}];
}

- (void)_dismissPresentableCompleted:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBNotificationBannerDestinationAccessibility;
  [(SBNotificationBannerDestinationAccessibility *)&v3 _dismissPresentableCompleted:a3];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __77__SBNotificationBannerDestinationAccessibility__dismissPresentableCompleted___block_invoke()
{
  v0 = [MEMORY[0x29EDBDFA8] server];
  [v0 didPotentiallyDismissNonExclusiveSystemUI];
}

- (void)notificationViewControllerWillBeginUserInteraction:(id)a3
{
  v4 = a3;
  if (([v4 safeBoolForKey:@"_axHasFinishedAnnouncement"] & 1) != 0 || !UIAccessibilityIsVoiceOverRunning())
  {
    v5.receiver = self;
    v5.super_class = SBNotificationBannerDestinationAccessibility;
    [(SBNotificationBannerDestinationAccessibility *)&v5 notificationViewControllerWillBeginUserInteraction:v4];
  }

  else
  {
    v6 = MEMORY[0x29EDCA5F8];
    v7 = 3221225472;
    v8 = __99__SBNotificationBannerDestinationAccessibility_notificationViewControllerWillBeginUserInteraction___block_invoke;
    v9 = &unk_29F2FBA40;
    v10 = self;
    AXPerformSafeBlock();
  }
}

@end
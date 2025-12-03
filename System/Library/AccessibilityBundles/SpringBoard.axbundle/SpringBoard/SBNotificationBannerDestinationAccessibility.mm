@interface SBNotificationBannerDestinationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_dismissPresentableCompleted:(id)completed;
- (void)notificationViewControllerWillBeginUserInteraction:(id)interaction;
@end

@implementation SBNotificationBannerDestinationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"_cancelReplaceTimer" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"_cancelDismissTimer" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"_dismissPresentableCompleted:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"notificationViewControllerWillBeginUserInteraction:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"notificationViewControllerDidEndUserInteraction:" withFullSignature:{"v", "@", 0}];
}

- (void)_dismissPresentableCompleted:(id)completed
{
  v3.receiver = self;
  v3.super_class = SBNotificationBannerDestinationAccessibility;
  [(SBNotificationBannerDestinationAccessibility *)&v3 _dismissPresentableCompleted:completed];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __77__SBNotificationBannerDestinationAccessibility__dismissPresentableCompleted___block_invoke()
{
  v0 = [MEMORY[0x29EDBDFA8] server];
  [v0 didPotentiallyDismissNonExclusiveSystemUI];
}

- (void)notificationViewControllerWillBeginUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (([interactionCopy safeBoolForKey:@"_axHasFinishedAnnouncement"] & 1) != 0 || !UIAccessibilityIsVoiceOverRunning())
  {
    v5.receiver = self;
    v5.super_class = SBNotificationBannerDestinationAccessibility;
    [(SBNotificationBannerDestinationAccessibility *)&v5 notificationViewControllerWillBeginUserInteraction:interactionCopy];
  }

  else
  {
    v6 = MEMORY[0x29EDCA5F8];
    v7 = 3221225472;
    v8 = __99__SBNotificationBannerDestinationAccessibility_notificationViewControllerWillBeginUserInteraction___block_invoke;
    v9 = &unk_29F2FBA40;
    selfCopy = self;
    AXPerformSafeBlock();
  }
}

@end
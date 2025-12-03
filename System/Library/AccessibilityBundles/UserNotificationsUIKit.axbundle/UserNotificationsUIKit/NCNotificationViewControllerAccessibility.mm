@interface NCNotificationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityAppearanceAnnouncementHandledByEnclosingEntity;
- (BOOL)_accessibilityShouldPostScreenChangedOnPresentation;
- (id)_axLongLookView;
- (void)_axAnnounceNotification;
- (void)_axHandleAnnouncementFinished;
- (void)_axNotifyWillBeginUserInteraction:(BOOL)interaction;
- (void)_logNotificationMessage:(id)message;
@end

@implementation NCNotificationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PLPlatterView"];
  [validationsCopy validateClass:@"PLPlatterHeaderContentView"];
  [validationsCopy validateClass:@"NCNotificationShortLookView"];
  [validationsCopy validateClass:@"NCNotificationLongLookView"];
  [validationsCopy validateClass:@"NCNotificationLongLookViewController"];
  [validationsCopy validateClass:@"NCNotificationLongLookView" hasInstanceVariable:@"_headerContentView" withType:"PLPlatterHeaderContentView"];
  [validationsCopy validateClass:@"NCNotificationViewController" hasInstanceMethod:@"notificationRequest" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"NCDimmableView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationShortLookView" hasInstanceMethod:@"_notificationContentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationViewController" hasInstanceMethod:@"_notifyObserversWithBlock:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredListViewController"];
  [validationsCopy validateClass:@"NCNotificationViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateProtocol:@"NCNotificationViewControllerObserving" hasOptionalInstanceMethod:@"notificationViewControllerWillBeginUserInteraction:"];
  [validationsCopy validateProtocol:@"NCNotificationViewControllerObserving" hasOptionalInstanceMethod:@"notificationViewControllerDidEndUserInteraction:"];
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"SpringBoard" hasInstanceMethod:@"notificationDispatcher" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"SBNCNotificationDispatcher" hasInstanceVariable:@"_dispatcher" withType:"NCNotificationDispatcher"];
    [validationsCopy validateClass:@"SBNCAlertingController" hasInstanceMethod:@"screenController" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"SBNCScreenController" hasInstanceMethod:@"canTurnOnScreenForNotificationRequest:" withFullSignature:{"B", "@", 0}];
  }
}

- (BOOL)_accessibilityAppearanceAnnouncementHandledByEnclosingEntity
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  view = [v2 view];
  v4 = [view _accessibilityFindAncestor:&__block_literal_global_10 startWithSelf:0];
  v5 = v4 != 0;

  return v5;
}

uint64_t __105__NCNotificationViewControllerAccessibility__accessibilityAppearanceAnnouncementHandledByEnclosingEntity__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x29EDC7DA8] viewControllerForView:v2];
    NSClassFromString(&cfstr_Ncnotification_28.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_accessibilityShouldPostScreenChangedOnPresentation
{
  _axLongLookView = [(NCNotificationViewControllerAccessibility *)self _axLongLookView];
  v3 = _axLongLookView != 0;

  return v3;
}

uint64_t __59__NCNotificationViewControllerAccessibility_viewDidAppear___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _axHasSentAnnouncement];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) _axSetHasSentAnnouncement:1];
    v3 = *(a1 + 32);

    return [v3 _axAnnounceNotification];
  }

  return result;
}

- (void)_axAnnounceNotification
{
  v3 = [(NCNotificationViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"contentView"];
  [(NCNotificationViewControllerAccessibility *)self _logNotificationMessage:@"Notification tried to appear"];
  if ([v5 _accessibilityViewIsVisible])
  {
    NSClassFromString(&cfstr_Ncnotification_43.isa);
    if (objc_opt_isKindOfClass())
    {
      v6 = MEMORY[0x29EDBD7E8];
      accessibilityLabel = [v5 accessibilityLabel];
      v8 = [v6 axAttributedStringWithString:accessibilityLabel];

      v9 = MEMORY[0x29EDB8EB0];
      [v8 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBDA00]];
      [v8 setAttribute:v9 forKey:*MEMORY[0x29EDBD978]];
      defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
      [defaultCenter addObserver:self selector:sel__axHandleAnnouncementFinished name:*MEMORY[0x29EDC7E98] object:0];

      [(NCNotificationViewControllerAccessibility *)self _logNotificationMessage:@"Notification posting announcement to VO"];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v8);
      if (UIAccessibilityIsVoiceOverRunning())
      {
        [(NCNotificationViewControllerAccessibility *)self _axNotifyWillBeginUserInteraction:0];
      }
    }
  }
}

- (void)_axHandleAnnouncementFinished
{
  [(NCNotificationViewControllerAccessibility *)self _logNotificationMessage:@"Notification announcement finished"];
  [(NCNotificationViewControllerAccessibility *)self _axSetHasFinishedAnnouncement:1];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC7E98] object:0];

  [(NCNotificationViewControllerAccessibility *)self _axNotifyWillBeginUserInteraction:0];

  [(NCNotificationViewControllerAccessibility *)self _axNotifyDidEndUserInteraction];
}

- (void)_axNotifyWillBeginUserInteraction:(BOOL)interaction
{
  if (interaction)
  {
    [(NCNotificationViewControllerAccessibility *)self _logNotificationMessage:@"Notification notifying did begin interaction for focus"];
    [(NCNotificationViewControllerAccessibility *)self _axSetHasFinishedAnnouncement:1];
  }

  AXPerformSafeBlock();
}

void __79__NCNotificationViewControllerAccessibility__axNotifyWillBeginUserInteraction___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v5 _logNotificationMessage:@"Notification notifying did begin interaction"];
    [v4 notificationViewControllerWillBeginUserInteraction:v5];
  }
}

void __75__NCNotificationViewControllerAccessibility__axNotifyDidEndUserInteraction__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v5 _logNotificationMessage:@"Notification notifying did end interaction"];
    [v4 notificationViewControllerDidEndUserInteraction:v5];
  }
}

- (void)_logNotificationMessage:(id)message
{
  v18 = *MEMORY[0x29EDCA608];
  messageCopy = message;
  buf[0] = 0;
  v5 = [(NCNotificationViewControllerAccessibility *)self safeValueForKey:@"view"];
  v6 = __UIAccessibilitySafeClass();

  v7 = [v6 safeValueForKey:@"contentView"];
  mEMORY[0x29EDBD6D0] = [MEMORY[0x29EDBD6D0] sharedInstance];
  ignoreLogging = [mEMORY[0x29EDBD6D0] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x29EDBD6D0] identifier];
    v11 = AXLoggerForFacility();

    v12 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = AXColorizeFormatLog();
      v14 = _AXStringForArgs();
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138543362;
        v17 = v14;
        _os_log_impl(&dword_29C6DA000, v11, v12, "%{public}@", buf, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x29EDCA608];
}

uint64_t __92__NCNotificationViewControllerAccessibility_dismissViewControllerWithTransition_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  AXPerformBlockOnMainThreadAfterDelay();
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __92__NCNotificationViewControllerAccessibility_dismissViewControllerWithTransition_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (id)_axLongLookView
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  view = [v2 view];

  NSClassFromString(&cfstr_Ncnotification_58.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = view;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end
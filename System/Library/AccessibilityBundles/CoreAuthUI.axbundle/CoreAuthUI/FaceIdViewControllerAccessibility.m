@interface FaceIdViewControllerAccessibility
- (id)_accessibilityNotificationFeedbackGenerator;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)mechanismEvent:(int64_t)a3 value:(id)a4 reply:(id)a5;
@end

@implementation FaceIdViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = FaceIdViewControllerAccessibility;
  [(FaceIdViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (id)_accessibilityNotificationFeedbackGenerator
{
  v3 = [(FaceIdViewControllerAccessibility *)self _axNotificationFeedbackGenerator];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDC7B90]);
    [(FaceIdViewControllerAccessibility *)self _setAXNotificationFeedbackGenerator:v3];
  }

  return v3;
}

- (void)mechanismEvent:(int64_t)a3 value:(id)a4 reply:(id)a5
{
  v5.receiver = self;
  v5.super_class = FaceIdViewControllerAccessibility;
  [(FaceIdViewControllerAccessibility *)&v5 mechanismEvent:a3 value:a4 reply:a5];
  AXPerformBlockAsynchronouslyOnMainThread();
}

void __64__FaceIdViewControllerAccessibility_mechanismEvent_value_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 5)
  {
    if ((v1 - 6) >= 2)
    {
      return;
    }
  }

  else if (v1 != 1)
  {
    if (v1 == 2)
    {
      v4 = [*(a1 + 32) _accessibilityNotificationFeedbackGenerator];
      [v4 notificationOccurred:0];
      v3 = accessibilityLocalizedString(@"pearl.authentication.success");
      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }

    else
    {
      if (v1 != 5)
      {
        return;
      }

      v2 = *MEMORY[0x29EDC7EA8];
      v4 = accessibilityLocalizedString(@"pearl.authentication.acquiring");
      UIAccessibilityPostNotification(v2, v4);
    }

    goto LABEL_9;
  }

  v4 = [*(a1 + 32) _accessibilityNotificationFeedbackGenerator];
  [v4 notificationOccurred:2];
LABEL_9:
}

@end
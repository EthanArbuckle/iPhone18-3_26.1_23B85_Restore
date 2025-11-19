@interface AXSB
@end

@implementation AXSB

double __85__AXSB_UIAlertControllerSafeCategory__applyAccessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];
  v3 = v2;

  return v3;
}

void __71__AXSB_SBRestartManagerSafeCategory_initializeAndRunStartupTransition___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, v5, a3);
    v5 = v7;
  }

  [v5 addTransactionDidCompleteBlock:&__block_literal_global_2990];
}

void __71__AXSB_SBRestartManagerSafeCategory_initializeAndRunStartupTransition___block_invoke_4()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = *MEMORY[0x277CE7CC8];

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v1, 0, 0, 1u);
}

uint64_t __73__AXSB_SBAssistantControllerSafeCategory__axDismissSiriForAssistiveTouch__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _axSetSiriDismissalIsForAssistiveTouch:1];
  v2 = *(a1 + 32);
  v3 = [v2 _axSiriDismissalOptions];
  v4 = [*(a1 + 32) view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  [v2 _dismissAssistantViewIfNecessaryWithAnimation:1 factory:0 dismissalOptions:v3 windowScene:v6 completion:0];

  v7 = *(a1 + 32);

  return [v7 _axSetSiriDismissalIsForAssistiveTouch:0];
}

@end
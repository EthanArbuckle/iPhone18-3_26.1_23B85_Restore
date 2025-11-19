@interface AXSB_SBAssistantControllerSafeCategory
- (void)_axDismissSiriForAssistiveTouch;
- (void)_axScheduleDismissSiriForAssistiveTouch;
- (void)_dismissAssistantViewIfNecessaryWithAnimation:(int64_t)a3 factory:(id)a4 dismissalOptions:(id)a5 windowScene:(id)a6 completion:(id)a7;
@end

@implementation AXSB_SBAssistantControllerSafeCategory

- (void)_axDismissSiriForAssistiveTouch
{
  [(AXSB_SBAssistantControllerSafeCategory *)self _axCancelDismissSiriForAssistiveTouch];
  v2 = ASTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21FE6B000, v2, OS_LOG_TYPE_DEFAULT, "AssistiveTouch did not handle the up event. Now dismissing Siri.", buf, 2u);
  }

  AXPerformSafeBlock();
}

- (void)_axScheduleDismissSiriForAssistiveTouch
{
  [(AXSB_SBAssistantControllerSafeCategory *)self _axCancelDismissSiriForAssistiveTouch];

  [(AXSB_SBAssistantControllerSafeCategory *)self performSelector:sel__axDismissSiriForAssistiveTouch withObject:0 afterDelay:0.2];
}

- (void)_dismissAssistantViewIfNecessaryWithAnimation:(int64_t)a3 factory:(id)a4 dismissalOptions:(id)a5 windowScene:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v13 safeIntegerForKey:@"dismissalReason"] == 23 && _AXSAssistiveTouchEnabled() && !-[AXSB_SBAssistantControllerSafeCategory _axSiriDismissalIsForAssistiveTouch](self, "_axSiriDismissalIsForAssistiveTouch"))
  {
    v16 = ASTLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21FE6B000, v16, OS_LOG_TYPE_DEFAULT, "Delaying Siri dismissal due to AssistiveTouch.", buf, 2u);
    }

    [(AXSB_SBAssistantControllerSafeCategory *)self _axSetSiriDismissalOptions:v13];
    [(AXSB_SBAssistantControllerSafeCategory *)self _axScheduleDismissSiriForAssistiveTouch];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = AXSB_SBAssistantControllerSafeCategory;
    [(AXSB_SBAssistantControllerSafeCategory *)&v17 _dismissAssistantViewIfNecessaryWithAnimation:a3 factory:v12 dismissalOptions:v13 windowScene:v14 completion:v15];
  }
}

@end
@interface VoiceOverIntentHandler
- (void)handleToggleVoiceOver:(id)a3 completion:(id)a4;
- (void)resolveOperationForToggleVoiceOver:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleVoiceOver:(id)a3 withCompletion:(id)a4;
@end

@implementation VoiceOverIntentHandler

- (void)handleToggleVoiceOver:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "VoiceOverIntentHandler: Handling intent %@", &v14, 0xCu);
  }

  v8 = _AXSVoiceOverTouchEnabled() == 0;
  if ([(__CFString *)v5 operation]!= 1)
  {
    goto LABEL_7;
  }

  if ([(__CFString *)v5 operation]!= 1 || [(__CFString *)v5 state])
  {
    v8 = [(__CFString *)v5 state]== 1;
LABEL_7:
    v9 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v8)
      {
        v10 = @"YES";
      }

      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "VoiceOverIntentHandler. Turning VO %@", &v14, 0xCu);
    }

    if (v8)
    {
      _AXSVoiceOverTouchUserHasReadNoHomeButtonGestureDescription();
      _AXSVoiceOverTouchSetUsageConfirmed();
    }

    _AXSVoiceOverTouchSetEnabled();
    _AXSVoiceOverTouchSetUIEnabled();
    v11 = 4;
    goto LABEL_14;
  }

  v13 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10000D80C(v5, v13);
  }

  v11 = 5;
LABEL_14:
  v12 = [[AXToggleVoiceOverIntentResponse alloc] initWithCode:v11 userActivity:0];
  v6[2](v6, v12);
}

- (void)resolveOperationForToggleVoiceOver:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleVoiceOver:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

@end
@interface VoiceOverIntentHandler
- (void)handleToggleVoiceOver:(id)over completion:(id)completion;
- (void)resolveOperationForToggleVoiceOver:(id)over withCompletion:(id)completion;
- (void)resolveStateForToggleVoiceOver:(id)over withCompletion:(id)completion;
@end

@implementation VoiceOverIntentHandler

- (void)handleToggleVoiceOver:(id)over completion:(id)completion
{
  overCopy = over;
  completionCopy = completion;
  v7 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = overCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "VoiceOverIntentHandler: Handling intent %@", &v14, 0xCu);
  }

  v8 = _AXSVoiceOverTouchEnabled() == 0;
  if ([(__CFString *)overCopy operation]!= 1)
  {
    goto LABEL_7;
  }

  if ([(__CFString *)overCopy operation]!= 1 || [(__CFString *)overCopy state])
  {
    v8 = [(__CFString *)overCopy state]== 1;
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
    sub_10000D80C(overCopy, v13);
  }

  v11 = 5;
LABEL_14:
  v12 = [[AXToggleVoiceOverIntentResponse alloc] initWithCode:v11 userActivity:0];
  completionCopy[2](completionCopy, v12);
}

- (void)resolveOperationForToggleVoiceOver:(id)over withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [over operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleVoiceOver:(id)over withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [over state]);
  (*(completion + 2))(completionCopy, v7);
}

@end
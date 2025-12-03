@interface SwitchControlIntentHandler
- (void)handleToggleSwitchControl:(id)control completion:(id)completion;
- (void)resolveOperationForToggleSwitchControl:(id)control withCompletion:(id)completion;
- (void)resolveStateForToggleSwitchControl:(id)control withCompletion:(id)completion;
@end

@implementation SwitchControlIntentHandler

- (void)handleToggleSwitchControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  if ([controlCopy operation] != 1 || objc_msgSend(controlCopy, "state"))
  {
    if ([controlCopy operation] == 2)
    {
      v7 = _AXSAssistiveTouchScannerEnabled() == 0;
    }

    else
    {
      v7 = [controlCopy state] == 1;
    }

    v8 = v7;
    v9 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"OFF";
      if (v8)
      {
        v10 = @"ON";
      }

      v19 = 138412290;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "SwitchControlIntentHandler Turning  %@", &v19, 0xCu);
    }

    v11 = _AXSTripleClickCopyOptions();
    _AXSAssistiveTouchScannerSetEnabled();
    v12 = +[AXSettings sharedInstance];
    v13 = v12;
    if (v8)
    {
      [v12 setAssistiveTouchSwitchUsageConfirmed:1];

      if (([(AXToggleSwitchControlIntentResponse *)v11 containsObject:&off_100018BD0]& 1) == 0)
      {
        _AXSTripleClickAddOption();
LABEL_19:
        v16 = +[AXSettings sharedInstance];
        [v16 setAssistiveTouchScannerAddedTripleClickAutomatically:v8];
      }
    }

    else
    {
      assistiveTouchScannerAddedTripleClickAutomatically = [v12 assistiveTouchScannerAddedTripleClickAutomatically];

      if (assistiveTouchScannerAddedTripleClickAutomatically)
      {
        if ([(AXToggleSwitchControlIntentResponse *)v11 containsObject:&off_100018BD0])
        {
          v15 = [(AXToggleSwitchControlIntentResponse *)v11 mutableCopy];
          [v15 removeObject:&off_100018BD0];
          _AXSSetTripleClickOptions();
        }

        goto LABEL_19;
      }
    }

    v17 = [[AXToggleSwitchControlIntentResponse alloc] initWithCode:4 userActivity:0];
    completionCopy[2](completionCopy, v17);

    goto LABEL_21;
  }

  v18 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10000D80C(controlCopy, v18);
  }

  v11 = [[AXToggleSwitchControlIntentResponse alloc] initWithCode:5 userActivity:0];
  completionCopy[2](completionCopy, v11);
LABEL_21:
}

- (void)resolveOperationForToggleSwitchControl:(id)control withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [control operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleSwitchControl:(id)control withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [control state]);
  (*(completion + 2))(completionCopy, v7);
}

@end
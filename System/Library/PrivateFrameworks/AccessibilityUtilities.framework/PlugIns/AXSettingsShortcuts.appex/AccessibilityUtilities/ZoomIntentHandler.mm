@interface ZoomIntentHandler
- (void)handleToggleZoom:(id)a3 completion:(id)a4;
- (void)resolveOperationForToggleZoom:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleZoom:(id)a3 withCompletion:(id)a4;
@end

@implementation ZoomIntentHandler

- (void)handleToggleZoom:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 operation] == 1 && !objc_msgSend(v5, "state"))
  {
    v13 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000D80C(v5, v13);
    }

    v10 = [AXToggleZoomIntentResponse alloc];
    v11 = 5;
  }

  else
  {
    if ([v5 operation] == 2)
    {
      v7 = _AXSZoomTouchEnabled() == 0;
    }

    else
    {
      v7 = [v5 state] == 1;
    }

    v8 = v7;
    _AXSZoomTouchSetEnabled();
    _AXSZoomTouchSetToggledByPreferenceSwitch();
    if (v8)
    {
      v9 = +[AXSettings sharedInstance];
      [v9 setZoomInStandby:0];
    }

    v10 = [AXToggleZoomIntentResponse alloc];
    v11 = 4;
  }

  v12 = [(AXToggleZoomIntentResponse *)v10 initWithCode:v11 userActivity:0];
  v6[2](v6, v12);
}

- (void)resolveOperationForToggleZoom:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleZoom:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

@end
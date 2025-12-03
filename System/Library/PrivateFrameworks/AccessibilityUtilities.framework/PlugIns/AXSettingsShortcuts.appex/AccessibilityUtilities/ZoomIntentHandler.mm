@interface ZoomIntentHandler
- (void)handleToggleZoom:(id)zoom completion:(id)completion;
- (void)resolveOperationForToggleZoom:(id)zoom withCompletion:(id)completion;
- (void)resolveStateForToggleZoom:(id)zoom withCompletion:(id)completion;
@end

@implementation ZoomIntentHandler

- (void)handleToggleZoom:(id)zoom completion:(id)completion
{
  zoomCopy = zoom;
  completionCopy = completion;
  if ([zoomCopy operation] == 1 && !objc_msgSend(zoomCopy, "state"))
  {
    v13 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000D80C(zoomCopy, v13);
    }

    v10 = [AXToggleZoomIntentResponse alloc];
    v11 = 5;
  }

  else
  {
    if ([zoomCopy operation] == 2)
    {
      v7 = _AXSZoomTouchEnabled() == 0;
    }

    else
    {
      v7 = [zoomCopy state] == 1;
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
  completionCopy[2](completionCopy, v12);
}

- (void)resolveOperationForToggleZoom:(id)zoom withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [zoom operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleZoom:(id)zoom withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [zoom state]);
  (*(completion + 2))(completionCopy, v7);
}

@end
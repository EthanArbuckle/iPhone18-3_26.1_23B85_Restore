@interface AXDisplayIntentHandler
- (void)confirmSetLargeText:(id)text completion:(id)completion;
- (void)handleSetLargeText:(id)text completion:(id)completion;
- (void)handleToggleClassicInvert:(id)invert completion:(id)completion;
- (void)handleToggleSmartInvert:(id)invert completion:(id)completion;
- (void)resolveOperationForToggleClassicInvert:(id)invert withCompletion:(id)completion;
- (void)resolveOperationForToggleSmartInvert:(id)invert withCompletion:(id)completion;
- (void)resolveStateForToggleClassicInvert:(id)invert withCompletion:(id)completion;
- (void)resolveStateForToggleSmartInvert:(id)invert withCompletion:(id)completion;
- (void)resolveTextSizeForSetLargeText:(id)text withCompletion:(id)completion;
@end

@implementation AXDisplayIntentHandler

- (void)handleToggleSmartInvert:(id)invert completion:(id)completion
{
  invertCopy = invert;
  completionCopy = completion;
  if ([invertCopy operation] == 1 && !objc_msgSend(invertCopy, "state"))
  {
    v16 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000D80C(invertCopy, v16);
    }

    v13 = [AXToggleSmartInvertIntentResponse alloc];
    v14 = 5;
  }

  else
  {
    v7 = _AXSInvertColorsEnabled() == 0;
    if ([invertCopy operation] == 1)
    {
      v7 = [invertCopy state] == 1;
    }

    v8 = +[AXSettings sharedInstance];
    classicInvertColors = [v8 classicInvertColors];

    if (classicInvertColors && v7)
    {
      v10 = +[AXSettings sharedInstance];
      [v10 setClassicInvertColors:0];
    }

    _AXSInvertColorsSetEnabled();
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v12 = +[AXSettings sharedInstance];
      [v12 setLastSmartInvertColorsEnablement:Current];
    }

    v13 = [AXToggleSmartInvertIntentResponse alloc];
    v14 = 4;
  }

  v15 = [(AXToggleSmartInvertIntentResponse *)v13 initWithCode:v14 userActivity:0];
  completionCopy[2](completionCopy, v15);
}

- (void)resolveOperationForToggleSmartInvert:(id)invert withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [invert operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleSmartInvert:(id)invert withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [invert state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleClassicInvert:(id)invert completion:(id)completion
{
  invertCopy = invert;
  completionCopy = completion;
  if ([invertCopy operation] == 1 && !objc_msgSend(invertCopy, "state"))
  {
    v14 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000D80C(invertCopy, v14);
    }

    v11 = [AXToggleClassicInvertIntentResponse alloc];
    v12 = 5;
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    classicInvertColors = [v7 classicInvertColors];

    if ([invertCopy operation] == 1)
    {
      v9 = [invertCopy state] == 1;
    }

    else
    {
      v9 = classicInvertColors ^ 1;
    }

    v10 = +[AXSettings sharedInstance];
    [v10 setClassicInvertColors:v9];

    v11 = [AXToggleClassicInvertIntentResponse alloc];
    v12 = 4;
  }

  v13 = [(AXToggleClassicInvertIntentResponse *)v11 initWithCode:v12 userActivity:0];
  completionCopy[2](completionCopy, v13);
}

- (void)resolveOperationForToggleClassicInvert:(id)invert withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [invert operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleClassicInvert:(id)invert withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [invert state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleSetLargeText:(id)text completion:(id)completion
{
  completionCopy = completion;
  textCopy = text;
  _AXSSetLargeTextUsesExtendedRange();
  v7 = sub_100001F8C();
  textSize = [textCopy textSize];

  v9 = [v7 objectAtIndexedSubscript:textSize - 1];
  _AXSSetPreferredContentSizeCategoryName();

  v10 = [[AXSetLargeTextIntentResponse alloc] initWithCode:4 userActivity:0];
  completionCopy[2](completionCopy, v10);
}

- (void)confirmSetLargeText:(id)text completion:(id)completion
{
  completionCopy = completion;
  textSize = [text textSize];
  v6 = textSize - 1;
  if (textSize < 1 || (sub_100001F8C(), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6 >= v8))
  {
    v9 = 5;
  }

  else
  {
    v9 = 4;
  }

  v10 = [[AXSetLargeTextIntentResponse alloc] initWithCode:v9 userActivity:0];
  completionCopy[2](completionCopy, v10);
}

- (void)resolveTextSizeForSetLargeText:(id)text withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXEnumResolutionResult successWithResolvedEnum:](AXEnumResolutionResult, "successWithResolvedEnum:", [text textSize]);
  (*(completion + 2))(completionCopy, v7);
}

@end
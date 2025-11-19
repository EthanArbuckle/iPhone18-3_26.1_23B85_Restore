@interface AXDisplayIntentHandler
- (void)confirmSetLargeText:(id)a3 completion:(id)a4;
- (void)handleSetLargeText:(id)a3 completion:(id)a4;
- (void)handleToggleClassicInvert:(id)a3 completion:(id)a4;
- (void)handleToggleSmartInvert:(id)a3 completion:(id)a4;
- (void)resolveOperationForToggleClassicInvert:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleSmartInvert:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleClassicInvert:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleSmartInvert:(id)a3 withCompletion:(id)a4;
- (void)resolveTextSizeForSetLargeText:(id)a3 withCompletion:(id)a4;
@end

@implementation AXDisplayIntentHandler

- (void)handleToggleSmartInvert:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 operation] == 1 && !objc_msgSend(v5, "state"))
  {
    v16 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000D80C(v5, v16);
    }

    v13 = [AXToggleSmartInvertIntentResponse alloc];
    v14 = 5;
  }

  else
  {
    v7 = _AXSInvertColorsEnabled() == 0;
    if ([v5 operation] == 1)
    {
      v7 = [v5 state] == 1;
    }

    v8 = +[AXSettings sharedInstance];
    v9 = [v8 classicInvertColors];

    if (v9 && v7)
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
  v6[2](v6, v15);
}

- (void)resolveOperationForToggleSmartInvert:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleSmartInvert:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleClassicInvert:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 operation] == 1 && !objc_msgSend(v5, "state"))
  {
    v14 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000D80C(v5, v14);
    }

    v11 = [AXToggleClassicInvertIntentResponse alloc];
    v12 = 5;
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    v8 = [v7 classicInvertColors];

    if ([v5 operation] == 1)
    {
      v9 = [v5 state] == 1;
    }

    else
    {
      v9 = v8 ^ 1;
    }

    v10 = +[AXSettings sharedInstance];
    [v10 setClassicInvertColors:v9];

    v11 = [AXToggleClassicInvertIntentResponse alloc];
    v12 = 4;
  }

  v13 = [(AXToggleClassicInvertIntentResponse *)v11 initWithCode:v12 userActivity:0];
  v6[2](v6, v13);
}

- (void)resolveOperationForToggleClassicInvert:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleClassicInvert:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleSetLargeText:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  _AXSSetLargeTextUsesExtendedRange();
  v7 = sub_100001F8C();
  v8 = [v6 textSize];

  v9 = [v7 objectAtIndexedSubscript:v8 - 1];
  _AXSSetPreferredContentSizeCategoryName();

  v10 = [[AXSetLargeTextIntentResponse alloc] initWithCode:4 userActivity:0];
  v5[2](v5, v10);
}

- (void)confirmSetLargeText:(id)a3 completion:(id)a4
{
  v11 = a4;
  v5 = [a3 textSize];
  v6 = v5 - 1;
  if (v5 < 1 || (sub_100001F8C(), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6 >= v8))
  {
    v9 = 5;
  }

  else
  {
    v9 = 4;
  }

  v10 = [[AXSetLargeTextIntentResponse alloc] initWithCode:v9 userActivity:0];
  v11[2](v11, v10);
}

- (void)resolveTextSizeForSetLargeText:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXEnumResolutionResult successWithResolvedEnum:](AXEnumResolutionResult, "successWithResolvedEnum:", [a3 textSize]);
  (*(a4 + 2))(v6, v7);
}

@end
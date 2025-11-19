@interface AXToggleNameRecognitionIntentHandler
- (void)handleToggleNameRecognition:(id)a3 completion:(id)a4;
- (void)resolveOperationForToggleNameRecognition:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleNameRecognition:(id)a3 withCompletion:(id)a4;
@end

@implementation AXToggleNameRecognitionIntentHandler

- (void)resolveOperationForToggleNameRecognition:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleNameRecognition:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 operation] != 1 || objc_msgSend(v5, "state"))
  {
    v7 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "ToggleNameRecognitionIntentHandler: Handling intent %@", &v16, 0xCu);
    }

    v8 = [v5 operation];
    if (v8 == 2)
    {
      v11 = +[AXSettings sharedInstance];
      v13 = +[AXSettings sharedInstance];
      [v11 setNameRecognitionEnabled:{objc_msgSend(v13, "isNameRecognitionEnabled") ^ 1}];
    }

    else
    {
      if (v8 != 1)
      {
        goto LABEL_7;
      }

      v8 = [v5 state];
      if (v8 == 2)
      {
        v10 = +[AXSettings sharedInstance];
        v11 = v10;
        v12 = 0;
      }

      else
      {
        if (v8 != 1)
        {
LABEL_7:
          if (v8)
          {
            v9 = 4;
          }

          else
          {
            v9 = 5;
          }

          goto LABEL_20;
        }

        v10 = +[AXSettings sharedInstance];
        v11 = v10;
        v12 = 1;
      }

      [v10 setNameRecognitionEnabled:v12];
    }

    v9 = 4;
    goto LABEL_20;
  }

  v14 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10000D80C(v5, v14);
  }

  v9 = 5;
LABEL_20:
  v15 = [[AXToggleNameRecognitionIntentResponse alloc] initWithCode:v9 userActivity:0];
  v6[2](v6, v15);
}

- (void)resolveStateForToggleNameRecognition:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

@end
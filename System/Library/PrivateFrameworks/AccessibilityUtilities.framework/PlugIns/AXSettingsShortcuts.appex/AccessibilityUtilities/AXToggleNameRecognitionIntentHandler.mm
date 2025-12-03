@interface AXToggleNameRecognitionIntentHandler
- (void)handleToggleNameRecognition:(id)recognition completion:(id)completion;
- (void)resolveOperationForToggleNameRecognition:(id)recognition withCompletion:(id)completion;
- (void)resolveStateForToggleNameRecognition:(id)recognition withCompletion:(id)completion;
@end

@implementation AXToggleNameRecognitionIntentHandler

- (void)resolveOperationForToggleNameRecognition:(id)recognition withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [recognition operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleNameRecognition:(id)recognition completion:(id)completion
{
  recognitionCopy = recognition;
  completionCopy = completion;
  if ([recognitionCopy operation] != 1 || objc_msgSend(recognitionCopy, "state"))
  {
    v7 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = recognitionCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "ToggleNameRecognitionIntentHandler: Handling intent %@", &v16, 0xCu);
    }

    operation = [recognitionCopy operation];
    if (operation == 2)
    {
      v11 = +[AXSettings sharedInstance];
      v13 = +[AXSettings sharedInstance];
      [v11 setNameRecognitionEnabled:{objc_msgSend(v13, "isNameRecognitionEnabled") ^ 1}];
    }

    else
    {
      if (operation != 1)
      {
        goto LABEL_7;
      }

      operation = [recognitionCopy state];
      if (operation == 2)
      {
        v10 = +[AXSettings sharedInstance];
        v11 = v10;
        v12 = 0;
      }

      else
      {
        if (operation != 1)
        {
LABEL_7:
          if (operation)
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
    sub_10000D80C(recognitionCopy, v14);
  }

  v9 = 5;
LABEL_20:
  v15 = [[AXToggleNameRecognitionIntentResponse alloc] initWithCode:v9 userActivity:0];
  completionCopy[2](completionCopy, v15);
}

- (void)resolveStateForToggleNameRecognition:(id)recognition withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [recognition state]);
  (*(completion + 2))(completionCopy, v7);
}

@end
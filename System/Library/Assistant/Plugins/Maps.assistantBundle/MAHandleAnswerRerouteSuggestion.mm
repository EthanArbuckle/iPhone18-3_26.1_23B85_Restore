@interface MAHandleAnswerRerouteSuggestion
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleAnswerRerouteSuggestion

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v6 = [SACommandFailed alloc];
  v7 = [v6 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:8004 onTarget:802 eventValue:0];

  v9 = +[MapsSiriIPCInterface sharedInterface];
  [v9 initializeBrokerConnectionIfNeeded];
  if ([v9 canReceiveMessages] && !objc_msgSend(v9, "isMapsBackgroundTaskSuspended"))
  {
    response = [(MAHandleAnswerRerouteSuggestion *)self response];
    v12 = [response isEqualToString:SALocalSearchAnswerRerouteSuggestionResponseAcceptValue];

    dictionary = objc_alloc_init(IPCHandleTrafficAlertMessage);
    [(IPCHandleTrafficAlertMessage *)dictionary setShouldReroute:v12];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_187CC;
    v13[3] = &unk_34B30;
    v14 = completionCopy;
    [v9 handleTrafficeReroute:dictionary completion:v13];
  }

  else
  {
    dictionary = [v7 dictionary];
    (*(completionCopy + 2))(completionCopy, dictionary);
  }
}

@end
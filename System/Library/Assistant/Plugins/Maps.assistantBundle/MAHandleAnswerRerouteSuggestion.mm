@interface MAHandleAnswerRerouteSuggestion
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation MAHandleAnswerRerouteSuggestion

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v5 = a3;
  v6 = [SACommandFailed alloc];
  v7 = [v6 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:8004 onTarget:802 eventValue:0];

  v9 = +[MapsSiriIPCInterface sharedInterface];
  [v9 initializeBrokerConnectionIfNeeded];
  if ([v9 canReceiveMessages] && !objc_msgSend(v9, "isMapsBackgroundTaskSuspended"))
  {
    v11 = [(MAHandleAnswerRerouteSuggestion *)self response];
    v12 = [v11 isEqualToString:SALocalSearchAnswerRerouteSuggestionResponseAcceptValue];

    v10 = objc_alloc_init(IPCHandleTrafficAlertMessage);
    [(IPCHandleTrafficAlertMessage *)v10 setShouldReroute:v12];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_187CC;
    v13[3] = &unk_34B30;
    v14 = v5;
    [v9 handleTrafficeReroute:v10 completion:v13];
  }

  else
  {
    v10 = [v7 dictionary];
    (*(v5 + 2))(v5, v10);
  }
}

@end
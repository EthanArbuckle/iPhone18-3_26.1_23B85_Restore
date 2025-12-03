@interface MAHandleNavigationPromptRerouteSuggestion
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleNavigationPromptRerouteSuggestion

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v5 = [SACommandFailed alloc];
  v6 = [v5 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:8005 onTarget:802 eventValue:0];

  v8 = +[MapsSiriIPCInterface sharedInterface];
  [v8 initializeBrokerConnectionIfNeeded];
  if ([v8 canReceiveMessages] && !objc_msgSend(v8, "isMapsBackgroundTaskSuspended"))
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_F3DC;
    v10[3] = &unk_34B30;
    v11 = completionCopy;
    [v8 repeatLastReroutePromptWithCompletion:v10];
  }

  else
  {
    dictionary = [v6 dictionary];
    (*(completionCopy + 2))(completionCopy, dictionary);
  }
}

@end
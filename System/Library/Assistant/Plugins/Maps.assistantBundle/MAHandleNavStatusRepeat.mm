@interface MAHandleNavStatusRepeat
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleNavStatusRepeat

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v5 = [SACommandFailed alloc];
  v6 = [v5 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:8007 onTarget:802 eventValue:0];

  v8 = +[MapsSiriIPCInterface sharedInterface];
  [v8 initializeBrokerConnectionIfNeeded];
  if ([v8 canReceiveMessages] && !objc_msgSend(v8, "isMapsBackgroundTaskSuspended"))
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_BD8C;
    v10[3] = &unk_34B30;
    v11 = completionCopy;
    [v8 repeatLastGuidanceInstructionWithCompletion:v10];
  }

  else
  {
    dictionary = [v6 dictionary];
    (*(completionCopy + 2))(completionCopy, dictionary);
  }
}

@end
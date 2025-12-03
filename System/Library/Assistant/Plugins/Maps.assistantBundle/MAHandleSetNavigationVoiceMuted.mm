@interface MAHandleSetNavigationVoiceMuted
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleSetNavigationVoiceMuted

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v6 = [SACommandFailed alloc];
  v7 = [v6 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
  if ([(MAHandleSetNavigationVoiceMuted *)self voiceMuted])
  {
    v8 = 3052;
  }

  else
  {
    v8 = 8008;
  }

  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:v8 onTarget:802 eventValue:0];

  v10 = +[MapsSiriIPCInterface sharedInterface];
  [v10 initializeBrokerConnectionIfNeeded];
  if ([v10 canReceiveMessages] && !objc_msgSend(v10, "isMapsBackgroundTaskSuspended"))
  {
    v12 = objc_alloc_init(IPCMuteSpokenGuidanceMessage);
    [(IPCMuteSpokenGuidanceMessage *)v12 setMuteNavigation:[(MAHandleSetNavigationVoiceMuted *)self voiceMuted]];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_CEE4;
    v13[3] = &unk_34C68;
    v14 = completionCopy;
    [v10 setNavigationMuted:v12 completion:v13];
  }

  else
  {
    dictionary = [v7 dictionary];
    (*(completionCopy + 2))(completionCopy, dictionary);
  }
}

@end
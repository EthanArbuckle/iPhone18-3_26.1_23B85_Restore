@interface ToggleSoundDetectionIntentHandler
- (void)handleToggleSoundDetection:(id)a3 completion:(id)a4;
- (void)resolveOperationForToggleSoundDetection:(id)a3 withCompletion:(id)a4;
@end

@implementation ToggleSoundDetectionIntentHandler

- (void)handleToggleSoundDetection:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "ToggleSoundDetectionIntentHandler: Handling intent %@", &v16, 0xCu);
  }

  if ([(__CFString *)v5 operation]== 1)
  {
    v8 = +[AXSDSettings sharedInstance];
    v9 = [v8 soundDetectionState] != 2;
  }

  else
  {
    v9 = [(__CFString *)v5 operation]== 2;
  }

  v10 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = @"NO";
    if (v9)
    {
      v11 = @"YES";
    }

    v16 = 138412290;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "SoundDetectionIntentHandler. Turning Sound Detection %@", &v16, 0xCu);
  }

  v12 = +[AXSDSettings sharedInstance];
  v13 = v12;
  if (v9)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [v12 setSoundDetectionState:v14 source:AXSDSettingsEventSourceShortcutsApp];

  v15 = [[AXToggleSoundDetectionIntentResponse alloc] initWithCode:4 userActivity:0];
  v6[2](v6, v15);
}

- (void)resolveOperationForToggleSoundDetection:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXSoundDetectionOperationResolutionResult successWithResolvedSoundDetectionOperation:](AXSoundDetectionOperationResolutionResult, "successWithResolvedSoundDetectionOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

@end
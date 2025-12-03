@interface ToggleSoundDetectionIntentHandler
- (void)handleToggleSoundDetection:(id)detection completion:(id)completion;
- (void)resolveOperationForToggleSoundDetection:(id)detection withCompletion:(id)completion;
@end

@implementation ToggleSoundDetectionIntentHandler

- (void)handleToggleSoundDetection:(id)detection completion:(id)completion
{
  detectionCopy = detection;
  completionCopy = completion;
  v7 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = detectionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "ToggleSoundDetectionIntentHandler: Handling intent %@", &v16, 0xCu);
  }

  if ([(__CFString *)detectionCopy operation]== 1)
  {
    v8 = +[AXSDSettings sharedInstance];
    v9 = [v8 soundDetectionState] != 2;
  }

  else
  {
    v9 = [(__CFString *)detectionCopy operation]== 2;
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
  completionCopy[2](completionCopy, v15);
}

- (void)resolveOperationForToggleSoundDetection:(id)detection withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXSoundDetectionOperationResolutionResult successWithResolvedSoundDetectionOperation:](AXSoundDetectionOperationResolutionResult, "successWithResolvedSoundDetectionOperation:", [detection operation]);
  (*(completion + 2))(completionCopy, v7);
}

@end
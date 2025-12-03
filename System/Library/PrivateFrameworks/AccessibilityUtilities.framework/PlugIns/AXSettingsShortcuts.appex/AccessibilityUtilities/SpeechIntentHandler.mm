@interface SpeechIntentHandler
- (void)handleStartSpeakScreen:(id)screen completion:(id)completion;
@end

@implementation SpeechIntentHandler

- (void)handleStartSpeakScreen:(id)screen completion:(id)completion
{
  screenCopy = screen;
  completionCopy = completion;
  v7 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = screenCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SpeakScreenIntentHandler: Handling intent %@", &v10, 0xCu);
  }

  _AXSSetSpeakThisEnabled();
  v8 = +[SpeakThisServices sharedInstance];
  [v8 speakThisWithOptions:12 errorHandler:0];

  v9 = [[AXStartSpeakScreenIntentResponse alloc] initWithCode:4 userActivity:0];
  completionCopy[2](completionCopy, v9);
}

@end
@interface SpeechIntentHandler
- (void)handleStartSpeakScreen:(id)a3 completion:(id)a4;
@end

@implementation SpeechIntentHandler

- (void)handleStartSpeakScreen:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SpeakScreenIntentHandler: Handling intent %@", &v10, 0xCu);
  }

  _AXSSetSpeakThisEnabled();
  v8 = +[SpeakThisServices sharedInstance];
  [v8 speakThisWithOptions:12 errorHandler:0];

  v9 = [[AXStartSpeakScreenIntentResponse alloc] initWithCode:4 userActivity:0];
  v6[2](v6, v9);
}

@end
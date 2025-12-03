@interface VoiceMemosIntentHandler
- (id)handlerForIntent:(id)intent;
- (void)confirmPlaybackVoiceMemo:(id)memo completion:(id)completion;
- (void)confirmRecordVoiceMemo:(id)memo completion:(id)completion;
- (void)handlePlaybackVoiceMemo:(id)memo completion:(id)completion;
- (void)handleRecordVoiceMemo:(id)memo completion:(id)completion;
@end

@implementation VoiceMemosIntentHandler

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)handleRecordVoiceMemo:(id)memo completion:(id)completion
{
  completionCopy = completion;
  v5 = [[RecordVoiceMemoIntentResponse alloc] _initWithCode:2 userActivity:0];
  completionCopy[2](completionCopy, v5);
}

- (void)confirmRecordVoiceMemo:(id)memo completion:(id)completion
{
  completionCopy = completion;
  v5 = +[RCSSavedRecordingService sharedService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000CE4;
  v7[3] = &unk_1000040E8;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 checkRecordingAvailability:v7];
}

- (void)handlePlaybackVoiceMemo:(id)memo completion:(id)completion
{
  completionCopy = completion;
  v5 = [[PlaybackVoiceMemoIntentResponse alloc] _initWithCode:2 userActivity:0];
  completionCopy[2](completionCopy, v5);
}

- (void)confirmPlaybackVoiceMemo:(id)memo completion:(id)completion
{
  completionCopy = completion;
  v5 = +[RCSSavedRecordingService sharedService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000EE0;
  v7[3] = &unk_1000040E8;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 checkRecordingAvailability:v7];
}

@end
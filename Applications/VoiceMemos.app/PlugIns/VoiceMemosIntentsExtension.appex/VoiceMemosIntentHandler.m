@interface VoiceMemosIntentHandler
- (id)handlerForIntent:(id)a3;
- (void)confirmPlaybackVoiceMemo:(id)a3 completion:(id)a4;
- (void)confirmRecordVoiceMemo:(id)a3 completion:(id)a4;
- (void)handlePlaybackVoiceMemo:(id)a3 completion:(id)a4;
- (void)handleRecordVoiceMemo:(id)a3 completion:(id)a4;
@end

@implementation VoiceMemosIntentHandler

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleRecordVoiceMemo:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = [[RecordVoiceMemoIntentResponse alloc] _initWithCode:2 userActivity:0];
  v4[2](v4, v5);
}

- (void)confirmRecordVoiceMemo:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = +[RCSSavedRecordingService sharedService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000CE4;
  v7[3] = &unk_1000040E8;
  v8 = v4;
  v6 = v4;
  [v5 checkRecordingAvailability:v7];
}

- (void)handlePlaybackVoiceMemo:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = [[PlaybackVoiceMemoIntentResponse alloc] _initWithCode:2 userActivity:0];
  v4[2](v4, v5);
}

- (void)confirmPlaybackVoiceMemo:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = +[RCSSavedRecordingService sharedService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000EE0;
  v7[3] = &unk_1000040E8;
  v8 = v4;
  v6 = v4;
  [v5 checkRecordingAvailability:v7];
}

@end
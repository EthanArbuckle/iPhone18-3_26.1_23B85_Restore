@interface AXSetBackgroundSoundTimerIntentResponse
- (AXSetBackgroundSoundTimerIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation AXSetBackgroundSoundTimerIntentResponse

- (AXSetBackgroundSoundTimerIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = AXSetBackgroundSoundTimerIntentResponse;
  v7 = [(AXSetBackgroundSoundTimerIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(AXSetBackgroundSoundTimerIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
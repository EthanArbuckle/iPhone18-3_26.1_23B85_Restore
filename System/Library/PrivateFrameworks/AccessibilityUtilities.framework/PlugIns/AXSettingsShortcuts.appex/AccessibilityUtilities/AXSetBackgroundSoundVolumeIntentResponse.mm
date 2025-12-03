@interface AXSetBackgroundSoundVolumeIntentResponse
- (AXSetBackgroundSoundVolumeIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation AXSetBackgroundSoundVolumeIntentResponse

- (AXSetBackgroundSoundVolumeIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = AXSetBackgroundSoundVolumeIntentResponse;
  v7 = [(AXSetBackgroundSoundVolumeIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(AXSetBackgroundSoundVolumeIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
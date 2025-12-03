@interface AXStartSpeakScreenIntentResponse
- (AXStartSpeakScreenIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation AXStartSpeakScreenIntentResponse

- (AXStartSpeakScreenIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = AXStartSpeakScreenIntentResponse;
  v7 = [(AXStartSpeakScreenIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(AXStartSpeakScreenIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
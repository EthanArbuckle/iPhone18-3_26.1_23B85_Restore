@interface AXToggleAutoAnswerCallsIntentResponse
- (AXToggleAutoAnswerCallsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation AXToggleAutoAnswerCallsIntentResponse

- (AXToggleAutoAnswerCallsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = AXToggleAutoAnswerCallsIntentResponse;
  v7 = [(AXToggleAutoAnswerCallsIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(AXToggleAutoAnswerCallsIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
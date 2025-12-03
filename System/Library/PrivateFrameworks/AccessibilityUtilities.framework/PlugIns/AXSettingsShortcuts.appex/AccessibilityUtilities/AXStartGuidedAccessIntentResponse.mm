@interface AXStartGuidedAccessIntentResponse
- (AXStartGuidedAccessIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation AXStartGuidedAccessIntentResponse

- (AXStartGuidedAccessIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = AXStartGuidedAccessIntentResponse;
  v7 = [(AXStartGuidedAccessIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(AXStartGuidedAccessIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
@interface AXStartMagnifierIntentResponse
- (AXStartMagnifierIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation AXStartMagnifierIntentResponse

- (AXStartMagnifierIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = AXStartMagnifierIntentResponse;
  v7 = [(AXStartMagnifierIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(AXStartMagnifierIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
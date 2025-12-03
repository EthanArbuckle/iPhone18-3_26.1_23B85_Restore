@interface AXStartRemoteWatchScreenIntentResponse
- (AXStartRemoteWatchScreenIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation AXStartRemoteWatchScreenIntentResponse

- (AXStartRemoteWatchScreenIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = AXStartRemoteWatchScreenIntentResponse;
  v7 = [(AXStartRemoteWatchScreenIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(AXStartRemoteWatchScreenIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
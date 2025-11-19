@interface AXStartRemoteWatchScreenIntentResponse
- (AXStartRemoteWatchScreenIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
@end

@implementation AXStartRemoteWatchScreenIntentResponse

- (AXStartRemoteWatchScreenIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = AXStartRemoteWatchScreenIntentResponse;
  v7 = [(AXStartRemoteWatchScreenIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = a3;
    [(AXStartRemoteWatchScreenIntentResponse *)v7 setUserActivity:v6];
  }

  return v8;
}

@end
@interface AXToggleSmartInvertIntentResponse
+ (id)continueInAppIntentResponseWithState:(int64_t)state;
+ (id)failureRequiringAppLaunchIntentResponseWithState:(int64_t)state;
+ (id)inProgressIntentResponseWithState:(int64_t)state;
+ (id)readyIntentResponseWithState:(int64_t)state;
+ (id)successIntentResponseWithState:(int64_t)state;
+ (id)unspecifiedIntentResponseWithState:(int64_t)state;
- (AXToggleSmartInvertIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation AXToggleSmartInvertIntentResponse

- (AXToggleSmartInvertIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = AXToggleSmartInvertIntentResponse;
  v7 = [(AXToggleSmartInvertIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(AXToggleSmartInvertIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

+ (id)unspecifiedIntentResponseWithState:(int64_t)state
{
  v4 = [[AXToggleSmartInvertIntentResponse alloc] initWithCode:0 userActivity:0];
  [(AXToggleSmartInvertIntentResponse *)v4 setState:state];

  return v4;
}

+ (id)readyIntentResponseWithState:(int64_t)state
{
  v4 = [[AXToggleSmartInvertIntentResponse alloc] initWithCode:1 userActivity:0];
  [(AXToggleSmartInvertIntentResponse *)v4 setState:state];

  return v4;
}

+ (id)continueInAppIntentResponseWithState:(int64_t)state
{
  v4 = [[AXToggleSmartInvertIntentResponse alloc] initWithCode:2 userActivity:0];
  [(AXToggleSmartInvertIntentResponse *)v4 setState:state];

  return v4;
}

+ (id)inProgressIntentResponseWithState:(int64_t)state
{
  v4 = [[AXToggleSmartInvertIntentResponse alloc] initWithCode:3 userActivity:0];
  [(AXToggleSmartInvertIntentResponse *)v4 setState:state];

  return v4;
}

+ (id)successIntentResponseWithState:(int64_t)state
{
  v4 = [[AXToggleSmartInvertIntentResponse alloc] initWithCode:4 userActivity:0];
  [(AXToggleSmartInvertIntentResponse *)v4 setState:state];

  return v4;
}

+ (id)failureRequiringAppLaunchIntentResponseWithState:(int64_t)state
{
  v4 = [[AXToggleSmartInvertIntentResponse alloc] initWithCode:6 userActivity:0];
  [(AXToggleSmartInvertIntentResponse *)v4 setState:state];

  return v4;
}

@end
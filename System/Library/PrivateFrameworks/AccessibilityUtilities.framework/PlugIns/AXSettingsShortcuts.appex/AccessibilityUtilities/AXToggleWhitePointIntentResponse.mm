@interface AXToggleWhitePointIntentResponse
+ (id)continueInAppIntentResponseWithState:(int64_t)a3;
+ (id)failureRequiringAppLaunchIntentResponseWithState:(int64_t)a3;
+ (id)inProgressIntentResponseWithState:(int64_t)a3;
+ (id)readyIntentResponseWithState:(int64_t)a3;
+ (id)successIntentResponseWithState:(int64_t)a3;
+ (id)unspecifiedIntentResponseWithState:(int64_t)a3;
- (AXToggleWhitePointIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
@end

@implementation AXToggleWhitePointIntentResponse

- (AXToggleWhitePointIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = AXToggleWhitePointIntentResponse;
  v7 = [(AXToggleWhitePointIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = a3;
    [(AXToggleWhitePointIntentResponse *)v7 setUserActivity:v6];
  }

  return v8;
}

+ (id)unspecifiedIntentResponseWithState:(int64_t)a3
{
  v4 = [[AXToggleWhitePointIntentResponse alloc] initWithCode:0 userActivity:0];
  [(AXToggleWhitePointIntentResponse *)v4 setState:a3];

  return v4;
}

+ (id)readyIntentResponseWithState:(int64_t)a3
{
  v4 = [[AXToggleWhitePointIntentResponse alloc] initWithCode:1 userActivity:0];
  [(AXToggleWhitePointIntentResponse *)v4 setState:a3];

  return v4;
}

+ (id)continueInAppIntentResponseWithState:(int64_t)a3
{
  v4 = [[AXToggleWhitePointIntentResponse alloc] initWithCode:2 userActivity:0];
  [(AXToggleWhitePointIntentResponse *)v4 setState:a3];

  return v4;
}

+ (id)inProgressIntentResponseWithState:(int64_t)a3
{
  v4 = [[AXToggleWhitePointIntentResponse alloc] initWithCode:3 userActivity:0];
  [(AXToggleWhitePointIntentResponse *)v4 setState:a3];

  return v4;
}

+ (id)successIntentResponseWithState:(int64_t)a3
{
  v4 = [[AXToggleWhitePointIntentResponse alloc] initWithCode:4 userActivity:0];
  [(AXToggleWhitePointIntentResponse *)v4 setState:a3];

  return v4;
}

+ (id)failureRequiringAppLaunchIntentResponseWithState:(int64_t)a3
{
  v4 = [[AXToggleWhitePointIntentResponse alloc] initWithCode:6 userActivity:0];
  [(AXToggleWhitePointIntentResponse *)v4 setState:a3];

  return v4;
}

@end
@interface TodayIntentResponse
- (TodayIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation TodayIntentResponse

- (TodayIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = TodayIntentResponse;
  v7 = [(TodayIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(TodayIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
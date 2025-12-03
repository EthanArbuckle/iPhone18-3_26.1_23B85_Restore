@interface TagIntentResponse
- (TagIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation TagIntentResponse

- (TagIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = TagIntentResponse;
  v7 = [(TagIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(TagIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
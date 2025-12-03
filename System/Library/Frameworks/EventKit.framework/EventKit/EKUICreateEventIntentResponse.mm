@interface EKUICreateEventIntentResponse
- (EKUICreateEventIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation EKUICreateEventIntentResponse

- (EKUICreateEventIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = EKUICreateEventIntentResponse;
  v7 = [(EKUICreateEventIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(EKUICreateEventIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
@interface MFGetAccountsIntentResponse
- (MFGetAccountsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation MFGetAccountsIntentResponse

- (MFGetAccountsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = MFGetAccountsIntentResponse;
  v7 = [(MFGetAccountsIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(MFGetAccountsIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end
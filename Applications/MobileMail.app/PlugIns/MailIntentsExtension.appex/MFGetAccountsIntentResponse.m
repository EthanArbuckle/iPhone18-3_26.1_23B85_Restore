@interface MFGetAccountsIntentResponse
- (MFGetAccountsIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
@end

@implementation MFGetAccountsIntentResponse

- (MFGetAccountsIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MFGetAccountsIntentResponse;
  v7 = [(MFGetAccountsIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = a3;
    [(MFGetAccountsIntentResponse *)v7 setUserActivity:v6];
  }

  return v8;
}

@end
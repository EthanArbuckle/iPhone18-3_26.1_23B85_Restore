@interface AAAppleTVRequest
- (AAAppleTVRequest)initWithAccount:(id)account;
@end

@implementation AAAppleTVRequest

- (AAAppleTVRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AAAppleTVRequest;
  v6 = [(AAAppleTVRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

@end
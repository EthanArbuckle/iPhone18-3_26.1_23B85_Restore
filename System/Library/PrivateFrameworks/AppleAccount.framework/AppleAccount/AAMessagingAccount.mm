@interface AAMessagingAccount
- (AAMessagingAccount)initWithAccount:(id)a3;
@end

@implementation AAMessagingAccount

- (AAMessagingAccount)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAMessagingAccount;
  v6 = [(AAMessagingAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsAccount, a3);
  }

  return v7;
}

@end
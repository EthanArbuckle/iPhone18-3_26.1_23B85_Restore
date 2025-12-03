@interface VSJSAppResponsePayload
- (void)setUserAccounts:(id)accounts;
@end

@implementation VSJSAppResponsePayload

- (void)setUserAccounts:(id)accounts
{
  if (accounts)
  {
    v4 = [accounts copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  self->_userAccounts = v4;

  MEMORY[0x2821F96F8]();
}

@end
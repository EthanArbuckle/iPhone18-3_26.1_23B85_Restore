@interface VSJSAppResponsePayload
- (void)setUserAccounts:(id)a3;
@end

@implementation VSJSAppResponsePayload

- (void)setUserAccounts:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  self->_userAccounts = v4;

  MEMORY[0x2821F96F8]();
}

@end
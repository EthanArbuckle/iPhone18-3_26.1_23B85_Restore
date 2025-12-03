@interface WFAccount
- (WFAccount)init;
- (void)invalidateWithCompletionHandler:(id)handler;
- (void)refreshWithCompletionHandler:(id)handler;
@end

@implementation WFAccount

- (void)invalidateWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)refreshWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (WFAccount)init
{
  v12.receiver = self;
  v12.super_class = WFAccount;
  v2 = [(MTLModel *)&v12 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    accountID = v2->_accountID;
    v2->_accountID = uUIDString;

    date = [MEMORY[0x277CBEAA8] date];
    createdAt = v2->_createdAt;
    v2->_createdAt = date;

    date2 = [MEMORY[0x277CBEAA8] date];
    updatedAt = v2->_updatedAt;
    v2->_updatedAt = date2;

    v10 = v2;
  }

  return v2;
}

@end
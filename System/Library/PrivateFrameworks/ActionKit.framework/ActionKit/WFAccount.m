@interface WFAccount
- (WFAccount)init;
- (void)invalidateWithCompletionHandler:(id)a3;
- (void)refreshWithCompletionHandler:(id)a3;
@end

@implementation WFAccount

- (void)invalidateWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)refreshWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (WFAccount)init
{
  v12.receiver = self;
  v12.super_class = WFAccount;
  v2 = [(MTLModel *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    accountID = v2->_accountID;
    v2->_accountID = v4;

    v6 = [MEMORY[0x277CBEAA8] date];
    createdAt = v2->_createdAt;
    v2->_createdAt = v6;

    v8 = [MEMORY[0x277CBEAA8] date];
    updatedAt = v2->_updatedAt;
    v2->_updatedAt = v8;

    v10 = v2;
  }

  return v2;
}

@end
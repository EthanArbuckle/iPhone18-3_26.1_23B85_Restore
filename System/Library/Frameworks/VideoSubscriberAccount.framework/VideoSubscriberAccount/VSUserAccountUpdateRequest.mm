@interface VSUserAccountUpdateRequest
- (VSUserAccountUpdateRequest)initWithUserAccount:(id)account;
- (id)description;
@end

@implementation VSUserAccountUpdateRequest

- (VSUserAccountUpdateRequest)initWithUserAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = VSUserAccountUpdateRequest;
  v6 = [(VSUserAccountUpdateRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userAccount, account);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  userAccount = [(VSUserAccountUpdateRequest *)self userAccount];
  updatedUserAccount = [(VSUserAccountUpdateRequest *)self updatedUserAccount];
  updateError = [(VSUserAccountUpdateRequest *)self updateError];
  v9 = [v3 stringWithFormat:@"<%@ %p %@=%@, %@=%@, %@=%@>", v5, self, @"userAccount", userAccount, @"updatedUserAccount", updatedUserAccount, @"updateError", updateError];

  return v9;
}

@end
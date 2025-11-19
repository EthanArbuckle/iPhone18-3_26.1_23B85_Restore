@interface VSUserAccountUpdateRequest
- (VSUserAccountUpdateRequest)initWithUserAccount:(id)a3;
- (id)description;
@end

@implementation VSUserAccountUpdateRequest

- (VSUserAccountUpdateRequest)initWithUserAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VSUserAccountUpdateRequest;
  v6 = [(VSUserAccountUpdateRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userAccount, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(VSUserAccountUpdateRequest *)self userAccount];
  v7 = [(VSUserAccountUpdateRequest *)self updatedUserAccount];
  v8 = [(VSUserAccountUpdateRequest *)self updateError];
  v9 = [v3 stringWithFormat:@"<%@ %p %@=%@, %@=%@, %@=%@>", v5, self, @"userAccount", v6, @"updatedUserAccount", v7, @"updateError", v8];

  return v9;
}

@end
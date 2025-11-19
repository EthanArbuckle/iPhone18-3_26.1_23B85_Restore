@interface MPServerObjectDatabaseImportRequest
- (id)_initWithPayload:(id)a3;
- (void)setExpirationDate:(id)a3;
- (void)setUserIdentity:(id)a3;
@end

@implementation MPServerObjectDatabaseImportRequest

- (void)setUserIdentity:(id)a3
{
  obj = a3;
  if (!obj)
  {
    obj = [MEMORY[0x1E69E4680] activeAccount];
  }

  userIdentity = self->_userIdentity;
  p_userIdentity = &self->_userIdentity;
  v6 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v7 = [(ICUserIdentity *)userIdentity isEqualToIdentity:obj inStore:v6];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(p_userIdentity, obj);
  }
}

- (void)setExpirationDate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF00] now];
    v10 = [v5 dateByAddingTimeInterval:604800.0];

    v4 = v10;
  }

  expirationDate = self->_expirationDate;
  if (expirationDate != v4)
  {
    v11 = v4;
    v7 = [(NSDate *)expirationDate isEqual:v4];
    v4 = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [(NSDate *)v11 copy];
      v9 = self->_expirationDate;
      self->_expirationDate = v8;

      v4 = v11;
    }
  }
}

- (id)_initWithPayload:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = MPServerObjectDatabaseImportRequest;
  v6 = [(MPServerObjectDatabaseImportRequest *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, a3);
    v8 = [MEMORY[0x1E69E4680] activeAccount];
    userIdentity = v7->_userIdentity;
    v7->_userIdentity = v8;

    v10 = [MEMORY[0x1E695DF00] now];
    v11 = [v10 dateByAddingTimeInterval:604800.0];
    expirationDate = v7->_expirationDate;
    v7->_expirationDate = v11;

    v13 = [MEMORY[0x1E695DF00] now];
    v14 = +[MPPlaybackUserDefaults standardUserDefaults];
    [v14 assetURLExpirationDuration];
    v15 = [v13 dateByAddingTimeInterval:?];
    assetURLExpirationDate = v7->_assetURLExpirationDate;
    v7->_assetURLExpirationDate = v15;
  }

  return v7;
}

@end
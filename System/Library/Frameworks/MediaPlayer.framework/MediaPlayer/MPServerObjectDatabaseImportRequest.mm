@interface MPServerObjectDatabaseImportRequest
- (id)_initWithPayload:(id)payload;
- (void)setExpirationDate:(id)date;
- (void)setUserIdentity:(id)identity;
@end

@implementation MPServerObjectDatabaseImportRequest

- (void)setUserIdentity:(id)identity
{
  obj = identity;
  if (!obj)
  {
    obj = [MEMORY[0x1E69E4680] activeAccount];
  }

  userIdentity = self->_userIdentity;
  p_userIdentity = &self->_userIdentity;
  defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v7 = [(ICUserIdentity *)userIdentity isEqualToIdentity:obj inStore:defaultIdentityStore];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(p_userIdentity, obj);
  }
}

- (void)setExpirationDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    v5 = [MEMORY[0x1E695DF00] now];
    v10 = [v5 dateByAddingTimeInterval:604800.0];

    dateCopy = v10;
  }

  expirationDate = self->_expirationDate;
  if (expirationDate != dateCopy)
  {
    v11 = dateCopy;
    v7 = [(NSDate *)expirationDate isEqual:dateCopy];
    dateCopy = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [(NSDate *)v11 copy];
      v9 = self->_expirationDate;
      self->_expirationDate = v8;

      dateCopy = v11;
    }
  }
}

- (id)_initWithPayload:(id)payload
{
  payloadCopy = payload;
  v18.receiver = self;
  v18.super_class = MPServerObjectDatabaseImportRequest;
  v6 = [(MPServerObjectDatabaseImportRequest *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, payload);
    activeAccount = [MEMORY[0x1E69E4680] activeAccount];
    userIdentity = v7->_userIdentity;
    v7->_userIdentity = activeAccount;

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
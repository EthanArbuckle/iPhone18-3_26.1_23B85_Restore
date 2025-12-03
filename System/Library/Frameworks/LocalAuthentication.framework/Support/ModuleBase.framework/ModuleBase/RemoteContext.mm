@interface RemoteContext
- (RemoteContext)initWithOwnership:(id)ownership uuid:(id)uuid description:(id)description originalOwnership:(id)originalOwnership;
- (id)description;
- (void)dealloc;
@end

@implementation RemoteContext

- (RemoteContext)initWithOwnership:(id)ownership uuid:(id)uuid description:(id)description originalOwnership:(id)originalOwnership
{
  ownershipCopy = ownership;
  uuidCopy = uuid;
  descriptionCopy = description;
  originalOwnershipCopy = originalOwnership;
  v21.receiver = self;
  v21.super_class = RemoteContext;
  v15 = [(RemoteContext *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_ownership, ownership);
    objc_storeStrong(&v16->_uuid, uuid);
    objc_storeStrong(&v16->_description, description);
    objc_storeStrong(&v16->_originalOwnership, originalOwnership);
    v17 = [(RemoteContext *)v16 description];
    [v17 UTF8String];
    v18 = os_transaction_create();
    transaction = v16->_transaction;
    v16->_transaction = v18;
  }

  return v16;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  if (LA_LOG_once_0 != -1)
  {
    [RemoteContext dealloc];
  }

  v3 = LA_LOG_log_0;
  if (os_log_type_enabled(LA_LOG_log_0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_238BBF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocated", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = RemoteContext;
  [(RemoteContext *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"RemoteContext registration for %@", self->_description];
  originalOwnership = [(RemoteContext *)self originalOwnership];

  if (originalOwnership)
  {
    originalOwnership2 = [(RemoteContext *)self originalOwnership];
    v6 = [v3 stringByAppendingFormat:@", keeping alive plugin of %@", originalOwnership2];

    v3 = v6;
  }

  return v3;
}

@end
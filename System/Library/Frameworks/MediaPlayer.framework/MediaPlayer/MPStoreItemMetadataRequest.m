@interface MPStoreItemMetadataRequest
- (ICClientInfo)clientInfo;
- (ICStorePlatformRequest)storePlatformRequest;
- (ICUserIdentity)userIdentity;
- (ICUserIdentityStore)userIdentityStore;
- (MPStoreItemMetadataRequest)init;
- (NSArray)itemIdentifiers;
- (NSString)clientIdentifier;
- (NSString)requestingBundleIdentifier;
- (NSString)requestingBundleVersion;
- (void)setRequestingBundleIdentifier:(id)a3;
- (void)setRequestingBundleVersion:(id)a3;
@end

@implementation MPStoreItemMetadataRequest

- (ICStorePlatformRequest)storePlatformRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E69E4610]);
  v4 = [(MPStoreItemMetadataRequest *)self itemIdentifiers];
  [v3 setItemIdentifiers:v4];

  v5 = [(MPStoreItemMetadataRequest *)self reason];
  if (v5 - 1 > 2)
  {
    v6 = MEMORY[0x1E69E42A0];
  }

  else
  {
    v6 = qword_1E767D5A0[v5 - 1];
  }

  [v3 setKeyProfile:*v6];
  v7 = [(MPStoreItemMetadataRequest *)self personalizationStyle];
  if (v7 >= 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v3 setPersonalizationStyle:v8];
  [v3 setReturnsLocalEquivalencies:{-[MPStoreItemMetadataRequest allowLocalEquivalencies](self, "allowLocalEquivalencies")}];
  [(MPStoreItemMetadataRequest *)self retryDelay];
  [v3 setRetryDelay:?];
  v9 = objc_alloc(MEMORY[0x1E69E4618]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__MPStoreItemMetadataRequest_storePlatformRequest__block_invoke;
  v13[3] = &unk_1E767D580;
  v13[4] = self;
  v10 = [v9 initWithBlock:v13];
  [v3 setRequestContext:v10];
  if ([(NSString *)self->_clientIdentifier length])
  {
    [v3 setClientIdentifier:self->_clientIdentifier];
  }

  if ([(NSString *)self->_platform length])
  {
    [v3 setPlatformIdentifier:self->_platform];
  }

  timeoutInterval = self->_timeoutInterval;
  if (timeoutInterval)
  {
    [(NSNumber *)timeoutInterval doubleValue];
    [v3 setTimeoutInterval:?];
  }

  if (self->_shouldIgnoreCache)
  {
    [v3 setShouldIgnoreCache:1];
  }

  [v3 setQualityOfService:{-[MPStoreItemMetadataRequest qualityOfService](self, "qualityOfService")}];

  return v3;
}

void __50__MPStoreItemMetadataRequest_storePlatformRequest__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) delegatedUserIdentity];
  [v8 setDelegatedIdentity:v3];

  v4 = [*(a1 + 32) userIdentity];
  [v8 setIdentity:v4];

  v5 = [*(a1 + 32) userIdentityStore];
  [v8 setIdentityStore:v5];

  v6 = [*(a1 + 32) clientInfo];
  [v8 setClientInfo:v6];

  v7 = [*(a1 + 32) requestContextTag];
  [v8 setTag:v7];

  if (*(*(a1 + 32) + 8) == 1)
  {
    [v8 enableRequestNotifications];
  }
}

- (ICUserIdentityStore)userIdentityStore
{
  userIdentityStore = self->_userIdentityStore;
  if (userIdentityStore)
  {
    v3 = userIdentityStore;
  }

  else
  {
    v3 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  }

  return v3;
}

- (ICUserIdentity)userIdentity
{
  userIdentity = self->_userIdentity;
  if (!userIdentity)
  {
    v4 = [MEMORY[0x1E69E4680] activeAccount];
    v5 = self->_userIdentity;
    self->_userIdentity = v4;

    userIdentity = self->_userIdentity;
  }

  return userIdentity;
}

- (void)setRequestingBundleVersion:(id)a3
{
  v4 = a3;
  v5 = [(MPStoreItemMetadataRequest *)self clientInfo];
  v8 = [v5 mutableCopy];

  [v8 setRequestingBundleVersion:v4];
  v6 = [v8 copy];
  clientInfo = self->_clientInfo;
  self->_clientInfo = v6;
}

- (void)setRequestingBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPStoreItemMetadataRequest *)self clientInfo];
  v8 = [v5 mutableCopy];

  [v8 setRequestingBundleIdentifier:v4];
  v6 = [v8 copy];
  clientInfo = self->_clientInfo;
  self->_clientInfo = v6;
}

- (NSString)requestingBundleVersion
{
  v2 = [(ICClientInfo *)self->_clientInfo requestingBundleVersion];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F149ECA8;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)requestingBundleIdentifier
{
  v2 = [(ICClientInfo *)self->_clientInfo requestingBundleIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F149ECA8;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSArray)itemIdentifiers
{
  if (self->_itemIdentifiers)
  {
    return self->_itemIdentifiers;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (ICClientInfo)clientInfo
{
  clientInfo = self->_clientInfo;
  if (clientInfo)
  {
    v3 = clientInfo;
  }

  else
  {
    v3 = [MEMORY[0x1E69E43B0] defaultInfo];
  }

  return v3;
}

- (NSString)clientIdentifier
{
  if (self->_clientIdentifier)
  {
    return self->_clientIdentifier;
  }

  else
  {
    return &stru_1F149ECA8;
  }
}

- (MPStoreItemMetadataRequest)init
{
  v3.receiver = self;
  v3.super_class = MPStoreItemMetadataRequest;
  result = [(MPStoreItemMetadataRequest *)&v3 init];
  if (result)
  {
    result->_retryDelay = 5.0;
    result->_qualityOfService = -1;
  }

  return result;
}

@end
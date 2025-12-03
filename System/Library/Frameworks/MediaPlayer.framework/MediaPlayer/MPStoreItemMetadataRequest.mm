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
- (void)setRequestingBundleIdentifier:(id)identifier;
- (void)setRequestingBundleVersion:(id)version;
@end

@implementation MPStoreItemMetadataRequest

- (ICStorePlatformRequest)storePlatformRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E69E4610]);
  itemIdentifiers = [(MPStoreItemMetadataRequest *)self itemIdentifiers];
  [v3 setItemIdentifiers:itemIdentifiers];

  reason = [(MPStoreItemMetadataRequest *)self reason];
  if (reason - 1 > 2)
  {
    v6 = MEMORY[0x1E69E42A0];
  }

  else
  {
    v6 = qword_1E767D5A0[reason - 1];
  }

  [v3 setKeyProfile:*v6];
  personalizationStyle = [(MPStoreItemMetadataRequest *)self personalizationStyle];
  if (personalizationStyle >= 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = personalizationStyle;
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
    defaultIdentityStore = userIdentityStore;
  }

  else
  {
    defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  }

  return defaultIdentityStore;
}

- (ICUserIdentity)userIdentity
{
  userIdentity = self->_userIdentity;
  if (!userIdentity)
  {
    activeAccount = [MEMORY[0x1E69E4680] activeAccount];
    v5 = self->_userIdentity;
    self->_userIdentity = activeAccount;

    userIdentity = self->_userIdentity;
  }

  return userIdentity;
}

- (void)setRequestingBundleVersion:(id)version
{
  versionCopy = version;
  clientInfo = [(MPStoreItemMetadataRequest *)self clientInfo];
  v8 = [clientInfo mutableCopy];

  [v8 setRequestingBundleVersion:versionCopy];
  v6 = [v8 copy];
  clientInfo = self->_clientInfo;
  self->_clientInfo = v6;
}

- (void)setRequestingBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientInfo = [(MPStoreItemMetadataRequest *)self clientInfo];
  v8 = [clientInfo mutableCopy];

  [v8 setRequestingBundleIdentifier:identifierCopy];
  v6 = [v8 copy];
  clientInfo = self->_clientInfo;
  self->_clientInfo = v6;
}

- (NSString)requestingBundleVersion
{
  requestingBundleVersion = [(ICClientInfo *)self->_clientInfo requestingBundleVersion];
  v3 = requestingBundleVersion;
  if (requestingBundleVersion)
  {
    v4 = requestingBundleVersion;
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
  requestingBundleIdentifier = [(ICClientInfo *)self->_clientInfo requestingBundleIdentifier];
  v3 = requestingBundleIdentifier;
  if (requestingBundleIdentifier)
  {
    v4 = requestingBundleIdentifier;
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
    defaultInfo = clientInfo;
  }

  else
  {
    defaultInfo = [MEMORY[0x1E69E43B0] defaultInfo];
  }

  return defaultInfo;
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
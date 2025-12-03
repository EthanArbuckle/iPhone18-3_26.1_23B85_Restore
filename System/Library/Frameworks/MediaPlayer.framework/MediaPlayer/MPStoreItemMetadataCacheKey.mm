@interface MPStoreItemMetadataCacheKey
+ (void)_fastGetCacheKeyWithRequest:(id)request completionHandler:(id)handler;
+ (void)_slowGetCacheKeyWithRequest:(id)request completionHandler:(id)handler;
+ (void)getCacheKeyWithRequest:(id)request completionHandler:(id)handler;
- (BOOL)_isGoodCacheKey;
- (BOOL)isEqual:(id)equal;
- (MPStoreItemMetadataCacheKey)initWithRequest:(id)request response:(id)response;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation MPStoreItemMetadataCacheKey

- (BOOL)_isGoodCacheKey
{
  v3 = [(NSString *)self->_storefrontIdentifier length];
  if (v3)
  {
    LOBYTE(v3) = !self->_personalized || self->_accountIdentifier || self->_enqueuerAccountIdentifier != 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_personalized != equalCopy->_personalized)
  {
    goto LABEL_16;
  }

  accountIdentifier = self->_accountIdentifier;
  v6 = equalCopy->_accountIdentifier;
  if (accountIdentifier != v6)
  {
    v7 = 0;
    if (!accountIdentifier || !v6)
    {
      goto LABEL_18;
    }

    if (![(NSNumber *)accountIdentifier isEqualToNumber:?])
    {
      goto LABEL_16;
    }
  }

  enqueuerAccountIdentifier = self->_enqueuerAccountIdentifier;
  v9 = equalCopy->_enqueuerAccountIdentifier;
  if (enqueuerAccountIdentifier != v9)
  {
    v7 = 0;
    if (!enqueuerAccountIdentifier || !v9)
    {
      goto LABEL_18;
    }

    if (![(NSNumber *)enqueuerAccountIdentifier isEqualToNumber:?])
    {
LABEL_16:
      v7 = 0;
      goto LABEL_18;
    }
  }

  storefrontIdentifier = self->_storefrontIdentifier;
  v11 = equalCopy->_storefrontIdentifier;
  if (storefrontIdentifier == v11)
  {
LABEL_17:
    v7 = 1;
    goto LABEL_18;
  }

  v7 = 0;
  if (storefrontIdentifier && v11)
  {
    v7 = [(NSString *)storefrontIdentifier isEqualToString:?];
  }

LABEL_18:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_accountIdentifier hash];
  v4 = [(NSNumber *)self->_enqueuerAccountIdentifier hash]^ v3;
  personalized = self->_personalized;
  return v4 ^ personalized ^ [(NSString *)self->_storefrontIdentifier hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MPStoreItemMetadataCacheKey;
  v4 = [(MPStoreItemMetadataCacheKey *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [Account: %@, Enqueuer: %@, Personalized? %d, Storefront: %@]", v4, self->_accountIdentifier, self->_enqueuerAccountIdentifier, self->_personalized, self->_storefrontIdentifier];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSNumber *)self->_accountIdentifier copyWithZone:zone];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(NSNumber *)self->_enqueuerAccountIdentifier copyWithZone:zone];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    *(v5 + 8) = self->_personalized;
    v10 = [(NSString *)self->_storefrontIdentifier copyWithZone:zone];
    v11 = *(v5 + 32);
    *(v5 + 32) = v10;
  }

  return v5;
}

- (MPStoreItemMetadataCacheKey)initWithRequest:(id)request response:(id)response
{
  requestCopy = request;
  responseCopy = response;
  v18.receiver = self;
  v18.super_class = MPStoreItemMetadataCacheKey;
  v8 = [(MPStoreItemMetadataCacheKey *)&v18 init];
  if (v8)
  {
    storefrontIdentifier = [responseCopy storefrontIdentifier];
    v10 = storefrontIdentifier;
    if (storefrontIdentifier)
    {
      v11 = MPStoreItemMetadataCacheableStorefrontForStorefront(storefrontIdentifier);
      storefrontIdentifier = v8->_storefrontIdentifier;
      v8->_storefrontIdentifier = v11;
    }

    if ([requestCopy isPersonalized])
    {
      accountIdentifier = [responseCopy accountIdentifier];
      accountIdentifier = v8->_accountIdentifier;
      v8->_accountIdentifier = accountIdentifier;

      enqueuerAccountIdentifier = [responseCopy enqueuerAccountIdentifier];
      enqueuerAccountIdentifier = v8->_enqueuerAccountIdentifier;
      v8->_enqueuerAccountIdentifier = enqueuerAccountIdentifier;

      v8->_personalized = 1;
    }
  }

  return v8;
}

+ (void)_slowGetCacheKeyWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https:///"];
  v8 = objc_alloc(MEMORY[0x1E69E4618]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__MPStoreItemMetadataCacheKey__slowGetCacheKeyWithRequest_completionHandler___block_invoke;
  v17[3] = &unk_1E767D580;
  v9 = requestCopy;
  v18 = v9;
  v10 = [v8 initWithBlock:v17];
  v11 = [objc_alloc(MEMORY[0x1E69E4620]) initWithURL:v7 requestContext:v10];
  [v11 setAnisetteVersion:0];
  [v11 setShouldUseMescalSigning:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__MPStoreItemMetadataCacheKey__slowGetCacheKeyWithRequest_completionHandler___block_invoke_2;
  v14[3] = &unk_1E767D558;
  v15 = v9;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = v9;
  [v11 buildURLRequestWithCompletionHandler:v14];
}

void __77__MPStoreItemMetadataCacheKey__slowGetCacheKeyWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) delegatedUserIdentity];
  if (v3)
  {
    [v6 setDelegatedIdentity:v3];
  }

  v4 = [*(a1 + 32) userIdentity];
  if (v4)
  {
    [v6 setIdentity:v4];
  }

  v5 = [*(a1 + 32) userIdentityStore];
  if (v5)
  {
    [v6 setIdentityStore:v5];
  }
}

void __77__MPStoreItemMetadataCacheKey__slowGetCacheKeyWithRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = objc_alloc_init(MPStoreItemMetadataCacheKey);
  v4 = [*(a1 + 32) isPersonalized];
  v5 = v13;
  if (v4)
  {
    v6 = [v13 ic_valueForHTTPHeaderField:*MEMORY[0x1E69E4290]];
    if ([v6 length])
    {
      v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{objc_msgSend(v6, "longLongValue")}];
      [(MPStoreItemMetadataCacheKey *)v3 setAccountIdentifier:v7];
    }

    v8 = [v13 ic_valueForHTTPHeaderField:*MEMORY[0x1E69E4298]];
    if ([v8 length])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{objc_msgSend(v8, "longLongValue")}];
      [(MPStoreItemMetadataCacheKey *)v3 setAccountIdentifier:v9];
    }

    [(MPStoreItemMetadataCacheKey *)v3 setPersonalized:1];

    v5 = v13;
  }

  v10 = [v5 ic_valueForHTTPHeaderField:*MEMORY[0x1E69E4288]];
  v11 = v10;
  if (v10)
  {
    v12 = MPStoreItemMetadataCacheableStorefrontForStorefront(v10);
    [(MPStoreItemMetadataCacheKey *)v3 setStorefrontIdentifier:v12];
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)_fastGetCacheKeyWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v7 = dispatch_group_create();
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.MediaPlayer.MPStoreItemMetadataCacheKey", v8);

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__41387;
  v24[4] = __Block_byref_object_dispose__41388;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__41387;
  v22[4] = __Block_byref_object_dispose__41388;
  v23 = 0;
  userIdentityStore = [requestCopy userIdentityStore];
  if (userIdentityStore)
  {
    userIdentity = [requestCopy userIdentity];
    if (userIdentity)
    {
      dispatch_group_enter(v7);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __77__MPStoreItemMetadataCacheKey__fastGetCacheKeyWithRequest_completionHandler___block_invoke;
      v21[3] = &unk_1E767D508;
      v21[4] = v7;
      v21[5] = v22;
      [userIdentityStore getPropertiesForUserIdentity:userIdentity completionHandler:v21];
    }

    delegatedUserIdentity = [requestCopy delegatedUserIdentity];
    if (delegatedUserIdentity)
    {
      dispatch_group_enter(v7);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __77__MPStoreItemMetadataCacheKey__fastGetCacheKeyWithRequest_completionHandler___block_invoke_2;
      v20[3] = &unk_1E767D508;
      v20[4] = v7;
      v20[5] = v24;
      [userIdentityStore getPropertiesForUserIdentity:delegatedUserIdentity completionHandler:v20];
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__MPStoreItemMetadataCacheKey__fastGetCacheKeyWithRequest_completionHandler___block_invoke_3;
  v15[3] = &unk_1E767D530;
  v18 = v22;
  v19 = v24;
  v16 = requestCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = requestCopy;
  dispatch_group_notify(v7, v9, v15);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

void __77__MPStoreItemMetadataCacheKey__fastGetCacheKeyWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __77__MPStoreItemMetadataCacheKey__fastGetCacheKeyWithRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isDelegated])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __77__MPStoreItemMetadataCacheKey__fastGetCacheKeyWithRequest_completionHandler___block_invoke_3(uint64_t a1)
{
  v10 = objc_alloc_init(MPStoreItemMetadataCacheKey);
  if ([*(a1 + 32) isPersonalized])
  {
    v2 = [*(*(*(a1 + 48) + 8) + 40) DSID];
    [(MPStoreItemMetadataCacheKey *)v10 setAccountIdentifier:v2];

    v3 = [*(*(*(a1 + 56) + 8) + 40) DSID];
    [(MPStoreItemMetadataCacheKey *)v10 setEnqueuerAccountIdentifier:v3];

    [(MPStoreItemMetadataCacheKey *)v10 setPersonalized:1];
  }

  v4 = *(*(*(a1 + 56) + 8) + 40);
  if (v4 || (v4 = *(*(*(a1 + 48) + 8) + 40)) != 0)
  {
    v5 = [v4 storefrontIdentifier];
    v6 = v5;
LABEL_6:
    v7 = MPStoreItemMetadataCacheableStorefrontForStorefront(v5);
    goto LABEL_7;
  }

  v8 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v9 = [v8 localStoreAccountProperties];
  v6 = [v9 storefrontIdentifier];

  if (v6)
  {
    v5 = v6;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:

  [(MPStoreItemMetadataCacheKey *)v10 setStorefrontIdentifier:v7];
  (*(*(a1 + 40) + 16))();
}

+ (void)getCacheKeyWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__MPStoreItemMetadataCacheKey_getCacheKeyWithRequest_completionHandler___block_invoke;
  v10[3] = &unk_1E767D4E0;
  v12 = handlerCopy;
  selfCopy = self;
  v11 = requestCopy;
  v8 = requestCopy;
  v9 = handlerCopy;
  [self _fastGetCacheKeyWithRequest:v8 completionHandler:v10];
}

void __72__MPStoreItemMetadataCacheKey_getCacheKeyWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _isGoodCacheKey])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 48) _slowGetCacheKeyWithRequest:*(a1 + 32) completionHandler:*(a1 + 40)];
  }
}

@end
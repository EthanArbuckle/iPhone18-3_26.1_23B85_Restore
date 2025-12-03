@interface MPStorePurchaseErrorResolver
- (MPStorePurchaseErrorResolver)initWithStoreAccountIdentifier:(id)identifier;
- (void)resolveError:(id)error;
@end

@implementation MPStorePurchaseErrorResolver

- (void)resolveError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v6 = *MEMORY[0x1E696AA08];
  v7 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  code = [v7 code];
  domain = [errorCopy domain];
  v10 = *MEMORY[0x1E69874D8];
  if (([domain isEqualToString:*MEMORY[0x1E69874D8]] & 1) == 0)
  {

LABEL_11:
    [(MPAVErrorResolver *)self sendDidResolveError:errorCopy withResolution:0];
    goto LABEL_20;
  }

  domain2 = [v7 domain];
  v12 = *MEMORY[0x1E696A768];
  v13 = 0;
  if ([domain2 isEqualToString:*MEMORY[0x1E696A768]] && (code + 49999) >> 6 <= 0x7C)
  {
    selfCopy = self;
    v14 = errorCopy;
    v15 = v14;
    v13 = 1;
    if (v14)
    {
      domain3 = [v14 domain];
      v17 = [domain3 isEqualToString:v10];

      if (v17)
      {
        userInfo2 = [v15 userInfo];
        v19 = [userInfo2 objectForKey:v6];

        code2 = [v19 code];
        if (v19)
        {
          v21 = code2;
          domain4 = [v19 domain];
          v23 = [domain4 isEqualToString:v12];

          if (v23)
          {
            if ((v21 + 42597) < 3)
            {
              v13 = 0;
            }
          }
        }
      }
    }

    self = selfCopy;
  }

  if (!v13 || (code + 42583) > 0xFFFFFFFFFFFFFFF8)
  {
    goto LABEL_11;
  }

  if (self->_storeAccountIdentifier)
  {
    [MEMORY[0x1E69E4680] specificAccountWithDSID:?];
  }

  else
  {
    [MEMORY[0x1E69E4680] activeAccount];
  }
  v24 = ;
  v25 = [objc_alloc(MEMORY[0x1E69E4618]) initWithIdentity:v24];
  v26 = [objc_alloc(MEMORY[0x1E69E43A8]) initWithRequestContext:v25];
  [v26 setReason:*MEMORY[0x1E69E40F0]];
  [v26 setQualityOfService:25];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __45__MPStorePurchaseErrorResolver_resolveError___block_invoke;
  v28[3] = &unk_1E767FC38;
  v28[4] = self;
  v29 = errorCopy;
  [v26 performWithResponseHandler:v28];

LABEL_20:
}

void __45__MPStorePurchaseErrorResolver_resolveError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MPStorePurchaseErrorResolver_resolveError___block_invoke_2;
  block[3] = &unk_1E76800A0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (MPStorePurchaseErrorResolver)initWithStoreAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MPStorePurchaseErrorResolver;
  v6 = [(MPStorePurchaseErrorResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeAccountIdentifier, identifier);
  }

  return v7;
}

@end
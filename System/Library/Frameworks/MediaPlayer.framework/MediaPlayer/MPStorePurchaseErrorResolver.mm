@interface MPStorePurchaseErrorResolver
- (MPStorePurchaseErrorResolver)initWithStoreAccountIdentifier:(id)a3;
- (void)resolveError:(id)a3;
@end

@implementation MPStorePurchaseErrorResolver

- (void)resolveError:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = *MEMORY[0x1E696AA08];
  v7 = [v5 objectForKey:*MEMORY[0x1E696AA08]];

  v8 = [v7 code];
  v9 = [v4 domain];
  v10 = *MEMORY[0x1E69874D8];
  if (([v9 isEqualToString:*MEMORY[0x1E69874D8]] & 1) == 0)
  {

LABEL_11:
    [(MPAVErrorResolver *)self sendDidResolveError:v4 withResolution:0];
    goto LABEL_20;
  }

  v11 = [v7 domain];
  v12 = *MEMORY[0x1E696A768];
  v13 = 0;
  if ([v11 isEqualToString:*MEMORY[0x1E696A768]] && (v8 + 49999) >> 6 <= 0x7C)
  {
    v27 = self;
    v14 = v4;
    v15 = v14;
    v13 = 1;
    if (v14)
    {
      v16 = [v14 domain];
      v17 = [v16 isEqualToString:v10];

      if (v17)
      {
        v18 = [v15 userInfo];
        v19 = [v18 objectForKey:v6];

        v20 = [v19 code];
        if (v19)
        {
          v21 = v20;
          v22 = [v19 domain];
          v23 = [v22 isEqualToString:v12];

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

    self = v27;
  }

  if (!v13 || (v8 + 42583) > 0xFFFFFFFFFFFFFFF8)
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
  v29 = v4;
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

- (MPStorePurchaseErrorResolver)initWithStoreAccountIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPStorePurchaseErrorResolver;
  v6 = [(MPStorePurchaseErrorResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeAccountIdentifier, a3);
  }

  return v7;
}

@end
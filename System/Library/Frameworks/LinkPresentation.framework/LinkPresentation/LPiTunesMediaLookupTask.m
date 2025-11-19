@interface LPiTunesMediaLookupTask
- (LPiTunesMediaLookupTask)init;
- (LPiTunesMediaLookupTask)initWithBundleIdentifier:(id)a3;
- (LPiTunesMediaLookupTask)initWithIdentifier:(id)a3 storefrontCountryCode:(id)a4;
- (id)_compileQueryParametersWithBundleIds:(id)a3 itemIds:(id)a4;
- (id)callerID;
- (id)sharedBag;
- (void)start:(id)a3;
@end

@implementation LPiTunesMediaLookupTask

- (id)sharedBag
{
  if (sharedBag_onceToken != -1)
  {
    [LPiTunesMediaLookupTask sharedBag];
  }

  v3 = sharedBag_bag;

  return v3;
}

void __36__LPiTunesMediaLookupTask_sharedBag__block_invoke()
{
  v0 = MEMORY[0x1E698C7E0];
  v1 = [MEMORY[0x1E698C970] bagKeySet];
  [v0 registerBagKeySet:v1 forProfile:@"AppStore" profileVersion:@"1"];

  v2 = [MEMORY[0x1E698C7D8] bagForProfile:@"AppStore" profileVersion:@"1"];
  v3 = sharedBag_bag;
  sharedBag_bag = v2;
}

- (id)callerID
{
  if (callerID_onceToken != -1)
  {
    [LPiTunesMediaLookupTask callerID];
  }

  v3 = callerID_callerID;

  return v3;
}

void __35__LPiTunesMediaLookupTask_callerID__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = callerID_callerID;
  callerID_callerID = v1;

  if (![callerID_callerID length])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:getprogname()];
    v4 = callerID_callerID;
    callerID_callerID = v3;
  }
}

- (LPiTunesMediaLookupTask)init
{
  v3 = [MEMORY[0x1E698CAC8] currentProcess];
  [v3 setAccountMediaType:*MEMORY[0x1E698C4C0]];
  v4 = [(LPiTunesMediaLookupTask *)self sharedBag];
  v5 = [(LPiTunesMediaLookupTask *)self callerID];
  v6 = *MEMORY[0x1E698C618];
  v10.receiver = self;
  v10.super_class = LPiTunesMediaLookupTask;
  v7 = [(AMSLookup *)&v10 initWithBag:v4 caller:v5 keyProfile:v6];

  if (v7)
  {
    [(AMSLookup *)v7 setPlatform:@"web"];
    [(AMSLookup *)v7 setClientInfo:v3];
    v8 = v7;
  }

  return v7;
}

- (LPiTunesMediaLookupTask)initWithIdentifier:(id)a3 storefrontCountryCode:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(LPiTunesMediaLookupTask *)self init];
  if (v8)
  {
    v13[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    identifiers = v8->_identifiers;
    v8->_identifiers = v9;

    objc_storeStrong(&v8->_storefrontCountryCode, a4);
    v11 = v8;
  }

  return v8;
}

- (LPiTunesMediaLookupTask)initWithBundleIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LPiTunesMediaLookupTask *)self init];
  if (v5)
  {
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v6;

    v8 = v5;
  }

  return v5;
}

- (id)_compileQueryParametersWithBundleIds:(id)a3 itemIds:(id)a4
{
  v9.receiver = self;
  v9.super_class = LPiTunesMediaLookupTask;
  v5 = [(AMSLookup *)&v9 _compileQueryParametersWithBundleIds:a3 itemIds:a4];
  v6 = [v5 mutableCopy];

  [v6 setObject:@"omni" forKey:@"availability"];
  storefrontCountryCode = self->_storefrontCountryCode;
  if (storefrontCountryCode)
  {
    [v6 setObject:storefrontCountryCode forKey:@"cc"];
  }

  return v6;
}

- (void)start:(id)a3
{
  v4 = a3;
  v5 = [(AMSLookup *)self performLookupWithBundleIdentifiers:self->_bundleIdentifiers itemIdentifiers:self->_identifiers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__LPiTunesMediaLookupTask_start___block_invoke;
  v7[3] = &unk_1E7A36190;
  v6 = v4;
  v8 = v6;
  [v5 addFinishBlock:v7];
}

void __33__LPiTunesMediaLookupTask_start___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [v15 allItems];
    if ([v6 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = v7;
      v9 = *(a1 + 32);
      if (v7)
      {
        v10 = [v7 itemDictionary];
        v11 = [v15 valueForProperty:@"meta"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 objectForKeyedSubscript:@"storefront"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v12 objectForKeyedSubscript:@"id"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        (*(v9 + 16))(v9, v10, v14, 0);
      }

      else
      {
        (*(v9 + 16))(*(a1 + 32), 0, 0, 0);
      }
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

@end
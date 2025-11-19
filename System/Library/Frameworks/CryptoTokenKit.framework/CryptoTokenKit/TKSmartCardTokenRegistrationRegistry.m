@interface TKSmartCardTokenRegistrationRegistry
- (TKSmartCardTokenRegistrationRegistry)initWithHostTokenRegistry:(id)a3;
- (TKSmartCardTokenRegistrationRegistry)initWithHostTokenRegistry:(id)a3 slotServerConnectionProvider:(id)a4 tokenWatcherProvider:(id)a5;
- (id)_collectAppIdentifiersForToken:(id)a3;
- (void)createNFCSlotForTokenID:(id)a3 tokenRegistration:(id)a4 completion:(id)a5;
- (void)dealloc;
@end

@implementation TKSmartCardTokenRegistrationRegistry

- (TKSmartCardTokenRegistrationRegistry)initWithHostTokenRegistry:(id)a3
{
  v4 = a3;
  v5 = [[TKSlotServerConnectionProvider alloc] initWithReplyQueue:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012298;
  v9[3] = &unk_100038950;
  v10 = [[TKTokenWatcher alloc] initWithCTKDConnection:0];
  v6 = v10;
  v7 = [(TKSmartCardTokenRegistrationRegistry *)self initWithHostTokenRegistry:v4 slotServerConnectionProvider:v5 tokenWatcherProvider:v9];

  return v7;
}

- (TKSmartCardTokenRegistrationRegistry)initWithHostTokenRegistry:(id)a3 slotServerConnectionProvider:(id)a4 tokenWatcherProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = TKSmartCardTokenRegistrationRegistry;
  v12 = [(TKSmartCardTokenRegistrationRegistry *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tokenRegistry, a3);
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = [[TKSlotServerConnectionProvider alloc] initWithReplyQueue:0];
    }

    v15 = v14;
    v16 = [[TKNFCSlotManager alloc] initWithSlotServerConnectionProvider:v14 tokenWatcherProvider:v11 queue:0 slotTimeoutLimit:25.0];
    nfcSlotManager = v13->_nfcSlotManager;
    v13->_nfcSlotManager = v16;

    v18 = [[TKSmartCardTokenRegistrar alloc] initWithHostTokenRegistry:v13->_tokenRegistry];
    tokenRegistrar = v13->_tokenRegistrar;
    v13->_tokenRegistrar = v18;
  }

  return v13;
}

- (void)dealloc
{
  [(TKNFCSlotManager *)self->_nfcSlotManager terminate];
  v3.receiver = self;
  v3.super_class = TKSmartCardTokenRegistrationRegistry;
  [(TKSmartCardTokenRegistrationRegistry *)&v3 dealloc];
}

- (void)createNFCSlotForTokenID:(id)a3 tokenRegistration:(id)a4 completion:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(TKHostTokenRegistry *)self->_tokenRegistry tokenWithTokenID:v17];
  v11 = v10;
  if (v10 && ([v10 tokenRegistration], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    nfcSlotManager = self->_nfcSlotManager;
    v14 = [(TKSmartCardTokenRegistrationRegistry *)self _collectAppIdentifiersForToken:v17];
    [(TKNFCSlotManager *)nfcSlotManager createNFCSlotForTokenID:v17 tokenRegistration:v8 appIdentifiers:v14 completion:v9];
  }

  else
  {
    v15 = [v17 stringRepresentation];
    v14 = [NSString stringWithFormat:@"Registered token for ID: %@ wasn't found", v15];

    v16 = [NSError errorWithCode:-6 debugDescription:v14];
    v9[2](v9, 0, v16);
  }
}

- (id)_collectAppIdentifiersForToken:(id)a3
{
  v20 = +[NSMutableSet set];
  [(TKHostTokenRegistry *)self->_tokenRegistry tokenExtensions];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = v25 = 0u;
  obj = [v19 allValues];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = TKTokenTypeKey;
    v8 = TKTokenClassDriverApplicationIDKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 attributes];
        v12 = [v11 objectForKeyedSubscript:v7];
        v13 = [v12 isEqualToString:@"smartcard"];

        if (v13)
        {
          v14 = [v10 attributes];
          v15 = [v14 objectForKeyedSubscript:v8];

          if (v15)
          {
            v16 = [NSString supportedAIDsOfExtension:v10];
            if (v16)
            {
              [v20 addObjectsFromArray:v16];
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v17 = [v20 allObjects];

  return v17;
}

@end
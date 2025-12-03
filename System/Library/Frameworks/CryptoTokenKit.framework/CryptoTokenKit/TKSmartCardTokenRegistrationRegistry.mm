@interface TKSmartCardTokenRegistrationRegistry
- (TKSmartCardTokenRegistrationRegistry)initWithHostTokenRegistry:(id)registry;
- (TKSmartCardTokenRegistrationRegistry)initWithHostTokenRegistry:(id)registry slotServerConnectionProvider:(id)provider tokenWatcherProvider:(id)watcherProvider;
- (id)_collectAppIdentifiersForToken:(id)token;
- (void)createNFCSlotForTokenID:(id)d tokenRegistration:(id)registration completion:(id)completion;
- (void)dealloc;
@end

@implementation TKSmartCardTokenRegistrationRegistry

- (TKSmartCardTokenRegistrationRegistry)initWithHostTokenRegistry:(id)registry
{
  registryCopy = registry;
  v5 = [[TKSlotServerConnectionProvider alloc] initWithReplyQueue:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012298;
  v9[3] = &unk_100038950;
  v10 = [[TKTokenWatcher alloc] initWithCTKDConnection:0];
  v6 = v10;
  v7 = [(TKSmartCardTokenRegistrationRegistry *)self initWithHostTokenRegistry:registryCopy slotServerConnectionProvider:v5 tokenWatcherProvider:v9];

  return v7;
}

- (TKSmartCardTokenRegistrationRegistry)initWithHostTokenRegistry:(id)registry slotServerConnectionProvider:(id)provider tokenWatcherProvider:(id)watcherProvider
{
  registryCopy = registry;
  providerCopy = provider;
  watcherProviderCopy = watcherProvider;
  v21.receiver = self;
  v21.super_class = TKSmartCardTokenRegistrationRegistry;
  v12 = [(TKSmartCardTokenRegistrationRegistry *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tokenRegistry, registry);
    if (providerCopy)
    {
      v14 = providerCopy;
    }

    else
    {
      v14 = [[TKSlotServerConnectionProvider alloc] initWithReplyQueue:0];
    }

    v15 = v14;
    v16 = [[TKNFCSlotManager alloc] initWithSlotServerConnectionProvider:v14 tokenWatcherProvider:watcherProviderCopy queue:0 slotTimeoutLimit:25.0];
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

- (void)createNFCSlotForTokenID:(id)d tokenRegistration:(id)registration completion:(id)completion
{
  dCopy = d;
  registrationCopy = registration;
  completionCopy = completion;
  v10 = [(TKHostTokenRegistry *)self->_tokenRegistry tokenWithTokenID:dCopy];
  v11 = v10;
  if (v10 && ([v10 tokenRegistration], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    nfcSlotManager = self->_nfcSlotManager;
    v14 = [(TKSmartCardTokenRegistrationRegistry *)self _collectAppIdentifiersForToken:dCopy];
    [(TKNFCSlotManager *)nfcSlotManager createNFCSlotForTokenID:dCopy tokenRegistration:registrationCopy appIdentifiers:v14 completion:completionCopy];
  }

  else
  {
    stringRepresentation = [dCopy stringRepresentation];
    v14 = [NSString stringWithFormat:@"Registered token for ID: %@ wasn't found", stringRepresentation];

    v16 = [NSError errorWithCode:-6 debugDescription:v14];
    completionCopy[2](completionCopy, 0, v16);
  }
}

- (id)_collectAppIdentifiersForToken:(id)token
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
        attributes = [v10 attributes];
        v12 = [attributes objectForKeyedSubscript:v7];
        v13 = [v12 isEqualToString:@"smartcard"];

        if (v13)
        {
          attributes2 = [v10 attributes];
          v15 = [attributes2 objectForKeyedSubscript:v8];

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

  allObjects = [v20 allObjects];

  return allObjects;
}

@end
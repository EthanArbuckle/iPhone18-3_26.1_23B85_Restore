@interface SharePlayProviderController
- (BOOL)isEnabled;
- (NSArray)providers;
- (SharePlayProviderController)init;
- (id)mutableProviderForBundleIdentifier:(id)identifier;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)applicationPolicyManager:(id)manager authorizationChangedForBundleIdentifier:(id)identifier;
- (void)removeDelegate:(id)delegate;
- (void)setEnabled:(BOOL)enabled;
- (void)setProvider:(id)provider forBundleIdentifier:(id)identifier;
- (void)setProviders:(id)providers;
- (void)setSharePlayEnabled:(BOOL)enabled forProvider:(id)provider;
- (void)updateProviderByBundleIdentifier;
- (void)updateProviders;
@end

@implementation SharePlayProviderController

- (SharePlayProviderController)init
{
  v18.receiver = self;
  v18.super_class = SharePlayProviderController;
  v2 = [(SharePlayProviderController *)&v18 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.SharePlaySettings.queue.%@.%p", objc_opt_class(), v2];
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = +[CPApplicationPolicyManager sharedInstance];
    applicationPolicyManager = v2->_applicationPolicyManager;
    v2->_applicationPolicyManager = v8;

    [(CPApplicationPolicyManager *)v2->_applicationPolicyManager addDelegate:v2 withQueue:v2->_queue];
    v10 = objc_alloc_init(TUDelegateController);
    delegateController = v2->_delegateController;
    v2->_delegateController = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    providerByBundleIdentifier = v2->_providerByBundleIdentifier;
    v2->_providerByBundleIdentifier = v12;

    v14 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2084;
    block[3] = &unk_C480;
    v17 = v2;
    dispatch_async(v14, block);
  }

  return v2;
}

- (BOOL)isEnabled
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  applicationPolicyManager = [(SharePlayProviderController *)self applicationPolicyManager];
  if (objc_opt_respondsToSelector())
  {
    queue = [(SharePlayProviderController *)self queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_219C;
    v7[3] = &unk_C4A8;
    v9 = &v10;
    v8 = applicationPolicyManager;
    dispatch_sync(queue, v7);
  }

  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (void)setEnabled:(BOOL)enabled
{
  applicationPolicyManager = [(SharePlayProviderController *)self applicationPolicyManager];
  if (objc_opt_respondsToSelector())
  {
    queue = [(SharePlayProviderController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_229C;
    block[3] = &unk_C4D0;
    enabledCopy = enabled;
    v8 = applicationPolicyManager;
    selfCopy = self;
    dispatch_async(queue, block);
  }
}

- (NSArray)providers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_2548;
  v11 = sub_2558;
  v12 = 0;
  queue = [(SharePlayProviderController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2560;
  v6[3] = &unk_C4A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setProviders:(id)providers
{
  providersCopy = providers;
  queue = [(SharePlayProviderController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_providers != providersCopy)
  {
    objc_storeStrong(&self->_providers, providers);
    delegateController = [(SharePlayProviderController *)self delegateController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_265C;
    v8[3] = &unk_C548;
    v8[4] = self;
    v9 = providersCopy;
    [delegateController enumerateDelegatesUsingBlock:v8];
  }
}

- (void)setSharePlayEnabled:(BOOL)enabled forProvider:(id)provider
{
  providerCopy = provider;
  queue = [(SharePlayProviderController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_27FC;
  block[3] = &unk_C4D0;
  enabledCopy = enabled;
  block[4] = self;
  v10 = providerCopy;
  v8 = providerCopy;
  dispatch_async(queue, block);
}

- (void)setProvider:(id)provider forBundleIdentifier:(id)identifier
{
  providerCopy = provider;
  identifierCopy = identifier;
  queue = [(SharePlayProviderController *)self queue];
  dispatch_assert_queue_V2(queue);

  providerByBundleIdentifier = [(SharePlayProviderController *)self providerByBundleIdentifier];
  v10 = [providerByBundleIdentifier objectForKeyedSubscript:identifierCopy];

  if ((TUObjectsAreEqualOrNil() & 1) == 0)
  {
    v11 = [providerCopy copy];
    providerByBundleIdentifier2 = [(SharePlayProviderController *)self providerByBundleIdentifier];
    [providerByBundleIdentifier2 setObject:v11 forKeyedSubscript:identifierCopy];

    [(SharePlayProviderController *)self updateProviders];
    if (v10)
    {
      delegateController = [(SharePlayProviderController *)self delegateController];
      if (providerCopy)
      {
        v28 = _NSConcreteStackBlock;
        v29 = 3221225472;
        v30 = sub_2A94;
        v31 = &unk_C548;
        selfCopy = self;
        v14 = &v33;
        v33 = providerCopy;
        v15 = &v28;
      }

      else
      {
        v22 = _NSConcreteStackBlock;
        v23 = 3221225472;
        v24 = sub_2B78;
        v25 = &unk_C548;
        selfCopy2 = self;
        v14 = &v27;
        v27 = v10;
        v15 = &v22;
      }
    }

    else
    {
      delegateController = [(SharePlayProviderController *)self delegateController];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_2C5C;
      v19 = &unk_C548;
      selfCopy3 = self;
      v14 = &v21;
      v21 = providerCopy;
      v15 = &v16;
    }

    [delegateController enumerateDelegatesUsingBlock:{v15, v16, v17, v18, v19, selfCopy3, v21, v22, v23, v24, v25, selfCopy2, v27, v28, v29, v30, v31, selfCopy, v33}];
  }
}

- (id)mutableProviderForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = [(SharePlayProvider *)[SharePlayMutableProvider alloc] initWithBundleIdentifier:identifierCopy];
    localizedName = [v4 localizedName];
    [(SharePlayProvider *)v6 setLocalizedName:localizedName];
  }

  else
  {
    localizedName = SharePlaySettingsLog();
    if (os_log_type_enabled(localizedName, OS_LOG_TYPE_ERROR))
    {
      sub_5A8C(identifierCopy, v5, localizedName);
    }

    v6 = 0;
  }

  v8 = [(SharePlayMutableProvider *)v6 copy];

  return v8;
}

- (void)updateProviderByBundleIdentifier
{
  queue = [(SharePlayProviderController *)self queue];
  dispatch_assert_queue_V2(queue);

  providerByBundleIdentifier = [(SharePlayProviderController *)self providerByBundleIdentifier];
  [providerByBundleIdentifier removeAllObjects];

  applicationPolicyManager = [(SharePlayProviderController *)self applicationPolicyManager];
  authorizedBundleIdentifiers = [applicationPolicyManager authorizedBundleIdentifiers];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [authorizedBundleIdentifiers allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(SharePlayProviderController *)self mutableProviderForBundleIdentifier:v12];
        if (v13)
        {
          v14 = [authorizedBundleIdentifiers objectForKeyedSubscript:v12];
          [v13 setEnabled:{objc_msgSend(v14, "BOOLValue")}];

          v15 = [v13 copy];
          providerByBundleIdentifier2 = [(SharePlayProviderController *)self providerByBundleIdentifier];
          [providerByBundleIdentifier2 setObject:v15 forKeyedSubscript:v12];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(SharePlayProviderController *)self updateProviders];
}

- (void)updateProviders
{
  queue = [(SharePlayProviderController *)self queue];
  dispatch_assert_queue_V2(queue);

  providerByBundleIdentifier = [(SharePlayProviderController *)self providerByBundleIdentifier];
  allValues = [providerByBundleIdentifier allValues];
  v6 = [allValues sortedArrayUsingComparator:&stru_C588];

  [(SharePlayProviderController *)self setProviders:v6];
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  delegateController = [(SharePlayProviderController *)self delegateController];
  [delegateController addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateController = [(SharePlayProviderController *)self delegateController];
  [delegateController removeDelegate:delegateCopy];
}

- (void)applicationPolicyManager:(id)manager authorizationChangedForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(SharePlayProviderController *)self queue];
  dispatch_assert_queue_V2(queue);

  applicationPolicyManager = [(SharePlayProviderController *)self applicationPolicyManager];
  authorizedBundleIdentifiers = [applicationPolicyManager authorizedBundleIdentifiers];
  v8 = [authorizedBundleIdentifiers objectForKeyedSubscript:identifierCopy];

  if (v8)
  {
    providerByBundleIdentifier = [(SharePlayProviderController *)self providerByBundleIdentifier];
    v10 = [providerByBundleIdentifier objectForKeyedSubscript:identifierCopy];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = [(SharePlayProviderController *)self mutableProviderForBundleIdentifier:identifierCopy];
    }

    [v11 setEnabled:{objc_msgSend(v8, "BOOLValue")}];
  }

  else
  {
    v11 = 0;
  }

  [(SharePlayProviderController *)self setProvider:v11 forBundleIdentifier:identifierCopy];
}

@end
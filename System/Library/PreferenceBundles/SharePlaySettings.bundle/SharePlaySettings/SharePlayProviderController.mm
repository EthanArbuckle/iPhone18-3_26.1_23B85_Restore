@interface SharePlayProviderController
- (BOOL)isEnabled;
- (NSArray)providers;
- (SharePlayProviderController)init;
- (id)mutableProviderForBundleIdentifier:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)applicationPolicyManager:(id)a3 authorizationChangedForBundleIdentifier:(id)a4;
- (void)removeDelegate:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setProvider:(id)a3 forBundleIdentifier:(id)a4;
- (void)setProviders:(id)a3;
- (void)setSharePlayEnabled:(BOOL)a3 forProvider:(id)a4;
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
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
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
  v3 = [(SharePlayProviderController *)self applicationPolicyManager];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SharePlayProviderController *)self queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_219C;
    v7[3] = &unk_C4A8;
    v9 = &v10;
    v8 = v3;
    dispatch_sync(v4, v7);
  }

  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (void)setEnabled:(BOOL)a3
{
  v5 = [(SharePlayProviderController *)self applicationPolicyManager];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(SharePlayProviderController *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_229C;
    block[3] = &unk_C4D0;
    v10 = a3;
    v8 = v5;
    v9 = self;
    dispatch_async(v6, block);
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
  v3 = [(SharePlayProviderController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2560;
  v6[3] = &unk_C4A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setProviders:(id)a3
{
  v5 = a3;
  v6 = [(SharePlayProviderController *)self queue];
  dispatch_assert_queue_V2(v6);

  if (self->_providers != v5)
  {
    objc_storeStrong(&self->_providers, a3);
    v7 = [(SharePlayProviderController *)self delegateController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_265C;
    v8[3] = &unk_C548;
    v8[4] = self;
    v9 = v5;
    [v7 enumerateDelegatesUsingBlock:v8];
  }
}

- (void)setSharePlayEnabled:(BOOL)a3 forProvider:(id)a4
{
  v6 = a4;
  v7 = [(SharePlayProviderController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_27FC;
  block[3] = &unk_C4D0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setProvider:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SharePlayProviderController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(SharePlayProviderController *)self providerByBundleIdentifier];
  v10 = [v9 objectForKeyedSubscript:v7];

  if ((TUObjectsAreEqualOrNil() & 1) == 0)
  {
    v11 = [v6 copy];
    v12 = [(SharePlayProviderController *)self providerByBundleIdentifier];
    [v12 setObject:v11 forKeyedSubscript:v7];

    [(SharePlayProviderController *)self updateProviders];
    if (v10)
    {
      v13 = [(SharePlayProviderController *)self delegateController];
      if (v6)
      {
        v28 = _NSConcreteStackBlock;
        v29 = 3221225472;
        v30 = sub_2A94;
        v31 = &unk_C548;
        v32 = self;
        v14 = &v33;
        v33 = v6;
        v15 = &v28;
      }

      else
      {
        v22 = _NSConcreteStackBlock;
        v23 = 3221225472;
        v24 = sub_2B78;
        v25 = &unk_C548;
        v26 = self;
        v14 = &v27;
        v27 = v10;
        v15 = &v22;
      }
    }

    else
    {
      v13 = [(SharePlayProviderController *)self delegateController];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_2C5C;
      v19 = &unk_C548;
      v20 = self;
      v14 = &v21;
      v21 = v6;
      v15 = &v16;
    }

    [v13 enumerateDelegatesUsingBlock:{v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33}];
  }
}

- (id)mutableProviderForBundleIdentifier:(id)a3
{
  v3 = a3;
  v10 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = [(SharePlayProvider *)[SharePlayMutableProvider alloc] initWithBundleIdentifier:v3];
    v7 = [v4 localizedName];
    [(SharePlayProvider *)v6 setLocalizedName:v7];
  }

  else
  {
    v7 = SharePlaySettingsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_5A8C(v3, v5, v7);
    }

    v6 = 0;
  }

  v8 = [(SharePlayMutableProvider *)v6 copy];

  return v8;
}

- (void)updateProviderByBundleIdentifier
{
  v3 = [(SharePlayProviderController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SharePlayProviderController *)self providerByBundleIdentifier];
  [v4 removeAllObjects];

  v5 = [(SharePlayProviderController *)self applicationPolicyManager];
  v6 = [v5 authorizedBundleIdentifiers];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(SharePlayProviderController *)self mutableProviderForBundleIdentifier:v12];
        if (v13)
        {
          v14 = [v6 objectForKeyedSubscript:v12];
          [v13 setEnabled:{objc_msgSend(v14, "BOOLValue")}];

          v15 = [v13 copy];
          v16 = [(SharePlayProviderController *)self providerByBundleIdentifier];
          [v16 setObject:v15 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(SharePlayProviderController *)self updateProviders];
}

- (void)updateProviders
{
  v3 = [(SharePlayProviderController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SharePlayProviderController *)self providerByBundleIdentifier];
  v5 = [v4 allValues];
  v6 = [v5 sortedArrayUsingComparator:&stru_C588];

  [(SharePlayProviderController *)self setProviders:v6];
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SharePlayProviderController *)self delegateController];
  [v8 addDelegate:v7 queue:v6];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SharePlayProviderController *)self delegateController];
  [v5 removeDelegate:v4];
}

- (void)applicationPolicyManager:(id)a3 authorizationChangedForBundleIdentifier:(id)a4
{
  v12 = a4;
  v5 = [(SharePlayProviderController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SharePlayProviderController *)self applicationPolicyManager];
  v7 = [v6 authorizedBundleIdentifiers];
  v8 = [v7 objectForKeyedSubscript:v12];

  if (v8)
  {
    v9 = [(SharePlayProviderController *)self providerByBundleIdentifier];
    v10 = [v9 objectForKeyedSubscript:v12];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = [(SharePlayProviderController *)self mutableProviderForBundleIdentifier:v12];
    }

    [v11 setEnabled:{objc_msgSend(v8, "BOOLValue")}];
  }

  else
  {
    v11 = 0;
  }

  [(SharePlayProviderController *)self setProvider:v11 forBundleIdentifier:v12];
}

@end
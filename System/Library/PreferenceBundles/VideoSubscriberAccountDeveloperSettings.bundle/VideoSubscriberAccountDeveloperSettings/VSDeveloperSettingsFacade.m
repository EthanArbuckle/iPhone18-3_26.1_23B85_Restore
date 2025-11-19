@interface VSDeveloperSettingsFacade
+ (id)keyPathsForValuesAffectingSetTopBoxUseDeviceProfileHash;
+ (id)sharedFacade;
- (VSDeveloperSettingsFacade)init;
- (id)alertMessageForProxyDetection;
- (id)alertTitleForProxyDetection;
- (id)buildSystemTrustTestAlertMessageWithStatusMessage:(id)a3 andTrustInfo:(id)a4;
- (id)dismissTitleForProxyDetection;
- (void)_updateLabels;
- (void)enqueueChange:(int64_t)a3 withIdentityProvider:(id)a4 completionHandler:(id)a5;
- (void)fetchDeveloperSettingsWithCompletionHandler:(id)a3;
- (void)remoteNotifier:(id)a3 didReceiveRemoteNotificationWithUserInfo:(id)a4;
- (void)updateDeveloperSettings:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation VSDeveloperSettingsFacade

+ (id)sharedFacade
{
  if (qword_115A0 != -1)
  {
    sub_6A10();
  }

  v3 = qword_11598;

  return v3;
}

- (VSDeveloperSettingsFacade)init
{
  v38.receiver = self;
  v38.super_class = VSDeveloperSettingsFacade;
  v2 = [(VSDeveloperSettingsFacade *)&v38 init];
  v3 = v2;
  if (v2)
  {
    providers = v2->_providers;
    v2->_providers = &__NSArray0__struct;

    v5 = objc_alloc_init(NSOperationQueue);
    privateQueue = v3->_privateQueue;
    v3->_privateQueue = v5;

    [(NSOperationQueue *)v3->_privateQueue setName:@"VSDeveloperSettingsFacade"];
    v7 = objc_alloc_init(VSDeveloperIdentityProviderFetchAllOperation);
    v8 = objc_alloc_init(VSDeveloperSettingsFetchOperation);
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_110C;
    v34 = &unk_C428;
    v35 = v7;
    v36 = v3;
    v37 = v8;
    v9 = v8;
    v10 = v7;
    v11 = VSMainThreadOperationWithBlock();
    [v11 addDependency:v10];
    [v11 addDependency:v9];
    v12 = [(VSDeveloperSettingsFacade *)v36 privateQueue];
    [v12 addOperation:v10];

    v13 = [(VSDeveloperSettingsFacade *)v36 privateQueue];
    [v13 addOperation:v9];

    VSEnqueueCompletionOperation();
    v14 = +[VSDevice currentDevice];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_13E4;
    v29 = &unk_C450;
    v15 = v36;
    v30 = v15;
    [v14 fetchDeviceManagedSetTopBoxProfileWithCompletion:&v26];

    v16 = [VSRemoteNotifier alloc];
    v17 = [v16 initWithNotificationName:{VSDeveloperServiceProvidersDidChangeNotification, v26, v27, v28, v29}];
    v18 = v15[9];
    v15[9] = v17;

    v19 = [VSRemoteNotifier alloc];
    v20 = [v19 initWithNotificationName:VSDeveloperServiceSettingsDidChangeNotification];
    v21 = v15[10];
    v15[10] = v20;

    v22 = [VSRemoteNotifier alloc];
    v23 = [v22 initWithNotificationName:VSSetTopBoxStateChangedNotification];
    v24 = v15[11];
    v15[11] = v23;

    [v15[9] setDelegate:v15];
    [v15[10] setDelegate:v15];
    [v15[11] setDelegate:v15];
  }

  return v3;
}

- (void)enqueueChange:(int64_t)a3 withIdentityProvider:(id)a4 completionHandler:(id)a5
{
  v33 = a3;
  v7 = a4;
  v34 = self;
  v35 = a5;
  v8 = [(VSDeveloperSettingsFacade *)self providers];
  v9 = [v7 uniqueID];
  v36 = [v9 forceUnwrapObject];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    obj = v10;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = [v15 providerID];
        v17 = [v16 forceUnwrapObject];
        v18 = v7;
        v19 = [v7 providerID];
        v20 = [v19 forceUnwrapObject];
        v21 = [v17 isEqualToString:v20];

        if (v21)
        {
          v22 = [v15 uniqueID];
          v23 = [v22 forceUnwrapObject];
          v24 = [v23 isEqual:v36];

          if (!v24)
          {
            v10 = obj;

            v31 = +[NSBundle vs_frameworkBundle];
            v27 = [v31 localizedStringForKey:@"DEVELOPER_PROVIDER_IDENTIFIER_COLLISION_ERROR_DESCRIPTION" value:0 table:0];

            v44 = NSLocalizedDescriptionKey;
            v45 = v27;
            v30 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            v32 = [NSError errorWithDomain:@"DeveloperFacadeErrorDomain" code:0 userInfo:v30];
            v26 = v35;
            (*(v35 + 2))(v35, v32);

            goto LABEL_12;
          }
        }

        v7 = v18;
      }

      v10 = obj;
      v12 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v25 = objc_alloc_init(VSDeveloperIdentityProviderChangeOperation);
  [v25 setChangeKind:v33];
  [v25 setIdentityProvider:v7];
  v26 = v35;
  v38 = v25;
  v39 = v35;
  v27 = v25;
  v28 = VSMainThreadOperationWithBlock();
  [v28 addDependency:v27];
  [(VSDeveloperSettingsFacade *)v34 privateQueue];
  v29 = v18 = v7;
  [v29 addOperation:v27];
  VSEnqueueCompletionOperation();

  v30 = v38;
LABEL_12:
}

- (void)fetchDeveloperSettingsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v9 = objc_alloc_init(VSDeveloperSettingsFetchOperation);
  v10 = v4;
  v5 = v4;
  v6 = v9;
  v7 = VSMainThreadOperationWithBlock();
  [v7 addDependency:{v6, _NSConcreteStackBlock, 3221225472, sub_1A04, &unk_C4F0}];
  v8 = [(VSDeveloperSettingsFacade *)self privateQueue];
  [v8 addOperation:v6];

  VSEnqueueCompletionOperation();
}

- (void)updateDeveloperSettings:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[VSDeveloperSettingsUpdateOperation alloc] initWithSettings:v7];

  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v8;
  v11 = VSMainThreadOperationWithBlock();
  [v11 addDependency:{v10, _NSConcreteStackBlock, 3221225472, sub_1B88, &unk_C4F0}];
  v12 = [(VSDeveloperSettingsFacade *)self privateQueue];
  [v12 addOperation:v10];

  VSEnqueueCompletionOperation();
}

- (id)buildSystemTrustTestAlertMessageWithStatusMessage:(id)a3 andTrustInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSBundle vs_frameworkBundle];
  v8 = [v7 localizedStringForKey:@"TEST_SYSTEM_TRUST_NO_SSL_RESPONSE_MESSAGE" value:0 table:0];

  if (v6)
  {
    v9 = [v6 description];

    v8 = v9;
  }

  v10 = [NSString stringWithFormat:@"%@\n\n%@", v5, v8];

  return v10;
}

- (id)alertTitleForProxyDetection
{
  v2 = +[NSBundle vs_frameworkBundle];
  v3 = [v2 localizedStringForKey:@"TEST_SYSTEM_TRUST_RESULT_ALERT_ERROR_TITLE" value:0 table:0];

  return v3;
}

- (id)alertMessageForProxyDetection
{
  v2 = +[NSBundle vs_frameworkBundle];
  v3 = [v2 localizedStringForKey:@"TEST_SYSTEM_TRUST_PROXY_DETECTED_ALERT_MESSAGE" value:0 table:0];

  return v3;
}

- (id)dismissTitleForProxyDetection
{
  v2 = +[NSBundle vs_frameworkBundle];
  v3 = [v2 localizedStringForKey:@"ERROR_DISMISS_BUTTON_TITLE" value:0 table:0];

  return v3;
}

- (void)_updateLabels
{
  v3 = [(VSDeveloperSettingsFacade *)self settings];
  v4 = +[NSBundle vs_frameworkBundle];
  v5 = [v4 localizedStringForKey:@"GENERIC_STATUS_ENABLED_LABEL" value:0 table:0];

  v6 = +[NSBundle vs_frameworkBundle];
  v7 = [v6 localizedStringForKey:@"GENERIC_STATUS_DISABLED_LABEL" value:0 table:0];

  v8 = v7;
  v9 = v8;
  if ([v3 isInSetTopBoxMode])
  {
    v9 = v5;
  }

  v26 = v9;
  v10 = v8;
  v11 = v10;
  if ([v3 setTopBoxSupportsOptOut])
  {
    v11 = v5;
  }

  v24 = v11;
  v25 = v10;
  v27 = v5;
  v28 = v3;
  v12 = [v3 setTopBoxIdentityProviderID];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = [(VSDeveloperSettingsFacade *)self providers];
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = [v18 uniqueID];
        v20 = [v19 forceUnwrapObject];
        v21 = [v20 isEqualToString:v12];

        if (v21)
        {
          v22 = [v18 displayName];
          v23 = [v22 forceUnwrapObject];
          [(VSDeveloperSettingsFacade *)self setSetTopBoxProviderDisplayName:v23];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  [(VSDeveloperSettingsFacade *)self setIsSetTopBoxEnabledStatus:v26];
  [(VSDeveloperSettingsFacade *)self setSetTopBoxSupportsOptOutStatus:v24];
}

- (void)remoteNotifier:(id)a3 didReceiveRemoteNotificationWithUserInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Did receive developer mode store did change notification.", buf, 2u);
  }

  objc_initWeak(buf, self);
  v9 = [(VSDeveloperSettingsFacade *)self settingsChangeRemoteNotifier];

  if (v9 == v6)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_2338;
    v17[3] = &unk_C560;
    objc_copyWeak(&v18, buf);
    v17[4] = self;
    [(VSDeveloperSettingsFacade *)self fetchDeveloperSettingsWithCompletionHandler:v17];
    objc_destroyWeak(&v18);
  }

  else
  {
    v10 = [(VSDeveloperSettingsFacade *)self providersChangeRemoteNotifier];

    if (v10 == v6)
    {
      v15[5] = _NSConcreteStackBlock;
      v15[6] = 3221225472;
      v15[7] = sub_24B0;
      v15[8] = &unk_C5D0;
      v12 = objc_alloc_init(VSDeveloperIdentityProviderFetchAllOperation);
      v15[9] = v12;
      objc_copyWeak(&v16, buf);
      v13 = VSMainThreadOperationWithBlock();
      [v13 addDependency:v12];
      v14 = [(VSDeveloperSettingsFacade *)self privateQueue];
      [v14 addOperation:v12];

      VSEnqueueCompletionOperation();
      objc_destroyWeak(&v16);

      goto LABEL_9;
    }

    v11 = [(VSDeveloperSettingsFacade *)self stbChangeRemoteNotifier];

    if (v11 == v6)
    {
      v12 = +[VSDevice currentDevice];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_2670;
      v15[3] = &unk_C450;
      v15[4] = self;
      [v12 fetchDeviceManagedSetTopBoxProfileWithCompletion:v15];
LABEL_9:
    }
  }

  objc_destroyWeak(buf);
}

+ (id)keyPathsForValuesAffectingSetTopBoxUseDeviceProfileHash
{
  v2 = objc_alloc_init(NSMutableSet);
  [v2 addObject:@"hasRealSetTopBoxProfile"];
  [v2 addObject:@"settings"];

  return v2;
}

@end
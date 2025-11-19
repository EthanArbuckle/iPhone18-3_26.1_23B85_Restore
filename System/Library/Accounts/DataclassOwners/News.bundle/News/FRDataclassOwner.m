@interface FRDataclassOwner
+ (id)dataclasses;
- (BOOL)_cleanUpAppExternalFiles;
- (BOOL)_cleanUpDataContainers;
- (BOOL)_cleanUpUserDefaults;
- (BOOL)_cleanUpWatchData;
- (BOOL)_hasLocalData;
- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6;
- (FRDataclassOwner)init;
- (id)actionsForDisablingDataclassOnAccount:(id)a3 forDataclass:(id)a4;
- (id)actionsForEnablingDataclassOnAccount:(id)a3 forDataclass:(id)a4;
- (void)_reloadWidgets;
- (void)_unregisterDeviceToken;
@end

@implementation FRDataclassOwner

- (FRDataclassOwner)init
{
  v8.receiver = self;
  v8.super_class = FRDataclassOwner;
  v2 = [(FRDataclassOwner *)&v8 init];
  if (v2)
  {
    v3 = [FCAccountActionQueue alloc];
    v4 = FCURLForAccountActionQueue();
    v5 = [v3 initWithFileURL:v4];
    accountActionQueue = v2->_accountActionQueue;
    v2->_accountActionQueue = v5;
  }

  return v2;
}

+ (id)dataclasses
{
  v4 = kAccountDataclassNews;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)actionsForEnablingDataclassOnAccount:(id)a3 forDataclass:(id)a4
{
  if ([(FRDataclassOwner *)self _hasLocalData:a3])
  {
    v4 = [ACDataclassAction actionWithType:5];
    v5 = [ACDataclassAction actionWithType:0, v4];
    v8[1] = v5;
    v6 = [NSArray arrayWithObjects:v8 count:2];
  }

  else
  {
    v4 = [ACDataclassAction actionWithType:1];
    v9 = v4;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v6;
}

- (id)actionsForDisablingDataclassOnAccount:(id)a3 forDataclass:(id)a4
{
  if ([(FRDataclassOwner *)self _hasLocalData:a3])
  {
    v4 = [ACDataclassAction destructiveActionWithType:3];
    v10[0] = v4;
    v5 = [ACDataclassAction actionWithType:2];
    v10[1] = v5;
    v6 = [ACDataclassAction actionWithType:0];
    v10[2] = v6;
    v7 = [NSArray arrayWithObjects:v10 count:3];
  }

  else
  {
    v4 = [ACDataclassAction actionWithType:3];
    v9 = v4;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v7;
}

- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 type] && objc_msgSend(v10, "type") != &dword_4 + 3)
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = sub_2854;
    v56 = sub_2880;
    v57 = 0;
    v15 = dispatch_semaphore_create(0);
    NSSTerminateNewsWithCompletion();
    v16 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v15, v16);
    v17 = [(FRDataclassOwner *)self accountActionQueue:_NSConcreteStackBlock];
    v14 = [v17 enqueueActionWithType:{objc_msgSend(v10, "type")}];

    if ([v10 type] == &dword_0 + 3)
    {
      [(FRDataclassOwner *)self _unregisterDeviceToken];
      if (![(FRDataclassOwner *)self _cleanUpAppExternalFiles])
      {
        v18 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v18)
        {
          sub_409C(v18, v19, v20, v21, v22, v23, v24, v25);
        }

        v14 = 0;
      }

      if (![(FRDataclassOwner *)self _cleanUpDataContainers])
      {
        v26 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v26)
        {
          sub_40D8(v26, v27, v28, v29, v30, v31, v32, v33);
        }

        v14 = 0;
      }

      if (![(FRDataclassOwner *)self _cleanUpUserDefaults])
      {
        v34 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v34)
        {
          sub_4114(v34, v35, v36, v37, v38, v39, v40, v41);
        }

        v14 = 0;
      }

      if (![(FRDataclassOwner *)self _cleanUpWatchData])
      {
        v42 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v42)
        {
          sub_4150(v42, v43, v44, v45, v46, v47, v48, v49);
        }

        v14 = 0;
      }
    }

    v50 = v53[5];
    if (v50)
    {
      (*(v50 + 16))();
    }

    [(FRDataclassOwner *)self _reloadWidgets];

    _Block_object_dispose(&v52, 8);
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)_unregisterDeviceToken
{
  v2 = [FCFileCoordinatedNotificationDropbox alloc];
  v3 = FCURLForNotificationDropbox();
  v4 = [v2 initWithFileURL:v3];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_2B88;
  v21 = sub_2B98;
  v22 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_2BA0;
  v16[3] = &unk_83E8;
  v16[4] = &v17;
  [v4 peekSyncWithAccessor:v16];
  v5 = [v18[5] baseURLString];
  v6 = [v18[5] notificationUserID];
  v7 = [v18[5] deviceToken];
  v8 = [v18[5] storefrontID];
  if ([v5 length] && objc_msgSend(v6, "length") && objc_msgSend(v7, "length") && objc_msgSend(v8, "length"))
  {
    v9 = [[FCNotificationsEndpointConnection alloc] initWithBaseURLString:v5];
    v10 = dispatch_semaphore_create(0);
    v11 = &_dispatch_main_q;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2BB0;
    v14[3] = &unk_8410;
    v12 = v10;
    v15 = v12;
    [v9 unregisterDeviceWithUserID:v6 deviceToken:v7 storefrontID:v8 deviceDigestMode:0 callbackQueue:&_dispatch_main_q completion:v14];

    v13 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v12, v13);
  }

  _Block_object_dispose(&v17, 8);
}

- (BOOL)_cleanUpAppExternalFiles
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = FCURLsForAppExternalFiles();
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    v7 = 1;
    *&v4 = 138543618;
    v14 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 checkResourceIsReachableAndReturnError:{0, v14}])
        {
          v10 = +[NSFileManager defaultManager];
          v15 = 0;
          v11 = [v10 removeItemAtURL:v9 error:&v15];
          v12 = v15;

          if ((v11 & 1) == 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v14;
              v21 = v9;
              v22 = 2114;
              v23 = v12;
              _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to remove News external file, url=%{public}@, error=%{public}@", buf, 0x16u);
            }

            v7 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (BOOL)_cleanUpDataContainers
{
  v2 = [NSSDataContainerDataDestructionItem alloc];
  v3 = [v2 initWithContainerClass:4 identifier:{objc_msgSend(NSSNewsTodayWidgetBundleID, "UTF8String")}];
  v4 = [NSSDataContainerDataDestructionItem alloc];
  v5 = [v4 initWithContainerClass:NDNewsdDataContainerClass identifier:{objc_msgSend(NDNewsdDataContainerIdentifier, "UTF8String")}];
  v6 = [NSSDataContainerDataDestructionItem alloc];
  v7 = [v6 initWithContainerClass:7 identifier:{objc_msgSend(NSSSecurityApplicationGroupIdentifier, "UTF8String")}];
  v8 = [NSSDataContainerDataDestructionItem alloc];
  v9 = [v8 initWithContainerClass:7 identifier:{objc_msgSend(NSSStocksNewsDataContainerIdentifier, "UTF8String")}];
  v13[0] = v3;
  v13[1] = v5;
  v13[2] = v7;
  v13[3] = v9;
  v10 = [NSArray arrayWithObjects:v13 count:4];
  v11 = NSSDestroyDataContainersWithItems();

  return 1;
}

- (BOOL)_cleanUpUserDefaults
{
  v2 = [NSSUserDefaultsDataDestructionItem alloc];
  v3 = NewsCoreUserDefaults();
  v4 = FCDefaultsSuiteName;
  v5 = FCDefaultsDomainiCloudDataDestructionStickyKeys();
  v6 = [v2 initWithUserDefaults:v3 domainName:v4 stickyKeys:v5];

  v7 = [NSSUserDefaultsDataDestructionItem alloc];
  v8 = NewsCoreSensitiveUserDefaults();
  v9 = FCSensitiveDefaultsSuiteName;
  v10 = +[NSSet set];
  v11 = [v7 initWithUserDefaults:v8 domainName:v9 stickyKeys:v10];

  v14[0] = v6;
  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];
  NSSDestroyUserDefaultsDataWithItems();

  return 1;
}

- (BOOL)_cleanUpWatchData
{
  v2 = [NSSUserDefaultsDataDestructionItem alloc];
  v3 = +[NSUserDefaults nanoNewsSyncDefaults];
  v4 = +[NSSet set];
  v5 = [v2 initWithUserDefaults:v3 domainName:@"com.apple.nanonews.sync" stickyKeys:v4];

  v10 = v5;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  NSSDestroyUserDefaultsDataWithItems();

  v7 = MGCopyAnswer();
  Value = CFBooleanGetValue(v7);
  if (v7)
  {
    CFRelease(v7);
  }

  if (!Value)
  {
    +[NanoNewsSettingsManager resetSaved];
    +[NanoNewsSettingsManager resetSeen];
  }

  return 1;
}

- (BOOL)_hasLocalData
{
  v2 = [(FRDataclassOwner *)self accountActionQueue];
  v3 = [v2 readLocalDataHint];

  return v3;
}

- (void)_reloadWidgets
{
  v2 = [CHSTimelineController alloc];
  v3 = [v2 initForAvocadoIdentifier:NSSNewsTodayWidgetKind inBundleIdentifier:NSSNewsTodayWidgetBundleID];
  v4 = [v3 reloadTimeline];

  v5 = [CHSTimelineController alloc];
  v7 = [v5 initForAvocadoIdentifier:NSSNewsTagWidgetKind inBundleIdentifier:NSSNewsTagWidgetBundleID];
  v6 = [v7 reloadTimeline];
}

@end
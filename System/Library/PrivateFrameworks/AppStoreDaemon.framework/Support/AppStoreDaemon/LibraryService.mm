@interface LibraryService
- (LibraryService)init;
- (void)catalogRefreshedBundleIDs:(id)a3;
- (void)catalogRegisteredApps:(id)a3;
- (void)catalogUnregisteredBundleIDs:(id)a3;
- (void)deviceUnpairedWithPairingID:(id)a3;
- (void)executeQueryForUpdatesReloadingFromServer:(BOOL)a3 withReplyHandler:(id)a4;
- (void)executeQueryWithPredicate:(id)a3 onPairedDevice:(id)a4 withReplyHandler:(id)a5;
- (void)executeQueryWithPredicate:(id)a3 onRemoteDevice:(id)a4 withReplyHandler:(id)a5;
- (void)executeQueryWithPredicate:(id)a3 withReplyHandler:(id)a4;
- (void)launchApp:(id)a3 extensionType:(int64_t)a4 withReplyHandler:(id)a5;
- (void)launchApp:(id)a3 onPairedDevice:(id)a4 withReplyHandler:(id)a5;
- (void)launchApp:(id)a3 withReplyHandler:(id)a4;
- (void)lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs:(id)a3 withReplyHandler:(id)a4;
- (void)lookupBundleIDsForDeletableSystemAppsWithItemIDs:(id)a3 withReplyHandler:(id)a4;
- (void)lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs:(id)a3 withReplyHandler:(id)a4;
- (void)lookupItemIDsForDeletableSystemAppsWithBundleIDs:(id)a3 withReplyHandler:(id)a4;
- (void)openableStatusForExecutableAtPath:(id)a3 withReplyHandler:(id)a4;
- (void)uninstallApp:(id)a3 requestUserConfirmation:(BOOL)a4 withReplyHandler:(id)a5;
- (void)updateInstallProgressForApplication:(id)a3 progress:(double)a4 installPhase:(int64_t)a5;
- (void)updateInstallStateForApplication:(id)a3 installState:(int64_t)a4;
@end

@implementation LibraryService

- (LibraryService)init
{
  v24.receiver = self;
  v24.super_class = LibraryService;
  v2 = [(LibraryService *)&v24 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AppStoreFoundation.LibraryService", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = sub_1003649C8();
    v25[0] = v6;
    v7 = sub_1002F09C8();
    v25[1] = v7;
    v8 = [NSArray arrayWithObjects:v25 count:2];
    libraryCatalogs = v2->_libraryCatalogs;
    v2->_libraryCatalogs = v8;

    v10 = sub_1002F09C8();
    libraryOpen = v2->_libraryOpen;
    v2->_libraryOpen = v10;

    v12 = sub_1001E3AB0();
    libraryProgress = v2->_libraryProgress;
    v2->_libraryProgress = v12;

    v14 = objc_opt_new();
    libraryUninstall = v2->_libraryUninstall;
    v2->_libraryUninstall = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    pairedDeviceCatalogs = v2->_pairedDeviceCatalogs;
    v2->_pairedDeviceCatalogs = v16;

    v18 = sub_100394290();
    sub_1003948DC(v18, v2);

    v19 = objc_opt_new();
    remoteAppLibraries = v2->_remoteAppLibraries;
    v2->_remoteAppLibraries = v19;

    [(NSArray *)v2->_libraryCatalogs makeObjectsPerformSelector:"setObserver:" withObject:v2];
    if (XPCNotificationSource)
    {
      v21 = sub_1002C5C5C(XPCNotificationSource, ASDAppLibraryServiceNotificationName, @"Library", 0, &stru_100526270);
    }

    else
    {
      v21 = 0;
    }

    v22 = sub_100003984();
    sub_1003B86D4(v22, v21);
  }

  return v2;
}

- (void)executeQueryWithPredicate:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10038CDC4;
  v13[3] = &unk_10051C7A8;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  sub_100005D90(dispatchQueue, v13);
}

- (void)executeQueryWithPredicate:(id)a3 onPairedDevice:(id)a4 withReplyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10038D784;
  v17[3] = &unk_10051C9E8;
  v17[4] = self;
  v18 = v8;
  v19 = v11;
  v20 = v9;
  v21 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v11;
  v16 = v8;
  sub_100005D90(dispatchQueue, v17);
}

- (void)executeQueryWithPredicate:(id)a3 onRemoteDevice:(id)a4 withReplyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_os_feature_enabled_impl())
  {
    v11 = sub_100003B90();
    dispatchQueue = self->_dispatchQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10038DF68;
    v14[3] = &unk_10051C9C0;
    v14[4] = self;
    v15 = v8;
    v16 = v11;
    v18 = v10;
    v17 = v9;
    v13 = v11;
    sub_100005D90(dispatchQueue, v14);
  }

  else
  {
    v13 = ASDErrorWithTitleAndMessage();
    (*(v10 + 2))(v10, 0, v13);
  }
}

- (void)executeQueryForUpdatesReloadingFromServer:(BOOL)a3 withReplyHandler:(id)a4
{
  v6 = a4;
  v7 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10038E5CC;
  v11[3] = &unk_100526230;
  v15 = a3;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  sub_100005D90(dispatchQueue, v11);
}

- (void)openableStatusForExecutableAtPath:(id)a3 withReplyHandler:(id)a4
{
  v7 = a4;
  v6 = sub_100346FD8(FairPlay, a3);
  (*(a4 + 2))(v7, 0, v6);
}

- (void)launchApp:(id)a3 extensionType:(int64_t)a4 withReplyHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100003B90();
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 processInfo];
    v13 = [v12 bundleIdentifier];
    v14 = 138543874;
    v15 = v10;
    v16 = 2114;
    v17 = v13;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Launching messages extension for %{public}@: %{public}@", &v14, 0x20u);
  }

  [(LibraryOpen *)self->_libraryOpen launchApp:v8 extensionType:a4 withResultHandler:v9];
}

- (void)launchApp:(id)a3 onPairedDevice:(id)a4 withReplyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100003B90();
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 processInfo];
    v14 = [v13 bundleIdentifier];
    v15 = 138544130;
    v16 = v11;
    v17 = 2114;
    v18 = v14;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Launching app for %{public}@ on %{public}@: %{public}@", &v15, 0x2Au);
  }

  [(LibraryOpen *)self->_libraryOpen launchApp:v8 onPairedDevice:v9 withResultHandler:v10];
}

- (void)launchApp:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003B90();
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 processInfo];
    v11 = [v10 bundleIdentifier];
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Launching app for %{public}@: %{public}@", &v12, 0x20u);
  }

  [(LibraryOpen *)self->_libraryOpen launchApp:v6 withResultHandler:v7];
}

- (void)lookupBundleIDsForDeletableSystemAppsWithItemIDs:(id)a3 withReplyHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 count];
    v10 = [v7 processInfo];
    v11 = [v10 bundleIdentifier];
    *buf = 138544130;
    v19 = v7;
    v20 = 2048;
    v21 = v9;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Looking up %lu system app bundleIDs(s) for %{public}@: %{public}@", buf, 0x2Au);
  }

  v12 = +[BagService appstoredService];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10038F1F4;
  v15[3] = &unk_10051ED90;
  v16 = v5;
  v17 = v6;
  v13 = v6;
  v14 = v5;
  [v12 bagWithCompletionHandler:v15];
}

- (void)lookupItemIDsForDeletableSystemAppsWithBundleIDs:(id)a3 withReplyHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 count];
    v10 = [v7 processInfo];
    v11 = [v10 bundleIdentifier];
    *buf = 138544130;
    v19 = v7;
    v20 = 2048;
    v21 = v9;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Looking up %lu system app itemIDs(s) for %{public}@: %{public}@", buf, 0x2Au);
  }

  v12 = +[BagService appstoredService];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10038F53C;
  v15[3] = &unk_10051ED90;
  v16 = v5;
  v17 = v6;
  v13 = v6;
  v14 = v5;
  [v12 bagWithCompletionHandler:v15];
}

- (void)lookupBundleIDsForDeletableSystemAppsForWatchWithItemIDs:(id)a3 withReplyHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 count];
    v10 = [v7 processInfo];
    v11 = [v10 bundleIdentifier];
    *buf = 138544130;
    v19 = v7;
    v20 = 2048;
    v21 = v9;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Looking up %lu system app for watch bundleIDs(s) for %{public}@: %{public}@", buf, 0x2Au);
  }

  v12 = +[BagService appstoredService];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10038F87C;
  v15[3] = &unk_10051ED90;
  v16 = v5;
  v17 = v6;
  v13 = v6;
  v14 = v5;
  [v12 bagWithCompletionHandler:v15];
}

- (void)lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs:(id)a3 withReplyHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 count];
    v10 = [v7 processInfo];
    v11 = [v10 bundleIdentifier];
    *buf = 138544130;
    v19 = v7;
    v20 = 2048;
    v21 = v9;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Looking up %lu system app for watch itemIDs(s) for %{public}@: %{public}@", buf, 0x2Au);
  }

  v12 = +[BagService appstoredService];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10038FBC4;
  v15[3] = &unk_10051ED90;
  v16 = v5;
  v17 = v6;
  v13 = v6;
  v14 = v5;
  [v12 bagWithCompletionHandler:v15];
}

- (void)uninstallApp:(id)a3 requestUserConfirmation:(BOOL)a4 withReplyHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = sub_100003B90();
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 processInfo];
    v13 = [v12 bundleIdentifier];
    *buf = 138543874;
    v21 = v10;
    v22 = 2114;
    v23 = v13;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Uninstalling app for %{public}@: %{public}@", buf, 0x20u);
  }

  libraryUninstall = self->_libraryUninstall;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10038FEE8;
  v17[3] = &unk_10051B8A8;
  v18 = v8;
  v19 = v9;
  v15 = v9;
  v16 = v8;
  [(LibraryUninstall *)libraryUninstall uninstallApp:v16 requestUserConfirmation:v6 withResultHandler:v17];
}

- (void)catalogRegisteredApps:(id)a3
{
  v4 = sub_1002A24AC(ASDNotification, a3);
  v3 = sub_100003984();
  sub_1003B8178(v3, v4);
}

- (void)catalogRefreshedBundleIDs:(id)a3
{
  v4 = sub_1002A20A8(ASDNotification, a3);
  v3 = sub_100003984();
  sub_1003B8178(v3, v4);
}

- (void)catalogUnregisteredBundleIDs:(id)a3
{
  v4 = sub_1002A26C0(ASDNotification, a3);
  v3 = sub_100003984();
  sub_1003B8178(v3, v4);
}

- (void)deviceUnpairedWithPairingID:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100390448;
  v7[3] = &unk_10051B570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)updateInstallProgressForApplication:(id)a3 progress:(double)a4 installPhase:(int64_t)a5
{
  v7 = a3;
  v8 = sub_1002B0154();
  v9 = sub_1002B0280(v8);

  if (v9 && a5 != -1 && v7 && (v9[18] & 1) == 0)
  {
    v10 = sub_1003649C8();
    v11 = sub_10036605C(v10, v7);

    if (v11)
    {
      v12 = 0.67;
      if (a5 != 2)
      {
        v12 = 0.0;
      }

      if (a5 == 1)
      {
        v12 = 0.33;
      }

      v13 = v12 + a4 * 0.33;
      v14 = sub_1003649C8();
      sub_10036695C(v14, v7, v13);

      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138543362;
        v17 = v11;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[ACX] Updated install progress: %{public}@", &v16, 0xCu);
      }
    }
  }
}

- (void)updateInstallStateForApplication:(id)a3 installState:(int64_t)a4
{
  v5 = a3;
  v6 = sub_1002B0154();
  v7 = sub_1002B0280(v6);

  if (v5 && v7 && (*(v7 + 18) & 1) == 0)
  {
    if (a4 == 5)
    {
      v18 = sub_100394290();
      v22 = v5;
      v19 = [NSArray arrayWithObjects:&v22 count:1];
      v20 = [*(v7 + 8) pairingID];
      sub_100394990(v18, v19, v20);

      v21 = sub_1003649C8();
      sub_100365318(v21, v5);

      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v24 = v5;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "App uninstalled %{public}@", buf, 0xCu);
      }

      goto LABEL_13;
    }

    if (a4 == 2)
    {
      v8 = sub_1003649C8();
      v9 = sub_100365E5C(v8, v5);

      if (v9)
      {
        v10 = sub_1003649C8();
        sub_100366260(v10, v5, @"Companion app installed");

        v25 = v9;
        v11 = [NSArray arrayWithObjects:&v25 count:1];
        v12 = [*(v7 + 8) pairingID];
        v13 = sub_1002A2390(ASDNotification, v11, v12);

        v14 = sub_100003984();
        sub_1003B8178(v14, v13);

        v15 = sub_1003649C8();
        v16 = [v9 bundleID];
        sub_10036689C(v15, v16);
      }

      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v24 = v5;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "App installed %{public}@", buf, 0xCu);
      }

LABEL_13:
    }
  }
}

@end
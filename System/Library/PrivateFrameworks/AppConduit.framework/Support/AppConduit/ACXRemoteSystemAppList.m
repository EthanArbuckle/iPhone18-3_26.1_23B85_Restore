@interface ACXRemoteSystemAppList
+ (id)availableSystemAppListForStorageBaseURL:(id)a3;
- (ACXRemoteSystemAppList)initWithCoder:(id)a3;
- (ACXRemoteSystemAppList)initWithStorageBaseURL:(id)a3;
- (BOOL)_onQueue_appIsInstallable:(id)a3 givenLocallyAvailableApps:(id)a4;
- (BOOL)needsSyncForCurrentOSBuildVersion:(id)a3;
- (BOOL)systemAppIsInstallableWithBundleID:(id)a3 error:(id *)a4;
- (NSArray)availableSystemApps;
- (NSArray)installableSystemApps;
- (NSDictionary)installableSystemAppToCompanionAppIdentifierMap;
- (NSSet)bundleIDsOfAvailableSystemApps;
- (NSSet)bundleIDsOfInstallableSystemApps;
- (NSString)trackedOSBuildNumber;
- (OS_dispatch_queue)queue;
- (id)_onQueue_bundleIDsOfInstallableSystemAppsForLocallyAvailableApps:(id)a3;
- (id)installableSystemAppWithBundleID:(id)a3 error:(id *)a4;
- (void)_onQueue_callWaitersForInstallableSystemAppsWithLocallyAvailableApps:(id)a3;
- (void)_onQueue_saveData;
- (void)encodeWithCoder:(id)a3;
- (void)setAvailableSystemApps:(id)a3 bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability:(id)a4 forRemoteOSBuildVersion:(id)a5;
- (void)setInstallableSystemAppBundleIDsExcludingCompanionState:(id)a3;
- (void)waitForInstallableSystemAppBundleIDs:(id)a3;
@end

@implementation ACXRemoteSystemAppList

- (ACXRemoteSystemAppList)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ACXRemoteSystemAppList;
  v5 = [(ACXRemoteSystemAppList *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"availableSystemApps"];
    availableSystemApps = v5->_availableSystemApps;
    v5->_availableSystemApps = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackedOSBuildNumber"];
    trackedOSBuildNumber = v5->_trackedOSBuildNumber;
    v5->_trackedOSBuildNumber = v10;

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability"];
    bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability = v5->_bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability;
    v5->_bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability = v14;

    v16 = objc_opt_new();
    waitersForInstallableList = v5->_waitersForInstallableList;
    v5->_waitersForInstallableList = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  availableSystemApps = self->_availableSystemApps;
  v5 = a3;
  [v5 encodeObject:availableSystemApps forKey:@"availableSystemApps"];
  [v5 encodeObject:self->_trackedOSBuildNumber forKey:@"trackedOSBuildNumber"];
  [v5 encodeObject:self->_bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability forKey:@"bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability"];
}

- (ACXRemoteSystemAppList)initWithStorageBaseURL:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ACXRemoteSystemAppList;
  v6 = [(ACXRemoteSystemAppList *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storageBaseURL, a3);
    v8 = objc_opt_new();
    waitersForInstallableList = v7->_waitersForInstallableList;
    v7->_waitersForInstallableList = v8;
  }

  return v7;
}

+ (id)availableSystemAppListForStorageBaseURL:(id)a3
{
  v3 = a3;
  v4 = [v3 URLByAppendingPathComponent:@"com.apple.AppConduit.ACXAvailableSystemAppList.plist" isDirectory:0];
  v29 = 0;
  v5 = [NSDictionary ACX_dictionaryWithContentsOfURL:v4 options:0 error:&v29];
  v6 = v29;
  if (!v5)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v27 = 0;
      v10 = v3;
      v11 = [v4 path];
      v24 = v11;
      v25 = v6;
      MOLogWrite();
      v9 = 0;
LABEL_27:
      v15 = 0;
      v17 = 0;
LABEL_28:

      v18 = v6;
      v3 = v10;
      v5 = v27;
      goto LABEL_30;
    }

    v9 = 0;
    goto LABEL_29;
  }

  v7 = [v5 objectForKeyedSubscript:@"AppListVersion"];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v12 = [v9 unsignedLongLongValue];
  if (v12 != 1)
  {
    v16 = v12;
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v27 = v5;
      v10 = v3;
      v11 = [v4 path];
      v25 = 1;
      v26 = v11;
      v24 = v16;
LABEL_26:
      MOLogWrite();
      goto LABEL_27;
    }

LABEL_29:
    v15 = 0;
    v17 = 0;
    v18 = v6;
    goto LABEL_30;
  }

  v13 = [v5 objectForKeyedSubscript:@"AppListData"];
  objc_opt_class();
  v14 = v13;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v27 = v5;
      v10 = v3;
      v11 = [v4 path];
      v24 = v11;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v28 = v6;
  v17 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v15 error:&v28];
  v18 = v28;

  if (v17)
  {
    v19 = [objc_alloc(objc_opt_class()) initWithCoder:v17];
    if (v19)
    {
      v20 = v19;
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v21 = [v19 trackedOSBuildNumber];
        [v4 path];
        v25 = v24 = v21;
        MOLogWrite();
      }

      [v20 setStorageBaseURL:{v3, v24, v25}];
      goto LABEL_34;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v27 = v5;
      v10 = v3;
      v11 = [v4 path];
      v24 = v11;
      MOLogWrite();
      goto LABEL_43;
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v27 = v5;
      v10 = v3;
      v11 = [v4 path];
      v24 = v11;
      v25 = v18;
      MOLogWrite();
      v17 = 0;
LABEL_43:
      v6 = v18;
      goto LABEL_28;
    }

    v17 = 0;
  }

LABEL_30:
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v22 = [NSFileManager defaultManager:v24];
  [v22 removeItemAtURL:v4 error:0];

  v20 = [objc_alloc(objc_opt_class()) initWithStorageBaseURL:v3];
LABEL_34:

  return v20;
}

- (OS_dispatch_queue)queue
{
  if (qword_1000A4730 != -1)
  {
    sub_1000598FC();
  }

  v3 = qword_1000A4738;

  return v3;
}

- (void)_onQueue_saveData
{
  v3 = [(ACXRemoteSystemAppList *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 setOutputFormat:200];
  [(ACXRemoteSystemAppList *)self encodeWithCoder:v4];
  v5 = [v4 encodedData];
  v13[0] = @"AppListVersion";
  v13[1] = @"AppListData";
  v14[0] = &off_1000975A8;
  v14[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v7 = [(ACXRemoteSystemAppList *)self storageBaseURL];
  v8 = [v7 URLByAppendingPathComponent:@"com.apple.AppConduit.ACXAvailableSystemAppList.plist" isDirectory:0];

  if (v8)
  {
    v12 = 0;
    v9 = [v6 ACX_writeToURL:v8 format:200 options:268435457 error:&v12];
    v10 = v12;
    if (v9)
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
      {
        goto LABEL_12;
      }
    }

    else if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_12;
    }

    v11 = [v8 path];
    MOLogWrite();

LABEL_12:
    goto LABEL_13;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v10 = [(ACXRemoteSystemAppList *)self storageBaseURL];
    MOLogWrite();
    goto LABEL_12;
  }

LABEL_13:
}

- (NSArray)availableSystemApps
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000028AC;
  v11 = sub_1000028BC;
  v12 = 0;
  v3 = [(ACXRemoteSystemAppList *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000028C4;
  v6[3] = &unk_10008C958;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)_onQueue_appIsInstallable:(id)a3 givenLocallyAvailableApps:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXRemoteSystemAppList *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 bundleIdentifier];
  v10 = [(ACXRemoteSystemAppList *)self bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability];
  v11 = [v10 containsObject:v9];

  v12 = v11 && ([v6 applicationMode] != 1 || (objc_msgSend(v7, "containsObject:", v9) & 1) != 0);
  return v12;
}

- (NSArray)installableSystemApps
{
  v3 = +[ACXAvailableApplicationManager sharedApplicationManager];
  v4 = [v3 bundleIDsOfLocallyAvailableSystemApps];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000028AC;
  v16 = sub_1000028BC;
  v17 = objc_opt_new();
  v5 = [(ACXRemoteSystemAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B50;
  block[3] = &unk_10008C980;
  block[4] = self;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  dispatch_sync(v5, block);

  v7 = [v13[5] copy];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)installableSystemAppWithBundleID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000028AC;
  v31 = sub_1000028BC;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000028AC;
  v25 = sub_1000028BC;
  v26 = 0;
  v7 = +[ACXAvailableApplicationManager sharedApplicationManager];
  v8 = [v7 systemAppIsAvailableWithBundleID:v6 error:0];

  if (v8)
  {
    [NSSet setWithObject:v6];
  }

  else
  {
    +[NSSet set];
  }
  v9 = ;
  v10 = [(ACXRemoteSystemAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002F38;
  block[3] = &unk_10008C9A8;
  block[4] = self;
  v19 = &v27;
  v20 = &v21;
  v11 = v6;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  dispatch_sync(v10, block);

  v13 = v22[5];
  if (a4 && !v13)
  {
    *a4 = v28[5];
    v13 = v22[5];
  }

  v14 = v13;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

- (BOOL)systemAppIsInstallableWithBundleID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000028AC;
  v28 = sub_1000028BC;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v7 = +[ACXAvailableApplicationManager sharedApplicationManager];
  v8 = [v7 systemAppIsAvailableWithBundleID:v6 error:0];

  if (v8)
  {
    [NSSet setWithObject:v6];
  }

  else
  {
    +[NSSet set];
  }
  v9 = ;
  v10 = [(ACXRemoteSystemAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000033F0;
  block[3] = &unk_10008C9A8;
  block[4] = self;
  v18 = &v24;
  v19 = &v20;
  v11 = v6;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  dispatch_sync(v10, block);

  v13 = *(v21 + 24);
  if (a4 && (v21[3] & 1) == 0)
  {
    *a4 = v25[5];
    v13 = *(v21 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v13 & 1;
}

- (void)_onQueue_callWaitersForInstallableSystemAppsWithLocallyAvailableApps:(id)a3
{
  v4 = a3;
  v5 = [(ACXRemoteSystemAppList *)self waitersForInstallableList];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(ACXRemoteSystemAppList *)self _onQueue_bundleIDsOfInstallableSystemAppsForLocallyAvailableApps:v4];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(ACXRemoteSystemAppList *)self waitersForInstallableList];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v14 + 1) + 8 * v12) + 16))();
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    v13 = [(ACXRemoteSystemAppList *)self waitersForInstallableList];
    [v13 removeAllObjects];
  }
}

- (void)setAvailableSystemApps:(id)a3 bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability:(id)a4 forRemoteOSBuildVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ACXAvailableApplicationManager sharedApplicationManager];
  v12 = [v11 bundleIDsOfLocallyAvailableSystemApps];

  v13 = [(ACXRemoteSystemAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003910;
  block[3] = &unk_10008C9D0;
  block[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  dispatch_sync(v13, block);
}

- (NSString)trackedOSBuildNumber
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000028AC;
  v11 = sub_1000028BC;
  v12 = 0;
  v3 = [(ACXRemoteSystemAppList *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003C30;
  v6[3] = &unk_10008C958;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSSet)bundleIDsOfAvailableSystemApps
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000028AC;
  v11 = sub_1000028BC;
  v12 = objc_opt_new();
  v3 = [(ACXRemoteSystemAppList *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003D74;
  v6[3] = &unk_10008C9F8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSSet)bundleIDsOfInstallableSystemApps
{
  v3 = +[ACXAvailableApplicationManager sharedApplicationManager];
  v4 = [v3 bundleIDsOfLocallyAvailableSystemApps];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000028AC;
  v16 = sub_1000028BC;
  v17 = 0;
  v5 = [(ACXRemoteSystemAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000404C;
  block[3] = &unk_10008CA20;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_onQueue_bundleIDsOfInstallableSystemAppsForLocallyAvailableApps:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  availableSystemApps = self->_availableSystemApps;
  if (availableSystemApps)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = availableSystemApps;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([(ACXRemoteSystemAppList *)self _onQueue_appIsInstallable:v12 givenLocallyAvailableApps:v4, v16])
          {
            v13 = [v12 bundleIdentifier];
            [v5 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v5 = 0;
  }

  v14 = [v5 copy];

  return v14;
}

- (void)setInstallableSystemAppBundleIDsExcludingCompanionState:(id)a3
{
  v4 = a3;
  v5 = +[ACXAvailableApplicationManager sharedApplicationManager];
  v6 = [v5 bundleIDsOfLocallyAvailableSystemApps];

  v7 = [(ACXRemoteSystemAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004340;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v11 = v4;
  v12 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_sync(v7, block);
}

- (NSDictionary)installableSystemAppToCompanionAppIdentifierMap
{
  v3 = +[ACXAvailableApplicationManager sharedApplicationManager];
  v4 = [v3 bundleIDsOfLocallyAvailableSystemApps];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000028AC;
  v16 = sub_1000028BC;
  v17 = objc_opt_new();
  v5 = [(ACXRemoteSystemAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000045C0;
  block[3] = &unk_10008C980;
  block[4] = self;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  dispatch_sync(v5, block);

  v7 = [v13[5] copy];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)needsSyncForCurrentOSBuildVersion:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(ACXRemoteSystemAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004940;
  block[3] = &unk_10008CA70;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)waitForInstallableSystemAppBundleIDs:(id)a3
{
  v4 = a3;
  v5 = +[ACXAvailableApplicationManager sharedApplicationManager];
  v6 = [v5 bundleIDsOfLocallyAvailableSystemApps];

  v7 = [(ACXRemoteSystemAppList *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004B28;
  block[3] = &unk_10008CA98;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_sync(v7, block);
}

@end
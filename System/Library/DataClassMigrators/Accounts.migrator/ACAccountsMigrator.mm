@interface ACAccountsMigrator
- (BOOL)performMigration;
- (id)_oldAccountsPlistPath;
- (void)_migrateOutdatedKeychainItems;
- (void)_removeAccountsPlist;
- (void)_removeMultipleTencentWeiboAccounts;
- (void)_runAccountMigrationPlugins;
- (void)_scheduleBackupIfNonexistent;
- (void)removeObsoleteAccountsFromStore:(id)store;
@end

@implementation ACAccountsMigrator

- (BOOL)performMigration
{
  CFPreferencesSetAppValue(@"iToolsMember", 0, kCFPreferencesAnyApplication);
  CFPreferencesAppSynchronize(kCFPreferencesAnyApplication);
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Migrations are done! Removing accountsettings.plist.", buf, 2u);
  }

  [(ACAccountsMigrator *)self _removeAccountsPlist];
  [(ACAccountsMigrator *)self _removeMultipleTencentWeiboAccounts];
  [(ACAccountsMigrator *)self _migrateOutdatedKeychainItems];
  [(ACAccountsMigrator *)self _scheduleBackupIfNonexistent];
  if (([ACAccountMigrationState migrationFinishedForKey:@"LastAccountMigrationPluginsRunVersion"]& 1) != 0)
  {
    v4 = _ACLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Migration plugin run should only happen once per version to be safe!", v6, 2u);
    }
  }

  else
  {
    [ACAccountMigrationState writeMigrationVersionPrefForKey:@"LastAccountMigrationPluginsRunVersion"];
    [(ACAccountsMigrator *)self _runAccountMigrationPlugins];
  }

  return 1;
}

- (void)_removeAccountsPlist
{
  v3 = +[NSFileManager defaultManager];
  _oldAccountsPlistPath = [(ACAccountsMigrator *)self _oldAccountsPlistPath];
  if ([v3 fileExistsAtPath:_oldAccountsPlistPath isDirectory:0])
  {
    v8 = 0;
    v5 = [v3 removeItemAtPath:_oldAccountsPlistPath error:&v8];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      v7 = _ACLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1DE4(_oldAccountsPlistPath, v6, v7);
      }
    }
  }

  else
  {
    v6 = _ACLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = _oldAccountsPlistPath;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "The legacy accounts plist could not be found at: %@", buf, 0xCu);
    }
  }
}

- (id)_oldAccountsPlistPath
{
  v2 = CPCopySharedResourcesPreferencesDomainForDomain();

  return v2;
}

- (void)_removeMultipleTencentWeiboAccounts
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [v2 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTencentWeiboDeprecated];
  v4 = [v2 accountsWithAccountType:v3];

  if ([v4 count] >= 2)
  {
    v5 = [v4 subarrayWithRange:{1, objc_msgSend(v4, "count") - 1}];

    v6 = dispatch_semaphore_create(0);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = v5;
    v7 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v18 + 1) + 8 * v10);
          v12 = _ACLogSystem();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = v11;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Removing account %@ because we only support a single Tencent Weibo account", buf, 0xCu);
          }

          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10B8;
          v16[3] = &unk_4198;
          v13 = v6;
          v17 = v13;
          [v2 removeAccount:v11 withCompletionHandler:v16];
          v14 = dispatch_time(0, 2000000000);
          if (dispatch_semaphore_wait(v13, v14))
          {
            v15 = _ACLogSystem();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v23 = v11;
              _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Timed out removing %@", buf, 0xCu);
            }
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v8);
    }
  }
}

- (void)_migrateOutdatedKeychainItems
{
  v2 = +[ACAccountStore defaultStore];
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Attempting to migrate all keychain items if necessary.", buf, 2u);
  }

  v8 = 0;
  v4 = [v2 triggerKeychainMigrationIfNecessary:&v8];
  v5 = v8;
  v6 = _ACLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Keychain migration finished with success %@, error: %@", buf, 0x16u);
  }
}

- (void)removeObsoleteAccountsFromStore:(id)store
{
  storeCopy = store;
  v43[0] = ACAccountTypeIdentifierTwitterDeprecated;
  v43[1] = ACAccountTypeIdentifierFacebookDeprecated;
  v43[2] = ACAccountTypeIdentifierSinaWeiboDeprecated;
  v43[3] = ACAccountTypeIdentifierTencentWeiboDeprecated;
  v43[4] = ACAccountTypeIdentifierFlickr;
  v43[5] = ACAccountTypeIdentifierVimeo;
  v4 = [NSArray arrayWithObjects:v43 count:6];
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Will remove obsolete accounts with type identifiers %@", buf, 0xCu);
  }

  v37 = 0;
  v24 = v4;
  v6 = [storeCopy accountsWithAccountTypeIdentifiers:v4 error:&v37];
  v7 = v37;
  v8 = _ACLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = v6;
    v41 = 2112;
    v42 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Fetched obsolete accounts %@ error %@", buf, 0x16u);
  }

  v23 = v7;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v26 = *v34;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        v32 = 0;
        v13 = [storeCopy dataclassActionsForAccountDeletion:v12 error:{&v32, v23}];
        v14 = v32;
        v15 = _ACLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v40 = v12;
          v41 = 2112;
          v42 = v13;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Gathered account %@ potential dataclass actions for deletion %@", buf, 0x16u);
        }

        v16 = objc_alloc_init(NSMutableDictionary);
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_17D4;
        v29[3] = &unk_41C0;
        v17 = v16;
        v30 = v17;
        v31 = v12;
        [v13 enumerateKeysAndObjectsUsingBlock:v29];
        v18 = _ACLogSystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v40 = v12;
          v41 = 2112;
          v42 = v17;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Will remove obsolete account %@ with dataclass actions %@", buf, 0x16u);
        }

        v19 = dispatch_semaphore_create(0);
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1944;
        v27[3] = &unk_41E8;
        v27[4] = v12;
        v20 = v19;
        v28 = v20;
        [storeCopy removeAccount:v12 withDataclassActions:v17 completion:v27];
        v21 = dispatch_time(0, 2000000000);
        if (dispatch_semaphore_wait(v20, v21))
        {
          v22 = _ACLogSystem();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v40 = v12;
            _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Timed out removing %@", buf, 0xCu);
          }
        }

        v11 = v11 + 1;
      }

      while (v10 != v11);
      v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v10);
  }
}

- (void)_scheduleBackupIfNonexistent
{
  v2 = +[ACAccountStore defaultStore];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1B40;
  v6[3] = &unk_4198;
  v3 = dispatch_semaphore_create(0);
  v7 = v3;
  [v2 scheduleBackupIfNonexistent:v6];
  v4 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(v3, v4))
  {
    v5 = _ACLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1ED8(v5);
    }
  }
}

- (void)_runAccountMigrationPlugins
{
  v2 = _ACLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Will run account migration plugins", buf, 2u);
  }

  v3 = dispatch_semaphore_create(0);
  v4 = +[ACAccountStore defaultStore];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1CC8;
  v9[3] = &unk_4198;
  v5 = v3;
  v10 = v5;
  [v4 runAccountMigrationPlugins:v9];

  v6 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = _ACLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1F1C(v7);
    }
  }

  v8 = _ACLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Ran account migration plugins", buf, 2u);
  }
}

@end
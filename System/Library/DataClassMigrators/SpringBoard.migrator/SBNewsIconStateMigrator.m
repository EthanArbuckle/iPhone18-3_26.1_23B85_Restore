@interface SBNewsIconStateMigrator
- (SBNewsIconStateMigrator)init;
- (SBNewsIconStateMigrator)initWithModelStore:(id)a3;
- (id)_maybeMigratedListFromList:(id)a3;
- (id)_performGridSizeClassMigration:(id)a3;
- (id)_performNewsWidgetRestoration:(id)a3;
- (void)_migrateIconStateWithBlock:(id)a3;
- (void)migrateGridSizeClassIfNecessaryFromBuildVersion:(id)a3 isInternalInstall:(BOOL)a4;
- (void)restoreNewsWidgetInTodayListFromBuildVersion:(id)a3;
@end

@implementation SBNewsIconStateMigrator

- (SBNewsIconStateMigrator)init
{
  v3 = [@"~/Library/SpringBoard/IconState.plist" stringByExpandingTildeInPath];
  v4 = [NSURL fileURLWithPath:v3];

  v5 = [@"~/Library/SpringBoard/DesiredIconState.plist" stringByExpandingTildeInPath];
  v6 = [NSURL fileURLWithPath:v5];

  v7 = [[SBIconModelPropertyListFileStore alloc] initWithIconStateURL:v4 desiredIconStateURL:v6];
  v8 = [(SBNewsIconStateMigrator *)self initWithModelStore:v7];

  return v8;
}

- (SBNewsIconStateMigrator)initWithModelStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBNewsIconStateMigrator;
  v6 = [(SBNewsIconStateMigrator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (void)migrateGridSizeClassIfNecessaryFromBuildVersion:(id)a3 isInternalInstall:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 majorBuildNumber];
  if (v7 < 19 || !v4)
  {
    if (v7 <= 18)
    {
LABEL_10:
      v11 = SBLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[NewsIconStateMigration] Migration needed for news widget family.", buf, 2u);
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_4D74;
      v13[3] = &unk_18628;
      v13[4] = self;
      [(SBNewsIconStateMigrator *)self _migrateIconStateWithBlock:v13];
      goto LABEL_16;
    }
  }

  else if ([v6 majorBuildNumber] == &dword_10 + 3)
  {
    v9 = [v6 majorBuildLetterString];
    v10 = [v9 isEqualToString:@"A"];

    if (v10)
    {
      goto LABEL_10;
    }
  }

  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[NewsIconStateMigration] No migration needed.", buf, 2u);
  }

LABEL_16:
}

- (void)restoreNewsWidgetInTodayListFromBuildVersion:(id)a3
{
  v4 = a3;
  v5 = [v4 majorBuildNumber];
  v6 = [v4 compareBuildVersionString:@"19C9999" withPrecision:2];

  v7 = SBLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 < 19 || v6 == &dword_0 + 1)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[NewsWidgetRestoreMigration] No restore needed.", buf, 2u);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[NewsIconStateMigration] Migration needed for news widget restoration.", buf, 2u);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_4EB8;
    v9[3] = &unk_18628;
    v9[4] = self;
    [(SBNewsIconStateMigrator *)self _migrateIconStateWithBlock:v9];
  }
}

- (id)_performGridSizeClassMigration:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = kSBIconStateIconLists;
  v7 = [v4 objectForKeyedSubscript:kSBIconStateIconLists];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v6;
    v29 = v7;
    v30 = v5;
    v31 = v4;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v13 = *v33;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          if (!v11)
          {
            v11 = objc_alloc_init(NSMutableArray);
          }

          v17 = [(SBNewsIconStateMigrator *)self _maybeMigratedListFromList:v15, v28];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = v15;
          }

          v12 |= v17 != 0;
          [v11 addObject:v19];

          objc_autoreleasePoolPop(v16);
        }

        v10 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v5 = v30;
    [v30 setObject:v11 forKeyedSubscript:v28];
    v4 = v31;
    v7 = v29;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v20 = kSBIconStateTodayPageList;
  v21 = [v4 objectForKeyedSubscript:{kSBIconStateTodayPageList, v28}];
  if (v21)
  {
    v22 = [(SBNewsIconStateMigrator *)self _maybeMigratedListFromList:v21];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v21;
    }

    v12 |= v22 != 0;
    [v5 setObject:v24 forKeyedSubscript:v20];
  }

  if (v12)
  {
    v25 = v5;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  return v25;
}

- (id)_performNewsWidgetRestoration:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v6 = kSBIconStateTodayPageList;
  v7 = [v4 objectForKeyedSubscript:kSBIconStateTodayPageList];
  v8 = v7;
  if (v7)
  {
    if ([v7 count] == &dword_8)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_54F4;
      v21[3] = &unk_18650;
      v21[4] = self;
      v21[5] = &v22;
      [v8 enumerateObjectsUsingBlock:v21];
    }

    else
    {
      *(v23 + 24) = 0;
      v9 = SBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[NewsIconStateMigration] Cannot restore News widget - today list count is not eqaul to default today list count.", v20, 2u);
      }
    }
  }

  if (*(v23 + 24) == 1)
  {
    v26[0] = kSBIconStateWidgetKindKey;
    v26[1] = kSBIconStateCustomIconElementTypeKey;
    v27[0] = @"today";
    v27[1] = kSBIconStateCustomIconElementTypeWidget;
    v26[2] = kSBIconStateIconContainerBundleIdentifier;
    v26[3] = kSBIconStateIconBundleIdentifier;
    v27[2] = @"com.apple.news";
    v27[3] = @"com.apple.news.widget";
    v26[4] = kSBIconStateLeafIdentifier;
    v10 = +[NSUUID UUID];
    v11 = [v10 UUIDString];
    v27[4] = v11;
    v27[5] = &__kCFBooleanFalse;
    v26[5] = kSBIconStateAllowsExternalSuggestionsKey;
    v26[6] = kSBIconStateUniqueIdentifier;
    v12 = +[NSUUID UUID];
    v13 = [v12 UUIDString];
    v27[6] = v13;
    v27[7] = &__kCFBooleanTrue;
    v26[7] = kSBIconStateAllowsSuggestionsKey;
    v26[8] = kSBIconStateGridSizeClassIdentifier;
    v26[9] = kSBIconStateIconTypeKey;
    v27[8] = @"newsLargeTall";
    v27[9] = kSBIconStateIconTypeCustom;
    v14 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:10];

    v15 = [v8 mutableCopy];
    [v15 insertObject:v14 atIndex:2];
    [v5 setObject:v15 forKeyedSubscript:v6];
    v16 = SBLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[NewsIconStateMigration] News widget is restored.", v20, 2u);
    }

    if (v23[3])
    {
      v17 = v5;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  _Block_object_dispose(&v22, 8);

  return v18;
}

- (void)_migrateIconStateWithBlock:(id)a3
{
  v4 = a3;
  store = self->_store;
  v29 = 0;
  v6 = [(SBIconModelStore *)store loadCurrentIconState:&v29];
  v7 = v29;
  if (v7)
  {
    v8 = v7;
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_E564(v8);
    }

    v10 = v6;
LABEL_5:

    goto LABEL_6;
  }

  if (!v6)
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[NewsIconStateMigration] No current icon state found to migrate.", buf, 2u);
    }

    v8 = 0;
    goto LABEL_5;
  }

  v10 = v4[2](v4, v6);

  if (v10)
  {
    v16 = self->_store;
    v28 = 0;
    v17 = [(SBIconModelStore *)v16 saveCurrentIconState:v10 error:&v28];
    v8 = v28;
    v18 = SBLogCommon();
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[NewsIconStateMigration] Migrated news widget(s) in icon state.", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_E5E8(v8);
    }

    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:
  v11 = self->_store;
  v26 = 0;
  v12 = [(SBIconModelStore *)v11 loadDesiredIconState:&v26];
  v13 = v26;
  if (v13)
  {
    v14 = v13;
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_E66C(v14);
    }
  }

  else if (v12)
  {
    v20 = v4[2](v4, v12);

    if (!v20)
    {
      goto LABEL_11;
    }

    v21 = self->_store;
    v25 = 0;
    v22 = [(SBIconModelStore *)v21 saveDesiredIconState:v20 error:&v25];
    v14 = v25;
    v23 = SBLogCommon();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        sub_E774(v23);
      }
    }

    else if (v24)
    {
      sub_E6F0(v14);
    }
  }

  else
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[NewsIconStateMigration] No desired icon state found to migrate.", buf, 2u);
    }
  }

LABEL_11:
}

- (id)_maybeMigratedListFromList:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = 0;
    goto LABEL_28;
  }

  v4 = objc_alloc_init(NSMutableArray);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v6)
  {

    v26 = 0;
    goto LABEL_27;
  }

  v7 = v6;
  v29 = v3;
  v30 = 0;
  v8 = *v37;
  v9 = kSBIconStateCustomIconElementTypeKey;
  v10 = kSBIconStateCustomIconElementTypeWidget;
  v34 = kSBIconStateGridSizeClassIdentifier;
  v31 = kSBIconStateIconBundleIdentifier;
  v32 = kSBIconStateCustomIconElementTypeWidget;
  v11 = &SBLogCommon_ptr;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v37 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v36 + 1) + 8 * i);
      v14 = v11[159];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v4 addObject:v13];
        continue;
      }

      v15 = v13;
      v16 = [v15 objectForKey:v9];
      if (![v16 isEqualToString:v10])
      {
        goto LABEL_16;
      }

      v17 = [v15 objectForKey:v34];
      if (([v17 isEqualToString:@"extraLarge"] & 1) == 0)
      {

        v11 = &SBLogCommon_ptr;
LABEL_16:

        goto LABEL_17;
      }

      [v15 objectForKey:v31];
      v18 = v7;
      v19 = v8;
      v20 = v4;
      v21 = v9;
      v23 = v22 = v5;
      v33 = [v23 hasPrefix:@"com.apple.news"];

      v5 = v22;
      v9 = v21;
      v4 = v20;
      v8 = v19;
      v7 = v18;
      v10 = v32;

      v11 = &SBLogCommon_ptr;
      if (v33)
      {
        v24 = SBLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "[NewsIconStateMigration] Found news widget to migrate...", buf, 2u);
        }

        v25 = [v15 mutableCopy];
        [v25 setObject:@"newsLargeTall" forKeyedSubscript:v34];
        [v4 addObject:v25];

        v30 = 1;
        v10 = v32;
        v11 = &SBLogCommon_ptr;
        goto LABEL_18;
      }

LABEL_17:
      [v4 addObject:{v15, v29}];
LABEL_18:
    }

    v7 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v7);

  if (v30)
  {
    v26 = v4;
  }

  else
  {
    v26 = 0;
  }

  v3 = v29;
LABEL_27:
  v27 = v26;

LABEL_28:

  return v27;
}

@end
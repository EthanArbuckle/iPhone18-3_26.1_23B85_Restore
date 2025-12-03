@interface SBCalendarWidgetMigrator
- (SBCalendarWidgetMigrator)init;
- (SBCalendarWidgetMigrator)initWithIconModelStore:(id)store;
- (id)_maybeMigratedListFromList:(id)list;
- (id)_performMigration:(id)migration;
- (void)migrateIfNecessary;
@end

@implementation SBCalendarWidgetMigrator

- (SBCalendarWidgetMigrator)init
{
  stringByExpandingTildeInPath = [@"~/Library/SpringBoard/IconState.plist" stringByExpandingTildeInPath];
  v4 = [NSURL fileURLWithPath:stringByExpandingTildeInPath];

  stringByExpandingTildeInPath2 = [@"~/Library/SpringBoard/DesiredIconState.plist" stringByExpandingTildeInPath];
  v6 = [NSURL fileURLWithPath:stringByExpandingTildeInPath2];

  v7 = [[SBIconModelPropertyListFileStore alloc] initWithIconStateURL:v4 desiredIconStateURL:v6];
  v8 = [(SBCalendarWidgetMigrator *)self initWithIconModelStore:v7];

  return v8;
}

- (SBCalendarWidgetMigrator)initWithIconModelStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = SBCalendarWidgetMigrator;
  v6 = [(SBCalendarWidgetMigrator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (void)migrateIfNecessary
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] Migration needed for calendar widgets.", buf, 2u);
  }

  store = self->_store;
  v27 = 0;
  v5 = [(SBIconModelStore *)store loadCurrentIconState:&v27];
  v6 = v27;
  if (v6)
  {
    v7 = v6;
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_DCCC(v7);
    }

    v9 = v5;
LABEL_7:

    goto LABEL_8;
  }

  if (!v5)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] No current icon state found to migrate.", buf, 2u);
    }

    v7 = 0;
    goto LABEL_7;
  }

  v9 = [(SBCalendarWidgetMigrator *)self _performMigration:v5];

  if (v9)
  {
    v15 = self->_store;
    v26 = 0;
    v16 = [(SBIconModelStore *)v15 saveCurrentIconState:v9 error:&v26];
    v7 = v26;
    v17 = SBLogCommon();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] Migrated calendar widgets in icon state.", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_DD50(v7);
    }

    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:
  v10 = self->_store;
  v25 = 0;
  v11 = [(SBIconModelStore *)v10 loadDesiredIconState:&v25];
  v12 = v25;
  if (v12)
  {
    v13 = v12;
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_DDD4(v13);
    }
  }

  else if (v11)
  {
    v19 = [(SBCalendarWidgetMigrator *)self _performMigration:v11];

    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = self->_store;
    v24 = 0;
    v21 = [(SBIconModelStore *)v20 saveDesiredIconState:v19 error:&v24];
    v13 = v24;
    v22 = SBLogCommon();
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] Migrated calendar widgets in desired icon state.", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_DE58(v13);
    }
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] No desired icon state found to migrate.", buf, 2u);
    }
  }

LABEL_13:
}

- (id)_performMigration:(id)migration
{
  migrationCopy = migration;
  v5 = [migrationCopy mutableCopy];
  v6 = kSBIconStateIconLists;
  v7 = [migrationCopy objectForKeyedSubscript:kSBIconStateIconLists];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v6;
    v29 = v7;
    v30 = v5;
    v31 = migrationCopy;
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

          v17 = [(SBCalendarWidgetMigrator *)self _maybeMigratedListFromList:v15, v28];
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
    migrationCopy = v31;
    v7 = v29;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v20 = kSBIconStateTodayPageList;
  v21 = [migrationCopy objectForKeyedSubscript:{kSBIconStateTodayPageList, v28}];
  if (v21)
  {
    v22 = [(SBCalendarWidgetMigrator *)self _maybeMigratedListFromList:v21];
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

- (id)_maybeMigratedListFromList:(id)list
{
  listCopy = list;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v61 = 0;
    goto LABEL_77;
  }

  v4 = objc_alloc_init(NSMutableArray);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v5 = listCopy;
  v6 = [v5 countByEnumeratingWithState:&v84 objects:v89 count:16];
  if (!v6)
  {

    v60 = 0;
    goto LABEL_76;
  }

  v7 = v6;
  v63 = listCopy;
  v73 = 0;
  v8 = *v85;
  v77 = kSBIconStateCustomIconElementTypeWidget;
  v78 = kSBIconStateCustomIconElementTypeKey;
  v68 = kSBIconStateIconTypeCustom;
  v69 = kSBIconStateIconTypeKey;
  v9 = kSBIconStateGridSizeClassIdentifier;
  v10 = &SBLogCommon_ptr;
  v66 = v4;
  v67 = kSBIconStateCustomIconElementKey;
  v71 = kSBIconStateGridSizeClassIdentifier;
  v64 = *v85;
  v65 = v5;
  v76 = kSBIconStateWidgetKindKey;
  do
  {
    v11 = 0;
    v70 = v7;
    do
    {
      if (*v85 != v8)
      {
        v12 = v11;
        objc_enumerationMutation(v5);
        v11 = v12;
      }

      v72 = v11;
      v13 = *(*(&v84 + 1) + 8 * v11);
      v14 = v10[159];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v4 addObject:v13];
        goto LABEL_68;
      }

      v15 = v13;
      v16 = [v15 objectForKey:v78];
      v17 = [v16 isEqualToString:v77];

      v75 = v15;
      if (!v17)
      {
        v21 = [v15 objectForKey:v69];
        if ([v21 isEqualToString:v68] && (objc_msgSend(v15, "objectForKey:", v9), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v23 = v22;
          v24 = [v15 objectForKey:v67];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v9 = v71;
          if (isKindOfClass)
          {
            v26 = v15;
            v74 = [v15 objectForKey:v71];
            v27 = [v15 objectForKey:v67];
            v28 = objc_alloc_init(NSMutableArray);
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v29 = v27;
            v30 = [v29 countByEnumeratingWithState:&v79 objects:v88 count:16];
            if (!v30)
            {
              goto LABEL_44;
            }

            v31 = v30;
            v32 = *v80;
            while (1)
            {
              for (i = 0; i != v31; i = i + 1)
              {
                if (*v80 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v79 + 1) + 8 * i);
                v35 = v10[159];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [v28 addObject:v34];
                  continue;
                }

                v36 = v10;
                v37 = v34;
                v38 = [v37 objectForKey:v78];
                v39 = [v38 isEqualToString:v77];

                if (!v39)
                {
                  goto LABEL_39;
                }

                v40 = [v37 objectForKey:v76];
                v41 = [v40 isEqualToString:@"com.apple.CalendarWidget.CalendarWidget"];

                if (v41)
                {
                  if (([v74 isEqualToString:@"small"] & 1) != 0 || objc_msgSend(v74, "isEqualToString:", @"medium"))
                  {
                    v42 = [v37 mutableCopy];
                    [v42 setObject:@"com.apple.CalendarWidget.CalendarUpNextWidget" forKeyedSubscript:v76];
                    [v28 addObject:v42];
                    v43 = SBLogCommon();
                    v26 = v75;
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_38;
                  }

                  v26 = v75;
                  if ([v74 isEqualToString:@"large"])
                  {
                    v42 = [v37 mutableCopy];
                    [v42 setObject:@"com.apple.CalendarWidget.CalendarListWidget" forKeyedSubscript:v76];
                    [v28 addObject:v42];
                    v43 = SBLogCommon();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_38;
                  }

LABEL_39:
                  [v28 addObject:{v37, v63}];
                  goto LABEL_40;
                }

                v44 = [v37 objectForKey:v76];
                v45 = [v44 isEqualToString:@"com.apple.CalendarWidget.CalendarSpatialWidget"];

                if (v45)
                {
                  v26 = v75;
                  if (([v74 isEqualToString:@"large"] & 1) == 0 && !objc_msgSend(v74, "isEqualToString:", @"extraLarge"))
                  {
                    goto LABEL_39;
                  }

                  v42 = [v37 mutableCopy];
                  [v42 setObject:@"com.apple.CalendarWidget.CalendarUpNextWidget" forKeyedSubscript:v76];
                  [v28 addObject:v42];
                  v43 = SBLogCommon();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_37:
                    *buf = 0;
                    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] Found calendar widget stack element to migrate...", buf, 2u);
                  }

LABEL_38:

                  v73 = 1;
LABEL_40:
                  v10 = v36;
                  goto LABEL_41;
                }

                [v28 addObject:v37];
                v10 = v36;
                v26 = v75;
LABEL_41:
              }

              v31 = [v29 countByEnumeratingWithState:&v79 objects:v88 count:16];
              if (!v31)
              {
LABEL_44:

                if ([v28 count])
                {
                  v46 = [v26 mutableCopy];
                  [v46 setObject:v28 forKeyedSubscript:v67];
                  v4 = v66;
                  [v66 addObject:v46];
                }

                else
                {
                  v4 = v66;
                  [v66 addObject:v26];
                }

                v9 = v71;

                v8 = v64;
                v5 = v65;
                v7 = v70;
                goto LABEL_66;
              }
            }
          }
        }

        else
        {
        }

        [v4 addObject:{v15, v63}];
        v7 = v70;
        goto LABEL_67;
      }

      v18 = [v15 objectForKey:v76];
      v19 = [v18 isEqualToString:@"com.apple.CalendarWidget.CalendarWidget"];

      if (v19)
      {
        v20 = [v15 objectForKey:v9];
        if ([v20 isEqualToString:@"small"])
        {

LABEL_52:
          v52 = [v15 mutableCopy];
          [v52 setObject:@"com.apple.CalendarWidget.CalendarUpNextWidget" forKeyedSubscript:v76];
          [v4 addObject:v52];
          v53 = SBLogCommon();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
LABEL_56:
            *buf = 0;
            _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] Found calendar widget to migrate...", buf, 2u);
          }

LABEL_57:

          v73 = 1;
          v9 = v71;
          goto LABEL_66;
        }

        v50 = [v15 objectForKey:v9];
        v51 = [v50 isEqualToString:@"medium"];

        if (v51)
        {
          goto LABEL_52;
        }

        v9 = v71;
        v56 = [v15 objectForKey:v71];
        v57 = [v56 isEqualToString:@"large"];

        if (v57)
        {
          v58 = [v15 mutableCopy];
          [v58 setObject:@"com.apple.CalendarWidget.CalendarListWidget" forKeyedSubscript:v76];
          [v4 addObject:v58];
          v59 = SBLogCommon();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "[CalendarWidgetMigrator] Found calendar widget to migrate...", buf, 2u);
          }

          v73 = 1;
LABEL_66:
          v15 = v75;
          goto LABEL_67;
        }
      }

      else
      {
        v47 = [v15 objectForKey:v76];
        v48 = [v47 isEqualToString:@"com.apple.CalendarWidget.CalendarSpatialWidget"];

        if (v48)
        {
          v49 = [v15 objectForKey:v9];
          if ([v49 isEqualToString:@"large"])
          {

LABEL_55:
            v52 = [v15 mutableCopy];
            [v52 setObject:@"com.apple.CalendarWidget.CalendarUpNextWidget" forKeyedSubscript:v76];
            [v4 addObject:v52];
            v53 = SBLogCommon();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_56;
            }

            goto LABEL_57;
          }

          v54 = [v15 objectForKey:v9];
          v55 = [v54 isEqualToString:@"extraLarge"];

          if (v55)
          {
            goto LABEL_55;
          }

          [v4 addObject:v15];
          v9 = v71;
          goto LABEL_67;
        }
      }

      [v4 addObject:{v15, v63}];
LABEL_67:

LABEL_68:
      v11 = v72 + 1;
    }

    while ((v72 + 1) != v7);
    v7 = [v5 countByEnumeratingWithState:&v84 objects:v89 count:16];
  }

  while (v7);

  if (v73)
  {
    v60 = v4;
  }

  else
  {
    v60 = 0;
  }

  listCopy = v63;
LABEL_76:
  v61 = v60;

LABEL_77:

  return v61;
}

@end
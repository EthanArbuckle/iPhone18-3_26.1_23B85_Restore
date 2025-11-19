@interface CKSettingsController
- (BOOL)_isApplicationHiddenFromSettings:(id)a3;
- (id)appPermissionEnabledForSpecifier:(id)a3;
- (id)specifiers;
- (void)fetchAppPermissionGroupsWithCompletionHandler:(id)a3;
- (void)setAppPermissionEnabled:(id)a3 forSpecifier:(id)a4;
@end

@implementation CKSettingsController

- (BOOL)_isApplicationHiddenFromSettings:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"com.apple.cloudkit"] & 1) == 0)
  {
    v13 = 0;
    v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v13];
    v6 = v13;
    if (v6)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v7 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v15 = v3;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Bundle ID %@ doesn't belong to an application: %@", buf, 0x16u);
      }
    }

    else
    {
      v8 = [v5 applicationState];
      v9 = [v8 isInstalled];

      if (v9)
      {
        v10 = [v5 entitlements];
        v11 = [v10 objectForKey:@"com.apple.private.appleaccount.app-hidden-from-icloud-settings" ofClass:objc_opt_class()];

        v4 = [v11 BOOLValue];
LABEL_11:

        goto LABEL_12;
      }
    }

    v4 = 0;
    goto LABEL_11;
  }

  v4 = 1;
LABEL_12:

  return v4;
}

- (void)setAppPermissionEnabled:(id)a3 forSpecifier:(id)a4
{
  v36 = a3;
  v35 = [a4 propertyForKey:@"CKSettingsDisplayableAppPermissionGroup"];
  v5 = [v35 applicationPermissionGroup];
  v6 = dispatch_group_create();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v37 = v5;
  obj = [v5 containerIDs];
  v7 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v50;
    do
    {
      v10 = 0;
      do
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v49 + 1) + 8 * v10);
        v12 = objc_alloc_init(CKContainerOptions);
        [v12 setApplicationBundleIdentifierOverride:@"com.apple.cloudkit"];
        v13 = [[CKContainer alloc] initWithContainerID:v11 options:v12];
        if (v13)
        {
          dispatch_group_enter(v6);
          v14 = v13;
          v15 = [v36 BOOLValue];
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_6CC0;
          v43[3] = &unk_145D8;
          v44 = v35;
          v45 = v36;
          v46 = v37;
          v47 = v6;
          v48 = v14;
          v16 = v14;
          [v16 setApplicationPermission:1 enabled:v15 completionHandler:v43];
        }

        else
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v17 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v55 = v11;
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Couldn't get a container with ID %{public}@", buf, 0xCu);
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v8);
  }

  v18 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(v6, v18))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v19 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Couldn't set app permissions within 30 seconds, bailing", buf, 2u);
    }
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = [v37 applicationBundleIDs];
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v21)
    {
      v23 = v21;
      v24 = *v40;
      *&v22 = 138412290;
      v33 = v22;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v39 + 1) + 8 * i);
          v27 = +[NSBundle mainBundle];
          v28 = [v27 bundleIdentifier];
          v29 = [v26 isEqual:v28];

          if (v29)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v30 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
            {
              *buf = v33;
              v55 = v26;
              _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Skipping termination of process after CloudKit permissions change (%@)", buf, 0xCu);
            }
          }

          else
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v31 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
            {
              *buf = v33;
              v55 = v26;
              _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Terminating process to reset state after CloudKit permissions change (%@)", buf, 0xCu);
            }

            v32 = +[FBSSystemService sharedService];
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_6E40;
            v38[3] = &unk_14600;
            v38[4] = v26;
            [v32 terminateApplication:v26 forReason:3 andReport:0 withDescription:@"Terminating process to reset state after CloudKit permissions change." completion:v38];
          }
        }

        v23 = [v20 countByEnumeratingWithState:&v39 objects:v53 count:16];
      }

      while (v23);
    }
  }
}

- (id)appPermissionEnabledForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:@"CKSettingsDisplayableAppPermissionGroup"];
  v4 = [v3 applicationPermissionGroup];
  if ([v4 enabledPermissions])
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  return v5;
}

- (void)fetchAppPermissionGroupsWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = [[CKContainerID alloc] initWithContainerIdentifier:@"com.apple.cloudkit.ckctl.container" environment:1];
  v5 = [[CKContainer alloc] initWithContainerID:v4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_7094;
  v7[3] = &unk_14628;
  v8 = v3;
  v6 = v3;
  [v5 statusGroupsForApplicationPermission:1 completionHandler:v7];
}

- (id)specifiers
{
  v2 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v41 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[CPNetworkObserver sharedNetworkObserver];
    v40 = [v4 isNetworkReachable];

    v5 = self;
    objc_sync_enter(v5);
    if (v5->_isLookingUpAppNames || v5->_displayableAppPermissionGroups)
    {
      objc_sync_exit(v5);
    }

    else
    {
      v5->_isLookingUpAppNames = 1;
      objc_sync_exit(v5);

      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_7698;
      v48[3] = &unk_14758;
      v48[4] = v5;
      v49 = dispatch_semaphore_create(0);
      v33 = v49;
      [(CKSettingsController *)v5 fetchAppPermissionGroupsWithCompletionHandler:v48];
      v34 = dispatch_time(0, 150000000);
      dispatch_semaphore_wait(v33, v34);
    }

    v6 = v5;
    objc_sync_enter(v6);
    v36 = [(NSMutableArray *)v6->_displayableAppPermissionGroups copy];
    v6->_needsToDisplayAppPermission = 0;
    objc_sync_exit(v6);

    v7 = objc_opt_new();
    v8 = *&self->PSListController_opaque[v41];
    *&self->PSListController_opaque[v41] = v7;

    v37 = +[PSSpecifier emptyGroupSpecifier];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = CKLocalizedStringFromTableInBundle();
    [v37 setProperty:v10 forKey:PSFooterTextGroupKey];

    [*&self->PSListController_opaque[v41] addObject:v37];
    if (v36)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = v36;
      v11 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v11)
      {
        v12 = *v45;
        v38 = PSEnabledKey;
        v39 = PSIconImageKey;
        do
        {
          v13 = 0;
          do
          {
            if (*v45 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v44 + 1) + 8 * v13);
            v15 = [v14 primaryAppNameImage];
            v16 = [v15 appDisplayName];

            if (v16)
            {
              v17 = [v14 appNameImages];
              v18 = [v17 count];

              if (v18)
              {
                v19 = [NSBundle bundleForClass:objc_opt_class()];
                v35 = v18 - 1;
                v20 = CKLocalizedStringFromTableInBundle();

                v21 = v18 == &dword_0 + 1;
                if (v18 == &dword_0 + 1)
                {
                  v22 = "setAppPermissionEnabled:forSpecifier:";
                }

                else
                {
                  v22 = 0;
                }

                if (v21)
                {
                  v24 = 0;
                  v25 = 6;
                }

                else
                {
                  v24 = objc_opt_class();
                  v25 = 1;
                }

                v26 = [PSSpecifier preferenceSpecifierNamed:v20 target:v6 set:v22 get:"appPermissionEnabledForSpecifier:" detail:v24 cell:v25 edit:0, v35];
                v27 = v26;
                if ((v40 & 1) == 0)
                {
                  [v26 setProperty:&__kCFBooleanFalse forKey:v38];
                }

                v28 = [v14 primaryAppNameImage];
                v29 = [v28 appImage];

                if (v29)
                {
                  v30 = [v14 primaryAppNameImage];
                  v31 = [v30 appImage];
                  [v27 setProperty:v31 forKey:v39];
                }

                [v27 setProperty:v14 forKey:@"CKSettingsDisplayableAppPermissionGroup"];
                [*&self->PSListController_opaque[v41] addObject:v27];
              }

              else
              {
                if (ck_log_initialization_predicate != -1)
                {
                  dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                }

                v23 = ck_log_facility_ck;
                if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v51 = v14;
                  _os_log_error_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Ignoring app permission group %@", buf, 0xCu);
                }
              }
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v11);
      }
    }

    else
    {
      obj = [PSSpecifier preferenceSpecifierNamed:0 target:v6 set:0 get:0 detail:0 cell:15 edit:0];
      [*&self->PSListController_opaque[v41] addObject:obj];
    }

    v3 = *&self->PSListController_opaque[v41];
  }

  return v3;
}

@end
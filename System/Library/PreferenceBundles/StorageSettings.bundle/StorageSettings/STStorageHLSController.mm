@interface STStorageHLSController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (id)hlsSpecifiers;
- (id)specifierAtIndexPath:(id)a3;
- (id)specifiers;
- (void)deleteAssets:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)updateHLSSpecs;
- (void)viewDidLoad;
@end

@implementation STStorageHLSController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = STStorageHLSController;
  [(STStorageHLSController *)&v4 viewDidLoad];
  v3 = [(STStorageHLSController *)self table];
  [v3 setAllowsMultipleSelectionDuringEditing:0];
}

- (id)hlsSpecifiers
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[NSMutableArray array];
  v64 = _NSConcreteStackBlock;
  v65 = 3221225472;
  v66 = sub_E858;
  v67 = &unk_2CEA0;
  v68 = v2;
  v4 = v3;
  v69 = v4;
  CacheManagementEnumerateAssets();
  v45 = v68;
  v5 = [v68 allKeys];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v61;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v61 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v60 + 1) + 8 * i);
        if ([v12 length])
        {
          v13 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v12 allowPlaceholder:1 error:0];
          if (v13)
          {
            [v6 addObject:v13];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v9);
  }

  v42 = v7;

  [v6 sortUsingComparator:&stru_2CEE0];
  v14 = +[NSMutableArray array];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v6;
  v46 = [obj countByEnumeratingWithState:&v56 objects:v72 count:16];
  if (v46)
  {
    v44 = *v57;
    do
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v57 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v56 + 1) + 8 * j);
        v17 = [v16 localizedName];
        if (![v17 length])
        {
          v18 = [v16 bundleIdentifier];
          v19 = v18;
          v20 = @"???";
          if (v18)
          {
            v20 = v18;
          }

          v21 = v20;

          v17 = v21;
        }

        v47 = v17;
        v22 = [PSSpecifier groupSpecifierWithName:v17];
        [v14 addObject:v22];

        v23 = [v16 bundleIdentifier];
        v24 = [v45 objectForKey:v23];

        [v24 sortUsingComparator:&stru_2CF20];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v52 objects:v71 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v53;
          do
          {
            for (k = 0; k != v27; k = k + 1)
            {
              if (*v53 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v52 + 1) + 8 * k);
              v31 = [STStorageCacheAssetCell specifierForAsset:v30];
              [v14 addObject:v31];

              [v4 removeObject:v30];
            }

            v27 = [v25 countByEnumeratingWithState:&v52 objects:v71 count:16];
          }

          while (v27);
        }
      }

      v46 = [obj countByEnumeratingWithState:&v56 objects:v72 count:16];
    }

    while (v46);
  }

  v32 = v42;
  if ([v4 count])
  {
    [v4 sortUsingComparator:&stru_2CF40];
    v33 = STStorageLocStr(@"OTHER");
    v34 = [PSSpecifier groupSpecifierWithName:v33];
    [v14 addObject:v34];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v35 = v4;
    v36 = [v35 countByEnumeratingWithState:&v48 objects:v70 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v49;
      do
      {
        for (m = 0; m != v37; m = m + 1)
        {
          if (*v49 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [STStorageCacheAssetCell specifierForAsset:*(*(&v48 + 1) + 8 * m), v42];
          [v14 addObject:v40];
        }

        v37 = [v35 countByEnumeratingWithState:&v48 objects:v70 count:16];
      }

      while (v37);
    }
  }

  return v14;
}

- (void)updateHLSSpecs
{
  v3 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers] != self->_hlsSpecs;
  v4 = dispatch_get_global_queue(25, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_ED3C;
  v5[3] = &unk_2CF68;
  v5[4] = self;
  v6 = v3;
  dispatch_async(v4, v5);
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    objc_storeStrong(&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers], self->_hlsSpecs);
    if (!*&self->PSEditableListController_opaque[v3])
    {
      v4 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
      v9 = v4;
      v5 = [NSArray arrayWithObjects:&v9 count:1];
      v6 = *&self->PSEditableListController_opaque[v3];
      *&self->PSEditableListController_opaque[v3] = v5;
    }
  }

  [(STStorageHLSController *)self updateHLSSpecs];
  v7 = *&self->PSEditableListController_opaque[v3];

  return v7;
}

- (void)deleteAssets:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 propertyForKey:{@"stCacheAsset", v11, v12, v13, v14, v15, v16}];
        if (v10)
        {
          v11 = _NSConcreteStackBlock;
          v12 = 3221225472;
          v13 = sub_F0C4;
          v14 = &unk_2CD28;
          v15 = self;
          v16 = v9;
          CacheManagementRemove();
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)specifierAtIndexPath:(id)a3
{
  v6.receiver = self;
  v6.super_class = STStorageHLSController;
  v3 = [(STStorageHLSController *)&v6 specifierAtIndexPath:a3];
  v4 = [v3 propertyForKey:@"stCacheAsset"];

  if (v4)
  {
    v4 = v3;
  }

  return v4;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(STStorageHLSController *)self specifierAtIndexPath:a4];

  return v4 != 0;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v6 = [(STStorageHLSController *)self specifierAtIndexPath:a5];
    v7 = v6;
    if (v6)
    {
      v9 = v6;
      v8 = [NSArray arrayWithObjects:&v9 count:1];
      [(STStorageHLSController *)self deleteAssets:v8];
    }
  }
}

@end
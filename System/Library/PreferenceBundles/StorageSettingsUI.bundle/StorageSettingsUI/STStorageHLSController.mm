@interface STStorageHLSController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (id)hlsSpecifiers;
- (id)specifierAtIndexPath:(id)path;
- (id)specifiers;
- (void)deleteAssets:(id)assets;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)toggleEditing:(id)editing;
- (void)updateHLSSpecs;
- (void)viewDidLoad;
@end

@implementation STStorageHLSController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = STStorageHLSController;
  [(STStorageHLSController *)&v9 viewDidLoad];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v5 = dispatch_queue_create("StorageHLSAssetDeleteAuete", v4);
  deleteQueue = self->deleteQueue;
  self->deleteQueue = v5;

  [(STStorageHLSController *)self setEditing:0];
  table = [(STStorageHLSController *)self table];
  [table setAllowsMultipleSelectionDuringEditing:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"updateHLSSpecs" name:UIApplicationDidBecomeActiveNotification object:0];
}

- (void)toggleEditing:(id)editing
{
  isEditing = [(STStorageHLSController *)self isEditing];
  [(STStorageHLSController *)self setEditing:isEditing ^ 1];
  table = [(STStorageHLSController *)self table];
  [table setEditing:isEditing ^ 1];
}

- (id)hlsSpecifiers
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[NSMutableArray array];
  v64 = _NSConcreteStackBlock;
  v65 = 3221225472;
  v66 = sub_EFE4;
  v67 = &unk_AA7A0;
  v68 = v2;
  v4 = v3;
  v69 = v4;
  CacheManagementEnumerateAssets();
  v45 = v68;
  allKeys = [v68 allKeys];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [allKeys count]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = allKeys;
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

  [v6 sortUsingComparator:&stru_AAA28];
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
        localizedName = [v16 localizedName];
        if (![localizedName length])
        {
          bundleIdentifier = [v16 bundleIdentifier];
          v19 = bundleIdentifier;
          v20 = @"???";
          if (bundleIdentifier)
          {
            v20 = bundleIdentifier;
          }

          v21 = v20;

          localizedName = v21;
        }

        v47 = localizedName;
        v22 = [PSSpecifier groupSpecifierWithName:localizedName];
        [v14 addObject:v22];

        bundleIdentifier2 = [v16 bundleIdentifier];
        v24 = [v45 objectForKey:bundleIdentifier2];

        [v24 sortUsingComparator:&stru_AAA48];
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
    [v4 sortUsingComparator:&stru_AAA68];
    v33 = STLocalizedString(@"Other");
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
  v5[2] = sub_F4C8;
  v5[3] = &unk_AAA90;
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
      v4 = [PSSpecifier preferenceSpecifierNamed:&stru_AD3C8 target:0 set:0 get:0 detail:0 cell:15 edit:0];
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

- (void)deleteAssets:(id)assets
{
  assetsCopy = assets;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [assetsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        deleteQueue = self->deleteQueue;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_F82C;
        v11[3] = &unk_AA650;
        v11[4] = v9;
        v11[5] = self;
        dispatch_async(deleteQueue, v11);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [assetsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)specifierAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = STStorageHLSController;
  v3 = [(STStorageHLSController *)&v6 specifierAtIndexPath:path];
  v4 = [v3 propertyForKey:@"stCacheAsset"];

  if (v4)
  {
    v4 = v3;
  }

  return v4;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(STStorageHLSController *)self specifierAtIndexPath:path];

  return v4 != 0;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v6 = [(STStorageHLSController *)self specifierAtIndexPath:path];
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
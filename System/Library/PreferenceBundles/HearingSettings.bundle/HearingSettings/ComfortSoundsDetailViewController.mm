@interface ComfortSoundsDetailViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (ComfortSoundsDetailViewController)init;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)configureBarButton;
- (void)donePressed;
- (void)editPressed;
- (void)reloadSpecifiers;
- (void)setDownloadProgress:(id)progress;
- (void)startListeningForUpdates;
- (void)stopListeningForUpdates;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation ComfortSoundsDetailViewController

- (ComfortSoundsDetailViewController)init
{
  v8.receiver = self;
  v8.super_class = ComfortSoundsDetailViewController;
  v2 = [(ComfortSoundsDetailViewController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    availableAssets = v2->_availableAssets;
    v2->_availableAssets = 0;

    downloadProgress = v3->_downloadProgress;
    v3->_downloadProgress = 0;

    assetCells = v3->_assetCells;
    v3->_assetCells = 0;
  }

  return v3;
}

- (void)reloadSpecifiers
{
  v3 = objc_opt_new();
  [(ComfortSoundsDetailViewController *)self setAssetCells:v3];

  v4.receiver = self;
  v4.super_class = ComfortSoundsDetailViewController;
  [(ComfortSoundsDetailViewController *)&v4 reloadSpecifiers];
  [(ComfortSoundsDetailViewController *)self configureBarButton];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ComfortSoundsDetailViewController;
  [(ComfortSoundsDetailViewController *)&v6 viewDidLoad];
  table = [(ComfortSoundsDetailViewController *)self table];
  v4 = objc_opt_class();
  v5 = +[HearingSettingsAssetCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)startListeningForUpdates
{
  objc_initWeak(&location, self);
  v3 = +[AXHAServer sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1A8C;
  v7[3] = &unk_488C8;
  objc_copyWeak(&v8, &location);
  [v3 registerListener:self forComfortSoundsModelUpdatesHandler:v7];

  v4 = +[HUComfortSoundsSettings sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1F24;
  v5[3] = &unk_48918;
  objc_copyWeak(&v6, &location);
  [v4 registerUpdateBlock:v5 forRetrieveSelector:"selectedComfortSound" withListener:self];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)stopListeningForUpdates
{
  v3 = +[AXHAServer sharedInstance];
  [v3 unregisterComfortSoundsModelUpdatesHandler:self];
}

- (void)configureBarButton
{
  availableAssets = [(ComfortSoundsDetailViewController *)self availableAssets];
  v4 = [availableAssets indexOfObjectPassingTest:&stru_48958];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL || ([(ComfortSoundsDetailViewController *)self availableAssets], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    navigationItem = [(ComfortSoundsDetailViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];

    [(ComfortSoundsDetailViewController *)self setEditing:0 animated:1];
  }

  else
  {
    isEditing = [(ComfortSoundsDetailViewController *)self isEditing];
    v7 = objc_allocWithZone(UIBarButtonItem);
    if (isEditing)
    {
      v8 = "donePressed";
      v9 = 0;
    }

    else
    {
      v8 = "editPressed";
      v9 = 2;
    }

    v12 = [v7 initWithBarButtonSystemItem:v9 target:self action:v8];
    navigationItem2 = [(ComfortSoundsDetailViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v12];
  }
}

- (void)editPressed
{
  [(ComfortSoundsDetailViewController *)self setEditing:1 animated:1];

  [(ComfortSoundsDetailViewController *)self configureBarButton];
}

- (void)donePressed
{
  [(ComfortSoundsDetailViewController *)self setEditing:0 animated:1];

  [(ComfortSoundsDetailViewController *)self configureBarButton];
}

- (void)setDownloadProgress:(id)progress
{
  progressCopy = progress;
  objc_storeStrong(&self->_downloadProgress, progress);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = progressCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        assetCells = [(ComfortSoundsDetailViewController *)self assetCells];
        v13 = [assetCells valueForKey:v11];

        v14 = [v6 valueForKey:v11];
        [v13 updateDownloadProgress:v14];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [objc_allocWithZone(NSMutableArray) init];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v5 addObject:v6];
    v7 = +[HUComfortSoundsSettings sharedInstance];
    selectedComfortSound = [v7 selectedComfortSound];

    v9 = +[NSMutableArray array];
    availableAssets = [(ComfortSoundsDetailViewController *)self availableAssets];
    v19 = availableAssets;
    if ([availableAssets count])
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_2854;
      v24[3] = &unk_48980;
      v25 = v9;
      [availableAssets enumerateObjectsUsingBlock:{v24, availableAssets}];
    }

    else
    {
      for (i = 1; i != 17; ++i)
      {
        v12 = [HUComfortSound defaultComfortSoundForGroup:i, v19];
        [v9 hcSafeAddObject:v12];
      }
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_28B4;
    v20[3] = &unk_489A8;
    v20[4] = self;
    v21 = selectedComfortSound;
    v22 = v6;
    v23 = v5;
    v13 = v5;
    v14 = v6;
    v15 = selectedComfortSound;
    [v9 enumerateObjectsUsingBlock:v20];
    v16 = [v13 copy];
    v17 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v16;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = ComfortSoundsDetailViewController;
  [(ComfortSoundsDetailViewController *)&v21 tableView:view didSelectRowAtIndexPath:pathCopy];
  if (([(ComfortSoundsDetailViewController *)self isEditing]& 1) == 0)
  {
    v7 = [(ComfortSoundsDetailViewController *)self specifierAtIndexPath:pathCopy];
    userInfo = [v7 userInfo];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v9 = userInfo;
    asset = [v9 asset];
    if (!asset || (v11 = asset, [v9 asset], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isInstalled"), v12, v11, v13))
    {
      v14 = +[HUComfortSoundsSettings sharedInstance];
      [v14 setSelectedComfortSound:v9];
LABEL_13:

      goto LABEL_14;
    }

    asset2 = [v9 asset];
    if (([asset2 isInstalled] & 1) == 0)
    {
      asset3 = [v9 asset];
      isDownloading = [asset3 isDownloading];

      if (isDownloading)
      {
LABEL_12:
        v14 = +[HUComfortSoundsSettings sharedInstance];
        v20 = +[HUComfortSound defaultComfortSoundForGroup:](HUComfortSound, "defaultComfortSoundForGroup:", [v9 soundGroup]);
        [v14 setSelectedComfortSound:v20];

        goto LABEL_13;
      }

      v18 = HCLogComfortSounds();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Downloading asset %@", buf, 0xCu);
      }

      asset2 = +[AXHAServer sharedInstance];
      asset4 = [v9 asset];
      [asset2 downloadComfortSoundAsset:asset4];
    }

    goto LABEL_12;
  }

LABEL_15:
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(ComfortSoundsDetailViewController *)self specifierAtIndexPath:path];
  userInfo = [v4 userInfo];
  if ([userInfo conformsToProtocol:&OBJC_PROTOCOL___HUComfortSoundsDelegate])
  {
    canBeEdited = [userInfo canBeEdited];
  }

  else
  {
    canBeEdited = 0;
  }

  return canBeEdited;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(ComfortSoundsDetailViewController *)self specifierAtIndexPath:path];
  userInfo = [v4 userInfo];
  if ([userInfo conformsToProtocol:&OBJC_PROTOCOL___HUComfortSoundsDelegate])
  {
    canBeDeleted = [userInfo canBeDeleted];
  }

  else
  {
    canBeDeleted = 0;
  }

  return canBeDeleted;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  specifier = [cellCopy specifier];
  userInfo = [specifier userInfo];

  asset = [userInfo asset];
  assetId = [asset assetId];

  if (assetId)
  {
    assetCells = [(ComfortSoundsDetailViewController *)self assetCells];
    [assetCells setValue:cellCopy forKey:assetId];

    downloadProgress = [(ComfortSoundsDetailViewController *)self downloadProgress];
    v12 = [downloadProgress valueForKey:assetId];
    [cellCopy updateDownloadProgress:v12];
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v7 = [(ComfortSoundsDetailViewController *)self specifierAtIndexPath:path];
  userInfo = [v7 userInfo];
  v9 = userInfo;
  if (style == 1 && [userInfo conformsToProtocol:&OBJC_PROTOCOL___HUComfortSoundsDelegate])
  {
    v10 = hearingLocString();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      v12 = hearingLocString();
      localizedName = [v11 localizedName];
      v14 = [NSString stringWithFormat:v12, localizedName];

      v15 = [UIAlertController alertControllerWithTitle:v14 message:v10 preferredStyle:1];
      v16 = hearingLocString();
      v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:0];
      [v15 addAction:v17];

      v18 = hearingLocString();
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_3048;
      v21[3] = &unk_489D0;
      v22 = v11;
      selfCopy = self;
      v19 = v11;
      v20 = [UIAlertAction actionWithTitle:v18 style:0 handler:v21];
      [v15 addAction:v20];
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    [(ComfortSoundsDetailViewController *)self presentViewController:v15 animated:1 completion:0];
  }
}

@end
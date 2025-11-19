@interface ComfortSoundsDetailViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (ComfortSoundsDetailViewController)init;
- (id)specifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)configureBarButton;
- (void)donePressed;
- (void)editPressed;
- (void)reloadSpecifiers;
- (void)setDownloadProgress:(id)a3;
- (void)startListeningForUpdates;
- (void)stopListeningForUpdates;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
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
  v3 = [(ComfortSoundsDetailViewController *)self table];
  v4 = objc_opt_class();
  v5 = +[HearingSettingsAssetCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
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
  v3 = [(ComfortSoundsDetailViewController *)self availableAssets];
  v4 = [v3 indexOfObjectPassingTest:&stru_48958];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL || ([(ComfortSoundsDetailViewController *)self availableAssets], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v10 = [(ComfortSoundsDetailViewController *)self navigationItem];
    [v10 setRightBarButtonItem:0];

    [(ComfortSoundsDetailViewController *)self setEditing:0 animated:1];
  }

  else
  {
    v6 = [(ComfortSoundsDetailViewController *)self isEditing];
    v7 = objc_allocWithZone(UIBarButtonItem);
    if (v6)
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
    v11 = [(ComfortSoundsDetailViewController *)self navigationItem];
    [v11 setRightBarButtonItem:v12];
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

- (void)setDownloadProgress:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_downloadProgress, a3);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
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
        v12 = [(ComfortSoundsDetailViewController *)self assetCells];
        v13 = [v12 valueForKey:v11];

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
    v8 = [v7 selectedComfortSound];

    v9 = +[NSMutableArray array];
    v10 = [(ComfortSoundsDetailViewController *)self availableAssets];
    v19 = v10;
    if ([v10 count])
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_2854;
      v24[3] = &unk_48980;
      v25 = v9;
      [v10 enumerateObjectsUsingBlock:{v24, v10}];
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
    v21 = v8;
    v22 = v6;
    v23 = v5;
    v13 = v5;
    v14 = v6;
    v15 = v8;
    [v9 enumerateObjectsUsingBlock:v20];
    v16 = [v13 copy];
    v17 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v16;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = ComfortSoundsDetailViewController;
  [(ComfortSoundsDetailViewController *)&v21 tableView:a3 didSelectRowAtIndexPath:v6];
  if (([(ComfortSoundsDetailViewController *)self isEditing]& 1) == 0)
  {
    v7 = [(ComfortSoundsDetailViewController *)self specifierAtIndexPath:v6];
    v8 = [v7 userInfo];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v9 = v8;
    v10 = [v9 asset];
    if (!v10 || (v11 = v10, [v9 asset], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isInstalled"), v12, v11, v13))
    {
      v14 = +[HUComfortSoundsSettings sharedInstance];
      [v14 setSelectedComfortSound:v9];
LABEL_13:

      goto LABEL_14;
    }

    v15 = [v9 asset];
    if (([v15 isInstalled] & 1) == 0)
    {
      v16 = [v9 asset];
      v17 = [v16 isDownloading];

      if (v17)
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

      v15 = +[AXHAServer sharedInstance];
      v19 = [v9 asset];
      [v15 downloadComfortSoundAsset:v19];
    }

    goto LABEL_12;
  }

LABEL_15:
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(ComfortSoundsDetailViewController *)self specifierAtIndexPath:a4];
  v5 = [v4 userInfo];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___HUComfortSoundsDelegate])
  {
    v6 = [v5 canBeEdited];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(ComfortSoundsDetailViewController *)self specifierAtIndexPath:a4];
  v5 = [v4 userInfo];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___HUComfortSoundsDelegate])
  {
    v6 = [v5 canBeDeleted];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v13 = a4;
  v6 = [v13 specifier];
  v7 = [v6 userInfo];

  v8 = [v7 asset];
  v9 = [v8 assetId];

  if (v9)
  {
    v10 = [(ComfortSoundsDetailViewController *)self assetCells];
    [v10 setValue:v13 forKey:v9];

    v11 = [(ComfortSoundsDetailViewController *)self downloadProgress];
    v12 = [v11 valueForKey:v9];
    [v13 updateDownloadProgress:v12];
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = [(ComfortSoundsDetailViewController *)self specifierAtIndexPath:a5];
  v8 = [v7 userInfo];
  v9 = v8;
  if (a4 == 1 && [v8 conformsToProtocol:&OBJC_PROTOCOL___HUComfortSoundsDelegate])
  {
    v10 = hearingLocString();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      v12 = hearingLocString();
      v13 = [v11 localizedName];
      v14 = [NSString stringWithFormat:v12, v13];

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
      v23 = self;
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
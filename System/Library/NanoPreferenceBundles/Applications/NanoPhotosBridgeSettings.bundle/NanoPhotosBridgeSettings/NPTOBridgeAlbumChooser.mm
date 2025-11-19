@interface NPTOBridgeAlbumChooser
- (BOOL)_isTinkerPaired;
- (NPTOBridgeAlbumChooser)init;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_albumsSectionTitle;
- (id)_device;
- (id)_noneAlbumName;
- (id)_preferencesAccessor;
- (id)_title;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_reloadData;
- (void)_syncedAlbumIdentifierPreferenceChanged;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation NPTOBridgeAlbumChooser

- (NPTOBridgeAlbumChooser)init
{
  if (_os_feature_enabled_impl())
  {
    [SCSensitivityAnalysis prefetchSensitiveContentPolicy:&stru_C4E8];
  }

  v3 = objc_opt_new();
  v8.receiver = self;
  v8.super_class = NPTOBridgeAlbumChooser;
  v4 = [(NPTOBridgeAlbumChooser *)&v8 initWithSpec:v3];
  if (v4)
  {
    v5 = +[PHPhotoLibrary sharedPhotoLibrary];
    [v5 registerChangeObserver:v4];
    v6 = [(NPTOBridgeAlbumChooser *)v4 _title];
    [(NPTOBridgeAlbumChooser *)v4 setTitle:v6];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[PHPhotoLibrary sharedPhotoLibrary];
  [v3 unregisterChangeObserver:self];

  v4.receiver = self;
  v4.super_class = NPTOBridgeAlbumChooser;
  [(NPTOBridgeAlbumChooser *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = NPTOBridgeAlbumChooser;
  [(NPTOBridgeAlbumChooser *)&v6 viewDidLoad];
  v3 = BPSBridgeTintColor();
  v4 = [(NPTOBridgeAlbumChooser *)self view];
  [v4 setTintColor:v3];

  v5 = [(NPTOBridgeAlbumChooser *)self _mainTableView];
  [v5 setSeparatorStyle:1];

  [(NPTOBridgeAlbumChooser *)self _reloadData];
}

- (void)_reloadData
{
  v3 = +[NSMutableArray array];
  v4 = [PHAssetCollection fetchAssetCollectionsWithType:2 subtype:203 options:0];
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    [v3 addObject:v5];
  }

  if ([(NPTOBridgeAlbumChooser *)self _allowsRecentAlbumSelection])
  {
    v6 = [PHAssetCollection fetchAssetCollectionsWithType:2 subtype:209 options:0];
    if ([v6 count])
    {
      v7 = [v6 firstObject];
      [v3 addObject:v7];
    }
  }

  v8 = objc_alloc_init(PHFetchOptions);
  v9 = [NSSortDescriptor sortDescriptorWithKey:@"localizedTitle" ascending:1];
  v10 = [NSArray arrayWithObjects:v9, 0];
  [v8 setSortDescriptors:v10];

  v11 = [PHAssetCollection fetchAssetCollectionsWithType:1 subtype:0x7FFFFFFFFFFFFFFFLL options:v8];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_4650;
  v16[3] = &unk_C510;
  v16[4] = self;
  v12 = v3;
  v17 = v12;
  [v11 enumerateObjectsUsingBlock:v16];
  if ([v12 count])
  {
    v13 = [v12 copy];
    v14 = [PHCollectionList transientCollectionListWithCollections:v13 title:@"Albums"];

    v15 = [[PXPhotoKitCollectionsDataSourceManagerConfiguration alloc] initWithCollectionList:v14];
    [v15 setSeparateSectionsForSmartAndUserCollections:0];
    [(NPTOBridgeAlbumChooser *)self setDataSourceManagerConfiguration:v15];
  }

  else
  {
    [(NPTOBridgeAlbumChooser *)self setDataSourceManagerConfiguration:0];
  }
}

- (void)_syncedAlbumIdentifierPreferenceChanged
{
  v3 = [(NPTOBridgeAlbumChooser *)self _mainTableView];
  v4 = [(NPTOBridgeAlbumChooser *)self _preferencesAccessor];
  v5 = [v4 npto_syncedAlbumIdentifier];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [v3 indexPathsForVisibleRows];
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v23 = NPTOPreferencesSyncedAlbumIdentifierNone;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 section];
        if (v11 == [(NPTOBridgeAlbumChooser *)self topPlaceholdersSection])
        {
          v12 = [NSIndexPath indexPathForRow:0 inSection:[(NPTOBridgeAlbumChooser *)self topPlaceholdersSection]];
          v13 = [v3 cellForRowAtIndexPath:v12];

          if ([v5 isEqualToString:v23])
          {
            v14 = 3;
          }

          else
          {
            v14 = 0;
          }

          [v13 setAccessoryType:v14];
        }

        v15 = [v10 section];
        v16 = [(NPTOBridgeAlbumChooser *)self albumsSections];
        if (v15 >= v16 && v15 - v16 < v17)
        {
          v19 = [(NPTOBridgeAlbumChooser *)self collectionAtIndexPath:v10];
          v20 = [v3 cellForRowAtIndexPath:v10];
          v21 = [v19 localIdentifier];
          if ([v21 isEqualToString:v5])
          {
            v22 = 3;
          }

          else
          {
            v22 = 0;
          }

          [v20 setAccessoryType:v22];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }
}

- (void)photoLibraryDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4978;
  block[3] = &unk_C538;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPTOBridgeAlbumChooser *)self _preferencesAccessor];
  v9 = [v8 npto_syncedAlbumIdentifier];

  v10 = [v7 section];
  if (v10 == [(NPTOBridgeAlbumChooser *)self topPlaceholdersSection])
  {
    v11 = [v6 dequeueReusableCellWithIdentifier:@"NoAlbumCell"];
    if (!v11)
    {
      v11 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"NoAlbumCell"];
    }

    v12 = [(NPTOBridgeAlbumChooser *)self _noneAlbumName];
    v13 = [v11 textLabel];
    [v13 setText:v12];

    if ([v9 isEqualToString:NPTOPreferencesSyncedAlbumIdentifierNone])
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

    [v11 setAccessoryType:v14];
  }

  else
  {
    v15 = [v7 section];
    v16 = [(NPTOBridgeAlbumChooser *)self albumsSections];
    if (v15 < v16 || v15 - v16 >= v17)
    {
      v27.receiver = self;
      v27.super_class = NPTOBridgeAlbumChooser;
      v11 = [(NPTOBridgeAlbumChooser *)&v27 tableView:v6 cellForRowAtIndexPath:v7];
    }

    else
    {
      v28.receiver = self;
      v28.super_class = NPTOBridgeAlbumChooser;
      v11 = [(NPTOBridgeAlbumChooser *)&v28 tableView:v6 cellForRowAtIndexPath:v7];
      v18 = [(NPTOBridgeAlbumChooser *)self collectionAtIndexPath:v7];
      v19 = [v18 localIdentifier];
      if ([v19 isEqualToString:v9])
      {
        v20 = 3;
      }

      else
      {
        v20 = 0;
      }

      [v11 setAccessoryType:v20];

      v21 = BPSForegroundColor();
      [v11 setBackgroundColor:v21];

      [v11 setSelectionStyle:3];
      v22 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v23 = BPSCellHightlightColor();
      [v22 setBackgroundColor:v23];

      [v11 setSelectedBackgroundView:v22];
      v24 = [(NPTOBridgeAlbumChooser *)self spec];
      [v24 stackSize];
      [v11 setSeparatorInset:{0.0, v25 + 16.0 + 8.0, 0.0, 0.0}];
    }
  }

  return v11;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if ([(NPTOBridgeAlbumChooser *)self topPlaceholdersSection]== a4)
  {
    v7 = &dword_0 + 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NPTOBridgeAlbumChooser;
    v7 = [(NPTOBridgeAlbumChooser *)&v9 tableView:v6 numberOfRowsInSection:a4];
  }

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == [(NPTOBridgeAlbumChooser *)self topPlaceholdersSection])
  {
    v9 = UITableViewAutomaticDimension;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NPTOBridgeAlbumChooser;
    [(NPTOBridgeAlbumChooser *)&v12 tableView:v6 heightForRowAtIndexPath:v7];
    v9 = v10;
  }

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [v6 cellForRowAtIndexPath:v7];
  [v8 setAccessoryType:3];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [v6 visibleCells];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if (v14 != v8)
        {
          [v14 setAccessoryType:0];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = [v7 section];
  if (v15 == [(NPTOBridgeAlbumChooser *)self topPlaceholdersSection])
  {
    v16 = [(NPTOBridgeAlbumChooser *)self _preferencesAccessor];
    [v16 setObject:NPTOPreferencesSyncedAlbumIdentifierNone forKey:NPTOPreferencesSyncedAlbumIdentifierKey];
LABEL_15:

    goto LABEL_16;
  }

  v17 = [v7 section];
  v18 = [(NPTOBridgeAlbumChooser *)self albumsSections];
  if (v17 >= v18 && v17 - v18 < v19)
  {
    v16 = [(NPTOBridgeAlbumChooser *)self collectionAtIndexPath:v7];
    v20 = [(NPTOBridgeAlbumChooser *)self _preferencesAccessor];
    v21 = [v16 localIdentifier];
    [v20 setObject:v21 forKey:NPTOPreferencesSyncedAlbumIdentifierKey];

    goto LABEL_15;
  }

LABEL_16:
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if ([(NPTOBridgeAlbumChooser *)self topPlaceholdersSection]!= a4)
  {
    return UITableViewAutomaticDimension;
  }

  v5 = [(NPTOBridgeAlbumChooser *)self spec];
  [v5 sectionHeaderHeight];
  v7 = v6;

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(NPTOBridgeAlbumChooser *)self albumsSection]== a4)
  {
    v5 = [(NPTOBridgeAlbumChooser *)self _albumsSectionTitle];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_preferencesAccessor
{
  preferencesAccessor = self->_preferencesAccessor;
  if (!preferencesAccessor)
  {
    v4 = [NPTOPreferencesAccessor alloc];
    v5 = [(NPTOBridgeAlbumChooser *)self _device];
    v6 = [v4 initWithDevice:v5];
    v7 = self->_preferencesAccessor;
    self->_preferencesAccessor = v6;

    preferencesAccessor = self->_preferencesAccessor;
  }

  return preferencesAccessor;
}

- (id)_device
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  return v5;
}

- (id)_title
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ALBUM_SPECIFIER_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];

  return v3;
}

- (id)_noneAlbumName
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ALBUM_NONE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];

  return v3;
}

- (id)_albumsSectionTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ALBUM_ALBUMS_SECTION_TITLE" value:&stru_C578 table:@"NanoPhotosBridgeSettings"];

  return v3;
}

- (BOOL)_isTinkerPaired
{
  v2 = [(NPTOBridgeAlbumChooser *)self _device];
  v3 = [v2 valueForProperty:NRDevicePropertyIsAltAccount];
  v4 = [v3 BOOLValue];

  return v4;
}

@end
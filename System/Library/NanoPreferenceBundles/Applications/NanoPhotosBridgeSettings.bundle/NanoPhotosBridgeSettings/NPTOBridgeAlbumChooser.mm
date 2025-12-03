@interface NPTOBridgeAlbumChooser
- (BOOL)_isTinkerPaired;
- (NPTOBridgeAlbumChooser)init;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_albumsSectionTitle;
- (id)_device;
- (id)_noneAlbumName;
- (id)_preferencesAccessor;
- (id)_title;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_reloadData;
- (void)_syncedAlbumIdentifierPreferenceChanged;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)change;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
    _title = [(NPTOBridgeAlbumChooser *)v4 _title];
    [(NPTOBridgeAlbumChooser *)v4 setTitle:_title];
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
  view = [(NPTOBridgeAlbumChooser *)self view];
  [view setTintColor:v3];

  _mainTableView = [(NPTOBridgeAlbumChooser *)self _mainTableView];
  [_mainTableView setSeparatorStyle:1];

  [(NPTOBridgeAlbumChooser *)self _reloadData];
}

- (void)_reloadData
{
  v3 = +[NSMutableArray array];
  v4 = [PHAssetCollection fetchAssetCollectionsWithType:2 subtype:203 options:0];
  if ([v4 count])
  {
    firstObject = [v4 firstObject];
    [v3 addObject:firstObject];
  }

  if ([(NPTOBridgeAlbumChooser *)self _allowsRecentAlbumSelection])
  {
    v6 = [PHAssetCollection fetchAssetCollectionsWithType:2 subtype:209 options:0];
    if ([v6 count])
    {
      firstObject2 = [v6 firstObject];
      [v3 addObject:firstObject2];
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
  _mainTableView = [(NPTOBridgeAlbumChooser *)self _mainTableView];
  _preferencesAccessor = [(NPTOBridgeAlbumChooser *)self _preferencesAccessor];
  npto_syncedAlbumIdentifier = [_preferencesAccessor npto_syncedAlbumIdentifier];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [_mainTableView indexPathsForVisibleRows];
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
        section = [v10 section];
        if (section == [(NPTOBridgeAlbumChooser *)self topPlaceholdersSection])
        {
          v12 = [NSIndexPath indexPathForRow:0 inSection:[(NPTOBridgeAlbumChooser *)self topPlaceholdersSection]];
          v13 = [_mainTableView cellForRowAtIndexPath:v12];

          if ([npto_syncedAlbumIdentifier isEqualToString:v23])
          {
            v14 = 3;
          }

          else
          {
            v14 = 0;
          }

          [v13 setAccessoryType:v14];
        }

        section2 = [v10 section];
        albumsSections = [(NPTOBridgeAlbumChooser *)self albumsSections];
        if (section2 >= albumsSections && section2 - albumsSections < v17)
        {
          v19 = [(NPTOBridgeAlbumChooser *)self collectionAtIndexPath:v10];
          v20 = [_mainTableView cellForRowAtIndexPath:v10];
          localIdentifier = [v19 localIdentifier];
          if ([localIdentifier isEqualToString:npto_syncedAlbumIdentifier])
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

- (void)photoLibraryDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4978;
  block[3] = &unk_C538;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  _preferencesAccessor = [(NPTOBridgeAlbumChooser *)self _preferencesAccessor];
  npto_syncedAlbumIdentifier = [_preferencesAccessor npto_syncedAlbumIdentifier];

  section = [pathCopy section];
  if (section == [(NPTOBridgeAlbumChooser *)self topPlaceholdersSection])
  {
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"NoAlbumCell"];
    if (!v11)
    {
      v11 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"NoAlbumCell"];
    }

    _noneAlbumName = [(NPTOBridgeAlbumChooser *)self _noneAlbumName];
    textLabel = [v11 textLabel];
    [textLabel setText:_noneAlbumName];

    if ([npto_syncedAlbumIdentifier isEqualToString:NPTOPreferencesSyncedAlbumIdentifierNone])
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
    section2 = [pathCopy section];
    albumsSections = [(NPTOBridgeAlbumChooser *)self albumsSections];
    if (section2 < albumsSections || section2 - albumsSections >= v17)
    {
      v27.receiver = self;
      v27.super_class = NPTOBridgeAlbumChooser;
      v11 = [(NPTOBridgeAlbumChooser *)&v27 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
    }

    else
    {
      v28.receiver = self;
      v28.super_class = NPTOBridgeAlbumChooser;
      v11 = [(NPTOBridgeAlbumChooser *)&v28 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
      v18 = [(NPTOBridgeAlbumChooser *)self collectionAtIndexPath:pathCopy];
      localIdentifier = [v18 localIdentifier];
      if ([localIdentifier isEqualToString:npto_syncedAlbumIdentifier])
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
      spec = [(NPTOBridgeAlbumChooser *)self spec];
      [spec stackSize];
      [v11 setSeparatorInset:{0.0, v25 + 16.0 + 8.0, 0.0, 0.0}];
    }
  }

  return v11;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if ([(NPTOBridgeAlbumChooser *)self topPlaceholdersSection]== section)
  {
    v7 = &dword_0 + 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NPTOBridgeAlbumChooser;
    v7 = [(NPTOBridgeAlbumChooser *)&v9 tableView:viewCopy numberOfRowsInSection:section];
  }

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(NPTOBridgeAlbumChooser *)self topPlaceholdersSection])
  {
    v9 = UITableViewAutomaticDimension;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NPTOBridgeAlbumChooser;
    [(NPTOBridgeAlbumChooser *)&v12 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    v9 = v10;
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  [v8 setAccessoryType:3];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  visibleCells = [viewCopy visibleCells];
  v10 = [visibleCells countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if (v14 != v8)
        {
          [v14 setAccessoryType:0];
        }
      }

      v11 = [visibleCells countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  section = [pathCopy section];
  if (section == [(NPTOBridgeAlbumChooser *)self topPlaceholdersSection])
  {
    _preferencesAccessor = [(NPTOBridgeAlbumChooser *)self _preferencesAccessor];
    [_preferencesAccessor setObject:NPTOPreferencesSyncedAlbumIdentifierNone forKey:NPTOPreferencesSyncedAlbumIdentifierKey];
LABEL_15:

    goto LABEL_16;
  }

  section2 = [pathCopy section];
  albumsSections = [(NPTOBridgeAlbumChooser *)self albumsSections];
  if (section2 >= albumsSections && section2 - albumsSections < v19)
  {
    _preferencesAccessor = [(NPTOBridgeAlbumChooser *)self collectionAtIndexPath:pathCopy];
    _preferencesAccessor2 = [(NPTOBridgeAlbumChooser *)self _preferencesAccessor];
    localIdentifier = [_preferencesAccessor localIdentifier];
    [_preferencesAccessor2 setObject:localIdentifier forKey:NPTOPreferencesSyncedAlbumIdentifierKey];

    goto LABEL_15;
  }

LABEL_16:
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if ([(NPTOBridgeAlbumChooser *)self topPlaceholdersSection]!= section)
  {
    return UITableViewAutomaticDimension;
  }

  spec = [(NPTOBridgeAlbumChooser *)self spec];
  [spec sectionHeaderHeight];
  v7 = v6;

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(NPTOBridgeAlbumChooser *)self albumsSection]== section)
  {
    _albumsSectionTitle = [(NPTOBridgeAlbumChooser *)self _albumsSectionTitle];
  }

  else
  {
    _albumsSectionTitle = 0;
  }

  return _albumsSectionTitle;
}

- (id)_preferencesAccessor
{
  preferencesAccessor = self->_preferencesAccessor;
  if (!preferencesAccessor)
  {
    v4 = [NPTOPreferencesAccessor alloc];
    _device = [(NPTOBridgeAlbumChooser *)self _device];
    v6 = [v4 initWithDevice:_device];
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
  firstObject = [v4 firstObject];

  return firstObject;
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
  _device = [(NPTOBridgeAlbumChooser *)self _device];
  v3 = [_device valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end
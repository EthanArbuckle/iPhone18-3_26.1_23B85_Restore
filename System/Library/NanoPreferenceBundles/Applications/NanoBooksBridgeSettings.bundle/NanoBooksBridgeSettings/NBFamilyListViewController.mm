@interface NBFamilyListViewController
- (NBFamilyListViewController)initWithDSIDs:(id)ds excludeStoreIDs:(id)iDs;
- (NBSelectAudiobookDelegate)delegate;
- (id)_specifierForJaliscoItem:(id)item;
- (id)specifiers;
- (void)_reloadData;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation NBFamilyListViewController

- (NBFamilyListViewController)initWithDSIDs:(id)ds excludeStoreIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v14.receiver = self;
  v14.super_class = NBFamilyListViewController;
  v8 = [(NBFamilyListViewController *)&v14 init];
  if (v8)
  {
    v9 = [dsCopy copy];
    dsids = v8->_dsids;
    v8->_dsids = v9;

    v11 = [iDsCopy copy];
    excludeStoreIDs = v8->_excludeStoreIDs;
    v8->_excludeStoreIDs = v11;
  }

  return v8;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NBFamilyListViewController;
  [(NBFamilyListViewController *)&v3 viewDidLoad];
  [(NBFamilyListViewController *)self _reloadData];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    audiobooks = [(NBFamilyListViewController *)self audiobooks];
    v7 = [audiobooks countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(audiobooks);
          }

          v11 = [(NBFamilyListViewController *)self _specifierForJaliscoItem:*(*(&v15 + 1) + 8 * v10)];
          [v5 addObject:v11];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [audiobooks countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
    v13 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v12;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)_reloadData
{
  v3 = +[NBBridgeUtilities isExplicitMaterialAllowed]^ 1;
  v4 = NBDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    dsids = [(NBFamilyListViewController *)self dsids];
    excludeStoreIDs = [(NBFamilyListViewController *)self excludeStoreIDs];
    v12 = 138412802;
    v13 = dsids;
    v14 = 2112;
    v15 = excludeStoreIDs;
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Fetching family audiobooks for (%@). Excluding storeIDs:(%@) isExplicitRestricted:(%i)", &v12, 0x1Cu);
  }

  v7 = +[BLJaliscoReadOnlyDAAPClient sharedClient];
  dsids2 = [(NBFamilyListViewController *)self dsids];
  allObjects = [dsids2 allObjects];
  excludeStoreIDs2 = [(NBFamilyListViewController *)self excludeStoreIDs];
  v11 = [v7 fetchItemsForDSIDs:allObjects excludeStoreIDs:excludeStoreIDs2 isExplicitRestricted:v3];
  [(NBFamilyListViewController *)self setAudiobooks:v11];

  [(NBFamilyListViewController *)self reloadSpecifiers];
}

- (id)_specifierForJaliscoItem:(id)item
{
  itemCopy = item;
  title = [itemCopy title];
  v6 = [PSSpecifier preferenceSpecifierNamed:title target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  title2 = [itemCopy title];
  [v6 setProperty:title2 forKey:NMBUISpecifierTitleKey];

  artist = [itemCopy artist];
  [v6 setProperty:artist forKey:NMBUISpecifierSubtitleKey];

  [v6 setProperty:&off_21AB0 forKey:PSTableCellStyleOverrideKey];
  artworkCatalog = [itemCopy artworkCatalog];
  [v6 setProperty:artworkCatalog forKey:NMBUISpecifierArtworkCatalogKey];

  v10 = +[NBBridgeUtilities audiobookArtworkPlaceholderImage];
  [v6 setProperty:v10 forKey:NMBUISpecifierPlaceholderImageKey];

  storeID = [itemCopy storeID];

  v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [storeID longLongValue]);

  delegate = [(NBFamilyListViewController *)self delegate];
  LODWORD(v10) = [delegate selectAudiobookAdamIdAlreadyPinned:v12];

  if (v10)
  {
    [v6 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  audiobooks = [(NBFamilyListViewController *)self audiobooks];
  v10 = [audiobooks count];

  if (v8 >= v10)
  {
    v15 = NBDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_12390(self, pathCopy, v15);
    }

    goto LABEL_9;
  }

  objc_opt_class();
  audiobooks2 = [(NBFamilyListViewController *)self audiobooks];
  v12 = [audiobooks2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  v13 = BUDynamicCast();

  if (!v13)
  {
    v15 = NBDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_12478(self, pathCopy, v15);
    }

    goto LABEL_9;
  }

  storeID = [v13 storeID];
  v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [storeID nb_uint64_t]);

  if (v15)
  {
    delegate = [(NBFamilyListViewController *)self delegate];
    [delegate selectAudiobookDidSelectAudiobookWithAdamId:v15];

LABEL_9:
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (NBSelectAudiobookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
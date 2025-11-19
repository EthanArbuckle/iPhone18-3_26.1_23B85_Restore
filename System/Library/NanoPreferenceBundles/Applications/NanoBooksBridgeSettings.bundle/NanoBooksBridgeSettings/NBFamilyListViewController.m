@interface NBFamilyListViewController
- (NBFamilyListViewController)initWithDSIDs:(id)a3 excludeStoreIDs:(id)a4;
- (NBSelectAudiobookDelegate)delegate;
- (id)_specifierForJaliscoItem:(id)a3;
- (id)specifiers;
- (void)_reloadData;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation NBFamilyListViewController

- (NBFamilyListViewController)initWithDSIDs:(id)a3 excludeStoreIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = NBFamilyListViewController;
  v8 = [(NBFamilyListViewController *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    dsids = v8->_dsids;
    v8->_dsids = v9;

    v11 = [v7 copy];
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
    v6 = [(NBFamilyListViewController *)self audiobooks];
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

          v11 = [(NBFamilyListViewController *)self _specifierForJaliscoItem:*(*(&v15 + 1) + 8 * v10)];
          [v5 addObject:v11];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v5 = [(NBFamilyListViewController *)self dsids];
    v6 = [(NBFamilyListViewController *)self excludeStoreIDs];
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Fetching family audiobooks for (%@). Excluding storeIDs:(%@) isExplicitRestricted:(%i)", &v12, 0x1Cu);
  }

  v7 = +[BLJaliscoReadOnlyDAAPClient sharedClient];
  v8 = [(NBFamilyListViewController *)self dsids];
  v9 = [v8 allObjects];
  v10 = [(NBFamilyListViewController *)self excludeStoreIDs];
  v11 = [v7 fetchItemsForDSIDs:v9 excludeStoreIDs:v10 isExplicitRestricted:v3];
  [(NBFamilyListViewController *)self setAudiobooks:v11];

  [(NBFamilyListViewController *)self reloadSpecifiers];
}

- (id)_specifierForJaliscoItem:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v7 = [v4 title];
  [v6 setProperty:v7 forKey:NMBUISpecifierTitleKey];

  v8 = [v4 artist];
  [v6 setProperty:v8 forKey:NMBUISpecifierSubtitleKey];

  [v6 setProperty:&off_21AB0 forKey:PSTableCellStyleOverrideKey];
  v9 = [v4 artworkCatalog];
  [v6 setProperty:v9 forKey:NMBUISpecifierArtworkCatalogKey];

  v10 = +[NBBridgeUtilities audiobookArtworkPlaceholderImage];
  [v6 setProperty:v10 forKey:NMBUISpecifierPlaceholderImageKey];

  v11 = [v4 storeID];

  v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v11 longLongValue]);

  v13 = [(NBFamilyListViewController *)self delegate];
  LODWORD(v10) = [v13 selectAudiobookAdamIdAlreadyPinned:v12];

  if (v10)
  {
    [v6 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = [(NBFamilyListViewController *)self audiobooks];
  v10 = [v9 count];

  if (v8 >= v10)
  {
    v15 = NBDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_12390(self, v7, v15);
    }

    goto LABEL_9;
  }

  objc_opt_class();
  v11 = [(NBFamilyListViewController *)self audiobooks];
  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  v13 = BUDynamicCast();

  if (!v13)
  {
    v15 = NBDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_12478(self, v7, v15);
    }

    goto LABEL_9;
  }

  v14 = [v13 storeID];
  v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v14 nb_uint64_t]);

  if (v15)
  {
    v16 = [(NBFamilyListViewController *)self delegate];
    [v16 selectAudiobookDidSelectAudiobookWithAdamId:v15];

LABEL_9:
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];
}

- (NBSelectAudiobookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface NBSearchResultsViewController
- (NBSearchResultsViewController)init;
- (NBSelectAudiobookDelegate)delegate;
- (id)_specifierForJaliscoItem:(id)a3;
- (id)_specifierForMediaItem:(id)a3;
- (id)specifiers;
- (void)searchForString:(id)a3;
- (void)setFamilyDSIDs:(id)a3;
- (void)setIncludeFamily:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation NBSearchResultsViewController

- (NBSearchResultsViewController)init
{
  v8.receiver = self;
  v8.super_class = NBSearchResultsViewController;
  v2 = [(NBSearchResultsViewController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    familyDSIDs = v2->_familyDSIDs;
    v2->_familyDSIDs = &__NSArray0__struct;

    v3->_includeFamily = 0;
    v5 = objc_alloc_init(NBSearchDataSource);
    searchDataSource = v3->_searchDataSource;
    v3->_searchDataSource = v5;
  }

  return v3;
}

- (void)setFamilyDSIDs:(id)a3
{
  v4 = [a3 copy];
  familyDSIDs = self->_familyDSIDs;
  self->_familyDSIDs = v4;

  if ([(NBSearchResultsViewController *)self includeFamily])
  {
    v6 = self->_familyDSIDs;
    v7 = [(NBSearchResultsViewController *)self searchDataSource];
    [v7 setFamilyDSIDs:v6];
  }
}

- (void)setIncludeFamily:(BOOL)a3
{
  self->_includeFamily = a3;
  if (a3)
  {
    familyDSIDs = self->_familyDSIDs;
  }

  else
  {
    familyDSIDs = &__NSArray0__struct;
  }

  v4 = [(NBSearchResultsViewController *)self searchDataSource];
  [v4 setFamilyDSIDs:familyDSIDs];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v17 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    [(NBSearchResultsViewController *)self searchResults];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v22 = 0u;
    v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = v5;
    v7 = *v20;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        v10 = BUDynamicCast();
        if (v10)
        {
          v11 = [(NBSearchResultsViewController *)self _specifierForMediaItem:v10];
          if (v11)
          {
            goto LABEL_9;
          }
        }

        else
        {
          objc_opt_class();
          v12 = BUDynamicCast();
          if (v12)
          {
            v11 = [(NBSearchResultsViewController *)self _specifierForJaliscoItem:v12];
          }

          else
          {
            v11 = 0;
          }

          if (v11)
          {
LABEL_9:
            [v4 addObject:v11];
            goto LABEL_17;
          }
        }

        v13 = NBDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v9;
          _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Attempted to format search result of invalid type (%@)", buf, 0xCu);
        }

LABEL_17:
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (!v6)
      {
LABEL_19:
        v14 = [v4 copy];
        v15 = *&self->PSListController_opaque[v17];
        *&self->PSListController_opaque[v17] = v14;

        v3 = *&self->PSListController_opaque[v17];
        break;
      }
    }
  }

  return v3;
}

- (void)searchForString:(id)a3
{
  v4 = a3;
  v5 = [(NBSearchResultsViewController *)self searchDataSource];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6B64;
  v6[3] = &unk_20A38;
  v6[4] = self;
  [v5 filterResultsUsingSearchString:v4 completion:v6];
}

- (id)_specifierForMediaItem:(id)a3
{
  v4 = a3;
  v5 = [v4 bk_effectiveTitle];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v7 = [v4 bk_effectiveTitle];
  [v6 setProperty:v7 forKey:NMBUISpecifierTitleKey];

  v8 = [v4 bk_effectiveAuthor];
  [v6 setProperty:v8 forKey:NMBUISpecifierSubtitleKey];

  [v6 setProperty:&off_21A68 forKey:PSTableCellStyleOverrideKey];
  v9 = [v4 artworkCatalog];
  [v6 setProperty:v9 forKey:NMBUISpecifierArtworkCatalogKey];

  v10 = +[NBBridgeUtilities audiobookArtworkPlaceholderImage];
  [v6 setProperty:v10 forKey:NMBUISpecifierPlaceholderImageKey];

  v11 = [v4 bk_storeID];

  v12 = [(NBSearchResultsViewController *)self delegate];
  LODWORD(v4) = [v12 selectAudiobookAdamIdAlreadyPinned:v11];

  if (v4)
  {
    [v6 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  return v6;
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

  [v6 setProperty:&off_21A68 forKey:PSTableCellStyleOverrideKey];
  v9 = [v4 artworkCatalog];
  [v6 setProperty:v9 forKey:NMBUISpecifierArtworkCatalogKey];

  v10 = +[NBBridgeUtilities audiobookArtworkPlaceholderImage];
  [v6 setProperty:v10 forKey:NMBUISpecifierPlaceholderImageKey];

  v11 = [v4 storeID];

  v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v11 longLongValue]);

  v13 = [(NBSearchResultsViewController *)self delegate];
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
  v9 = [(NBSearchResultsViewController *)self searchResults];
  v10 = [v9 count];

  if (v8 >= v10)
  {
    v16 = NBDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_119A8(self, v7);
    }

    goto LABEL_14;
  }

  v11 = [(NBSearchResultsViewController *)self searchDataSource];
  v12 = [v11 items];
  v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  objc_opt_class();
  v14 = BUDynamicCast();
  v15 = v14;
  if (v14)
  {
    v16 = [v14 bk_storeID];
  }

  else
  {
    objc_opt_class();
    v17 = BUDynamicCast();
    v18 = v17;
    if (v17)
    {
      v19 = [v17 storeID];
      v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v19 nb_uint64_t]);
    }

    else
    {
      v20 = NBDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_11A58(v13, v7);
      }

      v16 = 0;
    }
  }

  if (v16)
  {
    v21 = [(NBSearchResultsViewController *)self delegate];
    [v21 selectAudiobookDidSelectAudiobookWithAdamId:v16];

LABEL_14:
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];
}

- (NBSelectAudiobookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
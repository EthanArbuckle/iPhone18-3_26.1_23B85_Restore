@interface SafariFavoritesFolderPickerContoller
- (SafariFavoritesFolderPickerContoller)init;
- (id)specifiers;
- (void)_showBookmarksBeingSyncedAlert;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPathWithoutChangingDefaultFavorites:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation SafariFavoritesFolderPickerContoller

- (SafariFavoritesFolderPickerContoller)init
{
  v13.receiver = self;
  v13.super_class = SafariFavoritesFolderPickerContoller;
  v2 = [(SafariFavoritesFolderPickerContoller *)&v13 init];
  if (v2)
  {
    v3 = +[WebBookmarkCollection safariBookmarkCollection];
    bookmarkCollection = v2->_bookmarkCollection;
    v2->_bookmarkCollection = v3;

    v5 = objc_alloc_init(_SFFolderPickerTableViewCellLayoutManager);
    cellLayoutManager = v2->_cellLayoutManager;
    v2->_cellLayoutManager = v5;

    v7 = objc_alloc_init(WBSManagedBookmarksController);
    managedBookmarksController = v2->_managedBookmarksController;
    v2->_managedBookmarksController = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_webBookmarksDidReload:" name:WebBookmarksDidReloadNotification object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_managedBookmarksDidChange:" name:WBSManagedBookmarksDidChangeNotification object:0];

    v11 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SafariFavoritesFolderPickerContoller;
  [(SafariFavoritesFolderPickerContoller *)&v4 dealloc];
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = SafariSettingsLocalizedString(@"Start Page Favorites", @"Safari");
    [(SafariFavoritesFolderPickerContoller *)self setTitle:v6];

    v7 = objc_alloc_init(NSMutableArray);
    v8 = +[PSSpecifier emptyGroupSpecifier];
    v9 = SafariSettingsLocalizedString(@"Favorites Explanation Header", @"Safari");
    [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

    [v7 addObject:v8];
    v10 = +[PSSpecifier emptyGroupSpecifier];
    [v10 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v42 = v10;
    [v7 addObject:v10];
    v44 = [(WebBookmarkCollection *)self->_bookmarkCollection favoritesFolder];
    v11 = [[SFFolderPickerList alloc] initWithBookmarkCollection:self->_bookmarkCollection style:1];
    v12 = [v11 folderListItemsIgnoringIdentifiers:0];
    v39 = v2;
    v40 = self;
    v37 = v11;
    v38 = v8;
    if ([(SafariFavoritesFolderPickerContoller *)self shouldIncludeManagedBookmarksFolder]&& ([(WBSManagedBookmarksController *)self->_managedBookmarksController managedBookmarks], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      v14 = +[NSUserDefaults safari_browserDefaults];
      v15 = [v14 BOOLForKey:WBSFavoritesFolderIsTopLevelManagedBookmarksFolderKey];

      v36 = 1;
    }

    else
    {
      v15 = 0;
      v36 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v12;
    v16 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v46;
      v19 = PSIconImageKey;
      v41 = PSRadioGroupCheckedSpecifierKey;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          v21 = v7;
          if (*v46 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v45 + 1) + 8 * i);
          v23 = [v22 title];
          v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v25 = [UIImageSymbolConfiguration configurationWithScale:3];
          v26 = [UIImage systemImageNamed:@"folder" withConfiguration:v25];
          [v24 setProperty:v26 forKey:v19];

          [v24 setProperty:v22 forKey:@"FolderPickerItem"];
          LODWORD(v26) = [v44 identifier];
          v27 = [v22 bookmark];
          LODWORD(v26) = v26 != [v27 identifier];

          if (((v26 | v15) & 1) == 0)
          {
            [v42 setProperty:v24 forKey:v41];
          }

          v7 = v21;
          [v21 addObject:v24];
        }

        v17 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v17);
    }

    if (v36)
    {
      v28 = [(WBSManagedBookmarksController *)v40->_managedBookmarksController topLevelBookmarksFolderTitle];
      v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      v30 = [UIImage systemImageNamed:@"folder.badge.gearshape"];
      [v29 setProperty:v30 forKey:PSIconImageKey];

      [v29 setProperty:&__kCFBooleanTrue forKey:@"FolderIsManaged"];
      if (v15)
      {
        [v42 setProperty:v29 forKey:PSRadioGroupCheckedSpecifierKey];
      }

      v31 = [obj indexOfObjectPassingTest:&__block_literal_global_1];
      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = [v7 count];
      }

      else
      {
        v32 = v31 + 2;
      }

      [v7 insertObject:v29 atIndex:v32];
    }

    v33 = *&v40->super.PSListController_opaque[v39];
    *&v40->super.PSListController_opaque[v39] = v7;
    v34 = v7;

    v4 = *&v40->super.PSListController_opaque[v39];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v9 = a4;
  v7 = [(SafariFavoritesFolderPickerContoller *)self specifierAtIndex:[(SafariFavoritesFolderPickerContoller *)self indexForIndexPath:a5]];
  v8 = [v7 propertyForKey:@"FolderPickerItem"];
  if (v8)
  {
    [v9 setLayoutManager:self->_cellLayoutManager];
    +[_SFFolderPickerTableViewCellLayoutManager indentationWidth];
    [v9 setIndentationWidth:?];
    [v9 setIndentationLevel:{objc_msgSend(v8, "depth")}];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v23.receiver = self;
  v23.super_class = SafariFavoritesFolderPickerContoller;
  v6 = a4;
  [(SafariSettingsListController *)&v23 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(SafariFavoritesFolderPickerContoller *)self indexForIndexPath:v6, v23.receiver, v23.super_class];

  v8 = [(SafariFavoritesFolderPickerContoller *)self specifierAtIndex:v7];
  v9 = +[NSUserDefaults safari_browserDefaults];
  v10 = WBSFavoritesFolderIsTopLevelManagedBookmarksFolderKey;
  v11 = [v9 BOOLForKey:WBSFavoritesFolderIsTopLevelManagedBookmarksFolderKey];

  v12 = [v8 propertyForKey:@"FolderIsManaged"];

  v13 = +[NSUserDefaults safari_browserDefaults];
  v14 = v13;
  if (!v12)
  {
    [v13 setBool:0 forKey:v10];

    v15 = [v8 propertyForKey:@"FolderPickerItem"];
    if (v15)
    {
      v17 = +[WBFeatureManager sharedFeatureManager];
      v18 = [v17 favoritesFolderSelectionShouldSync];

      if (v18 && (+[WebBookmarkCollection lockSync]& 1) == 0)
      {
        [(SafariFavoritesFolderPickerContoller *)self reloadSpecifiers];
        [(SafariFavoritesFolderPickerContoller *)self _showBookmarksBeingSyncedAlert];
      }

      else
      {
        bookmarkCollection = self->_bookmarkCollection;
        v20 = [v15 bookmark];
        [(WebBookmarkCollection *)bookmarkCollection setFavoritesFolder:v20 localOnly:v18 ^ 1];

        if (v11)
        {
          v21 = +[NSDistributedNotificationCenter defaultCenter];
          v22 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:v10];
          [v21 postNotificationName:v22 object:0];
        }

        if (v18)
        {
          [(WebBookmarkCollection *)self->_bookmarkCollection _postBookmarksChangedSyncNotification];
          +[WebBookmarkCollection unlockSync];
        }
      }
    }

    goto LABEL_12;
  }

  [v13 setBool:1 forKey:v10];

  if ((v11 & 1) == 0)
  {
    v15 = +[NSDistributedNotificationCenter defaultCenter];
    v16 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:v10];
    [v15 postNotificationName:v16 object:0];

LABEL_12:
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPathWithoutChangingDefaultFavorites:(id)a4
{
  v4.receiver = self;
  v4.super_class = SafariFavoritesFolderPickerContoller;
  [(SafariSettingsListController *)&v4 tableView:a3 didSelectRowAtIndexPath:a4];
}

- (void)_showBookmarksBeingSyncedAlert
{
  v3 = [PSConfirmationSpecifier preferenceSpecifierNamed:&stru_8BB60 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  v8[0] = PSConfirmationTitleKey;
  v4 = SafariSettingsLocalizedString(@"Favorites", @"Safari");
  v9[0] = v4;
  v8[1] = PSConfirmationPromptKey;
  v5 = SafariSettingsLocalizedString(@"Bookmarks are being synced", @"Safari");
  v9[1] = v5;
  v8[2] = PSConfirmationOKKey;
  v6 = SafariSettingsLocalizedString(@"OK", @"Safari");
  v9[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v3 setupWithDictionary:v7];

  [(SafariFavoritesFolderPickerContoller *)self showConfirmationViewForSpecifier:v3 useAlert:1];
}

@end
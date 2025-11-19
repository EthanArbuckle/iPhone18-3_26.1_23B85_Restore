@interface SafariProfileFavoritesFolderPickerController
- (id)specifiers;
- (void)_selectNewFolder:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SafariProfileFavoritesFolderPickerController

- (id)specifiers
{
  if (self->_isCreatingNewProfile)
  {
    v3 = [UIBarButtonItem alloc];
    v4 = SafariSettingsLocalizedString(@"Titlebar Button Name for Creating New Folder", @"Profiles");
    v5 = [v3 initWithTitle:v4 style:0 target:self action:"_selectNewFolder:"];
    v6 = [(SafariProfileFavoritesFolderPickerController *)self navigationItem];
    [v6 setRightBarButtonItem:v5];
  }

  v31.receiver = self;
  v31.super_class = SafariProfileFavoritesFolderPickerController;
  v7 = [(SafariFavoritesFolderPickerContoller *)&v31 specifiers];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v24 = [WeakRetained currentFavoritesFolderServerID];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v28;
    v14 = PSIsRadioGroupKey;
    v25 = PSRadioGroupCheckedSpecifierKey;
    v23 = v9;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 propertyForKey:{@"FolderPickerItem", v23}];
        v18 = [v16 propertyForKey:v14];

        if (v18)
        {
          v19 = v16;

          [v19 removePropertyForKey:v25];
          v12 = v19;
        }

        else
        {
          v20 = [v17 bookmark];
          v21 = [v20 serverID];
          v26 = [v21 isEqualToString:v24];

          if (v26)
          {
            [v12 setProperty:v16 forKey:v25];

            v9 = v23;
            goto LABEL_17;
          }

          v9 = v23;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_17:

  return v9;
}

- (void)setSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = SafariProfileFavoritesFolderPickerController;
  v4 = a3;
  [(SafariProfileFavoritesFolderPickerController *)&v9 setSpecifier:v4];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"delegate"];
  objc_storeWeak(&self->_delegate, v6);

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"isCreatingNewProfile"];
  self->_isCreatingNewProfile = [v8 BOOLValue];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v21.receiver = self;
  v21.super_class = SafariProfileFavoritesFolderPickerController;
  v6 = a4;
  [(SafariFavoritesFolderPickerContoller *)&v21 tableView:a3 didSelectRowAtIndexPathWithoutChangingDefaultFavorites:v6];
  v7 = [(SafariProfileFavoritesFolderPickerController *)self indexForIndexPath:v6, v21.receiver, v21.super_class];

  v8 = [(SafariProfileFavoritesFolderPickerController *)self specifierAtIndex:v7];
  v9 = [v8 propertyForKey:@"FolderPickerItem"];
  v10 = [v9 bookmark];
  v11 = [v10 serverID];

  if (!v11)
  {
    if (!+[WebBookmarkCollection lockSync])
    {
      [(SafariProfileFavoritesFolderPickerController *)self reloadSpecifiers];
      [(SafariFavoritesFolderPickerContoller *)self _showBookmarksBeingSyncedAlert];
      goto LABEL_5;
    }

    v12 = +[WebBookmarkCollection safariBookmarkCollection];
    v13 = +[NSUUID UUID];
    v14 = [v13 UUIDString];
    v15 = [v9 bookmark];
    [v12 setServerID:v14 forBookmark:v15];

    +[WebBookmarkCollection unlockSync];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = [v9 bookmark];
  v18 = [v17 serverID];
  [WeakRetained profileFavoritesFolderPickerController:self didSelectFolderWithServerID:v18];

  v19 = [(SafariProfileFavoritesFolderPickerController *)self navigationController];
  v20 = [v19 popViewControllerAnimated:1];

LABEL_5:
}

- (void)_selectNewFolder:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSelectNewFolderInProfileFavoritesFolderPickerController:self];

  v6 = [(SafariProfileFavoritesFolderPickerController *)self navigationController];
  v5 = [v6 popViewControllerAnimated:1];
}

@end
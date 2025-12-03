@interface SafariProfileFavoritesFolderPickerController
- (id)specifiers;
- (void)_selectNewFolder:(id)folder;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SafariProfileFavoritesFolderPickerController

- (id)specifiers
{
  if (self->_isCreatingNewProfile)
  {
    v3 = [UIBarButtonItem alloc];
    v4 = SafariSettingsLocalizedString(@"Titlebar Button Name for Creating New Folder", @"Profiles");
    v5 = [v3 initWithTitle:v4 style:0 target:self action:"_selectNewFolder:"];
    navigationItem = [(SafariProfileFavoritesFolderPickerController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v5];
  }

  v31.receiver = self;
  v31.super_class = SafariProfileFavoritesFolderPickerController;
  specifiers = [(SafariFavoritesFolderPickerContoller *)&v31 specifiers];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  currentFavoritesFolderServerID = [WeakRetained currentFavoritesFolderServerID];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = specifiers;
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
          bookmark = [v17 bookmark];
          serverID = [bookmark serverID];
          v26 = [serverID isEqualToString:currentFavoritesFolderServerID];

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

- (void)setSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = SafariProfileFavoritesFolderPickerController;
  specifierCopy = specifier;
  [(SafariProfileFavoritesFolderPickerController *)&v9 setSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"delegate"];
  objc_storeWeak(&self->_delegate, v6);

  userInfo2 = [specifierCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:@"isCreatingNewProfile"];
  self->_isCreatingNewProfile = [v8 BOOLValue];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v21.receiver = self;
  v21.super_class = SafariProfileFavoritesFolderPickerController;
  pathCopy = path;
  [(SafariFavoritesFolderPickerContoller *)&v21 tableView:view didSelectRowAtIndexPathWithoutChangingDefaultFavorites:pathCopy];
  v7 = [(SafariProfileFavoritesFolderPickerController *)self indexForIndexPath:pathCopy, v21.receiver, v21.super_class];

  v8 = [(SafariProfileFavoritesFolderPickerController *)self specifierAtIndex:v7];
  v9 = [v8 propertyForKey:@"FolderPickerItem"];
  bookmark = [v9 bookmark];
  serverID = [bookmark serverID];

  if (!serverID)
  {
    if (!+[WebBookmarkCollection lockSync])
    {
      [(SafariProfileFavoritesFolderPickerController *)self reloadSpecifiers];
      [(SafariFavoritesFolderPickerContoller *)self _showBookmarksBeingSyncedAlert];
      goto LABEL_5;
    }

    v12 = +[WebBookmarkCollection safariBookmarkCollection];
    v13 = +[NSUUID UUID];
    uUIDString = [v13 UUIDString];
    bookmark2 = [v9 bookmark];
    [v12 setServerID:uUIDString forBookmark:bookmark2];

    +[WebBookmarkCollection unlockSync];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  bookmark3 = [v9 bookmark];
  serverID2 = [bookmark3 serverID];
  [WeakRetained profileFavoritesFolderPickerController:self didSelectFolderWithServerID:serverID2];

  navigationController = [(SafariProfileFavoritesFolderPickerController *)self navigationController];
  v20 = [navigationController popViewControllerAnimated:1];

LABEL_5:
}

- (void)_selectNewFolder:(id)folder
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSelectNewFolderInProfileFavoritesFolderPickerController:self];

  navigationController = [(SafariProfileFavoritesFolderPickerController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];
}

@end
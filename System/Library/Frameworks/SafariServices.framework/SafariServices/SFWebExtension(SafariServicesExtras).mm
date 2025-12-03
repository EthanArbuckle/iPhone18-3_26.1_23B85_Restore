@interface SFWebExtension(SafariServicesExtras)
- (void)_loadToolbarItem;
- (void)_unloadToolbarItem;
- (void)_validateToolbarItemInAllWindows;
@end

@implementation SFWebExtension(SafariServicesExtras)

- (void)_loadToolbarItem
{
  v2 = [[SFWebExtensionPageMenuController alloc] initWithExtension:self];
  [self setToolbarItem:v2];
}

- (void)_unloadToolbarItem
{
  toolbarItem = [self toolbarItem];
  [toolbarItem dismissPopupImmediatelyIfNecessary];
}

- (void)_validateToolbarItemInAllWindows
{
  v13 = *MEMORY[0x1E69E9840];
  [self showOrHidePermissionRequestBannerIfNeeded];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  extensionsController = [self extensionsController];
  v3 = [extensionsController _allWindowsForWebExtension:self];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) validateToolbarItemForExtension:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end
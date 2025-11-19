@interface SFWebExtension(SafariServicesExtras)
- (void)_loadToolbarItem;
- (void)_unloadToolbarItem;
- (void)_validateToolbarItemInAllWindows;
@end

@implementation SFWebExtension(SafariServicesExtras)

- (void)_loadToolbarItem
{
  v2 = [[SFWebExtensionPageMenuController alloc] initWithExtension:a1];
  [a1 setToolbarItem:v2];
}

- (void)_unloadToolbarItem
{
  v1 = [a1 toolbarItem];
  [v1 dismissPopupImmediatelyIfNecessary];
}

- (void)_validateToolbarItemInAllWindows
{
  v13 = *MEMORY[0x1E69E9840];
  [a1 showOrHidePermissionRequestBannerIfNeeded];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [a1 extensionsController];
  v3 = [v2 _allWindowsForWebExtension:a1];

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

        [*(*(&v8 + 1) + 8 * v7++) validateToolbarItemForExtension:a1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end
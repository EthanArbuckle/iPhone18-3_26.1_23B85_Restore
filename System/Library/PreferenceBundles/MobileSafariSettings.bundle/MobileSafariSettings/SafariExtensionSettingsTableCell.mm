@interface SafariExtensionSettingsTableCell
- (id)_settingsMenuForExtension:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SafariExtensionSettingsTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SafariExtensionSettingsTableCell;
  [(SafariExtensionSettingsTableCell *)&v21 refreshCellContentsWithSpecifier:v4];
  v5 = [(SafariExtensionSettingsTableCell *)self contentView];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 subviews];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v17 + 1) + 8 * v10) removeFromSuperview];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  v11 = [v4 userInfo];
  v12 = +[UIButtonConfiguration plainButtonConfiguration];
  v13 = +[UIColor clearColor];
  v14 = [v12 background];
  [v14 setBackgroundColor:v13];

  [v12 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
  v15 = [UIButton buttonWithConfiguration:v12 primaryAction:0];
  v16 = [(SafariExtensionSettingsTableCell *)self _settingsMenuForExtension:v11];
  [v15 setMenu:v16];

  [v15 setShowsMenuAsPrimaryAction:1];
  [v5 bounds];
  [v15 setFrame:?];
  [v15 setAutoresizingMask:18];
  [v5 addSubview:v15];
}

- (id)_settingsMenuForExtension:(id)a3
{
  v3 = a3;
  v4 = +[SafariSettingsController tabGroupManager];
  v5 = [v4 profiles];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __62__SafariExtensionSettingsTableCell__settingsMenuForExtension___block_invoke;
  v10[3] = &unk_8AEF8;
  v11 = v3;
  v6 = v3;
  v7 = [v5 safari_mapAndFilterObjectsUsingBlock:v10];

  v8 = [UIMenu menuWithTitle:&stru_8BB60 children:v7];

  return v8;
}

id __62__SafariExtensionSettingsTableCell__settingsMenuForExtension___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SafariSettingsController extensionsProfilesDataSource];
  v5 = [v4 profileServerIDToWebExtensionsControllers];
  v6 = [v3 identifierForExtensions];
  v7 = [v5 objectForKeyedSubscript:v6];

  if ([v7 extensionIsEnabled:*(a1 + 32)])
  {
    v8 = [v3 title];
    v9 = [v3 symbolImage];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = __62__SafariExtensionSettingsTableCell__settingsMenuForExtension___block_invoke_2;
    v15 = &unk_8A9C8;
    v16 = *(a1 + 32);
    v17 = v3;
    v10 = [UIAction actionWithTitle:v8 image:v9 identifier:0 handler:&v12];

    [v10 setState:{0, v12, v13, v14, v15}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __62__SafariExtensionSettingsTableCell__settingsMenuForExtension___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) identifier];
  openExtensionSettingsInMobileSafariForExtension(v1, v2);
}

@end
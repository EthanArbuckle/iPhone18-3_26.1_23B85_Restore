@interface AUBrowserListItemsController
- (id)_downloadsFolderTitle;
- (id)specifiers;
- (void)_updateDownloadsFolderTitle;
@end

@implementation AUBrowserListItemsController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v18.receiver = self;
    v18.super_class = AUBrowserListItemsController;
    specifiers = [(PSListItemsController *)&v18 specifiers];
    v6 = [specifiers mutableCopy];

    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DOWNLOADS_GROUP"];
    [v6 addObject:v7];

    v8 = MEMORY[0x277CCA8D8];
    v9 = PSBundlePathForPreferenceBundle();
    v10 = [v8 bundleWithPath:v9];
    [v10 load];

    v11 = MEMORY[0x277D3FAD8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"Downloads" value:&stru_282D7C630 table:0];
    v14 = [v11 preferenceSpecifierNamed:v13 target:self set:0 get:sel__downloadsFolderTitle detail:NSClassFromString(&cfstr_Safaridownload.isa) cell:2 edit:0];

    [v14 setIdentifier:@"DOWNLOADS"];
    [v6 addObject:v14];
    v15 = [v6 copy];
    v16 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v15;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_downloadsFolderTitle
{
  if (self->_defaultDownloadsFolderTitle)
  {
    return self->_defaultDownloadsFolderTitle;
  }

  else
  {
    return &stru_282D7C630;
  }
}

- (void)_updateDownloadsFolderTitle
{
  downloadSettings = self->_downloadSettings;
  if (!downloadSettings)
  {
    v4 = objc_alloc_init(MEMORY[0x277D061F0]);
    v5 = self->_downloadSettings;
    self->_downloadSettings = v4;

    downloadSettings = self->_downloadSettings;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__AUBrowserListItemsController__updateDownloadsFolderTitle__block_invoke;
  v6[3] = &unk_2782EF720;
  v6[4] = self;
  [(DOCDownloadSettings *)downloadSettings fetchDefaultDownloadsLocationItem:v6];
}

void __59__AUBrowserListItemsController__updateDownloadsFolderTitle__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 providerDomainID], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v7 = _AULoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__AUBrowserListItemsController__updateDownloadsFolderTitle__block_invoke_cold_2(v6, v7);
    }
  }

  else
  {
    v12 = 0;
    v7 = [MEMORY[0x277CC6420] providerDomainForItem:v5 error:&v12];
    v6 = v12;
    if (v6)
    {
      v9 = _AULoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __59__AUBrowserListItemsController__updateDownloadsFolderTitle__block_invoke_cold_1(v6, v9);
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__AUBrowserListItemsController__updateDownloadsFolderTitle__block_invoke_23;
      block[3] = &unk_2782EF6F8;
      block[4] = *(a1 + 32);
      v7 = v7;
      v11 = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

uint64_t __59__AUBrowserListItemsController__updateDownloadsFolderTitle__block_invoke_23(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = DOCLocalizedDisplayName();
  v4 = *(a1 + 32);
  v5 = *(v4 + 1496);
  *(v4 + 1496) = v3;

  v6 = *(a1 + 32);

  return [v6 reloadSpecifierID:@"DOWNLOADS" animated:1];
}

void __59__AUBrowserListItemsController__updateDownloadsFolderTitle__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_21BAF4000, a2, OS_LOG_TYPE_ERROR, "Failed to determine provider domain for downloads folder: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __59__AUBrowserListItemsController__updateDownloadsFolderTitle__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_21BAF4000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch default downloads location item: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
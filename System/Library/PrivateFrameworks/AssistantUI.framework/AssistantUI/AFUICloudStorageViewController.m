@interface AFUICloudStorageViewController
- (id)specifiers;
- (void)confirmDisable;
- (void)confirmDisableForMultiUserVoiceIdentification;
- (void)didReceiveMemoryWarning;
- (void)handleDisableAndDeleteButtonPress;
- (void)viewDidLoad;
@end

@implementation AFUICloudStorageViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AFUICloudStorageViewController;
  [(AFUICloudStorageViewController *)&v5 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277CEF3A8]);
  settings = self->_settings;
  self->_settings = v3;
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = AFUICloudStorageViewController;
  [(AFUICloudStorageViewController *)&v2 didReceiveMemoryWarning];
}

- (id)specifiers
{
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v7 = getSTStorageAppHeaderCellClass_softClass;
    v22 = getSTStorageAppHeaderCellClass_softClass;
    if (!getSTStorageAppHeaderCellClass_softClass)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __getSTStorageAppHeaderCellClass_block_invoke;
      v18[3] = &unk_278CD54F0;
      v18[4] = &v19;
      __getSTStorageAppHeaderCellClass_block_invoke(v18);
      v7 = v20[3];
    }

    v8 = v7;
    _Block_object_dispose(&v19, 8);
    v9 = [v7 specifierForAppIdentifier:@"com.apple.siri"];
    [v9 setVersionLabelEnabled:0];
    [v6 addObject:v9];
    v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DISABLE_AND_DELETE"];
    v11 = _LocStr(@"DISABLE_AND_DELETE_FOOTER");
    [v10 setProperty:v11 forKey:*MEMORY[0x277D3FF88]];

    [v6 addObject:v10];
    v12 = MEMORY[0x277D3FAD8];
    v13 = _LocStr(@"DISABLE_AND_DELETE");
    v14 = [v12 deleteButtonSpecifierWithName:v13 target:self action:sel_handleDisableAndDeleteButtonPress];
    [v6 addObject:v14];

    v15 = *(&self->super.super.super.super.super.isa + v2);
    *(&self->super.super.super.super.super.isa + v2) = v6;
    v16 = v6;

    v4 = *(&self->super.super.super.super.super.isa + v2);
  }

  return v4;
}

- (void)handleDisableAndDeleteButtonPress
{
  objc_initWeak(&location, self);
  settings = self->_settings;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__AFUICloudStorageViewController_handleDisableAndDeleteButtonPress__block_invoke;
  v4[3] = &unk_278CD55C8;
  objc_copyWeak(&v5, &location);
  [(AFSettingsConnection *)settings fetchMultiUserVoiceIdentificationSetting:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __67__AFUICloudStorageViewController_handleDisableAndDeleteButtonPress__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __67__AFUICloudStorageViewController_handleDisableAndDeleteButtonPress__block_invoke_2;
  v2[3] = &unk_278CD5708;
  v4 = a2;
  objc_copyWeak(&v3, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
}

void __67__AFUICloudStorageViewController_handleDisableAndDeleteButtonPress__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (v1 == 1)
  {
    [WeakRetained confirmDisableForMultiUserVoiceIdentification];
  }

  else
  {
    [WeakRetained confirmDisable];
  }
}

- (void)confirmDisableForMultiUserVoiceIdentification
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D3F9C8]);
  v8[0] = *MEMORY[0x277D3FE98];
  v4 = _LocStr(@"DISABLE_AND_DELETE_PROMPT_TITLE_MULTI_USER");
  v9[0] = v4;
  v8[1] = *MEMORY[0x277D3FE90];
  v5 = _LocStr(@"DISABLE_AND_DELETE_PROMPT_MULTI_USER");
  v9[1] = v5;
  v8[2] = *MEMORY[0x277D3FE78];
  v6 = _LocStr(@"DISABLE_AND_DELETE_PROMPT_CANCEL_MULTI_USER");
  v9[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v3 setupWithDictionary:v7];

  [v3 setTarget:self];
  [v3 setConfirmationAction:sel_confirmDisable];
  [(AFUICloudStorageViewController *)self showConfirmationViewForSpecifier:v3];
}

- (void)confirmDisable
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D3F9C8]);
  v9[0] = *MEMORY[0x277D3FE98];
  v4 = _LocStr(@"DISABLE_AND_DELETE_PROMPT_TITLE");
  v10[0] = v4;
  v9[1] = *MEMORY[0x277D3FE90];
  v5 = _LocStr(@"DISABLE_AND_DELETE_PROMPT");
  v10[1] = v5;
  v9[2] = *MEMORY[0x277D3FE88];
  v6 = _LocStr(@"DISABLE_AND_DELETE_PROMPT_OK");
  v10[2] = v6;
  v9[3] = *MEMORY[0x277D3FE78];
  v7 = _LocStr(@"DISABLE_AND_DELETE_PROMPT_CANCEL");
  v10[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
  [v3 setupWithDictionary:v8];

  [v3 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FE80]];
  [v3 setTarget:self];
  [v3 setConfirmationAction:sel__disableAndDeleteCloudSync];
  [(AFUICloudStorageViewController *)self showConfirmationViewForSpecifier:v3];
}

void __60__AFUICloudStorageViewController__disableAndDeleteCloudSync__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __60__AFUICloudStorageViewController__disableAndDeleteCloudSync__block_invoke_cold_1(v2, v3);
    }
  }
}

@end
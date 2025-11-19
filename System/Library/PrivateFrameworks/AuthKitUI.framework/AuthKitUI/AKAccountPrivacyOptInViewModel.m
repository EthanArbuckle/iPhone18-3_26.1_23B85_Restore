@interface AKAccountPrivacyOptInViewModel
- (AKAccountPrivacyOptInViewModel)initWithType:(unint64_t)a3;
@end

@implementation AKAccountPrivacyOptInViewModel

- (AKAccountPrivacyOptInViewModel)initWithType:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v20 = a3;
  v22 = 0;
  v19.receiver = self;
  v19.super_class = AKAccountPrivacyOptInViewModel;
  v17 = [(AKAccountPrivacyOptInViewModel *)&v19 init];
  v22 = v17;
  objc_storeStrong(&v22, v17);
  if (v17)
  {
    v22->_context = v20;
    location = _AKLogSystem();
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v23, v20);
      _os_log_debug_impl(&dword_222379000, location, OS_LOG_TYPE_DEBUG, "AKAccountPrivacyOptInViewModel initing with context=%ld", v23, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v13 localizedStringForKey:@"ACCOUNT_ACCESS_IMPROVEMENT_TITLE" value:? table:?];
    titleText = v22->_titleText;
    v22->_titleText = v3;
    MEMORY[0x277D82BD8](titleText);
    MEMORY[0x277D82BD8](v13);
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v14 localizedStringForKey:@"ACCOUNT_ACCESS_IMPROVEMENT_DESCRIPTION" value:&stru_28358EF68 table:@"Localizable"];
    detailedText = v22->_detailedText;
    v22->_detailedText = v5;
    MEMORY[0x277D82BD8](detailedText);
    MEMORY[0x277D82BD8](v14);
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v15 localizedStringForKey:@"ACCOUNT_ACCESS_IMPROVEMENT_PRIMARY_BUTTON_TITTLE" value:&stru_28358EF68 table:@"Localizable"];
    primaryButtonTitle = v22->_primaryButtonTitle;
    v22->_primaryButtonTitle = v7;
    MEMORY[0x277D82BD8](primaryButtonTitle);
    MEMORY[0x277D82BD8](v15);
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v16 localizedStringForKey:@"ACCOUNT_ACCESS_IMPROVEMENT_SECONDARY_BUTTON_TITTLE" value:&stru_28358EF68 table:@"Localizable"];
    secondaryButtonTitle = v22->_secondaryButtonTitle;
    v22->_secondaryButtonTitle = v9;
    MEMORY[0x277D82BD8](secondaryButtonTitle);
    MEMORY[0x277D82BD8](v16);
  }

  v12 = MEMORY[0x277D82BE0](v22);
  objc_storeStrong(&v22, 0);
  *MEMORY[0x277D85DE8];
  return v12;
}

@end
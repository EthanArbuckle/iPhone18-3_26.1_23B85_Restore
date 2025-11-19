@interface WiFiPasswordController
+ (id)generateDefaultPassword;
+ (void)generateDefaultPassword;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)wifiPassword:(id)a3;
- (void)doneButtonClicked:(id)a3;
- (void)textDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation WiFiPasswordController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = WiFiPasswordController;
  [(WiFiPasswordController *)&v8 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonClicked_];
  v4 = [(WiFiPasswordController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonClicked_];
  v6 = [(WiFiPasswordController *)self navigationItem];
  [v6 setLeftBarButtonItem:v5];

  v7 = WMSUIEventDictionary(@"view-ph-password", 0);
  WMSubmitUIEventMetric(v7);
}

- (void)viewDidAppear:(BOOL)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = WiFiPasswordController;
  [(WiFiPasswordController *)&v19 viewDidAppear:a3];
  v4 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
  v5 = [(WiFiPasswordController *)self indexPathForIndex:1];
  v6 = [v4 cellForRowAtIndexPath:v5];
  [v6 becomeFirstResponder];

  if (_os_feature_enabled_impl())
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PersonalHotspot"];
    v8 = objc_alloc(MEMORY[0x277CCAEB8]);
    v9 = [MEMORY[0x277CBEAF8] currentLocale];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 bundleURL];
    v12 = [v8 initWithKey:@"Wi-Fi Password" table:0 locale:v9 bundleURL:v11];

    v13 = objc_alloc(MEMORY[0x277CCAEB8]);
    v14 = [MEMORY[0x277CBEAF8] currentLocale];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 bundleURL];
    v17 = [v13 initWithKey:@"Personal Hotspot" table:0 locale:v14 bundleURL:v16];

    if (objc_opt_respondsToSelector())
    {
      v20[0] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      [(WiFiPasswordController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.personal-hotspot" title:v12 localizedNavigationComponents:v18 deepLink:v7];
    }
  }
}

+ (id)generateDefaultPassword
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVXYZ1234567890"];
  v10[0] = v2;
  v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"1234567890"];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v5 = [MEMORY[0x277CBEB38] dictionary];
  [v5 setObject:&unk_284EEFAF8 forKey:*MEMORY[0x277CDC480]];
  [v5 setObject:&unk_284EEFAF8 forKey:*MEMORY[0x277CDC478]];
  [v5 setObject:@"abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVXYZ1234567890" forKey:*MEMORY[0x277CDC468]];
  [v5 setObject:v4 forKey:*MEMORY[0x277CDC490]];
  [v5 setObject:&unk_284EEFB10 forKey:*MEMORY[0x277CDC470]];
  [v5 setObject:&unk_284EEFB10 forKey:*MEMORY[0x277CDC488]];
  [v5 setObject:@"-" forKey:*MEMORY[0x277CDC498]];
  v6 = v5;
  v7 = SecPasswordGenerate();
  if (!v7)
  {
    v8 = WMSLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[(WiFiPasswordController *)CFSTR(""unknown];
    }
  }

  return v7;
}

- (void)doneButtonClicked:(id)a3
{
  v4 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
  v5 = [(WiFiPasswordController *)self indexPathForIndex:1];
  v6 = [v4 cellForRowAtIndexPath:v5];
  v15 = [v6 editableTextField];

  if (v15)
  {
    v7 = [v15 text];
    if ([v7 length] < 8)
    {
LABEL_6:

      goto LABEL_7;
    }

    v8 = [v15 text];
    v9 = [v8 length];

    if (v9 <= 0x3F)
    {
      v10 = *MEMORY[0x277D3FD08];
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v10));
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v7 = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v10));
        v13 = [v15 text];
        [v7 _setWiFiPassword:v13];

        [v7 reloadSpecifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];
        v14 = WMSUIEventDictionary(@"edit-ph-password", 0);
        WMSubmitUIEventMetric(v14);

        goto LABEL_6;
      }
    }
  }

LABEL_7:
  [(UIViewController *)self wms_popViewControllerWithAnimated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = WiFiPasswordController;
  v5 = [(WiFiPasswordController *)&v9 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v5 tag] == 8)
  {
    v6 = [v5 editableTextField];
    v7 = v6;
    if (v6)
    {
      [v6 setTextContentType:*MEMORY[0x277D77030]];
      [v7 setReturnKeyType:9];
      [v7 setKeyboardType:1];
      [v7 setDisplaySecureTextUsingPlainText:1];
      [v7 setAutocapitalizationType:0];
      [v7 setAutocorrectionType:1];
      [v7 setClearButtonMode:3];
      [v7 addTarget:self action:sel_textDidChange_ forControlEvents:0x20000];
      [v7 setDelegate:self];
    }
  }

  return v5;
}

- (void)textDidChange:(id)a3
{
  v10 = a3;
  v4 = [v10 text];
  if ([v4 length] < 8)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v10 text];
    v6 = [v5 length] < 0x40;
  }

  v7 = [(WiFiPasswordController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:v6];

  v9 = [MEMORY[0x277D75658] activeKeyboard];
  [v9 setReturnKeyEnabled:v6];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v5 = a5;
  if ([v5 length])
  {
    v6 = [v5 dataUsingEncoding:1];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 bytes];
      if ([v7 length])
      {
        v9 = 0;
        do
        {
          v10 = *(v8 + v9) - 32;
          v11 = v10 < 0x5F;
          if (v10 >= 0x5F)
          {
            break;
          }

          ++v9;
        }

        while (v9 < [v7 length]);
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)wifiPassword:(id)a3
{
  v4 = *MEMORY[0x277D3FD08];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v4));
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v4));
    v8 = [v7 _wiFiPassword];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v26 = MGGetBoolAnswer();
    v5 = MEMORY[0x277D3FAD8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"PASSWORD" value:&stru_284EED640 table:@"WirelessModemSettings"];
    v28 = [v5 preferenceSpecifierNamed:v7 target:self set:sel_emptySetter_specifier_ get:sel_wifiPassword_ detail:0 cell:8 edit:0];

    v8 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"WIFI_PASSWORD_FOOTER" value:&stru_284EED640 table:@"WirelessModemSettings"];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    if (v26)
    {
      v14 = @"WIFI_CH";
    }

    else
    {
      v14 = @"WIFI";
    }

    v27 = v14;
    v15 = [v12 localizedStringForKey:? value:? table:?];
    v16 = [v9 stringWithFormat:v11, v15];
    [v8 setProperty:v16 forKey:*MEMORY[0x277D3FF88]];

    v17 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v8, v28, 0}];
    v18 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v17;

    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"WIFI_PASSWORD_TITLE" value:&stru_284EED640 table:@"WirelessModemSettings"];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:v27 value:&stru_284EED640 table:@"WirelessModemSettings"];
    v24 = [v19 stringWithFormat:v21, v23];
    [(WiFiPasswordController *)self setTitle:v24];

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

+ (void)generateDefaultPassword
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23C15F000, a2, OS_LOG_TYPE_ERROR, "Failed to generate default personal hotspot password! (%@)", &v2, 0xCu);
}

@end
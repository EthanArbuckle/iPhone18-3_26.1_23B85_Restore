@interface ICloudMailAccountController
+ (id)log;
- (BOOL)_hasCustomDomain;
- (BOOL)_hasIcloudMailConfigured;
- (BOOL)_mailDataclassChangeForSpecifier:(id)specifier;
- (id)_byodSpecifier;
- (id)_iCloudMailSettingSpecifiers;
- (id)_tobleroneMailSwitchSpecifier;
- (id)specifiers;
- (void)_iCloudMailSettingSpecifierTapped:(id)tapped;
- (void)dataclassSwitchStateDidChange:(id)change withSpecifier:(id)specifier;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)icloudMailCreationNeedsViewUpdate:(id)update withAccount:(id)account;
- (void)viewDidLoad;
@end

@implementation ICloudMailAccountController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6D06C;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6610 != -1)
  {
    dispatch_once(&qword_D6610, block);
  }

  v2 = qword_D6608;

  return v2;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = ICloudMailAccountController;
  [(ICloudMailAccountController *)&v2 viewDidLoad];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    userInfoDictionary = self->_userInfoDictionary;
    if (!userInfoDictionary)
    {
      userInfo = [*&self->ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
      v8 = self->_userInfoDictionary;
      self->_userInfoDictionary = userInfo;

      [(NSMutableDictionary *)self->_userInfoDictionary setValue:&__kCFBooleanTrue forKey:@"hideMailDataclass"];
      [(NSMutableDictionary *)self->_userInfoDictionary setValue:&__kCFBooleanTrue forKey:@"MailDetailViewWithBackKey"];
      userInfoDictionary = self->_userInfoDictionary;
    }

    v9 = [(NSMutableDictionary *)userInfoDictionary objectForKey:ACUIAccountKey];
    parentAccount = [v9 parentAccount];
    appleAccount = self->_appleAccount;
    self->_appleAccount = parentAccount;

    if (!self->_appleAccount)
    {
      objc_storeStrong(&self->_appleAccount, v9);
    }

    if (!self->_accountManager)
    {
      v12 = [*&self->ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"icloudAccountManager"];
      accountManager = self->_accountManager;
      self->_accountManager = v12;
    }

    _tobleroneMailSwitchSpecifier = [(ICloudMailAccountController *)self _tobleroneMailSwitchSpecifier];
    [v5 addObjectsFromArray:_tobleroneMailSwitchSpecifier];

    if ([(ICloudMailAccountController *)self _hasIcloudMailConfigured])
    {
      if ([(ICloudMailAccountController *)self _hasCustomDomain])
      {
        _byodSpecifier = [(ICloudMailAccountController *)self _byodSpecifier];
        [v5 addObjectsFromArray:_byodSpecifier];
      }

      _iCloudMailSettingSpecifiers = [(ICloudMailAccountController *)self _iCloudMailSettingSpecifiers];
      [v5 addObjectsFromArray:_iCloudMailSettingSpecifiers];
    }

    v17 = *&self->ACUIDataclassConfigurationViewController_opaque[v3];
    *&self->ACUIDataclassConfigurationViewController_opaque[v3] = v5;

    v4 = *&self->ACUIDataclassConfigurationViewController_opaque[v3];
  }

  return v4;
}

- (id)_iCloudMailSettingSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v4];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ICLOUD_MAIL_SETTINGS_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:1 edit:0];

  [v7 setControllerLoadAction:"_iCloudMailSettingSpecifierTapped:"];
  [v7 setUserInfo:self->_userInfoDictionary];
  [v3 addObject:v7];
  v8 = [v3 copy];

  return v8;
}

- (id)_byodSpecifier
{
  byodSpecifierProviderAdapter = self->_byodSpecifierProviderAdapter;
  if (!byodSpecifierProviderAdapter)
  {
    v4 = [[BYODSpecifierProviderAdapter alloc] initWithAccountManager:self->_accountManager presenter:self];
    v5 = self->_byodSpecifierProviderAdapter;
    self->_byodSpecifierProviderAdapter = v4;

    byodSpecifierProviderAdapter = self->_byodSpecifierProviderAdapter;
  }

  return [(BYODSpecifierProviderAdapter *)byodSpecifierProviderAdapter specifiers];
}

- (id)_tobleroneMailSwitchSpecifier
{
  v27 = objc_alloc_init(NSMutableArray);
  v25 = +[PSSpecifier emptyGroupSpecifier];
  [v27 addObject:v25];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v26 = [UIImage imageNamed:@"mailSettingsIcon.png" inBundle:v3];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"MAIL_CARD_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"MAIL_CARD_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v6 setProperty:v8 forKey:PSTitleKey];

  v9 = objc_alloc_init(AADeviceInfo);
  deviceClass = [v9 deviceClass];
  uppercaseString = [deviceClass uppercaseString];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [@"MAIL_CARD_SUBTEXT_" stringByAppendingString:uppercaseString];
  v14 = [v12 localizedStringForKey:v13 value:&stru_B9FC8 table:@"AccountPreferences"];

  [v6 setProperty:v14 forKey:PSTableCellSubtitleTextKey];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"MAIL_DATACLASS_SWITCH_KB_LINK" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v6 setProperty:v16 forKey:@"AAUIDataclassAttributedLink"];

  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"LEARN_MORE_ELLIPSIS" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v6 setProperty:v18 forKey:@"AAUIDataclassAttributedLinkText"];

  [v6 setProperty:&off_C05F0 forKey:PSAlignmentKey];
  v19 = PSIconImageKey;
  [v6 setProperty:v26 forKey:PSIconImageKey];
  [v27 addObject:v6];
  v20 = [(ICloudMailAccountController *)self specifierForDataclass:ACAccountDataclassMail];
  [v20 removePropertyForKey:v19];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [@"MAIL_DATACLASS_SWITCH_TEXT_" stringByAppendingString:uppercaseString];
  v23 = [v21 localizedStringForKey:v22 value:&stru_B9FC8 table:@"AccountPreferences"];

  [v20 setName:v23];
  [v27 addObject:v20];

  return v27;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = +[ICloudMailAccountController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = lCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "handleURL with dicttionary: %@.", buf, 0xCu);
  }

  v9 = [lCopy objectForKey:@"domain"];
  if ([(ICloudMailAccountController *)self _hasIcloudMailConfigured])
  {
    if (!v9)
    {
      v22.receiver = self;
      v22.super_class = ICloudMailAccountController;
      [(ICloudMailAccountController *)&v22 handleURL:lCopy withCompletion:completionCopy];
      goto LABEL_10;
    }

    v10 = [lCopy objectForKey:@"domainState"];
    byodSpecifierProviderAdapter = self->_byodSpecifierProviderAdapter;
    if (!byodSpecifierProviderAdapter)
    {
      v12 = [[BYODSpecifierProviderAdapter alloc] initWithAccountManager:self->_accountManager presenter:self];
      v13 = self->_byodSpecifierProviderAdapter;
      self->_byodSpecifierProviderAdapter = v12;

      byodSpecifierProviderAdapter = self->_byodSpecifierProviderAdapter;
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_6DEE4;
    v23[3] = &unk_B8ED8;
    v24 = completionCopy;
    [(BYODSpecifierProviderAdapter *)byodSpecifierProviderAdapter loadDomain:v9 withState:v10 completion:v23];
    v14 = v24;
  }

  else
  {
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"BYOD_MEMBER_MAIL_CONFIGURE_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v10 = [NSString stringWithFormat:v16, v9];

    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"BYOD_MEMBER_MAIL_CONFIGURE_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v14 = [UIAlertController alertControllerWithTitle:v18 message:v10 preferredStyle:1];

    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
    v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:0];

    [v14 addAction:v21];
    [(ICloudMailAccountController *)self presentViewController:v14 animated:1 completion:0];
  }

LABEL_10:
}

- (void)_iCloudMailSettingSpecifierTapped:(id)tapped
{
  tappedCopy = tapped;
  v4 = objc_alloc_init(PSSetupController);
  v5 = objc_alloc_init(AccountPSDetailController);
  [(AccountPSDetailController *)v5 setSpecifier:tappedCopy];
  [(AccountPSDetailController *)v5 setParentController:v4];
  [(AccountPSDetailController *)v5 setRootController:v4];
  [v4 showController:v5];
  [v4 setParentController:self];
  [v4 setSpecifier:tappedCopy];
  [v4 setModalPresentationStyle:2];
  [(ICloudMailAccountController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)dataclassSwitchStateDidChange:(id)change withSpecifier:(id)specifier
{
  changeCopy = change;
  specifierCopy = specifier;
  if (![changeCopy BOOLValue] || -[ICloudMailAccountController _mailDataclassChangeForSpecifier:](self, "_mailDataclassChangeForSpecifier:", specifierCopy))
  {
    v8 = +[ICloudMailAccountController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      bOOLValue = [changeCopy BOOLValue];
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Mail Dataclass Switch Changed To %{BOOL}d", buf, 8u);
    }

    v9.receiver = self;
    v9.super_class = ICloudMailAccountController;
    [(ICloudMailAccountController *)&v9 dataclassSwitchStateDidChange:changeCopy withSpecifier:specifierCopy];
  }
}

- (BOOL)_mailDataclassChangeForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  acui_dataclass = [specifierCopy acui_dataclass];
  if (([acui_dataclass isEqualToString:ACAccountDataclassMail] & 1) == 0)
  {

    goto LABEL_7;
  }

  appleAccount = [(ICloudMailAccountController *)self appleAccount];
  aa_needsEmailConfiguration = [appleAccount aa_needsEmailConfiguration];

  if (!aa_needsEmailConfiguration)
  {
LABEL_7:
    v14 = 1;
    goto LABEL_8;
  }

  icloudMailCreator = self->_icloudMailCreator;
  if (!icloudMailCreator)
  {
    v9 = [ICloudMailCreator alloc];
    appleAccount = self->_appleAccount;
    accountStore = [(ACAccount *)appleAccount accountStore];
    v12 = [(ICloudMailCreator *)v9 initWithViewController:self appleAccount:appleAccount accountStore:accountStore];
    v13 = self->_icloudMailCreator;
    self->_icloudMailCreator = v12;

    [(ICloudMailCreator *)self->_icloudMailCreator setDelegate:self];
    icloudMailCreator = self->_icloudMailCreator;
  }

  [(ICloudMailCreator *)icloudMailCreator showAlertForMailSetup];
  v14 = 0;
LABEL_8:

  return v14;
}

- (BOOL)_hasCustomDomain
{
  appleAccount = self->_appleAccount;
  if (appleAccount)
  {
    v4 = [(ACAccount *)appleAccount propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
    v5 = [v4 objectForKeyedSubscript:@"customDomainEnabled"];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v7 = +[ICloudMailAccountController log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_appleAccount;
    v10 = 134218240;
    v11 = v8;
    v12 = 1024;
    v13 = bOOLValue;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Parent account: %p, Custom Domain enabled: %{BOOL}d", &v10, 0x12u);
  }

  return bOOLValue;
}

- (BOOL)_hasIcloudMailConfigured
{
  if (![(ACAccount *)self->_appleAccount isProvisionedForDataclass:ACAccountDataclassMail])
  {
    return 0;
  }

  aa_childMailAccount = [(ACAccount *)self->_appleAccount aa_childMailAccount];
  v4 = aa_childMailAccount != 0;

  return v4;
}

- (void)icloudMailCreationNeedsViewUpdate:(id)update withAccount:(id)account
{
  updateCopy = update;
  accountCopy = account;
  if (self)
  {
    v8 = +[ICloudMailAccountController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Updating iCloud mail specifiers", buf, 2u);
    }

    aa_childMailAccount = [accountCopy aa_childMailAccount];
    if (aa_childMailAccount)
    {
      [(NSMutableDictionary *)self->_userInfoDictionary setValue:aa_childMailAccount forKey:ACUIAccountKey];
    }

    [(ICloudMailAccountController *)self reloadSpecifiers];
  }

  else
  {
    aa_childMailAccount = +[ICloudMailAccountController log];
    if (os_log_type_enabled(aa_childMailAccount, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, aa_childMailAccount, OS_LOG_TYPE_DEFAULT, "No self. cannot update view for mail account create", v10, 2u);
    }
  }
}

@end
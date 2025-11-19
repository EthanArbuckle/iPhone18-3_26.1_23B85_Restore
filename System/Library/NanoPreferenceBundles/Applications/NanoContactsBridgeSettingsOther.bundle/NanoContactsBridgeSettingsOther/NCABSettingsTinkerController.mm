@interface NCABSettingsTinkerController
- (CNUIFamilyMemberContactsController)familyMemberContactsController;
- (NCABSettingsTinkerController)init;
- (id)_localizedContactsManagementStringWithTinkerUserName:(id)a3;
- (id)_localizedStringForKey:(id)a3 tinkerUserName:(id)a4;
- (id)specifiers;
- (void)_editContactsForFamilyMember;
- (void)_fetchFamilyMember:(id)a3;
- (void)_openScreenTimeForFamilyMember;
- (void)_openScreenTimeForFamilyMember:(id)a3;
- (void)dismissPresentedViewController:(id)a3;
- (void)presentViewController:(id)a3;
- (void)setTinkerFamilyMember:(id)a3;
@end

@implementation NCABSettingsTinkerController

- (NCABSettingsTinkerController)init
{
  v8.receiver = self;
  v8.super_class = NCABSettingsTinkerController;
  v2 = [(NCABSettingsTinkerController *)&v8 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = NCBST_Tinker_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v10 = "[NCABSettingsTinkerController init]";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%{public}s - starting family member fetch", buf, 0xCu);
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_4180;
    v5[3] = &unk_C408;
    objc_copyWeak(&v6, &location);
    [(NCABSettingsTinkerController *)v2 _fetchFamilyMember:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)setTinkerFamilyMember:(id)a3
{
  v5 = a3;
  if (self->_tinkerFamilyMember != v5)
  {
    objc_storeStrong(&self->_tinkerFamilyMember, a3);
    [(NCABSettingsTinkerController *)self setContactsManagementStateManager:0];
    v6 = NCBST_Tinker_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      tinkerFamilyMember = self->_tinkerFamilyMember;
      *buf = 136446466;
      v16 = "[NCABSettingsTinkerController setTinkerFamilyMember:]";
      v17 = 2112;
      v18 = tinkerFamilyMember;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - reloading for familyMember: %@", buf, 0x16u);
    }

    [(NCABSettingsTinkerController *)self reloadSpecifiers];
    if (self->_tinkerFamilyMember)
    {
      v8 = [[NCABTinkerContactsManagementStateManager alloc] initWithFamilyMember:self->_tinkerFamilyMember autoEnableIfPossible:0];
      [(NCABSettingsTinkerController *)self setContactsManagementStateManager:v8];
      v9 = NCBST_Tinker_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v16 = "[NCABSettingsTinkerController setTinkerFamilyMember:]";
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s - fetching contactsManagementState", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v10 = [(NCABSettingsTinkerController *)self contactsManagementStateManager];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_45E8;
      v12[3] = &unk_C430;
      objc_copyWeak(&v14, buf);
      v11 = v8;
      v13 = v11;
      [v10 fetchContactsManagementStateWithCompletionHandler:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithID:@"NCABST_GROUP_ID"];
    [v5 addObject:v6];
    v7 = [(NCABSettingsTinkerController *)self tinkerFamilyMember];
    v8 = [(NCABSettingsTinkerController *)self contactsManagementStateManager];
    v9 = [v8 lastKnownContactsManagementState];

    if (v7)
    {
      v10 = [v7 firstName];
      if (v10)
      {
        goto LABEL_8;
      }

      v11 = NCBST_Tinker_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_6024(v7, v11);
      }
    }

    v10 = 0;
LABEL_8:
    if (v9 > 4)
    {
      if ((v9 - 100) >= 2)
      {
        if (v9 != 5 && v9 != 102)
        {
          goto LABEL_19;
        }

        v13 = [(NCABSettingsTinkerController *)self familyMemberContactsController];
        [v13 countOfFamilyMemberContacts];

        v12 = [(NCABSettingsTinkerController *)self _localizedStringForKey:@"TK_CONTACTS_SETTINGS_EDIT_SATELLITE_CONTACTS" tinkerUserName:v10];
        v14 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v14 setIdentifier:@"NCABST_ACTION_ID"];
        v15 = "_editContactsForFamilyMember";
        goto LABEL_17;
      }
    }

    else if ((v9 - 2) >= 3)
    {
      if (v9 >= 2)
      {
LABEL_19:
        v16 = *&self->PSListController_opaque[v3];
        *&self->PSListController_opaque[v3] = v5;

        v4 = *&self->PSListController_opaque[v3];
        goto LABEL_20;
      }

      v12 = [(NCABSettingsTinkerController *)self _localizedContactsManagementStringWithTinkerUserName:v10];
      [v6 setProperty:v12 forKey:PSFooterTextGroupKey];
LABEL_18:

      goto LABEL_19;
    }

    v12 = [(NCABSettingsTinkerController *)self _localizedStringForKey:@"TK_CONTACTS_SETUP_IN_SCREENTIME" tinkerUserName:v10];
    v14 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v14 setIdentifier:@"NCABST_ACTION_ID"];
    v15 = "_openScreenTimeForFamilyMember";
LABEL_17:
    [v14 setButtonAction:v15];
    [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    [v5 addObject:v14];

    goto LABEL_18;
  }

LABEL_20:

  return v4;
}

- (id)_localizedStringForKey:(id)a3 tinkerUserName:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [NSString stringWithFormat:@"%@_USERNAME", a3];
    v7 = NanoContactsSettingsTinkerBundle();
    v8 = [v7 localizedStringForKey:v6 value:&stru_C610 table:@"NanoContactsBridgeSettingsTinker"];
    v9 = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v5];
  }

  else
  {
    v6 = [NSString stringWithFormat:@"%@_NO_USERNAME", a3];
    v7 = NanoContactsSettingsTinkerBundle();
    v9 = [v7 localizedStringForKey:v6 value:&stru_C610 table:@"NanoContactsBridgeSettingsTinker"];
  }

  return v9;
}

- (id)_localizedContactsManagementStringWithTinkerUserName:(id)a3
{
  v4 = a3;
  v5 = +[PDRRegistry sharedInstance];
  v6 = [v5 getDevicesExcluding:4];
  v7 = [v6 firstObject];

  v8 = [v7 valueForProperty:PDRDevicePropertyKeyIsArchived];
  if ([v8 BOOLValue])
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v10 supportsCapability:3421730362];
  if (v11)
  {
    v12 = @"TK_CONTACTS_SETTINGS_EDIT_ON_DEVICE_CONTACTSAPP";
  }

  else
  {
    v12 = @"TK_CONTACTS_SETTINGS_EDIT_ON_DEVICE_PHONEAPP";
  }

  v13 = [(NCABSettingsTinkerController *)self _localizedStringForKey:v12 tinkerUserName:v4];

  return v13;
}

- (void)_openScreenTimeForFamilyMember:(id)a3
{
  v3 = a3;
  v4 = [v3 dsid];
  v5 = [NSString stringWithValidatedFormat:@"prefs:root=SCREEN_TIME&path=CHILD_%@" validFormatSpecifiers:@"%@" error:0, v4];

  v6 = [NSURL URLWithString:v5];
  v7 = NCBST_Tinker_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "[NCABSettingsTinkerController _openScreenTimeForFamilyMember:]";
    v11 = 2114;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - Opening URL %{public}@ for familyMember %@", buf, 0x20u);
  }

  v8 = +[LSApplicationWorkspace defaultWorkspace];
  [v8 openSensitiveURL:v6 withOptions:0];
}

- (void)_openScreenTimeForFamilyMember
{
  v3 = [(NCABSettingsTinkerController *)self tinkerFamilyMember];
  [(NCABSettingsTinkerController *)self _openScreenTimeForFamilyMember:v3];
}

- (CNUIFamilyMemberContactsController)familyMemberContactsController
{
  if (!self->_familyMemberContactsController)
  {
    v3 = [(NCABSettingsTinkerController *)self tinkerFamilyMember];

    if (v3)
    {
      v4 = [CNUIFamilyMemberContactsController alloc];
      v5 = [(NCABSettingsTinkerController *)self tinkerFamilyMember];
      v6 = [v4 initWithFamilyMember:v5 familyMemberContactsPresentation:self];
      familyMemberContactsController = self->_familyMemberContactsController;
      self->_familyMemberContactsController = v6;
    }
  }

  v8 = self->_familyMemberContactsController;

  return v8;
}

- (void)_editContactsForFamilyMember
{
  v3 = [(NCABSettingsTinkerController *)self tinkerFamilyMember];

  if (v3)
  {
    v4 = NCBST_Tinker_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NCABSettingsTinkerController *)self familyMemberContactsController];
      v6 = [(NCABSettingsTinkerController *)self tinkerFamilyMember];
      v8 = 136446722;
      v9 = "[NCABSettingsTinkerController _editContactsForFamilyMember]";
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s - showing CNUIFamilyMemberContactsController: %@, familyMember: %@", &v8, 0x20u);
    }

    v7 = [(NCABSettingsTinkerController *)self familyMemberContactsController];
    [v7 performInteraction:3];
  }
}

- (void)presentViewController:(id)a3
{
  v4 = a3;
  v5 = NCBST_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 136446466;
    v11 = "[NCABSettingsTinkerController presentViewController:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %@", &v10, 0x16u);
  }

  v6 = [(NCABSettingsTinkerController *)self navigationController];
  v7 = [v6 navigationBar];
  v8 = [v7 tintColor];
  v9 = [v4 view];
  [v9 setTintColor:v8];

  [(NCABSettingsTinkerController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)dismissPresentedViewController:(id)a3
{
  v4 = a3;
  v5 = NCBST_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136446466;
    v7 = "[NCABSettingsTinkerController dismissPresentedViewController:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %@", &v6, 0x16u);
  }

  [(NCABSettingsTinkerController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_fetchFamilyMember:(id)a3
{
  v9 = a3;
  v4 = [(NCABSettingsTinkerController *)self tinkerSupportHelper];

  if (!v4)
  {
    v5 = +[BPSTinkerSupport sharedInstance];
    [(NCABSettingsTinkerController *)self setTinkerSupportHelper:v5];
  }

  v6 = [(NCABSettingsTinkerController *)self tinkerSupportHelper];
  v7 = [v6 cachedTinkerFamilyMemeber];

  if (v7)
  {
    v9[2](v9, v7, 0);
  }

  else
  {
    v8 = [(NCABSettingsTinkerController *)self tinkerSupportHelper];
    [v8 getActiveTinkerFamilyMemberWithCompletion:v9];
  }
}

@end
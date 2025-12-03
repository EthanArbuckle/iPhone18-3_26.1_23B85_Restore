@interface NameAndPhotoSettingsBundleController
- (id)sharedNameAndPhotoAudience:(id)audience;
- (id)sharedNameAndPhotoSharingFooterText;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)onboardingControllerDidDismissSettings:(id)settings;
- (void)reloadSpecifiers;
- (void)showSharedNameAndPhotoSettings;
@end

@implementation NameAndPhotoSettingsBundleController

- (id)specifiersWithSpecifier:(id)specifier
{
  v4 = +[NSMutableArray array];
  v5 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v5 setIdentifier:@"SHARED_NAME_AND_PHOTO_SETTINGS_GROUP"];
  sharedNameAndPhotoSharingFooterText = [(NameAndPhotoSettingsBundleController *)self sharedNameAndPhotoSharingFooterText];
  [v5 setProperty:sharedNameAndPhotoSharingFooterText forKey:PSFooterTextGroupKey];

  groupSpecifier = self->_groupSpecifier;
  self->_groupSpecifier = v5;
  v8 = v5;

  [v4 addObject:v8];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"NAME_AND_PHOTO_SHARING_TITLE" value:&stru_4160 table:@"NameAndPhotoSettings"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"sharedNameAndPhotoAudience:" detail:0 cell:2 edit:0];

  [v11 setButtonAction:"showSharedNameAndPhotoSettings"];
  [v11 setIdentifier:@"SHARED_NAME_AND_PHOTO_SETTINGS"];
  v12 = [NSNumber numberWithBool:1];
  [v11 setProperty:v12 forKey:PSEnabledKey];

  mainSpecifier = self->_mainSpecifier;
  self->_mainSpecifier = v11;
  v14 = v11;

  [v4 addObject:v14];

  return v4;
}

- (void)reloadSpecifiers
{
  groupSpecifier = [(NameAndPhotoSettingsBundleController *)self groupSpecifier];
  sharedNameAndPhotoSharingFooterText = [(NameAndPhotoSettingsBundleController *)self sharedNameAndPhotoSharingFooterText];
  [groupSpecifier setProperty:sharedNameAndPhotoSharingFooterText forKey:PSFooterTextGroupKey];

  v5 = OBJC_IVAR___PSBundleController__parent;
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
  groupSpecifier2 = [(NameAndPhotoSettingsBundleController *)self groupSpecifier];
  [WeakRetained reloadSpecifier:groupSpecifier2 animated:0];

  v9 = objc_loadWeakRetained(&self->PSBundleController_opaque[v5]);
  mainSpecifier = [(NameAndPhotoSettingsBundleController *)self mainSpecifier];
  [v9 reloadSpecifier:mainSpecifier animated:0];
}

- (void)showSharedNameAndPhotoSettings
{
  v5 = objc_alloc_init(CNContactStore);
  v3 = [[CNSharedProfileOnboardingController alloc] initWithContactStore:v5];
  [v3 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);
  [v3 startOnboardingOrEditForMode:1 fromViewController:WeakRetained];

  [(NameAndPhotoSettingsBundleController *)self setOnboardingController:v3];
}

- (id)sharedNameAndPhotoSharingFooterText
{
  v2 = +[CNEnvironment currentEnvironment];
  nicknameProvider = [v2 nicknameProvider];
  isNicknameSharingEnabled = [nicknameProvider isNicknameSharingEnabled];

  if (!isNicknameSharingEnabled)
  {
    v8 = @"NAME_AND_PHOTO_SHARING_NOT_SHARING_FOOTER";
    goto LABEL_7;
  }

  v5 = +[CNEnvironment currentEnvironment];
  nicknameProvider2 = [v5 nicknameProvider];
  sharingAudience = [nicknameProvider2 sharingAudience];

  if (sharingAudience == &dword_0 + 2)
  {
    v8 = @"NAME_AND_PHOTO_SHARING_ALWAYS_ASK_FOOTER";
    goto LABEL_7;
  }

  if (sharingAudience == &dword_0 + 1)
  {
    v8 = @"NAME_AND_PHOTO_SHARING_CONTACTS_ONLY_FOOTER";
LABEL_7:
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_4160 table:@"NameAndPhotoSettings"];

    goto LABEL_8;
  }

  v10 = &stru_4160;
LABEL_8:

  return v10;
}

- (id)sharedNameAndPhotoAudience:(id)audience
{
  v3 = +[CNEnvironment currentEnvironment];
  nicknameProvider = [v3 nicknameProvider];
  isNicknameSharingEnabled = [nicknameProvider isNicknameSharingEnabled];

  if (!isNicknameSharingEnabled)
  {
    v9 = @"NAME_AND_PHOTO_SHARING_OFF";
    goto LABEL_5;
  }

  v6 = +[CNEnvironment currentEnvironment];
  nicknameProvider2 = [v6 nicknameProvider];
  sharingAudience = [nicknameProvider2 sharingAudience];

  if (sharingAudience <= 2)
  {
    v9 = *(&off_40E8 + sharingAudience);
LABEL_5:
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:v9 value:&stru_4160 table:@"NameAndPhotoSettings"];

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (void)onboardingControllerDidDismissSettings:(id)settings
{
  [(NameAndPhotoSettingsBundleController *)self setOnboardingController:0];

  [(NameAndPhotoSettingsBundleController *)self reloadSpecifiers];
}

@end
@interface AssistantBridgeConsiderateVolumeProfileController
- (AssistantBridgeConsiderateVolumeProfileController)init;
- (id)specifierForSelectedPhraseTypeInSettings:(id)settings;
- (id)specifiers;
- (id)userProfile;
- (void)dealloc;
- (void)setSelectedSpecifier:(id)specifier settings:(id)settings animated:(BOOL)animated;
- (void)setUserProfileFromSpecifierID:(id)d;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation AssistantBridgeConsiderateVolumeProfileController

- (AssistantBridgeConsiderateVolumeProfileController)init
{
  v8.receiver = self;
  v8.super_class = AssistantBridgeConsiderateVolumeProfileController;
  v2 = [(AssistantBridgeConsiderateVolumeProfileController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(RSConsiderateVolumeSettingsController);
    settingsController = v2->_settingsController;
    v2->_settingsController = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v6 = +[RSConsiderateVolumeSettingsController prefsDidChangeNotification];
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_7634, v6, 0, 1024);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = AssistantBridgeConsiderateVolumeProfileController;
  [(AssistantBridgeConsiderateVolumeProfileController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    specifierPlistName = [(AssistantBridgeConsiderateVolumeProfileController *)self specifierPlistName];
    v6 = [(AssistantBridgeConsiderateVolumeProfileController *)self loadSpecifiersFromPlistName:specifierPlistName target:self];

    v7 = [(AssistantBridgeConsiderateVolumeProfileController *)self specifierForSelectedPhraseTypeInSettings:v6];
    [(AssistantBridgeConsiderateVolumeProfileController *)self setSelectedSpecifier:v7 settings:v6 animated:0];
    v8 = [v6 copy];
    v9 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v8;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setSelectedSpecifier:(id)specifier settings:(id)settings animated:(BOOL)animated
{
  if (specifier)
  {
    animatedCopy = animated;
    specifierCopy = specifier;
    v9 = [settings specifierForID:@"CONSIDERATE_VOLUME_PROFILE_GROUP_ID"];
    [v9 setProperty:specifierCopy forKey:PSRadioGroupCheckedSpecifierKey];

    if (animatedCopy)
    {
      [(AssistantBridgeConsiderateVolumeProfileController *)self reloadSpecifierID:@"CONSIDERATE_VOLUME_PROFILE_GROUP_ID" animated:1];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = [(AssistantBridgeConsiderateVolumeProfileController *)self specifierAtIndex:[(AssistantBridgeConsiderateVolumeProfileController *)self indexForIndexPath:path]];
  identifier = [v6 identifier];
  [(AssistantBridgeConsiderateVolumeProfileController *)self setUserProfileFromSpecifierID:identifier];

  [(AssistantBridgeConsiderateVolumeProfileController *)self beginUpdates];
  [(AssistantBridgeConsiderateVolumeProfileController *)self setSelectedSpecifier:v6 animated:1];
  [(AssistantBridgeConsiderateVolumeProfileController *)self endUpdates];
}

- (id)userProfile
{
  settingsController = [(AssistantBridgeConsiderateVolumeProfileController *)self settingsController];
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [settingsController getUserProfileForCategory:3]);

  return v3;
}

- (void)setUserProfileFromSpecifierID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"CONSIDERATE_VOLUME_PROFILE_QUIETER_ID"])
  {
    v4 = 0;
  }

  else if ([dCopy isEqualToString:@"CONSIDERATE_VOLUME_PROFILE_DEFAULT_ID"])
  {
    v4 = 1;
  }

  else if ([dCopy isEqualToString:@"CONSIDERATE_VOLUME_PROFILE_LOUDER_ID"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  settingsController = [(AssistantBridgeConsiderateVolumeProfileController *)self settingsController];
  [settingsController setUserProfile:v4 forCategory:3];
}

- (id)specifierForSelectedPhraseTypeInSettings:(id)settings
{
  settingsCopy = settings;
  userProfile = [(AssistantBridgeConsiderateVolumeProfileController *)self userProfile];
  v6 = userProfile;
  if (userProfile && (v7 = [userProfile integerValue], v7 <= 2))
  {
    v8 = [settingsCopy specifierForID:off_10690[v7]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
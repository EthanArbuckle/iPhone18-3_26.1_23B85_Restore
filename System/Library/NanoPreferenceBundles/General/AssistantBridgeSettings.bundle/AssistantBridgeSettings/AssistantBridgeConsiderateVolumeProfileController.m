@interface AssistantBridgeConsiderateVolumeProfileController
- (AssistantBridgeConsiderateVolumeProfileController)init;
- (id)specifierForSelectedPhraseTypeInSettings:(id)a3;
- (id)specifiers;
- (id)userProfile;
- (void)dealloc;
- (void)setSelectedSpecifier:(id)a3 settings:(id)a4 animated:(BOOL)a5;
- (void)setUserProfileFromSpecifierID:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
    v5 = [(AssistantBridgeConsiderateVolumeProfileController *)self specifierPlistName];
    v6 = [(AssistantBridgeConsiderateVolumeProfileController *)self loadSpecifiersFromPlistName:v5 target:self];

    v7 = [(AssistantBridgeConsiderateVolumeProfileController *)self specifierForSelectedPhraseTypeInSettings:v6];
    [(AssistantBridgeConsiderateVolumeProfileController *)self setSelectedSpecifier:v7 settings:v6 animated:0];
    v8 = [v6 copy];
    v9 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v8;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setSelectedSpecifier:(id)a3 settings:(id)a4 animated:(BOOL)a5
{
  if (a3)
  {
    v5 = a5;
    v8 = a3;
    v9 = [a4 specifierForID:@"CONSIDERATE_VOLUME_PROFILE_GROUP_ID"];
    [v9 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];

    if (v5)
    {
      [(AssistantBridgeConsiderateVolumeProfileController *)self reloadSpecifierID:@"CONSIDERATE_VOLUME_PROFILE_GROUP_ID" animated:1];
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = [(AssistantBridgeConsiderateVolumeProfileController *)self specifierAtIndex:[(AssistantBridgeConsiderateVolumeProfileController *)self indexForIndexPath:a4]];
  v5 = [v6 identifier];
  [(AssistantBridgeConsiderateVolumeProfileController *)self setUserProfileFromSpecifierID:v5];

  [(AssistantBridgeConsiderateVolumeProfileController *)self beginUpdates];
  [(AssistantBridgeConsiderateVolumeProfileController *)self setSelectedSpecifier:v6 animated:1];
  [(AssistantBridgeConsiderateVolumeProfileController *)self endUpdates];
}

- (id)userProfile
{
  v2 = [(AssistantBridgeConsiderateVolumeProfileController *)self settingsController];
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v2 getUserProfileForCategory:3]);

  return v3;
}

- (void)setUserProfileFromSpecifierID:(id)a3
{
  v6 = a3;
  if ([v6 isEqualToString:@"CONSIDERATE_VOLUME_PROFILE_QUIETER_ID"])
  {
    v4 = 0;
  }

  else if ([v6 isEqualToString:@"CONSIDERATE_VOLUME_PROFILE_DEFAULT_ID"])
  {
    v4 = 1;
  }

  else if ([v6 isEqualToString:@"CONSIDERATE_VOLUME_PROFILE_LOUDER_ID"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(AssistantBridgeConsiderateVolumeProfileController *)self settingsController];
  [v5 setUserProfile:v4 forCategory:3];
}

- (id)specifierForSelectedPhraseTypeInSettings:(id)a3
{
  v4 = a3;
  v5 = [(AssistantBridgeConsiderateVolumeProfileController *)self userProfile];
  v6 = v5;
  if (v5 && (v7 = [v5 integerValue], v7 <= 2))
  {
    v8 = [v4 specifierForID:off_10690[v7]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
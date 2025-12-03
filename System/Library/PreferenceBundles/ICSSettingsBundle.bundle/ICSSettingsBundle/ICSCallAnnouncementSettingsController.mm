@interface ICSCallAnnouncementSettingsController
+ (id)localizedDescriptionForAnnounceCallsConfiguration:(unint64_t)configuration;
+ (id)localizedStringForKey:(id)key;
+ (id)localizedlabelTextForAnnounceCallsConfiguration:(unint64_t)configuration;
- (id)specifiers;
- (void)donateAnnounceCallsEnabledSignalForState:(unint64_t)state previousState:(unint64_t)previousState;
- (void)emitNavigationEvent;
- (void)loadDataSource;
- (void)refreshGroupForSpecifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ICSCallAnnouncementSettingsController

+ (id)localizedlabelTextForAnnounceCallsConfiguration:(unint64_t)configuration
{
  if (configuration > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_opt_class() localizedStringForKey:*(&off_C4C0 + configuration)];
  }

  return v4;
}

- (void)emitNavigationEvent
{
  specifier = [(ICSCallAnnouncementSettingsController *)self specifier];
  target = [specifier target];
  parentListController = [target parentListController];
  specifierID = [parentListController specifierID];

  v6 = &PHPreferencesGetValueInDomain_ptr;
  v7 = [_NSLocalizedStringResource alloc];
  v8 = +[NSLocale currentLocale];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v9 bundleURL];
  v11 = [v7 initWithKey:@"Apps" table:0 locale:v8 bundleURL:bundleURL];

  v12 = [[NSMutableArray alloc] initWithObjects:{v11, 0}];
  if ([specifierID isEqualToString:@"com.apple.preferences.facetime"])
  {
    v13 = TUBundleIdentifierFaceTimeApplication;
    v14 = [_NSLocalizedStringResource alloc];
    v15 = +[NSLocale currentLocale];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    bundleURL2 = [v16 bundleURL];
    v18 = [v14 initWithKey:@"FaceTime" table:0 locale:v15 bundleURL:bundleURL2];
    [v12 addObject:v18];

    v6 = &PHPreferencesGetValueInDomain_ptr;
  }

  else
  {
    if (![specifierID isEqualToString:@"com.apple.preferences.phone"])
    {
      goto LABEL_6;
    }

    v13 = TUBundleIdentifierPhoneApplication;
    v15 = TUResolvedPhoneResource();
    [v12 addObject:v15];
  }

  v19 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@/%@", v13, @"ANNOUNCE_CALLS"];
  v20 = [NSURL URLWithString:v19];
  v21 = objc_alloc(v6[97]);
  v22 = +[NSLocale currentLocale];
  v23 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL3 = [v23 bundleURL];
  v25 = [v21 initWithKey:@"Announce Calls" table:0 locale:v22 bundleURL:bundleURL3];

  [(ICSCallAnnouncementSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v13 title:v25 localizedNavigationComponents:v12 deepLink:v20];
LABEL_6:
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = ICSCallAnnouncementSettingsController;
  specifier = [(ICSCallAnnouncementSettingsController *)&v9 specifier];

  if (specifier != specifierCopy)
  {
    v8.receiver = self;
    v8.super_class = ICSCallAnnouncementSettingsController;
    [(ICSCallAnnouncementSettingsController *)&v8 setSpecifier:specifierCopy];
    tu_userConfiguration = [specifierCopy tu_userConfiguration];
    if (tu_userConfiguration)
    {
      [(ICSCallAnnouncementSettingsController *)self setUserConfiguration:tu_userConfiguration];
    }

    else
    {
      v7 = objc_alloc_init(TUUserConfiguration);
      [(ICSCallAnnouncementSettingsController *)self setUserConfiguration:v7];
    }
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(ICSCallAnnouncementSettingsController *)self loadSpecifiersFromPlistName:@"ICSCallAnnouncementSettings" target:self];
    if ([v5 count])
    {
      v6 = [v5 copy];
      v7 = *&self->PSListController_opaque[v3];
      *&self->PSListController_opaque[v3] = v6;

      v8 = [*&self->PSListController_opaque[v3] specifierForID:@"ANNOUNCE_CALLS_GROUP_ID"];
      [(ICSCallAnnouncementSettingsController *)self setGroupSpecifier:v8];

      v9 = [*&self->PSListController_opaque[v3] specifierForID:@"ANNOUNCE_CALLS_LIST_ITEM_ID_ALWAYS"];
      [(ICSCallAnnouncementSettingsController *)self setAlwaysListItemSpecifier:v9];

      v10 = [*&self->PSListController_opaque[v3] specifierForID:@"ANNOUNCE_CALLS_LIST_ITEM_ID_NEVER"];
      [(ICSCallAnnouncementSettingsController *)self setNeverListItemSpecifier:v10];

      v11 = [*&self->PSListController_opaque[v3] specifierForID:@"ANNOUNCE_CALLS_LIST_ITEM_ID_HANDSFREE"];
      [(ICSCallAnnouncementSettingsController *)self setHandsFreeListItemSpecifier:v11];

      v12 = [*&self->PSListController_opaque[v3] specifierForID:@"ANNOUNCE_CALLS_LIST_ITEM_ID_HEADPHONES_ONLY"];
      [(ICSCallAnnouncementSettingsController *)self setHeadphonesOnlyListItemSpecifier:v12];

      [(ICSCallAnnouncementSettingsController *)self loadDataSource];
    }

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = ICSCallAnnouncementSettingsController;
  pathCopy = path;
  [(ICSCallAnnouncementSettingsController *)&v9 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(ICSCallAnnouncementSettingsController *)self indexForIndexPath:pathCopy, v9.receiver, v9.super_class];

  v8 = [(ICSCallAnnouncementSettingsController *)self specifierAtIndex:v7];
  [(ICSCallAnnouncementSettingsController *)self refreshGroupForSpecifier:v8];
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_C9F0 table:localizationTableName];

  return v7;
}

+ (id)localizedDescriptionForAnnounceCallsConfiguration:(unint64_t)configuration
{
  if (configuration > 1)
  {
    v4 = @"ANNOUNCE_CALLS_LIST_ITEM_DESCRIPTION_HEADPHONES_ONLY";
    if (configuration != 3)
    {
      v4 = 0;
    }

    if (configuration == 2)
    {
      v3 = @"ANNOUNCE_CALLS_LIST_ITEM_DESCRIPTION_HANDSFREE";
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
    if (!configuration)
    {
      v3 = @"ANNOUNCE_CALLS_LIST_ITEM_DESCRIPTION_NEVER";
      goto LABEL_14;
    }

    if (configuration == 1)
    {
      v3 = @"ANNOUNCE_CALLS_LIST_ITEM_DESCRIPTION_ALWAYS";
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = objc_alloc_init(TUFeatureFlags);
  if ([v5 announceCalls])
  {
    v3 = [(__CFString *)v3 stringByAppendingString:@"_ANSWER"];
  }

LABEL_14:
  v6 = [objc_opt_class() localizedStringForKey:v3];

  return v6;
}

- (void)loadDataSource
{
  userConfiguration = [(ICSCallAnnouncementSettingsController *)self userConfiguration];
  announceCalls = [userConfiguration announceCalls];

  handsFreeListItemSpecifier = 0;
  if (announceCalls > 1)
  {
    if (announceCalls == &dword_0 + 2)
    {
      handsFreeListItemSpecifier = [(ICSCallAnnouncementSettingsController *)self handsFreeListItemSpecifier];
    }

    else if (announceCalls == &dword_0 + 3)
    {
      handsFreeListItemSpecifier = [(ICSCallAnnouncementSettingsController *)self headphonesOnlyListItemSpecifier];
    }
  }

  else if (announceCalls)
  {
    if (announceCalls == &dword_0 + 1)
    {
      handsFreeListItemSpecifier = [(ICSCallAnnouncementSettingsController *)self alwaysListItemSpecifier];
    }
  }

  else
  {
    handsFreeListItemSpecifier = [(ICSCallAnnouncementSettingsController *)self neverListItemSpecifier];
  }

  v9 = handsFreeListItemSpecifier;
  groupSpecifier = [(ICSCallAnnouncementSettingsController *)self groupSpecifier];
  [groupSpecifier setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];

  v7 = [objc_opt_class() localizedDescriptionForAnnounceCallsConfiguration:announceCalls];
  groupSpecifier2 = [(ICSCallAnnouncementSettingsController *)self groupSpecifier];
  [groupSpecifier2 setProperty:v7 forKey:PSFooterTextGroupKey];
}

- (void)refreshGroupForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  userConfiguration = [(ICSCallAnnouncementSettingsController *)self userConfiguration];
  announceCalls = [userConfiguration announceCalls];

  alwaysListItemSpecifier = [(ICSCallAnnouncementSettingsController *)self alwaysListItemSpecifier];

  if (alwaysListItemSpecifier == specifierCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = announceCalls;
  }

  handsFreeListItemSpecifier = [(ICSCallAnnouncementSettingsController *)self handsFreeListItemSpecifier];

  if (handsFreeListItemSpecifier == specifierCopy)
  {
    v8 = 2;
  }

  headphonesOnlyListItemSpecifier = [(ICSCallAnnouncementSettingsController *)self headphonesOnlyListItemSpecifier];

  if (headphonesOnlyListItemSpecifier == specifierCopy)
  {
    v8 = 3;
  }

  neverListItemSpecifier = [(ICSCallAnnouncementSettingsController *)self neverListItemSpecifier];

  if (neverListItemSpecifier == specifierCopy)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  v16 = [objc_opt_class() localizedDescriptionForAnnounceCallsConfiguration:v12];
  groupSpecifier = [(ICSCallAnnouncementSettingsController *)self groupSpecifier];
  [groupSpecifier setProperty:v16 forKey:PSFooterTextGroupKey];

  groupSpecifier2 = [(ICSCallAnnouncementSettingsController *)self groupSpecifier];
  [(ICSCallAnnouncementSettingsController *)self reloadSpecifier:groupSpecifier2];

  [(ICSCallAnnouncementSettingsController *)self donateAnnounceCallsEnabledSignalForState:v12 previousState:announceCalls];
  userConfiguration2 = [(ICSCallAnnouncementSettingsController *)self userConfiguration];
  [userConfiguration2 setAnnounceCalls:v12];
}

- (void)donateAnnounceCallsEnabledSignalForState:(unint64_t)state previousState:(unint64_t)previousState
{
  if (state)
  {
    if (!previousState)
    {
      +[_TtC17ICSSettingsBundle13ICSTipsHelper donateEventAnnouceCallsEnabled];
    }
  }
}

@end
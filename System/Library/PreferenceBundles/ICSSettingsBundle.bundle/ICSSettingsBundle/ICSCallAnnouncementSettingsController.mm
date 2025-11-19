@interface ICSCallAnnouncementSettingsController
+ (id)localizedDescriptionForAnnounceCallsConfiguration:(unint64_t)a3;
+ (id)localizedStringForKey:(id)a3;
+ (id)localizedlabelTextForAnnounceCallsConfiguration:(unint64_t)a3;
- (id)specifiers;
- (void)donateAnnounceCallsEnabledSignalForState:(unint64_t)a3 previousState:(unint64_t)a4;
- (void)emitNavigationEvent;
- (void)loadDataSource;
- (void)refreshGroupForSpecifier:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ICSCallAnnouncementSettingsController

+ (id)localizedlabelTextForAnnounceCallsConfiguration:(unint64_t)a3
{
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_opt_class() localizedStringForKey:*(&off_C4C0 + a3)];
  }

  return v4;
}

- (void)emitNavigationEvent
{
  v3 = [(ICSCallAnnouncementSettingsController *)self specifier];
  v4 = [v3 target];
  v5 = [v4 parentListController];
  v26 = [v5 specifierID];

  v6 = &PHPreferencesGetValueInDomain_ptr;
  v7 = [_NSLocalizedStringResource alloc];
  v8 = +[NSLocale currentLocale];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 bundleURL];
  v11 = [v7 initWithKey:@"Apps" table:0 locale:v8 bundleURL:v10];

  v12 = [[NSMutableArray alloc] initWithObjects:{v11, 0}];
  if ([v26 isEqualToString:@"com.apple.preferences.facetime"])
  {
    v13 = TUBundleIdentifierFaceTimeApplication;
    v14 = [_NSLocalizedStringResource alloc];
    v15 = +[NSLocale currentLocale];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 bundleURL];
    v18 = [v14 initWithKey:@"FaceTime" table:0 locale:v15 bundleURL:v17];
    [v12 addObject:v18];

    v6 = &PHPreferencesGetValueInDomain_ptr;
  }

  else
  {
    if (![v26 isEqualToString:@"com.apple.preferences.phone"])
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
  v24 = [v23 bundleURL];
  v25 = [v21 initWithKey:@"Announce Calls" table:0 locale:v22 bundleURL:v24];

  [(ICSCallAnnouncementSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v13 title:v25 localizedNavigationComponents:v12 deepLink:v20];
LABEL_6:
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICSCallAnnouncementSettingsController;
  v5 = [(ICSCallAnnouncementSettingsController *)&v9 specifier];

  if (v5 != v4)
  {
    v8.receiver = self;
    v8.super_class = ICSCallAnnouncementSettingsController;
    [(ICSCallAnnouncementSettingsController *)&v8 setSpecifier:v4];
    v6 = [v4 tu_userConfiguration];
    if (v6)
    {
      [(ICSCallAnnouncementSettingsController *)self setUserConfiguration:v6];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = ICSCallAnnouncementSettingsController;
  v6 = a4;
  [(ICSCallAnnouncementSettingsController *)&v9 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(ICSCallAnnouncementSettingsController *)self indexForIndexPath:v6, v9.receiver, v9.super_class];

  v8 = [(ICSCallAnnouncementSettingsController *)self specifierAtIndex:v7];
  [(ICSCallAnnouncementSettingsController *)self refreshGroupForSpecifier:v8];
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_C9F0 table:v6];

  return v7;
}

+ (id)localizedDescriptionForAnnounceCallsConfiguration:(unint64_t)a3
{
  if (a3 > 1)
  {
    v4 = @"ANNOUNCE_CALLS_LIST_ITEM_DESCRIPTION_HEADPHONES_ONLY";
    if (a3 != 3)
    {
      v4 = 0;
    }

    if (a3 == 2)
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
    if (!a3)
    {
      v3 = @"ANNOUNCE_CALLS_LIST_ITEM_DESCRIPTION_NEVER";
      goto LABEL_14;
    }

    if (a3 == 1)
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
  v3 = [(ICSCallAnnouncementSettingsController *)self userConfiguration];
  v4 = [v3 announceCalls];

  v5 = 0;
  if (v4 > 1)
  {
    if (v4 == &dword_0 + 2)
    {
      v5 = [(ICSCallAnnouncementSettingsController *)self handsFreeListItemSpecifier];
    }

    else if (v4 == &dword_0 + 3)
    {
      v5 = [(ICSCallAnnouncementSettingsController *)self headphonesOnlyListItemSpecifier];
    }
  }

  else if (v4)
  {
    if (v4 == &dword_0 + 1)
    {
      v5 = [(ICSCallAnnouncementSettingsController *)self alwaysListItemSpecifier];
    }
  }

  else
  {
    v5 = [(ICSCallAnnouncementSettingsController *)self neverListItemSpecifier];
  }

  v9 = v5;
  v6 = [(ICSCallAnnouncementSettingsController *)self groupSpecifier];
  [v6 setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];

  v7 = [objc_opt_class() localizedDescriptionForAnnounceCallsConfiguration:v4];
  v8 = [(ICSCallAnnouncementSettingsController *)self groupSpecifier];
  [v8 setProperty:v7 forKey:PSFooterTextGroupKey];
}

- (void)refreshGroupForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(ICSCallAnnouncementSettingsController *)self userConfiguration];
  v6 = [v5 announceCalls];

  v7 = [(ICSCallAnnouncementSettingsController *)self alwaysListItemSpecifier];

  if (v7 == v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  v9 = [(ICSCallAnnouncementSettingsController *)self handsFreeListItemSpecifier];

  if (v9 == v4)
  {
    v8 = 2;
  }

  v10 = [(ICSCallAnnouncementSettingsController *)self headphonesOnlyListItemSpecifier];

  if (v10 == v4)
  {
    v8 = 3;
  }

  v11 = [(ICSCallAnnouncementSettingsController *)self neverListItemSpecifier];

  if (v11 == v4)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  v16 = [objc_opt_class() localizedDescriptionForAnnounceCallsConfiguration:v12];
  v13 = [(ICSCallAnnouncementSettingsController *)self groupSpecifier];
  [v13 setProperty:v16 forKey:PSFooterTextGroupKey];

  v14 = [(ICSCallAnnouncementSettingsController *)self groupSpecifier];
  [(ICSCallAnnouncementSettingsController *)self reloadSpecifier:v14];

  [(ICSCallAnnouncementSettingsController *)self donateAnnounceCallsEnabledSignalForState:v12 previousState:v6];
  v15 = [(ICSCallAnnouncementSettingsController *)self userConfiguration];
  [v15 setAnnounceCalls:v12];
}

- (void)donateAnnounceCallsEnabledSignalForState:(unint64_t)a3 previousState:(unint64_t)a4
{
  if (a3)
  {
    if (!a4)
    {
      +[_TtC17ICSSettingsBundle13ICSTipsHelper donateEventAnnouceCallsEnabled];
    }
  }
}

@end
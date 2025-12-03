@interface HPRFSessionTrackerPaceSettingViewController
+ (id)selectedPaceViewString;
- (HPRFSessionTrackerPaceSettingViewController)init;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation HPRFSessionTrackerPaceSettingViewController

+ (id)selectedPaceViewString
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanolifestyle.sessiontrackerapp"];
  synchronize = [v2 synchronize];
  v4 = [v2 BOOLForKey:@"ShowAveragePace"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = @"AVERAGE_PACE_LABEL";
  }

  else
  {
    v7 = @"CURRENT_PACE_LABEL";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  return v8;
}

- (HPRFSessionTrackerPaceSettingViewController)init
{
  v8.receiver = self;
  v8.super_class = HPRFSessionTrackerPaceSettingViewController;
  v2 = [(HPRFSessionTrackerPaceSettingViewController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NPSManager);
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    v5 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanolifestyle.sessiontrackerapp"];
    domainAccessor = v2->_domainAccessor;
    v2->_domainAccessor = v5;
  }

  return v2;
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PACE_VIEW_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(HPRFSessionTrackerPaceSettingViewController *)self loadSpecifiersFromPlistName:@"SessionTrackerPaceSettings" target:self];
    v6 = [v5 specifierForID:@"CURRENT_PACE_ID"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CURRENT_PACE_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v9 = [NSString stringWithFormat:v8];

    [v6 setName:v9];
    v10 = [v5 specifierForID:@"AVERAGE_PACE_ID"];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"AVERAGE_PACE_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v13 = [NSString stringWithFormat:v12];

    [v10 setName:v13];
    synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
    if ([(NPSDomainAccessor *)self->_domainAccessor BOOLForKey:@"ShowAveragePace"])
    {
      v15 = v10;
    }

    else
    {
      v15 = v6;
    }

    v16 = v15;
    v17 = [v5 specifierForID:@"PACE_VIEW_GROUP_ID"];
    [v17 setProperty:v16 forKey:PSRadioGroupCheckedSpecifierKey];

    localizedPaneTitle = [(HPRFSessionTrackerPaceSettingViewController *)self localizedPaneTitle];
    [(HPRFSessionTrackerPaceSettingViewController *)self setTitle:localizedPaneTitle];

    v19 = *&self->BPSNotificationAppController_opaque[v3];
    *&self->BPSNotificationAppController_opaque[v3] = v5;

    v4 = *&self->BPSNotificationAppController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(HPRFSessionTrackerPaceSettingViewController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  identifier = [v9 identifier];
  v11 = [identifier isEqualToString:@"AVERAGE_PACE_ID"];

  if (v11 || ([v9 identifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"CURRENT_PACE_ID"), v12, v13))
  {
    [(NPSDomainAccessor *)self->_domainAccessor setBool:v11 forKey:@"ShowAveragePace"];
  }

  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  syncManager = self->_syncManager;
  v21 = @"ShowAveragePace";
  v16 = [NSArray arrayWithObjects:&v21 count:1];
  v17 = [NSSet setWithArray:v16];
  [(NPSManager *)syncManager synchronizeNanoDomain:@"com.apple.nanolifestyle.sessiontrackerapp" keys:v17];

  [(HPRFSessionTrackerPaceSettingViewController *)self reloadSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSViewController__parentController]);
  specifier = [(HPRFSessionTrackerPaceSettingViewController *)self specifier];
  [WeakRetained reloadSpecifier:specifier];

  v20.receiver = self;
  v20.super_class = HPRFSessionTrackerPaceSettingViewController;
  [(HPRFSessionTrackerPaceSettingViewController *)&v20 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  bundle = [(HPRFSessionTrackerPaceSettingViewController *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  return bundleIdentifier;
}

@end
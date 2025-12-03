@interface COSFocusSettingsController
- (id)pairSyncState:(id)state;
- (id)specifiers;
- (void)_updateFooterTextForSettingsGroupSpecifier:(id)specifier syncEnabled:(BOOL)enabled;
- (void)setPairSyncState:(id)state specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation COSFocusSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [PSSpecifier groupSpecifierWithID:@"FOCUS_SHARE_GROUP_ID"];
    [v5 addObject:v6];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"FOCUS_SYNC_TOGGLE" value:&stru_10026E598 table:@"DoNotDisturb"];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setPairSyncState:specifier:" get:"pairSyncState:" detail:0 cell:6 edit:0];

    v10 = +[PBBGatewayManager sharedManager];
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 pairSyncStateEditable]);
    [v9 setProperty:v11 forKey:PSEnabledKey];

    [v5 addObject:v9];
    v12 = +[PBBGatewayManager sharedManager];
    -[COSFocusSettingsController _updateFooterTextForSettingsGroupSpecifier:syncEnabled:](self, "_updateFooterTextForSettingsGroupSpecifier:syncEnabled:", v6, [v12 pairSyncEnabled]);

    v13 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v5;

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (void)_updateFooterTextForSettingsGroupSpecifier:(id)specifier syncEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = v6;
  if (enabledCopy)
  {
    v7 = @"FOCUS_SYNC_FOOTER_ON";
  }

  else
  {
    v7 = @"FOCUS_SYNC_FOOTER_OFF";
  }

  v8 = [v6 localizedStringForKey:v7 value:&stru_10026E598 table:@"DoNotDisturb"];
  [specifierCopy setProperty:v8 forKey:PSFooterTextGroupKey];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = COSFocusSettingsController;
  [(COSFocusSettingsController *)&v4 viewDidLoad];
  v3 = +[PBBGatewayManager sharedManager];
  [v3 setDelegate:self];
}

- (id)pairSyncState:(id)state
{
  v3 = +[PBBGatewayManager sharedManager];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 pairSyncEnabled]);

  return v4;
}

- (void)setPairSyncState:(id)state specifier:(id)specifier
{
  bOOLValue = [state BOOLValue];
  v6 = +[PBBGatewayManager sharedManager];
  [v6 setPairSyncEnabled:bOOLValue];

  v11 = [(COSFocusSettingsController *)self specifierForID:@"FOCUS_SHARE_GROUP_ID"];
  [(COSFocusSettingsController *)self _updateFooterTextForSettingsGroupSpecifier:v11 syncEnabled:bOOLValue];
  v7 = [(COSFocusSettingsController *)self indexPathForSpecifier:v11];
  section = [v7 section];

  table = [(COSFocusSettingsController *)self table];
  v10 = [NSIndexSet indexSetWithIndex:section];
  [table reloadSections:v10 withRowAnimation:5];
}

@end
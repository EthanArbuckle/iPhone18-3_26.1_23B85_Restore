@interface CSLNotificationsOnlyAppListController
- (id)localizedMirroringDetailFooter;
- (void)setSpecifier:(id)specifier;
@end

@implementation CSLNotificationsOnlyAppListController

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy propertyForKey:@"bundleID"];
  v6 = [v5 copy];
  bundleID = self->_bundleID;
  self->_bundleID = v6;

  v8 = [specifierCopy propertyForKey:@"localizedName"];
  v9 = [v8 copy];
  paneTitle = self->_paneTitle;
  self->_paneTitle = v9;

  v11.receiver = self;
  v11.super_class = CSLNotificationsOnlyAppListController;
  [(CSLNotificationsOnlyAppListController *)&v11 setSpecifier:specifierCopy];
}

- (id)localizedMirroringDetailFooter
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  if ([(CSLNotificationsOnlyAppListController *)self showAlerts])
  {
    v4 = @"SHOW_ALERTS_FOOTER";
  }

  else
  {
    v4 = @"DONT_SHOW_ALERTS_FOOTER";
  }

  v5 = [v3 localizedStringForKey:v4 value:&stru_C638 table:@"Notifications"];

  return v5;
}

@end
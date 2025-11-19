@interface PerAppUISettingsViewController
- (id)specifiers;
- (void)setSpecifier:(id)a3;
@end

@implementation PerAppUISettingsViewController

- (id)specifiers
{
  if (!self->_helper)
  {
    v3 = objc_opt_new();
    helper = self->_helper;
    self->_helper = v3;

    v5 = [(PerAppUISettingsViewController *)self appID];
    [(AXDisplayTextMotionSpecifiersHelper *)self->_helper setAppID:v5];

    [(AXDisplayTextMotionSpecifiersHelper *)self->_helper setSettingsController:self];
  }

  v6 = OBJC_IVAR___PSListController__specifiers;
  v7 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v7)
  {
    v8 = [objc_allocWithZone(NSMutableArray) init];
    v9 = [(AXDisplayTextMotionSpecifiersHelper *)self->_helper displayTextSpecifiersIncludingSmartInvert:_AXSMossdeepEnabled() == 0 isPerApp:1];
    [v8 axSafelyAddObjectsFromArray:v9];

    if (![(NSString *)self->_appID isEqualToString:AX_LiveTranscriptionBundleName])
    {
      v10 = [(AXDisplayTextMotionSpecifiersHelper *)self->_helper motionSpecifiers];
      [v8 axSafelyAddObjectsFromArray:v10];
    }

    v11 = [v8 copy];
    v12 = *&self->super.AXUISettingsListController_opaque[v6];
    *&self->super.AXUISettingsListController_opaque[v6] = v11;

    v7 = *&self->super.AXUISettingsListController_opaque[v6];
  }

  return v7;
}

- (void)setSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = PerAppUISettingsViewController;
  v4 = a3;
  [(PerAppUISettingsViewController *)&v7 setSpecifier:v4];
  v5 = [v4 propertyForKey:{@"BundleIdentifier", v7.receiver, v7.super_class}];

  appID = self->_appID;
  self->_appID = v5;
}

@end
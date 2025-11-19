@interface TPSBridgeSettingsController
- (id)localizedPaneTitle;
@end

@implementation TPSBridgeSettingsController

- (id)localizedPaneTitle
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(TPSBridgeSettingsController *)self titleKey];
  v5 = [v3 localizedStringForKey:v4 value:&stru_40F8 table:0];

  return v5;
}

@end
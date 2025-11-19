@interface BuddyFindMyDisabledAlertDebugPresenter
- (BOOL)presentFindMyDisabledAlertIfNeededOnViewController:(id)a3;
- (BuddyFindMyDisabledAlertDebugPresenter)initWithPreferences:(id)a3;
@end

@implementation BuddyFindMyDisabledAlertDebugPresenter

- (BuddyFindMyDisabledAlertDebugPresenter)initWithPreferences:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (os_variant_has_internal_ui() & 1) != 0 && ([location[0] BOOLForKey:@"FindMyDisabledAlertDebugOverride"])
  {
    v3 = v7;
    v7 = 0;
    v5.receiver = v3;
    v5.super_class = BuddyFindMyDisabledAlertDebugPresenter;
    v7 = [(BuddyFindMyDisabledAlertDebugPresenter *)&v5 init];
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v8;
}

- (BOOL)presentFindMyDisabledAlertIfNeededOnViewController:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [NSString localizedStringWithFormat:@"[DEBUG] Find My Disabled"];
  v6 = [NSString localizedStringWithFormat:@"[DEBUG] Find My is disabled on your secondary account"];
  v5 = [UIAlertController alertControllerWithTitle:v7 message:v6 preferredStyle:1];
  v3 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
  [(UIAlertController *)v5 addAction:v3];

  [location[0] presentViewController:v5 animated:1 completion:0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end
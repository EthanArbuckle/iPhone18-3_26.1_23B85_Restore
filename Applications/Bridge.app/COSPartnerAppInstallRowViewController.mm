@interface COSPartnerAppInstallRowViewController
- (BOOL)showsOnGizmoEnabled;
- (COSPartnerAppInstallRowViewController)init;
- (Class)installRowClass;
- (id)customSpecifiers;
- (id)installRowIdentifier;
- (id)partnerAppBundleIdentifier;
- (id)partnerAppStoreIdentifier;
- (void)dealloc;
@end

@implementation COSPartnerAppInstallRowViewController

- (COSPartnerAppInstallRowViewController)init
{
  v6.receiver = self;
  v6.super_class = COSPartnerAppInstallRowViewController;
  v2 = [(COSSockPuppetAppListController *)&v6 init];
  if (v2)
  {
    v3 = [[COSPartnerAppAMSDelegate alloc] initWithPresentingViewController:v2];
    amsDelegate = v2->_amsDelegate;
    v2->_amsDelegate = v3;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = COSPartnerAppInstallRowViewController;
  [(COSSockPuppetAppListController *)&v4 dealloc];
}

- (id)installRowIdentifier
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPartnerAppInstallRowViewController installRowIdentifier]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

- (Class)installRowClass
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPartnerAppInstallRowViewController installRowClass]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

- (id)partnerAppBundleIdentifier
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPartnerAppInstallRowViewController partnerAppBundleIdentifier]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

- (id)partnerAppStoreIdentifier
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPartnerAppInstallRowViewController partnerAppStoreIdentifier]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

- (id)customSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  installRowIdentifier = [(COSPartnerAppInstallRowViewController *)self installRowIdentifier];
  [v4 setIdentifier:installRowIdentifier];

  v6 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:1 edit:0];
  installRowClass = [(COSPartnerAppInstallRowViewController *)self installRowClass];
  [v6 setProperty:installRowClass forKey:PSCellClassKey];
  [v6 setProperty:&off_100281B28 forKey:PSTableCellHeightKey];
  [v3 insertObject:v6 atIndex:0];
  [v3 insertObject:v4 atIndex:0];

  return v3;
}

- (BOOL)showsOnGizmoEnabled
{
  v3 = [COSAppInstallationController alloc];
  partnerAppBundleIdentifier = [(COSPartnerAppInstallRowViewController *)self partnerAppBundleIdentifier];
  partnerAppStoreIdentifier = [(COSPartnerAppInstallRowViewController *)self partnerAppStoreIdentifier];
  v6 = [(COSAppInstallationController *)v3 initWithBundleID:partnerAppBundleIdentifier andStoreIdentifier:partnerAppStoreIdentifier];

  v7 = OBJC_IVAR___PSViewController__specifier;
  v8 = [*&self->super.PSAppListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"COSSockPuppetInstallationState"];
  integerValue = [v8 integerValue];

  v10 = [*&self->super.PSAppListController_opaque[v7] propertyForKey:@"applicationMode"];
  integerValue2 = [v10 integerValue];

  if (integerValue == 2 && integerValue2 == 2)
  {
    isInstalled = 1;
  }

  else
  {
    isInstalled = [(COSAppInstallationController *)v6 isInstalled];
  }

  return isInstalled;
}

@end
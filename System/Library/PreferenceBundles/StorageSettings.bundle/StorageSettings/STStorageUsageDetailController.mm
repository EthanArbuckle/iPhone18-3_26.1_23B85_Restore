@interface STStorageUsageDetailController
- (id)dataSize:(id)size;
- (id)specifiers;
@end

@implementation STStorageUsageDetailController

- (id)dataSize:(id)size
{
  v3 = [size propertyForKey:STStorageAppKey];
  usageBundle = [v3 usageBundle];

  if (usageBundle)
  {
    appSize = [v3 appSize];
    [appSize userTotal];

    v6 = STFormattedSize();
  }

  else
  {
    v6 = &stru_2D2D0;
  }

  return v6;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = STStorageAppKey;
    v6 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:STStorageAppKey];
    storageApp = self->_storageApp;
    self->_storageApp = v6;

    v8 = +[NSMutableArray array];
    v9 = [STStorageUsageAppHeaderCell specifierForStorageApp:self->_storageApp];
    [v8 addObject:v9];

    v10 = STStorageLocStr(STDocsAndDataKey);
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"dataSize:" detail:0 cell:4 edit:0];

    [v11 setProperty:self->_storageApp forKey:v5];
    [v8 addObject:v11];
    usageBundle = [(STStorageApp *)self->_storageApp usageBundle];
    usageBundleStorageReporter = [usageBundle usageBundleStorageReporter];
    v14 = objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v14 = [usageBundleStorageReporter usageDetailControllerClassForUsageBundleApp:usageBundle];
    }

    v15 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:v14 cell:-1 edit:0];

    [PSUsageBundleDetailController setupSpecifier:v15 forMediaGroups:0];
    [v15 setProperty:usageBundle forKey:PSUsageBundleAppKey];
    [v15 setProperty:self->_storageApp forKey:v5];
    [v15 setProperty:self->_storageApp forKey:@"USAGE_APP"];
    v16 = usageBundle;
    if (objc_opt_respondsToSelector())
    {
      usageBundle2 = [(STStorageApp *)self->_storageApp usageBundle];
      v26 = v15;
      [usageBundleStorageReporter usageBundleApp:usageBundle2 willDisplaySpecifier:&v26];
      v18 = v26;

      v15 = v18;
      v16 = usageBundle;
    }

    v19 = objc_alloc_init(v14);
    usageDetailController = self->_usageDetailController;
    self->_usageDetailController = v19;

    rootController = [(STStorageUsageDetailController *)self rootController];
    [(PSUsageBundleDetailController *)self->_usageDetailController setRootController:rootController];

    [(PSUsageBundleDetailController *)self->_usageDetailController setParentController:self];
    [(PSUsageBundleDetailController *)self->_usageDetailController setSpecifier:v15];
    [(PSUsageBundleDetailController *)self->_usageDetailController viewDidLoad];
    [(STStorageUsageDetailController *)self addChildViewController:self->_usageDetailController];
    specifiers = [(PSUsageBundleDetailController *)self->_usageDetailController specifiers];
    [v8 addObjectsFromArray:specifiers];

    v23 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v8;
    v24 = v8;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

@end
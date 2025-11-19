@interface STStorageUsageDetailController
- (id)dataSize:(id)a3;
- (id)specifiers;
@end

@implementation STStorageUsageDetailController

- (id)dataSize:(id)a3
{
  v3 = [a3 propertyForKey:STStorageAppKey];
  v4 = [v3 usageBundle];

  if (v4)
  {
    v5 = [v3 appSize];
    [v5 userTotal];

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
    v12 = [(STStorageApp *)self->_storageApp usageBundle];
    v13 = [v12 usageBundleStorageReporter];
    v14 = objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v14 = [v13 usageDetailControllerClassForUsageBundleApp:v12];
    }

    v15 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:v14 cell:-1 edit:0];

    [PSUsageBundleDetailController setupSpecifier:v15 forMediaGroups:0];
    [v15 setProperty:v12 forKey:PSUsageBundleAppKey];
    [v15 setProperty:self->_storageApp forKey:v5];
    [v15 setProperty:self->_storageApp forKey:@"USAGE_APP"];
    v16 = v12;
    if (objc_opt_respondsToSelector())
    {
      v17 = [(STStorageApp *)self->_storageApp usageBundle];
      v26 = v15;
      [v13 usageBundleApp:v17 willDisplaySpecifier:&v26];
      v18 = v26;

      v15 = v18;
      v16 = v12;
    }

    v19 = objc_alloc_init(v14);
    usageDetailController = self->_usageDetailController;
    self->_usageDetailController = v19;

    v21 = [(STStorageUsageDetailController *)self rootController];
    [(PSUsageBundleDetailController *)self->_usageDetailController setRootController:v21];

    [(PSUsageBundleDetailController *)self->_usageDetailController setParentController:self];
    [(PSUsageBundleDetailController *)self->_usageDetailController setSpecifier:v15];
    [(PSUsageBundleDetailController *)self->_usageDetailController viewDidLoad];
    [(STStorageUsageDetailController *)self addChildViewController:self->_usageDetailController];
    v22 = [(PSUsageBundleDetailController *)self->_usageDetailController specifiers];
    [v8 addObjectsFromArray:v22];

    v23 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v8;
    v24 = v8;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

@end
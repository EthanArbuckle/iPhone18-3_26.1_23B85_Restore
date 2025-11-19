@interface COSPreferencesRootController
- (id)rootListController;
- (void)loadView;
@end

@implementation COSPreferencesRootController

- (id)rootListController
{
  rootListController = self->_rootListController;
  if (!rootListController)
  {
    v4 = objc_alloc_init(PSSpecifier);
    objc_storeWeak(&v4[OBJC_IVAR___PSSpecifier_target], self);
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Settings" value:&stru_10026E598 table:@"Settings"];
    [v4 setName:v6];

    v7 = objc_alloc_init(COSSettingsListController);
    [(COSSettingsListController *)v7 setExtendedLayoutIncludesOpaqueBars:1];
    [(COSSettingsListController *)v7 setRootController:self];
    [(COSSettingsListController *)v7 setSpecifier:v4];
    [(COSSettingsListController *)v7 setParentController:self];
    [(COSSettingsListController *)v7 setEdgeToEdgeCells:1];
    v8 = self->_rootListController;
    self->_rootListController = &v7->super;

    rootListController = self->_rootListController;
  }

  return rootListController;
}

- (void)loadView
{
  v2.receiver = self;
  v2.super_class = COSPreferencesRootController;
  [(COSPreferencesRootController *)&v2 loadView];
}

@end
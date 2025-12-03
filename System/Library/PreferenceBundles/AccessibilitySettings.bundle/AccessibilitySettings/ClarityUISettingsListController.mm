@interface ClarityUISettingsListController
- (ClarityUISettingsListController)initWithDataSource:(id)source;
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation ClarityUISettingsListController

- (ClarityUISettingsListController)initWithDataSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = ClarityUISettingsListController;
  v6 = [(ClarityUISettingsListController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    bundleIdentifier = [sourceCopy bundleIdentifier];
    v9 = ClarityUIDisplayNameForApp(bundleIdentifier);
    title = v7->_title;
    v7->_title = v9;

    v11 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ClarityUISettingsListController;
  [(ClarityUISettingsListController *)&v5 viewDidLoad];
  title = self->_title;
  navigationItem = [(ClarityUISettingsListController *)self navigationItem];
  [navigationItem setTitle:title];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    [(ClarityUISettingsListController *)self reloadSpecifiers];
    specifiers = [(ClarityUISettingsDataSource *)self->_dataSource specifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = specifiers;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

@end
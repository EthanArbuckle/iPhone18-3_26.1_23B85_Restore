@interface AXBuddySettingsNavigationController
- (AXBuddySettingsNavigationController)init;
- (void)viewDidLoad;
@end

@implementation AXBuddySettingsNavigationController

- (AXBuddySettingsNavigationController)init
{
  v3 = AXBuddyBundleLocString(@"TITLE_CELL_TITLE");
  v4 = AXLocStringKeyForModel();
  v5 = AXBuddyBundleLocString(v4);

  v6 = [[AXBuddySettingsMenuViewController alloc] initWithTitle:v3 detailText:v5 icon:0 adoptTableViewScrollView:0];
  v20.receiver = self;
  v20.super_class = AXBuddySettingsNavigationController;
  v7 = [(AXBuddySettingsNavigationController *)&v20 initWithRootViewController:v6];
  v8 = v7;
  if (v7)
  {
    [(AXBuddySettingsNavigationController *)v7 setDelegate:v7];
    v9 = sub_13A8();
    [v9 applyThemeToNavigationController:v8];

    v10 = sub_13A8();
    backgroundColor = [v10 backgroundColor];
    view = [(AXBuddySettingsNavigationController *)v8 view];
    [view setBackgroundColor:backgroundColor];

    [(AXBuddySettingsNavigationController *)v8 setNavigationBarHidden:0];
    v22 = objc_opt_class();
    v13 = [NSArray arrayWithObjects:&v22 count:1];
    v14 = [UITableViewCell appearanceWhenContainedInInstancesOfClasses:v13];

    v15 = +[UIColor secondarySystemBackgroundColor];
    [v14 setBackgroundColor:v15];

    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v16 = [NSArray arrayWithObjects:v21 count:2];
    v17 = [UILabel appearanceWhenContainedInInstancesOfClasses:v16];
    v18 = +[UIColor secondaryLabelColor];
    [v17 setTextColor:v18];
  }

  return v8;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = AXBuddySettingsNavigationController;
  [(AXBuddySettingsNavigationController *)&v11 viewDidLoad];
  objc_initWeak(&location, self);
  v12 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v12 count:1];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_15F8;
  v8 = &unk_C2B0;
  objc_copyWeak(&v9, &location);
  v4 = [(AXBuddySettingsNavigationController *)self registerForTraitChanges:v3 withHandler:&v5];
  [(AXBuddySettingsNavigationController *)self setTraitChangeRegistration:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

@end
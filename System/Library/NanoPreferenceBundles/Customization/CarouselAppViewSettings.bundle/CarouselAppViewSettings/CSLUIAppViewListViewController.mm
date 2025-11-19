@interface CSLUIAppViewListViewController
- (CSLUIAppViewListViewController)init;
- (id)_appLayoutSpecifiers;
- (id)_appViewSpecifiers;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CSLUIAppViewListViewController

- (CSLUIAppViewListViewController)init
{
  v10.receiver = self;
  v10.super_class = CSLUIAppViewListViewController;
  v2 = [(CSLUIAppViewListViewController *)&v10 init];
  if (v2)
  {
    v3 = +[PDRRegistry sharedInstance];
    v4 = [v3 getActivePairedDevice];

    v2->_supportsSilverAppView = [v4 supportsCapability:1853271121];
    v5 = objc_alloc_init(CSLPRFLauncherViewModeSetting);
    setting = v2->_setting;
    v2->_setting = v5;

    v7 = [[CSLPRFAppViewChoiceCell alloc] initWithStyle:0 reuseIdentifier:0];
    [v7 sizeToFit];
    [v7 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v2->_choiceViewPreferredHeight = v8;
    [(CSLPRFLauncherViewModeSetting *)v2->_setting setDelegate:v2];
  }

  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CSLUIAppViewListViewController;
  [(CSLUIAppViewListViewController *)&v4 viewDidLoad];
  if (self->_supportsSilverAppView)
  {
    v3 = [(CSLUIAppViewListViewController *)self table];
    [v3 setSeparatorStyle:0];
  }
}

- (id)specifiers
{
  if (self->_supportsSilverAppView)
  {
    [(CSLUIAppViewListViewController *)self _appViewSpecifiers];
  }

  else
  {
    [(CSLUIAppViewListViewController *)self _appLayoutSpecifiers];
  }
  v2 = ;

  return v2;
}

- (id)_appViewSpecifiers
{
  v3 = [(CSLUIAppViewListViewController *)self loadSpecifiersFromPlistName:@"CarouselAppViewChoice" target:self];
  v4 = [v3 specifierForID:@"APP_VIEW_HEADER_GROUP_ID"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BRIDGE_APP_VIEW_HEADER_TEXT" value:&stru_3D170 table:@"CarouselAppViewChoice"];

  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];
  v7 = [v3 specifierForID:@"APP_VIEW_CHOICE_ID"];
  [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v8 = [NSNumber numberWithDouble:self->_choiceViewPreferredHeight];
  [v7 setProperty:v8 forKey:PSTableCellHeightKey];

  if ([(CSLPRFLauncherViewModeSetting *)self->_setting launcherViewMode]== &dword_0 + 2)
  {
    [v3 removeObjectsInRange:{objc_msgSend(v3, "indexOfSpecifierWithID:", @"APP_ARRANGEMENT_GROUP_ID", 2}];
  }

  v9 = [v3 copy];
  v10 = OBJC_IVAR___PSListController__specifiers;
  v11 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v9;

  v12 = *&self->PSListController_opaque[v10];
  v13 = v12;

  return v12;
}

- (id)_appLayoutSpecifiers
{
  v3 = [(CSLUIAppViewListViewController *)self loadSpecifiersFromPlistName:@"CarouselLayoutSettings" target:self];
  v4 = [v3 specifierForID:@"APP_LAYOUT_GROUP_ID"];
  if ([(CSLPRFLauncherViewModeSetting *)self->_setting launcherViewMode]== &dword_0 + 2)
  {
    [v3 removeObjectsInRange:{objc_msgSend(v3, "indexOfSpecifierWithID:", @"APP_ARRANGEMENT_GROUP_ID", 2}];
    v5 = @"APP_LIST_VIEW_ID";
  }

  else
  {
    v5 = @"APP_GRID_VIEW_ID";
  }

  v6 = [v3 specifierForID:v5];
  [v4 setProperty:v6 forKey:PSRadioGroupCheckedSpecifierKey];
  v7 = [v3 copy];
  v8 = OBJC_IVAR___PSListController__specifiers;
  v9 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v7;

  v10 = *&self->PSListController_opaque[v8];
  v11 = v10;

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_supportsSilverAppView)
  {
    v8 = OBJC_IVAR___PSListController__specifiers;
    v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] specifierForID:@"APP_LAYOUT_GROUP_ID"];
    v10 = [*&self->PSListController_opaque[v8] objectAtIndex:{-[CSLUIAppViewListViewController indexForIndexPath:](self, "indexForIndexPath:", v7)}];
    v11 = cslprf_dock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 identifier];
      *buf = 138412546;
      v21 = v12;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%@ selected, layoutRadioGroup = %@", buf, 0x16u);
    }

    v13 = [v10 identifier];
    v14 = [v13 isEqualToString:@"APP_GRID_VIEW_ID"];

    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v16 = [v10 identifier];
      v17 = [v16 isEqualToString:@"APP_LIST_VIEW_ID"];

      if ((v17 & 1) == 0)
      {
        v18.receiver = self;
        v18.super_class = CSLUIAppViewListViewController;
        [(CSLUIAppViewListViewController *)&v18 tableView:v6 didSelectRowAtIndexPath:v7];
        goto LABEL_11;
      }

      v15 = 2;
    }

    [(CSLPRFLauncherViewModeSetting *)self->_setting setLauncherViewMode:v15 reason:2];
    [v9 setProperty:v10 forKey:PSRadioGroupCheckedSpecifierKey];
    v18.receiver = self;
    v18.super_class = CSLUIAppViewListViewController;
    [(CSLUIAppViewListViewController *)&v18 tableView:v6 didSelectRowAtIndexPath:v7];
    [(CSLUIAppViewListViewController *)self reloadSpecifiers];
LABEL_11:

    goto LABEL_12;
  }

  v19.receiver = self;
  v19.super_class = CSLUIAppViewListViewController;
  [(CSLUIAppViewListViewController *)&v19 tableView:v6 didSelectRowAtIndexPath:v7];
LABEL_12:
}

@end
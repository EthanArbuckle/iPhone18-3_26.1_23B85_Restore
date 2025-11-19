@interface SharePlaySettingsBundleController
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3;
- (SharePlaySettingsBundleController)initWithParentListController:(id)a3;
- (id)parentListController;
- (id)specifiersWithSpecifier:(id)a3;
- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4;
- (void)performButtonActionForSpecifier:(id)a3;
- (void)propertiesDidChangeForConfiguration:(id)a3;
@end

@implementation SharePlaySettingsBundleController

- (SharePlaySettingsBundleController)initWithParentListController:(id)a3
{
  v9.receiver = self;
  v9.super_class = SharePlaySettingsBundleController;
  v3 = [(SharePlaySettingsBundleController *)&v9 initWithParentListController:a3];
  if (v3)
  {
    v4 = objc_alloc_init(SharePlayProviderController);
    providerController = v3->_providerController;
    v3->_providerController = v4;

    v6 = objc_alloc_init(TUUserConfiguration);
    userConfiguration = v3->_userConfiguration;
    v3->_userConfiguration = v6;

    [(TUUserConfiguration *)v3->_userConfiguration addDelegate:v3 queue:&_dispatch_main_q];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = [(SharePlaySettingsBundleController *)self groupSpecifier];
  if (v5)
  {
    goto LABEL_2;
  }

  v6 = [(SharePlaySettingsBundleController *)self mainSpecifier];

  if (!v6)
  {
    v5 = +[PSSpecifier emptyGroupSpecifier];
    [v5 setIdentifier:@"SHAREPLAY_SETTINGS_GROUP"];
    v9 = [SharePlaySettingsStrings localizedStringForKey:@"BUNDLE_CONTROLLER_GROUP_SPECIFIER_DETAIL"];
    [v5 setProperty:v9 forKey:PSFooterTextGroupKey];

    [v4 addObject:v5];
    [(SharePlaySettingsBundleController *)self setGroupSpecifier:v5];
    v10 = [(SharePlaySettingsBundleController *)self parentListController];
    v11 = [(SharePlaySettingsBundleController *)self isStateDrivenNavigationPossibleWithParentController:v10];

    v12 = [SharePlaySettingsStrings localizedStringForKey:@"LIST_CONTROLLER_TITLE"];
    if (v11)
    {
      v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:2 edit:0];
      [v13 setButtonAction:"performButtonActionForSpecifier:"];
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
      if (!v13)
      {
LABEL_12:
        [(SharePlaySettingsBundleController *)self setMainSpecifier:v13];

LABEL_2:
        goto LABEL_4;
      }
    }

    [v13 setIdentifier:@"SHAREPLAY_SETTINGS"];
    v14 = [(SharePlaySettingsBundleController *)self providerController];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v13 setProperty:v14 forKey:v16];

    v17 = [(SharePlaySettingsBundleController *)self userConfiguration];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v13 setProperty:v17 forKey:v19];

    [v4 addObject:v13];
    goto LABEL_12;
  }

LABEL_4:
  v7 = [v4 copy];

  return v7;
}

- (id)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)performButtonActionForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(SharePlaySettingsBundleController *)self parentListController];
  [(SharePlaySettingsBundleController *)self handleUserDidTapOnMainSpecifier:v4 parentController:v5];
}

- (void)propertiesDidChangeForConfiguration:(id)a3
{
  v5 = [(SharePlaySettingsBundleController *)self parentListController];
  v4 = [(SharePlaySettingsBundleController *)self mainSpecifier];
  [v5 reloadSpecifier:v4];
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3
{
  v4 = sub_5BA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5C04();
  sub_5BF4();
  sub_5BE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = [v9 traitCollection];
  sub_5C14();

  LOBYTE(v10) = sub_5B84();
  (*(v5 + 8))(v8, v4);

  return v10 & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4
{
  v18 = sub_5BA4();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_5C34() - 8) + 64);
  __chkstk_darwin();
  v10 = sub_5B74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5C04();
  sub_5BF4();
  sub_5BE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = a4;
  sub_5C24();
  sub_5B64();
  v16 = [v15 traitCollection];
  sub_5C14();

  sub_51D8();
  sub_5B94();

  (*(v5 + 8))(v8, v18);
  (*(v11 + 8))(v14, v10);
}

@end
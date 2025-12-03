@interface SharePlaySettingsBundleController
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)controller;
- (SharePlaySettingsBundleController)initWithParentListController:(id)controller;
- (id)parentListController;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)handleUserDidTapOnMainSpecifier:(id)specifier parentController:(id)controller;
- (void)performButtonActionForSpecifier:(id)specifier;
- (void)propertiesDidChangeForConfiguration:(id)configuration;
@end

@implementation SharePlaySettingsBundleController

- (SharePlaySettingsBundleController)initWithParentListController:(id)controller
{
  v9.receiver = self;
  v9.super_class = SharePlaySettingsBundleController;
  v3 = [(SharePlaySettingsBundleController *)&v9 initWithParentListController:controller];
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

- (id)specifiersWithSpecifier:(id)specifier
{
  v4 = +[NSMutableArray array];
  groupSpecifier = [(SharePlaySettingsBundleController *)self groupSpecifier];
  if (groupSpecifier)
  {
    goto LABEL_2;
  }

  mainSpecifier = [(SharePlaySettingsBundleController *)self mainSpecifier];

  if (!mainSpecifier)
  {
    groupSpecifier = +[PSSpecifier emptyGroupSpecifier];
    [groupSpecifier setIdentifier:@"SHAREPLAY_SETTINGS_GROUP"];
    v9 = [SharePlaySettingsStrings localizedStringForKey:@"BUNDLE_CONTROLLER_GROUP_SPECIFIER_DETAIL"];
    [groupSpecifier setProperty:v9 forKey:PSFooterTextGroupKey];

    [v4 addObject:groupSpecifier];
    [(SharePlaySettingsBundleController *)self setGroupSpecifier:groupSpecifier];
    parentListController = [(SharePlaySettingsBundleController *)self parentListController];
    v11 = [(SharePlaySettingsBundleController *)self isStateDrivenNavigationPossibleWithParentController:parentListController];

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
    providerController = [(SharePlaySettingsBundleController *)self providerController];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v13 setProperty:providerController forKey:v16];

    userConfiguration = [(SharePlaySettingsBundleController *)self userConfiguration];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v13 setProperty:userConfiguration forKey:v19];

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

- (void)performButtonActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  parentListController = [(SharePlaySettingsBundleController *)self parentListController];
  [(SharePlaySettingsBundleController *)self handleUserDidTapOnMainSpecifier:specifierCopy parentController:parentListController];
}

- (void)propertiesDidChangeForConfiguration:(id)configuration
{
  parentListController = [(SharePlaySettingsBundleController *)self parentListController];
  mainSpecifier = [(SharePlaySettingsBundleController *)self mainSpecifier];
  [parentListController reloadSpecifier:mainSpecifier];
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)controller
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

  controllerCopy = controller;
  traitCollection = [controllerCopy traitCollection];
  sub_5C14();

  LOBYTE(traitCollection) = sub_5B84();
  (*(v5 + 8))(v8, v4);

  return traitCollection & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)specifier parentController:(id)controller
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

  controllerCopy = controller;
  sub_5C24();
  sub_5B64();
  traitCollection = [controllerCopy traitCollection];
  sub_5C14();

  sub_51D8();
  sub_5B94();

  (*(v5 + 8))(v8, v18);
  (*(v11 + 8))(v14, v10);
}

@end
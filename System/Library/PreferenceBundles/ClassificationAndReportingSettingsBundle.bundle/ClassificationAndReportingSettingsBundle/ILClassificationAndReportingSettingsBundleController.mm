@interface ILClassificationAndReportingSettingsBundleController
- (BOOL)isHidden;
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)controller;
- (id)parentListController;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)handleUserDidTapOnMainSpecifier:(id)specifier parentController:(id)controller;
- (void)performButtonActionForSpecifier:(id)specifier;
@end

@implementation ILClassificationAndReportingSettingsBundleController

- (id)specifiersWithSpecifier:(id)specifier
{
  specifiersArray = [(ILClassificationAndReportingSettingsBundleController *)self specifiersArray];
  if (specifiersArray)
  {
    goto LABEL_9;
  }

  if ([(ILClassificationAndReportingSettingsBundleController *)self isHidden])
  {
    goto LABEL_10;
  }

  specifiersArray = [NSMutableArray arrayWithCapacity:1];
  parentListController = [(ILClassificationAndReportingSettingsBundleController *)self parentListController];
  v6 = [(ILClassificationAndReportingSettingsBundleController *)self isStateDrivenNavigationPossibleWithParentController:parentListController];

  v7 = [ILClassificationSettingsStrings localizedStringForKey:@"REPORTING_MARKETING_NAME"];
  if (v6)
  {
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:2 edit:0];
    [v8 setButtonAction:"performButtonActionForSpecifier:"];
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  if (v8)
  {
LABEL_7:
    [v8 setIdentifier:@"CLASSIFICATION_AND_REPORTING"];
    [specifiersArray addObject:v8];
    [(ILClassificationAndReportingSettingsBundleController *)self setSpecifiersArray:specifiersArray];
  }

LABEL_8:

LABEL_9:
LABEL_10:

  return [(ILClassificationAndReportingSettingsBundleController *)self specifiersArray];
}

- (id)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (BOOL)isHidden
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    v4 = ILDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Hiding ILClassificationAndReporting settings row from view", v6, 2u);
    }
  }

  return userInterfaceIdiom == &dword_0 + 1;
}

- (void)performButtonActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  parentListController = [(ILClassificationAndReportingSettingsBundleController *)self parentListController];
  [(ILClassificationAndReportingSettingsBundleController *)self handleUserDidTapOnMainSpecifier:specifierCopy parentController:parentListController];
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)controller
{
  v4 = sub_3624();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3664();
  sub_3654();
  sub_3644();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  traitCollection = [controllerCopy traitCollection];
  sub_3674();

  LOBYTE(traitCollection) = sub_3604();
  (*(v5 + 8))(v8, v4);

  return traitCollection & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)specifier parentController:(id)controller
{
  v18 = sub_3624();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_3694() - 8) + 64);
  __chkstk_darwin();
  v10 = sub_35F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3664();
  sub_3654();
  sub_3644();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  sub_3684();
  sub_35E4();
  traitCollection = [controllerCopy traitCollection];
  sub_3674();

  sub_2CF4();
  sub_3614();

  (*(v5 + 8))(v8, v18);
  (*(v11 + 8))(v14, v10);
}

@end
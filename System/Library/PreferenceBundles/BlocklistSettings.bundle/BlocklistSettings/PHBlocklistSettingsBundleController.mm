@interface PHBlocklistSettingsBundleController
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)controller;
- (PSListController)parentListController;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)handleUserDidTapOnMainSpecifier:(id)specifier parentController:(id)controller;
- (void)performButtonActionForSpecifier:(id)specifier;
@end

@implementation PHBlocklistSettingsBundleController

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  specifiersArray = [(PHBlocklistSettingsBundleController *)self specifiersArray];

  if (!specifiersArray)
  {
    v5 = +[NSMutableArray array];
    v6 = [PHBlocklistSettingsStrings localizedStringForKey:@"BLOCKLIST_MAIN_SPECIFIER_TITLE"];
    parentListController = [(PHBlocklistSettingsBundleController *)self parentListController];
    v8 = [(PHBlocklistSettingsBundleController *)self isStateDrivenNavigationPossibleWithParentController:parentListController];

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_opt_class();
    }

    v10 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:v9 cell:2 edit:0];
    v11 = v10;
    if (v8)
    {
      [v10 setButtonAction:"performButtonActionForSpecifier:"];
    }

    if (v11)
    {
      [v11 setIdentifier:@"BLOCKLIST_SETTINGS_MAIN_SPECIFIER_IDENTIFIER"];
      [v5 addObject:v11];
    }

    v12 = [v5 copy];
    [(PHBlocklistSettingsBundleController *)self setSpecifiersArray:v12];
  }

  return [(PHBlocklistSettingsBundleController *)self specifiersArray];
}

- (void)performButtonActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  parentListController = [(PHBlocklistSettingsBundleController *)self parentListController];
  [(PHBlocklistSettingsBundleController *)self handleUserDidTapOnMainSpecifier:specifierCopy parentController:parentListController];
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)controller
{
  v4 = sub_EB10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  controllerCopy = controller;
  traitCollection = [controllerCopy traitCollection];
  sub_EC60();

  LOBYTE(traitCollection) = sub_EAF0();
  (*(v5 + 8))(v8, v4);
  return traitCollection & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)specifier parentController:(id)controller
{
  v5 = sub_EB10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_EC80();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_EAE0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  controllerCopy = controller;
  sub_EC70();
  sub_EAD0();
  traitCollection = [controllerCopy traitCollection];
  sub_EC60();

  sub_E4B0();
  sub_EB00();

  (*(v6 + 8))(v9, v5);
  (*(v13 + 8))(v16, v12);
}

@end
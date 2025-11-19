@interface PHBlocklistSettingsBundleController
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3;
- (PSListController)parentListController;
- (id)specifiersWithSpecifier:(id)a3;
- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4;
- (void)performButtonActionForSpecifier:(id)a3;
@end

@implementation PHBlocklistSettingsBundleController

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = [(PHBlocklistSettingsBundleController *)self specifiersArray];

  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [PHBlocklistSettingsStrings localizedStringForKey:@"BLOCKLIST_MAIN_SPECIFIER_TITLE"];
    v7 = [(PHBlocklistSettingsBundleController *)self parentListController];
    v8 = [(PHBlocklistSettingsBundleController *)self isStateDrivenNavigationPossibleWithParentController:v7];

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

- (void)performButtonActionForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PHBlocklistSettingsBundleController *)self parentListController];
  [(PHBlocklistSettingsBundleController *)self handleUserDidTapOnMainSpecifier:v4 parentController:v5];
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3
{
  v4 = sub_EB10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = [v9 traitCollection];
  sub_EC60();

  LOBYTE(v10) = sub_EAF0();
  (*(v5 + 8))(v8, v4);
  return v10 & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4
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
  v17 = a4;
  sub_EC70();
  sub_EAD0();
  v18 = [v17 traitCollection];
  sub_EC60();

  sub_E4B0();
  sub_EB00();

  (*(v6 + 8))(v9, v5);
  (*(v13 + 8))(v16, v12);
}

@end
@interface CKSettingsAppGroupController
- (id)enabledForSpecifier:(id)a3;
- (id)specifiers;
- (void)setEnabled:(id)a3 forSpecifier:(id)a4;
@end

@implementation CKSettingsAppGroupController

- (id)specifiers
{
  v3 = +[PSSpecifier emptyGroupSpecifier];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = CKLocalizedStringFromTableInBundle();
  [v3 setProperty:v5 forKey:PSFooterTextGroupKey];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = CKLocalizedStringFromTableInBundle();
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setEnabled:forSpecifier:" get:"enabledForSpecifier:" detail:0 cell:6 edit:0];

  v9 = +[PSSpecifier emptyGroupSpecifier];
  v10 = [(CKSettingsAppGroupController *)self specifier];
  v11 = [v10 propertyForKey:@"CKSettingsDisplayableAppPermissionGroup"];

  v12 = [v11 appNameImages];
  v13 = [v12 CKMap:&stru_14520];

  v14 = objc_opt_new();
  v15 = OBJC_IVAR___PSListController__specifiers;
  v16 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v14;

  [*&self->PSListController_opaque[v15] addObject:v3];
  [*&self->PSListController_opaque[v15] addObject:v8];
  [*&self->PSListController_opaque[v15] addObject:v9];
  [*&self->PSListController_opaque[v15] addObjectsFromArray:v13];
  v17 = *&self->PSListController_opaque[v15];
  v18 = v17;

  return v17;
}

- (void)setEnabled:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v7 = [(CKSettingsAppGroupController *)self parentController];
  v6 = [(CKSettingsAppGroupController *)self specifier];
  [v7 setAppPermissionEnabled:v5 forSpecifier:v6];
}

- (id)enabledForSpecifier:(id)a3
{
  v4 = [(CKSettingsAppGroupController *)self parentController];
  v5 = [(CKSettingsAppGroupController *)self specifier];
  v6 = [v4 appPermissionEnabledForSpecifier:v5];

  return v6;
}

@end
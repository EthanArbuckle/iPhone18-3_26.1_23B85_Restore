@interface SCATCustomizeMenuController
- (id)specifiers;
@end

@implementation SCATCustomizeMenuController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v20 = +[PSSpecifier emptyGroupSpecifier];
    v6 = AXParameterizedLocalizedString();
    [v20 setProperty:v6 forKey:PSFooterTextGroupKey];

    [v5 addObject:v20];
    v7 = AXParameterizedLocalizedString();
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    v9 = PSIDKey;
    [v8 setProperty:@"TopLevel" forKey:PSIDKey];
    [v5 addObject:v8];
    v10 = AXParameterizedLocalizedString();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v11 setProperty:@"Gestures" forKey:v9];
    [v5 addObject:v11];
    v12 = AXParameterizedLocalizedString();
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v13 setProperty:@"Device" forKey:v9];
    [v5 addObject:v13];
    v14 = AXParameterizedLocalizedString();
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v15 setProperty:@"Settings" forKey:v9];
    [v5 addObject:v15];
    v16 = AXParameterizedLocalizedString();
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v17 setProperty:@"MediaControls" forKey:v9];
    [v5 addObject:v17];
    [(SCATCustomizeMenuController *)self setAllSpecifiersUnsearchable:v5];
    v18 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

@end
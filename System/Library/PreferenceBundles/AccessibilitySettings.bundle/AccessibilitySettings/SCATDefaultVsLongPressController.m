@interface SCATDefaultVsLongPressController
- (id)_actionStringForSpecifier:(id)a3;
- (id)actionStringForLongPress:(BOOL)a3;
- (id)controllerForLongPress:(BOOL)a3;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SCATDefaultVsLongPressController

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SCATDefaultVsLongPressController;
  [(SCATDefaultVsLongPressController *)&v4 viewWillAppear:a3];
  [(SCATDefaultVsLongPressController *)self reloadSpecifiers];
}

- (id)_actionStringForSpecifier:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"LongPressKey"];
  v5 = -[SCATDefaultVsLongPressController actionStringForLongPress:](self, "actionStringForLongPress:", [v4 BOOLValue]);

  return v5;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [PSSpecifier groupSpecifierWithID:@"ActionGroupIdentifier"];
    [v5 addObject:v6];
    v7 = AXParameterizedLocalizedString();
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"_actionStringForSpecifier:" detail:0 cell:2 edit:0];

    v9 = PSEnabledKey;
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PSEnabledKey];
    [v8 setObject:&__kCFBooleanFalse forKeyedSubscript:@"LongPressKey"];
    [v5 addObject:v8];

    v10 = AXParameterizedLocalizedString();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"_actionStringForSpecifier:" detail:0 cell:2 edit:0];

    [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:v9];
    [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:@"LongPressKey"];
    [v5 addObject:v11];

    v12 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = SCATDefaultVsLongPressController;
  v8 = [(SCATDefaultVsLongPressController *)&v22 tableView:v6 cellForRowAtIndexPath:v7];
  v9 = [v8 specifier];
  v10 = [v9 objectForKeyedSubscript:@"LongPressKey"];
  v11 = [v10 BOOLValue];

  v12 = [(SCATDefaultVsLongPressController *)self controllerForLongPress:v11];
  if ([v12 conformsToProtocol:&OBJC_PROTOCOL___SCATControllerCompletionDelegate])
  {
    v13 = [[UINavigationController alloc] initWithRootViewController:v12];
    v14 = v12;
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __70__SCATDefaultVsLongPressController_tableView_didSelectRowAtIndexPath___block_invoke;
    v18[3] = &unk_255818;
    objc_copyWeak(&v20, &location);
    v15 = v13;
    v19 = v15;
    [v14 setCompletion:v18];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __70__SCATDefaultVsLongPressController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v17[3] = &unk_2553B0;
    v17[4] = self;
    [(SCATDefaultVsLongPressController *)self presentViewController:v15 animated:1 completion:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = [v9 name];
    v15 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:-1 edit:0];

    [(SCATDefaultVsLongPressController *)self showController:v12 withSpecifier:v15];
  }
}

void __70__SCATDefaultVsLongPressController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifierID:@"ActionGroupIdentifier"];
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
}

- (id)actionStringForLongPress:(BOOL)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)controllerForLongPress:(BOOL)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end
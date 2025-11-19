@interface CSGrantedDelegateDetailsController
- (id)enabledWriteAccess:(id)a3;
- (id)initInAddDelegateMode:(BOOL)a3;
- (id)specifiers;
- (void)modalCancelPressed:(id)a3;
- (void)modalSavePressed:(id)a3;
- (void)removeDelegateTapped:(id)a3;
- (void)setEnabledWriteAccess:(id)a3 specifier:(id)a4;
- (void)setSpecifier:(id)a3;
@end

@implementation CSGrantedDelegateDetailsController

- (id)initInAddDelegateMode:(BOOL)a3
{
  v3 = a3;
  v15.receiver = self;
  v15.super_class = CSGrantedDelegateDetailsController;
  v4 = [(CSGrantedDelegateDetailsController *)&v15 init];
  if (v4)
  {
    v5 = objc_alloc_init(EKEventStore);
    eventStore = v4->_eventStore;
    v4->_eventStore = v5;

    v4->_addDelegateMode = v3;
    if (v3)
    {
      v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v4 action:"modalCancelPressed:"];
      v8 = [(CSGrantedDelegateDetailsController *)v4 navigationItem];
      [v8 setLeftBarButtonItem:v7];

      v9 = [UIBarButtonItem alloc];
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"Save" value:&stru_210B8 table:@"MobileCalSettings"];
      v12 = [v9 initWithTitle:v11 style:2 target:v4 action:"modalSavePressed:"];
      v13 = [(CSGrantedDelegateDetailsController *)v4 navigationItem];
      [v13 setRightBarButtonItem:v12];
    }
  }

  return v4;
}

- (void)setSpecifier:(id)a3
{
  v14.receiver = self;
  v14.super_class = CSGrantedDelegateDetailsController;
  v4 = a3;
  [(CSGrantedDelegateDetailsController *)&v14 setSpecifier:v4];
  v5 = [v4 propertyForKey:{@"CSDelegateClassInstanceKey", v14.receiver, v14.super_class}];

  objc_storeWeak(&self->_delegateFromSpecifier, v5);
  v6 = [(CSGrantedDelegateDetailsController *)self specifier];
  v7 = [v6 propertyForKey:@"CSSourceKey"];
  source = self->_source;
  self->_source = v7;

  v9 = [(CSGrantedDelegateDetailsController *)self specifier];
  v10 = [v9 propertyForKey:@"CSGrantedDelegateKey"];
  grantedDelegate = self->_grantedDelegate;
  self->_grantedDelegate = v10;

  v12 = [(CalGrantedDelegate *)self->_grantedDelegate displayName];
  v13 = [(CSGrantedDelegateDetailsController *)self navigationItem];
  [v13 setTitle:v12];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = +[NSMutableArray array];
    v7 = +[PSSpecifier emptyGroupSpecifier];
    v8 = [(CSGrantedDelegateDetailsController *)self enabledWriteAccess:0];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = @"Enable write access for delegate explanatory note (switch on)";
      v11 = @"This account can create, edit and delete events and calendars on your behalf.";
    }

    else
    {
      v10 = @"Enable write access for delegate explanatory note (switch off)";
      v11 = @"This account can view your calendars and the details of non-private events.";
    }

    v12 = [v5 localizedStringForKey:v10 value:v11 table:@"MobileCalSettings"];
    [v7 setProperty:v12 forKey:PSFooterTextGroupKey];

    [v6 addObject:v7];
    v13 = [v5 localizedStringForKey:@"Enable write access specifier name" value:@"Enable Write Access" table:@"MobileCalSettings"];
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"setEnabledWriteAccess:specifier:" get:"enabledWriteAccess:" detail:0 cell:6 edit:0];
    readWriteSwitch = self->_readWriteSwitch;
    self->_readWriteSwitch = v14;

    [v6 addObject:self->_readWriteSwitch];
    if (!self->_addDelegateMode)
    {
      v16 = +[PSSpecifier emptyGroupSpecifier];
      [v6 addObject:v16];

      v17 = [v5 localizedStringForKey:@"Remove delegate name" value:@"Remove Delegate" table:@"MobileCalSettings"];

      v18 = [PSSpecifier deleteButtonSpecifierWithName:v17 target:self action:"removeDelegateTapped:"];
      removeDelegateButton = self->_removeDelegateButton;
      self->_removeDelegateButton = v18;

      [v6 addObject:self->_removeDelegateButton];
      v13 = v17;
    }

    v20 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v6;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setEnabledWriteAccess:(id)a3 specifier:(id)a4
{
  v6 = a3;
  objc_storeStrong(&self->_currentPermission, a3);
  if ([v6 BOOLValue])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [(CalGrantedDelegate *)self->_grantedDelegate setPermission:v7];
  if (!self->_addDelegateMode)
  {
    eventStore = self->_eventStore;
    grantedDelegate = self->_grantedDelegate;
    source = self->_source;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2FA4;
    v12[3] = &unk_209F8;
    v12[4] = self;
    [(EKEventStore *)eventStore updateGrantedDelegate:grantedDelegate action:2 source:source completion:v12];
    WeakRetained = objc_loadWeakRetained(&self->_delegateFromSpecifier);
    [WeakRetained didModifyDelegate:self->_grantedDelegate];
  }

  [(CSGrantedDelegateDetailsController *)self reloadSpecifiers];
}

- (id)enabledWriteAccess:(id)a3
{
  currentPermission = self->_currentPermission;
  if (currentPermission)
  {
    v4 = currentPermission;
  }

  else
  {
    v4 = [NSNumber numberWithInt:[(CalGrantedDelegate *)self->_grantedDelegate permission]== &def_F7BC + 2];
  }

  return v4;
}

- (void)removeDelegateTapped:(id)a3
{
  v4 = a3;
  if (!self->_addDelegateMode)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = +[UIDevice currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v8 = v7 & 0xFFFFFFFFFFFFFFFBLL;
    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = [v5 localizedStringForKey:@"Remove delegate name" value:@"Remove Delegate" table:@"MobileCalSettings"];
    }

    else
    {
      v9 = &stru_210B8;
    }

    v10 = [v5 localizedStringForKey:@"Confirm delete delegate alert sheet description" value:@"Removing this delegate will remove their read and write access to your account." table:@"MobileCalSettings"];
    v11 = +[UIDevice currentDevice];
    v12 = [v11 userInterfaceIdiom];

    v13 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:(v12 & 0xFFFFFFFFFFFFFFFBLL) == 1];

    if (v8 == 1)
    {
    }

    v14 = [v5 localizedStringForKey:@"Confirm delete delegate alert sheet delete button" value:@"Remove Delegate" table:@"MobileCalSettings"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_33AC;
    v24[3] = &unk_20A20;
    v24[4] = self;
    v15 = [UIAlertAction actionWithTitle:v14 style:2 handler:v24];
    [v13 addAction:v15];

    v16 = [v5 localizedStringForKey:@"Confirm delete delegate alert sheet cancel button" value:@"Cancel" table:@"MobileCalSettings"];
    v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:&stru_20A60];
    [v13 addAction:v17];

    v18 = [(CSGrantedDelegateDetailsController *)self cachedCellForSpecifier:v4];
    v19 = [v13 popoverPresentationController];
    [v19 setSourceView:v18];

    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    v23 = [v13 popoverPresentationController];
    [v23 setSourceRect:{CGRectNull.origin.x, y, width, height}];

    [(CSGrantedDelegateDetailsController *)self presentViewController:v13 animated:1 completion:0];
  }
}

- (void)modalCancelPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateFromSpecifier);
  [WeakRetained didDismissViewControllerSavingNewDelegate:0];

  [(CSGrantedDelegateDetailsController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)modalSavePressed:(id)a3
{
  [(EKEventStore *)self->_eventStore updateGrantedDelegate:self->_grantedDelegate action:0 source:self->_source completion:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegateFromSpecifier);
  [WeakRetained didModifyDelegate:self->_grantedDelegate];

  v5 = objc_loadWeakRetained(&self->_delegateFromSpecifier);
  [v5 didDismissViewControllerSavingNewDelegate:1];

  [(CSGrantedDelegateDetailsController *)self dismissViewControllerAnimated:1 completion:0];
}

@end
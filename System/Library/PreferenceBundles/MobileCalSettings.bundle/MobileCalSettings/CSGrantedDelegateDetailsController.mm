@interface CSGrantedDelegateDetailsController
- (id)enabledWriteAccess:(id)access;
- (id)initInAddDelegateMode:(BOOL)mode;
- (id)specifiers;
- (void)modalCancelPressed:(id)pressed;
- (void)modalSavePressed:(id)pressed;
- (void)removeDelegateTapped:(id)tapped;
- (void)setEnabledWriteAccess:(id)access specifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
@end

@implementation CSGrantedDelegateDetailsController

- (id)initInAddDelegateMode:(BOOL)mode
{
  modeCopy = mode;
  v15.receiver = self;
  v15.super_class = CSGrantedDelegateDetailsController;
  v4 = [(CSGrantedDelegateDetailsController *)&v15 init];
  if (v4)
  {
    v5 = objc_alloc_init(EKEventStore);
    eventStore = v4->_eventStore;
    v4->_eventStore = v5;

    v4->_addDelegateMode = modeCopy;
    if (modeCopy)
    {
      v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v4 action:"modalCancelPressed:"];
      navigationItem = [(CSGrantedDelegateDetailsController *)v4 navigationItem];
      [navigationItem setLeftBarButtonItem:v7];

      v9 = [UIBarButtonItem alloc];
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"Save" value:&stru_210B8 table:@"MobileCalSettings"];
      v12 = [v9 initWithTitle:v11 style:2 target:v4 action:"modalSavePressed:"];
      navigationItem2 = [(CSGrantedDelegateDetailsController *)v4 navigationItem];
      [navigationItem2 setRightBarButtonItem:v12];
    }
  }

  return v4;
}

- (void)setSpecifier:(id)specifier
{
  v14.receiver = self;
  v14.super_class = CSGrantedDelegateDetailsController;
  specifierCopy = specifier;
  [(CSGrantedDelegateDetailsController *)&v14 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"CSDelegateClassInstanceKey", v14.receiver, v14.super_class}];

  objc_storeWeak(&self->_delegateFromSpecifier, v5);
  specifier = [(CSGrantedDelegateDetailsController *)self specifier];
  v7 = [specifier propertyForKey:@"CSSourceKey"];
  source = self->_source;
  self->_source = v7;

  specifier2 = [(CSGrantedDelegateDetailsController *)self specifier];
  v10 = [specifier2 propertyForKey:@"CSGrantedDelegateKey"];
  grantedDelegate = self->_grantedDelegate;
  self->_grantedDelegate = v10;

  displayName = [(CalGrantedDelegate *)self->_grantedDelegate displayName];
  navigationItem = [(CSGrantedDelegateDetailsController *)self navigationItem];
  [navigationItem setTitle:displayName];
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
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
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

- (void)setEnabledWriteAccess:(id)access specifier:(id)specifier
{
  accessCopy = access;
  objc_storeStrong(&self->_currentPermission, access);
  if ([accessCopy BOOLValue])
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

- (id)enabledWriteAccess:(id)access
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

- (void)removeDelegateTapped:(id)tapped
{
  tappedCopy = tapped;
  if (!self->_addDelegateMode)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v6 userInterfaceIdiom];

    v8 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = [v5 localizedStringForKey:@"Remove delegate name" value:@"Remove Delegate" table:@"MobileCalSettings"];
    }

    else
    {
      v9 = &stru_210B8;
    }

    v10 = [v5 localizedStringForKey:@"Confirm delete delegate alert sheet description" value:@"Removing this delegate will remove their read and write access to your account." table:@"MobileCalSettings"];
    v11 = +[UIDevice currentDevice];
    userInterfaceIdiom2 = [v11 userInterfaceIdiom];

    v13 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1];

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

    v18 = [(CSGrantedDelegateDetailsController *)self cachedCellForSpecifier:tappedCopy];
    popoverPresentationController = [v13 popoverPresentationController];
    [popoverPresentationController setSourceView:v18];

    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    popoverPresentationController2 = [v13 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{CGRectNull.origin.x, y, width, height}];

    [(CSGrantedDelegateDetailsController *)self presentViewController:v13 animated:1 completion:0];
  }
}

- (void)modalCancelPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateFromSpecifier);
  [WeakRetained didDismissViewControllerSavingNewDelegate:0];

  [(CSGrantedDelegateDetailsController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)modalSavePressed:(id)pressed
{
  [(EKEventStore *)self->_eventStore updateGrantedDelegate:self->_grantedDelegate action:0 source:self->_source completion:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegateFromSpecifier);
  [WeakRetained didModifyDelegate:self->_grantedDelegate];

  v5 = objc_loadWeakRetained(&self->_delegateFromSpecifier);
  [v5 didDismissViewControllerSavingNewDelegate:1];

  [(CSGrantedDelegateDetailsController *)self dismissViewControllerAnimated:1 completion:0];
}

@end
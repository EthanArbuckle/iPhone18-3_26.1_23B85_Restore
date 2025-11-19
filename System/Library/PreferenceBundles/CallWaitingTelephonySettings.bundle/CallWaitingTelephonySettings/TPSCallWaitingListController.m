@interface TPSCallWaitingListController
- (PSSpecifier)mainSwitchSpecifier;
- (TPSCallWaitingController)callWaitingController;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)callWaitingController:(id)a3 didChangeState:(int64_t)a4 error:(id)a5;
- (void)configureCell:(id)a3;
- (void)configureCell:(id)a3 forSpecifier:(id)a4;
- (void)setMainSwitchOn:(id)a3;
@end

@implementation TPSCallWaitingListController

- (TPSCallWaitingController)callWaitingController
{
  callWaitingController = self->_callWaitingController;
  if (!callWaitingController)
  {
    v4 = [TPSCallWaitingController alloc];
    v5 = [(TPSCallWaitingListController *)self subscriptionContext];
    v6 = [(TPSCallWaitingController *)v4 initWithSubscriptionContext:v5];
    v7 = self->_callWaitingController;
    self->_callWaitingController = v6;

    [(TPSCallWaitingController *)self->_callWaitingController setDelegate:self];
    callWaitingController = self->_callWaitingController;
  }

  return callWaitingController;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->TPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(TPSCallWaitingListController *)self subscriptionContext];
    if (v5)
    {
      v6 = +[NSMutableArray array];
      v7 = [(TPSCallWaitingListController *)self mainSwitchSpecifier];
      [v6 addObject:v7];

      v8 = [v6 copy];
      v9 = *&self->TPSListController_opaque[v3];
      *&self->TPSListController_opaque[v3] = v8;
    }

    v4 = *&self->TPSListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = TPSCallWaitingListController;
  v5 = [(TPSCallWaitingListController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  [(TPSCallWaitingListController *)self configureCell:v5];

  return v5;
}

- (PSSpecifier)mainSwitchSpecifier
{
  mainSwitchSpecifier = self->_mainSwitchSpecifier;
  if (!mainSwitchSpecifier)
  {
    v4 = [TPSCallWaitingStrings localizedStringForKey:@"MAIN_SWITCH_SPECIFIER_TITLE"];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    v6 = self->_mainSwitchSpecifier;
    self->_mainSwitchSpecifier = v5;

    mainSwitchSpecifier = self->_mainSwitchSpecifier;
  }

  return mainSwitchSpecifier;
}

- (void)setMainSwitchOn:(id)a3
{
  if ([a3 isOn])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(TPSCallWaitingListController *)self callWaitingController];
  [v5 requestStateChange:v4];

  [(TPSCallWaitingListController *)self reloadSpecifiers];
}

- (void)configureCell:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
    v5 = [v4 specifier];
    [(TPSCallWaitingListController *)self configureCell:v4 forSpecifier:v5];
  }
}

- (void)configureCell:(id)a3 forSpecifier:(id)a4
{
  v11 = a3;
  v5 = [v11 specifier];
  v6 = [(TPSCallWaitingListController *)self mainSwitchSpecifier];

  if (v5 == v6)
  {
    v7 = [(TPSCallWaitingListController *)self callWaitingController];
    v8 = [v7 state];

    if (v8)
    {
      v9 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v9 addTarget:self action:"setMainSwitchOn:" forControlEvents:4096];
      v10 = [(TPSCallWaitingListController *)self callWaitingController];
      [v9 setOn:{objc_msgSend(v10, "state") == &dword_0 + 2}];
    }

    else
    {
      v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v9 startAnimating];
    }

    [v11 setAccessoryView:v9];
  }
}

- (void)callWaitingController:(id)a3 didChangeState:(int64_t)a4 error:(id)a5
{
  v7 = a5;
  if (v7)
  {
    if (os_variant_has_internal_diagnostics())
    {
      [UIAlertController tps_tapToRadarAlertControllerWithError:v7];
    }

    else
    {
      [UIAlertController tps_alertControllerWithError:v7];
    }
    v6 = ;
    if (v6)
    {
      [(TPSCallWaitingListController *)self presentViewController:v6 animated:1 completion:0];
    }
  }

  [(TPSCallWaitingListController *)self reloadSpecifiers];
}

@end
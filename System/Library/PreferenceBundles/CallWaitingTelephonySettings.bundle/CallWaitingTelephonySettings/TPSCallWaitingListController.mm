@interface TPSCallWaitingListController
- (PSSpecifier)mainSwitchSpecifier;
- (TPSCallWaitingController)callWaitingController;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)callWaitingController:(id)controller didChangeState:(int64_t)state error:(id)error;
- (void)configureCell:(id)cell;
- (void)configureCell:(id)cell forSpecifier:(id)specifier;
- (void)setMainSwitchOn:(id)on;
@end

@implementation TPSCallWaitingListController

- (TPSCallWaitingController)callWaitingController
{
  callWaitingController = self->_callWaitingController;
  if (!callWaitingController)
  {
    v4 = [TPSCallWaitingController alloc];
    subscriptionContext = [(TPSCallWaitingListController *)self subscriptionContext];
    v6 = [(TPSCallWaitingController *)v4 initWithSubscriptionContext:subscriptionContext];
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
    subscriptionContext = [(TPSCallWaitingListController *)self subscriptionContext];
    if (subscriptionContext)
    {
      v6 = +[NSMutableArray array];
      mainSwitchSpecifier = [(TPSCallWaitingListController *)self mainSwitchSpecifier];
      [v6 addObject:mainSwitchSpecifier];

      v8 = [v6 copy];
      v9 = *&self->TPSListController_opaque[v3];
      *&self->TPSListController_opaque[v3] = v8;
    }

    v4 = *&self->TPSListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = TPSCallWaitingListController;
  v5 = [(TPSCallWaitingListController *)&v7 tableView:view cellForRowAtIndexPath:path];
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

- (void)setMainSwitchOn:(id)on
{
  if ([on isOn])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  callWaitingController = [(TPSCallWaitingListController *)self callWaitingController];
  [callWaitingController requestStateChange:v4];

  [(TPSCallWaitingListController *)self reloadSpecifiers];
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = cellCopy;
    specifier = [v4 specifier];
    [(TPSCallWaitingListController *)self configureCell:v4 forSpecifier:specifier];
  }
}

- (void)configureCell:(id)cell forSpecifier:(id)specifier
{
  cellCopy = cell;
  specifier = [cellCopy specifier];
  mainSwitchSpecifier = [(TPSCallWaitingListController *)self mainSwitchSpecifier];

  if (specifier == mainSwitchSpecifier)
  {
    callWaitingController = [(TPSCallWaitingListController *)self callWaitingController];
    state = [callWaitingController state];

    if (state)
    {
      v9 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v9 addTarget:self action:"setMainSwitchOn:" forControlEvents:4096];
      callWaitingController2 = [(TPSCallWaitingListController *)self callWaitingController];
      [v9 setOn:{objc_msgSend(callWaitingController2, "state") == &dword_0 + 2}];
    }

    else
    {
      v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v9 startAnimating];
    }

    [cellCopy setAccessoryView:v9];
  }
}

- (void)callWaitingController:(id)controller didChangeState:(int64_t)state error:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    if (os_variant_has_internal_diagnostics())
    {
      [UIAlertController tps_tapToRadarAlertControllerWithError:errorCopy];
    }

    else
    {
      [UIAlertController tps_alertControllerWithError:errorCopy];
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
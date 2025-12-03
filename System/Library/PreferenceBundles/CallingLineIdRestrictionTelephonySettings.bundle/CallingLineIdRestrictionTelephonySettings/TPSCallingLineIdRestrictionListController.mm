@interface TPSCallingLineIdRestrictionListController
- (PSSpecifier)mainSwitchSpecifier;
- (TPSCallingLineIdRestrictionController)callingLineIdRestrictionController;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)configureCell:(id)cell;
- (void)configureCell:(id)cell forSpecifier:(id)specifier;
- (void)setMainSwitchOn:(id)on;
@end

@implementation TPSCallingLineIdRestrictionListController

- (TPSCallingLineIdRestrictionController)callingLineIdRestrictionController
{
  callingLineIdRestrictionController = self->_callingLineIdRestrictionController;
  if (!callingLineIdRestrictionController)
  {
    v4 = [TPSCallingLineIdRestrictionController alloc];
    subscriptionContext = [(TPSCallingLineIdRestrictionListController *)self subscriptionContext];
    v6 = [(TPSCallingLineIdRestrictionController *)v4 initWithSubscriptionContext:subscriptionContext];
    v7 = self->_callingLineIdRestrictionController;
    self->_callingLineIdRestrictionController = v6;

    [(TPSCallingLineIdRestrictionController *)self->_callingLineIdRestrictionController setDelegate:self];
    callingLineIdRestrictionController = self->_callingLineIdRestrictionController;
  }

  return callingLineIdRestrictionController;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->TPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    subscriptionContext = [(TPSCallingLineIdRestrictionListController *)self subscriptionContext];
    if (subscriptionContext)
    {
      v6 = +[NSMutableArray array];
      mainSwitchSpecifier = [(TPSCallingLineIdRestrictionListController *)self mainSwitchSpecifier];
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
  v7.super_class = TPSCallingLineIdRestrictionListController;
  v5 = [(TPSCallingLineIdRestrictionListController *)&v7 tableView:view cellForRowAtIndexPath:path];
  [(TPSCallingLineIdRestrictionListController *)self configureCell:v5];

  return v5;
}

- (PSSpecifier)mainSwitchSpecifier
{
  mainSwitchSpecifier = self->_mainSwitchSpecifier;
  if (!mainSwitchSpecifier)
  {
    v4 = [TPSCallingLineIdRestrictionStrings localizedStringForKey:@"MAIN_SWITCH_SPECIFIER_TITLE"];
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
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  callingLineIdRestrictionController = [(TPSCallingLineIdRestrictionListController *)self callingLineIdRestrictionController];
  [callingLineIdRestrictionController requestStateChange:v4];

  [(TPSCallingLineIdRestrictionListController *)self reloadSpecifiers];
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = cellCopy;
    specifier = [v4 specifier];
    [(TPSCallingLineIdRestrictionListController *)self configureCell:v4 forSpecifier:specifier];
  }
}

- (void)configureCell:(id)cell forSpecifier:(id)specifier
{
  cellCopy = cell;
  specifier = [cellCopy specifier];
  mainSwitchSpecifier = [(TPSCallingLineIdRestrictionListController *)self mainSwitchSpecifier];

  if (specifier == mainSwitchSpecifier)
  {
    callingLineIdRestrictionController = [(TPSCallingLineIdRestrictionListController *)self callingLineIdRestrictionController];
    state = [callingLineIdRestrictionController state];

    if (state)
    {
      v9 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v9 addTarget:self action:"setMainSwitchOn:" forControlEvents:4096];
      callingLineIdRestrictionController2 = [(TPSCallingLineIdRestrictionListController *)self callingLineIdRestrictionController];
      [v9 setOn:{objc_msgSend(callingLineIdRestrictionController2, "state") != &dword_0 + 2}];

      callingLineIdRestrictionController3 = [(TPSCallingLineIdRestrictionListController *)self callingLineIdRestrictionController];
      [v9 setEnabled:{objc_msgSend(callingLineIdRestrictionController3, "isEditable")}];
    }

    else
    {
      v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v9 startAnimating];
    }

    [cellCopy setAccessoryView:v9];
  }
}

@end
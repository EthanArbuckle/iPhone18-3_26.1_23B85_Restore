@interface TPSCallingLineIdRestrictionListController
- (PSSpecifier)mainSwitchSpecifier;
- (TPSCallingLineIdRestrictionController)callingLineIdRestrictionController;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)configureCell:(id)a3;
- (void)configureCell:(id)a3 forSpecifier:(id)a4;
- (void)setMainSwitchOn:(id)a3;
@end

@implementation TPSCallingLineIdRestrictionListController

- (TPSCallingLineIdRestrictionController)callingLineIdRestrictionController
{
  callingLineIdRestrictionController = self->_callingLineIdRestrictionController;
  if (!callingLineIdRestrictionController)
  {
    v4 = [TPSCallingLineIdRestrictionController alloc];
    v5 = [(TPSCallingLineIdRestrictionListController *)self subscriptionContext];
    v6 = [(TPSCallingLineIdRestrictionController *)v4 initWithSubscriptionContext:v5];
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
    v5 = [(TPSCallingLineIdRestrictionListController *)self subscriptionContext];
    if (v5)
    {
      v6 = +[NSMutableArray array];
      v7 = [(TPSCallingLineIdRestrictionListController *)self mainSwitchSpecifier];
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
  v7.super_class = TPSCallingLineIdRestrictionListController;
  v5 = [(TPSCallingLineIdRestrictionListController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
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

- (void)setMainSwitchOn:(id)a3
{
  if ([a3 isOn])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [(TPSCallingLineIdRestrictionListController *)self callingLineIdRestrictionController];
  [v5 requestStateChange:v4];

  [(TPSCallingLineIdRestrictionListController *)self reloadSpecifiers];
}

- (void)configureCell:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
    v5 = [v4 specifier];
    [(TPSCallingLineIdRestrictionListController *)self configureCell:v4 forSpecifier:v5];
  }
}

- (void)configureCell:(id)a3 forSpecifier:(id)a4
{
  v12 = a3;
  v5 = [v12 specifier];
  v6 = [(TPSCallingLineIdRestrictionListController *)self mainSwitchSpecifier];

  if (v5 == v6)
  {
    v7 = [(TPSCallingLineIdRestrictionListController *)self callingLineIdRestrictionController];
    v8 = [v7 state];

    if (v8)
    {
      v9 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v9 addTarget:self action:"setMainSwitchOn:" forControlEvents:4096];
      v10 = [(TPSCallingLineIdRestrictionListController *)self callingLineIdRestrictionController];
      [v9 setOn:{objc_msgSend(v10, "state") != &dword_0 + 2}];

      v11 = [(TPSCallingLineIdRestrictionListController *)self callingLineIdRestrictionController];
      [v9 setEnabled:{objc_msgSend(v11, "isEditable")}];
    }

    else
    {
      v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v9 startAnimating];
    }

    [v12 setAccessoryView:v9];
  }
}

@end
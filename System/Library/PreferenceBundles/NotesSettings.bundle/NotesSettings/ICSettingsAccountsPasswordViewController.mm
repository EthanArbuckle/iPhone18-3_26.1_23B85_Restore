@interface ICSettingsAccountsPasswordViewController
- (NSArray)accountSpecifiers;
- (PSSpecifier)accountGroupSpecifier;
- (id)specifierForAccount:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)didTapAccountButton:(id)a3;
- (void)reloadSpecifiers;
@end

@implementation ICSettingsAccountsPasswordViewController

- (void)reloadSpecifiers
{
  accountGroupSpecifier = self->_accountGroupSpecifier;
  self->_accountGroupSpecifier = 0;

  accountSpecifiers = self->_accountSpecifiers;
  self->_accountSpecifiers = 0;

  v7 = objc_alloc_init(NSMutableArray);
  v5 = [(ICSettingsAccountsPasswordViewController *)self accountGroupSpecifier];
  [v7 addObject:v5];

  v6 = [(ICSettingsAccountsPasswordViewController *)self accountSpecifiers];
  [v7 addObjectsFromArray:v6];

  [(ICSettingsAccountsPasswordViewController *)self setSpecifiers:v7];
}

- (PSSpecifier)accountGroupSpecifier
{
  accountGroupSpecifier = self->_accountGroupSpecifier;
  if (!accountGroupSpecifier)
  {
    v4 = [(ICSettingsAccountsPasswordViewController *)self bundle];
    v5 = [v4 localizedStringForKey:@"ACCOUNTS_GROUP_TITLE" value:@"Accounts" table:@"Settings"];
    v6 = [PSSpecifier groupSpecifierWithName:v5];
    v7 = self->_accountGroupSpecifier;
    self->_accountGroupSpecifier = v6;

    accountGroupSpecifier = self->_accountGroupSpecifier;
  }

  return accountGroupSpecifier;
}

- (NSArray)accountSpecifiers
{
  accountSpecifiers = self->_accountSpecifiers;
  if (!accountSpecifiers)
  {
    v4 = +[ICNoteContext sharedContext];
    v5 = [v4 managedObjectContext];
    v6 = [ICAccount allActiveAccountsInContextSortedByAccountType:v5];

    v7 = ICKeyPathFromSelector();
    v8 = [NSSortDescriptor sortDescriptorWithKey:v7 ascending:1 selector:"localizedCaseInsensitiveCompare:"];
    v15 = v8;
    v9 = [NSArray arrayWithObjects:&v15 count:1];
    v10 = [v6 sortedArrayUsingDescriptors:v9];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_8BC0;
    v14[3] = &unk_1C918;
    v14[4] = self;
    v11 = [v10 ic_map:v14];
    v12 = self->_accountSpecifiers;
    self->_accountSpecifiers = v11;

    accountSpecifiers = self->_accountSpecifiers;
  }

  return accountSpecifiers;
}

- (id)specifierForAccount:(id)a3
{
  v4 = a3;
  v5 = +[ICAccountUtilities sharedInstance];
  v6 = [v4 identifier];
  v7 = [v5 iCloudACAccountWithIdentifier:v6];
  v8 = [v7 username];

  v9 = [v4 name];
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v10 setButtonAction:"didTapAccountButton:"];
  [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v10 setProperty:v8 forKey:PSTableCellSubtitleTextKey];
  v14 = @"ICAccountID";
  v11 = [v4 objectID];

  v15 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v10 setUserInfo:v12];

  return v10;
}

- (void)didTapAccountButton:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"ICAccountID"];
  v8 = ICCheckedDynamicCast();

  v7 = [[ICSettingsPasswordViewController alloc] initWithAccountID:v8];
  [(ICSettingsAccountsPasswordViewController *)self showController:v7 animate:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = ICSettingsAccountsPasswordViewController;
  v6 = a4;
  v7 = [(ICSettingsAccountsPasswordViewController *)&v12 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(ICSettingsAccountsPasswordViewController *)self specifierAtIndexPath:v6, v12.receiver, v12.super_class];

  v9 = [v8 propertyForKey:PSTableCellSubtitleTextKey];
  if ([v9 length])
  {
    v10 = [v7 detailTextLabel];
    [v10 setText:v9];
  }

  return v7;
}

@end
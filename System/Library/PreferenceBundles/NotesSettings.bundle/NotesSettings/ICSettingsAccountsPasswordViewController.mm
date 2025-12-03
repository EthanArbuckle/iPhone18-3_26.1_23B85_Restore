@interface ICSettingsAccountsPasswordViewController
- (NSArray)accountSpecifiers;
- (PSSpecifier)accountGroupSpecifier;
- (id)specifierForAccount:(id)account;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)didTapAccountButton:(id)button;
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
  accountGroupSpecifier = [(ICSettingsAccountsPasswordViewController *)self accountGroupSpecifier];
  [v7 addObject:accountGroupSpecifier];

  accountSpecifiers = [(ICSettingsAccountsPasswordViewController *)self accountSpecifiers];
  [v7 addObjectsFromArray:accountSpecifiers];

  [(ICSettingsAccountsPasswordViewController *)self setSpecifiers:v7];
}

- (PSSpecifier)accountGroupSpecifier
{
  accountGroupSpecifier = self->_accountGroupSpecifier;
  if (!accountGroupSpecifier)
  {
    bundle = [(ICSettingsAccountsPasswordViewController *)self bundle];
    v5 = [bundle localizedStringForKey:@"ACCOUNTS_GROUP_TITLE" value:@"Accounts" table:@"Settings"];
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
    managedObjectContext = [v4 managedObjectContext];
    v6 = [ICAccount allActiveAccountsInContextSortedByAccountType:managedObjectContext];

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

- (id)specifierForAccount:(id)account
{
  accountCopy = account;
  v5 = +[ICAccountUtilities sharedInstance];
  identifier = [accountCopy identifier];
  v7 = [v5 iCloudACAccountWithIdentifier:identifier];
  username = [v7 username];

  name = [accountCopy name];
  v10 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v10 setButtonAction:"didTapAccountButton:"];
  [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v10 setProperty:username forKey:PSTableCellSubtitleTextKey];
  v14 = @"ICAccountID";
  objectID = [accountCopy objectID];

  v15 = objectID;
  v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v10 setUserInfo:v12];

  return v10;
}

- (void)didTapAccountButton:(id)button
{
  buttonCopy = button;
  objc_opt_class();
  userInfo = [buttonCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:@"ICAccountID"];
  v8 = ICCheckedDynamicCast();

  v7 = [[ICSettingsPasswordViewController alloc] initWithAccountID:v8];
  [(ICSettingsAccountsPasswordViewController *)self showController:v7 animate:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = ICSettingsAccountsPasswordViewController;
  pathCopy = path;
  v7 = [(ICSettingsAccountsPasswordViewController *)&v12 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(ICSettingsAccountsPasswordViewController *)self specifierAtIndexPath:pathCopy, v12.receiver, v12.super_class];

  v9 = [v8 propertyForKey:PSTableCellSubtitleTextKey];
  if ([v9 length])
  {
    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setText:v9];
  }

  return v7;
}

@end
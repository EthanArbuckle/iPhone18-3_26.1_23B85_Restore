@interface BYODUpdateEmailViewController
- (BYODUpdateEmailViewController)initWithAccount:(id)a3 domain:(id)a4 addAlias:(BOOL)a5;
- (id)_getEmailFromSpecifier;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_addAliasAddress;
- (void)_addEmailAddress;
- (void)_postNotificationForDomainData:(id)a3;
- (void)_updatEmailAddress:(id)a3;
- (void)viewDidLoad;
@end

@implementation BYODUpdateEmailViewController

- (BYODUpdateEmailViewController)initWithAccount:(id)a3 domain:(id)a4 addAlias:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = BYODUpdateEmailViewController;
  v11 = [(BYODUpdateEmailViewController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_loggedInUserAccount, a3);
    objc_storeStrong(&v12->_domainResult, a4);
    v12->_addAlias = a5;
  }

  return v12;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = BYODUpdateEmailViewController;
  [(BYODUpdateEmailViewController *)&v13 viewDidLoad];
  v3 = [(BYODUpdateEmailViewController *)self navigationItem];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_EMAIL_ADDRESS_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v3 setTitle:v5];

  v6 = [(BYODUpdateEmailViewController *)self navigationItem];
  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
  [v6 setLeftBarButtonItem:v7];

  v8 = [(BYODUpdateEmailViewController *)self navigationItem];
  v9 = [UIBarButtonItem alloc];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"NEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v12 = [v9 initWithTitle:v11 style:2 target:self action:"_updatEmailAddress:"];
  [v8 setRightBarButtonItem:v12];
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"BYOD_NEW_EMAIL_GROUP_ID"];
  if (!self->_addAlias)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"BYOD_UPDATE_EMAIL_SCREEN_FOOTER" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v4 setProperty:v6 forKey:PSFooterTextGroupKey];
  }

  [v3 addObject:v4];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"EMAIL_ADDRESS" value:&stru_B9FC8 table:@"AccountPreferences"];
  v9 = [PSTextFieldSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:8 edit:0];
  v10 = _updateEmailSpecifier;
  _updateEmailSpecifier = v9;

  [_updateEmailSpecifier setIdentifier:@"BYOD_UPDATE_EMAIL_SPECIFIER_ID"];
  [_updateEmailSpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v3 addObject:_updateEmailSpecifier];
  v11 = [v3 copy];
  v12 = OBJC_IVAR___PSListController__specifiers;
  v13 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v11;

  v14 = *&self->PSListController_opaque[v12];
  v15 = v14;

  return v14;
}

- (void)_updatEmailAddress:(id)a3
{
  if (self->_addAlias)
  {
    [(BYODUpdateEmailViewController *)self _addAliasAddress];
  }

  else
  {
    [(BYODUpdateEmailViewController *)self _addEmailAddress];
  }
}

- (id)_getEmailFromSpecifier
{
  v2 = [_updateEmailSpecifier propertyForKey:@"cellObject"];
  v3 = [v2 value];

  return v3;
}

- (void)_addEmailAddress
{
  v3 = [(BYODUpdateEmailViewController *)self callingSpecifier];
  v4 = [v3 propertyForKey:@"MEMBER_DSID"];

  v20 = v4;
  v22 = [(BYODGetDomainResult *)self->_domainResult getMemberFromIdentifier:v4];
  v5 = [(BYODUpdateEmailViewController *)self _getEmailFromSpecifier];
  v6 = [(BYODGetDomainResult *)self->_domainResult domain];
  v7 = [v6 name];
  v21 = [NSString stringWithFormat:@"%@%@%@", v5, @"@", v7];

  v8 = [BYODAddEmailRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v10 = [(ACAccount *)loggedInUserAccount accountStore];
  v11 = [(BYODGetDomainResult *)self->_domainResult domain];
  v12 = [v11 name];
  v26 = v21;
  v13 = [NSArray arrayWithObjects:&v26 count:1];
  v14 = [v22 dsid];
  v15 = [v22 invitedEmail];
  v16 = [v22 invitedPhoneNumber];
  v17 = [(BYODAddEmailRequest *)v8 initWithAccount:loggedInUserAccount accountStore:v10 domain:v12 emailArray:v13 dsid:v14 withEmail:v15 withPhone:v16];

  objc_initWeak(&location, self);
  v18 = [[BYODSpinner alloc] initWithViewController:self];
  spinner = self->_spinner;
  self->_spinner = v18;

  [(BYODSpinner *)self->_spinner startSpinner];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_67894;
  v23[3] = &unk_B9308;
  objc_copyWeak(&v24, &location);
  [(BYODAddEmailRequest *)v17 performRequestWithCallback:v23];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_addAliasAddress
{
  v3 = [(BYODUpdateEmailViewController *)self _getEmailFromSpecifier];
  v4 = [(BYODGetDomainResult *)self->_domainResult domain];
  v5 = [v4 name];
  v6 = [NSString stringWithFormat:@"%@%@%@", v3, @"@", v5];

  v7 = [BYODAddAliasRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  v9 = [(ACAccount *)loggedInUserAccount accountStore];
  v10 = [(BYODGetDomainResult *)self->_domainResult domain];
  v11 = [v10 name];
  v20 = v6;
  v12 = [NSArray arrayWithObjects:&v20 count:1];
  v13 = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
  v14 = [(BYODAddAliasRequest *)v7 initWithAccount:loggedInUserAccount accountStore:v9 domain:v11 emailArray:v12 dsid:v13];

  objc_initWeak(&location, self);
  v15 = [[BYODSpinner alloc] initWithViewController:self];
  spinner = self->_spinner;
  self->_spinner = v15;

  [(BYODSpinner *)self->_spinner startSpinner];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_67D50;
  v17[3] = &unk_B9308;
  objc_copyWeak(&v18, &location);
  [(BYODAddAliasRequest *)v14 performRequestWithCallback:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v15.receiver = self;
  v15.super_class = BYODUpdateEmailViewController;
  v5 = [(BYODUpdateEmailViewController *)&v15 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 detailTextLabel];
  [v6 setNumberOfLines:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 textField];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"BYOD_UPDATE_EMAIL_TEXT_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v7 setPlaceholder:v9];

    v10 = [(BYODGetDomainResult *)self->_domainResult domain];
    v11 = [v10 name];
    v12 = [NSString stringWithFormat:@"%@%@", @"@", v11];

    v13 = +[UIColor secondaryLabelColor];
    [v7 _setSuffix:v12 withColor:v13];

    [v7 setDelegate:self];
  }

  return v5;
}

- (void)_postNotificationForDomainData:(id)a3
{
  v5 = a3;
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setValue:v5 forKey:@"domainData"];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"BYOD_DOMAIN_DATA_REFRESH_NOTIFICATION" object:0 userInfo:v3];
}

@end
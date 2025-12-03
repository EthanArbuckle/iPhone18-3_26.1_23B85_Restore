@interface BYODUpdateEmailViewController
- (BYODUpdateEmailViewController)initWithAccount:(id)account domain:(id)domain addAlias:(BOOL)alias;
- (id)_getEmailFromSpecifier;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_addAliasAddress;
- (void)_addEmailAddress;
- (void)_postNotificationForDomainData:(id)data;
- (void)_updatEmailAddress:(id)address;
- (void)viewDidLoad;
@end

@implementation BYODUpdateEmailViewController

- (BYODUpdateEmailViewController)initWithAccount:(id)account domain:(id)domain addAlias:(BOOL)alias
{
  accountCopy = account;
  domainCopy = domain;
  v14.receiver = self;
  v14.super_class = BYODUpdateEmailViewController;
  v11 = [(BYODUpdateEmailViewController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_loggedInUserAccount, account);
    objc_storeStrong(&v12->_domainResult, domain);
    v12->_addAlias = alias;
  }

  return v12;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = BYODUpdateEmailViewController;
  [(BYODUpdateEmailViewController *)&v13 viewDidLoad];
  navigationItem = [(BYODUpdateEmailViewController *)self navigationItem];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_EMAIL_ADDRESS_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [navigationItem setTitle:v5];

  navigationItem2 = [(BYODUpdateEmailViewController *)self navigationItem];
  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
  [navigationItem2 setLeftBarButtonItem:v7];

  navigationItem3 = [(BYODUpdateEmailViewController *)self navigationItem];
  v9 = [UIBarButtonItem alloc];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"NEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v12 = [v9 initWithTitle:v11 style:2 target:self action:"_updatEmailAddress:"];
  [navigationItem3 setRightBarButtonItem:v12];
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

- (void)_updatEmailAddress:(id)address
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
  value = [v2 value];

  return value;
}

- (void)_addEmailAddress
{
  callingSpecifier = [(BYODUpdateEmailViewController *)self callingSpecifier];
  v4 = [callingSpecifier propertyForKey:@"MEMBER_DSID"];

  v20 = v4;
  v22 = [(BYODGetDomainResult *)self->_domainResult getMemberFromIdentifier:v4];
  _getEmailFromSpecifier = [(BYODUpdateEmailViewController *)self _getEmailFromSpecifier];
  domain = [(BYODGetDomainResult *)self->_domainResult domain];
  name = [domain name];
  v21 = [NSString stringWithFormat:@"%@%@%@", _getEmailFromSpecifier, @"@", name];

  v8 = [BYODAddEmailRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  domain2 = [(BYODGetDomainResult *)self->_domainResult domain];
  name2 = [domain2 name];
  v26 = v21;
  v13 = [NSArray arrayWithObjects:&v26 count:1];
  dsid = [v22 dsid];
  invitedEmail = [v22 invitedEmail];
  invitedPhoneNumber = [v22 invitedPhoneNumber];
  v17 = [(BYODAddEmailRequest *)v8 initWithAccount:loggedInUserAccount accountStore:accountStore domain:name2 emailArray:v13 dsid:dsid withEmail:invitedEmail withPhone:invitedPhoneNumber];

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
  _getEmailFromSpecifier = [(BYODUpdateEmailViewController *)self _getEmailFromSpecifier];
  domain = [(BYODGetDomainResult *)self->_domainResult domain];
  name = [domain name];
  v6 = [NSString stringWithFormat:@"%@%@%@", _getEmailFromSpecifier, @"@", name];

  v7 = [BYODAddAliasRequest alloc];
  loggedInUserAccount = self->_loggedInUserAccount;
  accountStore = [(ACAccount *)loggedInUserAccount accountStore];
  domain2 = [(BYODGetDomainResult *)self->_domainResult domain];
  name2 = [domain2 name];
  v20 = v6;
  v12 = [NSArray arrayWithObjects:&v20 count:1];
  normalizedDSID = [(ACAccount *)self->_loggedInUserAccount normalizedDSID];
  v14 = [(BYODAddAliasRequest *)v7 initWithAccount:loggedInUserAccount accountStore:accountStore domain:name2 emailArray:v12 dsid:normalizedDSID];

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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = BYODUpdateEmailViewController;
  v5 = [(BYODUpdateEmailViewController *)&v15 tableView:view cellForRowAtIndexPath:path];
  detailTextLabel = [v5 detailTextLabel];
  [detailTextLabel setNumberOfLines:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textField = [v5 textField];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"BYOD_UPDATE_EMAIL_TEXT_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
    [textField setPlaceholder:v9];

    domain = [(BYODGetDomainResult *)self->_domainResult domain];
    name = [domain name];
    v12 = [NSString stringWithFormat:@"%@%@", @"@", name];

    v13 = +[UIColor secondaryLabelColor];
    [textField _setSuffix:v12 withColor:v13];

    [textField setDelegate:self];
  }

  return v5;
}

- (void)_postNotificationForDomainData:(id)data
{
  dataCopy = data;
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setValue:dataCopy forKey:@"domainData"];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"BYOD_DOMAIN_DATA_REFRESH_NOTIFICATION" object:0 userInfo:v3];
}

@end
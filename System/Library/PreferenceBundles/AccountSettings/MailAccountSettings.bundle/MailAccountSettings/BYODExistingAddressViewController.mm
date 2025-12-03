@interface BYODExistingAddressViewController
+ (id)log;
- (BYODExistingAddressViewController)initWithACAccount:(id)account familyFlow:(BOOL)flow existingAddress:(BOOL)address;
- (id)_getDomainName;
- (id)specifiers;
- (void)_addDomain;
- (void)_fetchDomainDetails;
- (void)_fetchFamilyDetails;
- (void)_showDomainConnectSignInAlert:(id)alert;
- (void)_triggerManualDomainSetupFlow;
- (void)safariViewControllerDidFinish:(id)finish;
- (void)viewDidLoad;
@end

@implementation BYODExistingAddressViewController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4A158;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D6550 != -1)
  {
    dispatch_once(&qword_D6550, block);
  }

  v2 = qword_D6548;

  return v2;
}

- (BYODExistingAddressViewController)initWithACAccount:(id)account familyFlow:(BOOL)flow existingAddress:(BOOL)address
{
  accountCopy = account;
  v15.receiver = self;
  v15.super_class = BYODExistingAddressViewController;
  v10 = [(BYODExistingAddressViewController *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_loggedInuserAccount, account);
    v11->_isFamilyFlow = flow;
    v11->_hasExistingAddress = address;
    v12 = objc_alloc_init(FAFetchFamilyCircleRequest);
    familyRequest = v11->_familyRequest;
    v11->_familyRequest = v12;

    [(FAFetchFamilyCircleRequest *)v11->_familyRequest setCachePolicy:1];
  }

  return v11;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = BYODExistingAddressViewController;
  [(BYODExistingAddressViewController *)&v14 viewDidLoad];
  navigationItem = [(BYODExistingAddressViewController *)self navigationItem];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BYOD_ADD_DOMAIN_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [navigationItem setTitle:v5];

  navigationItem2 = [(BYODExistingAddressViewController *)self navigationItem];
  [navigationItem2 setHidesBackButton:0];

  navigationItem3 = [(BYODExistingAddressViewController *)self navigationItem];
  v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
  [navigationItem3 setLeftBarButtonItem:v8];

  navigationItem4 = [(BYODExistingAddressViewController *)self navigationItem];
  v10 = [UIBarButtonItem alloc];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"NEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v13 = [v10 initWithTitle:v12 style:2 target:self action:"_continueButtonTapped:"];
  [navigationItem4 setRightBarButtonItem:v13];
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:@"EXISTING_ADDRESS_SPECIFIER_TITLE"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SETUP_DOMAIN_HEADER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  v7 = [PSSpecifier groupSpecifierWithID:@"EXISTING_ADDRESS_SPECIFIER_TEXT"];
  [v3 addObject:v7];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SETUP_DOMAIN_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
  v10 = [PSTextFieldSpecifier preferenceSpecifierNamed:v9 target:self set:"_setUsernamePrefill:withSpecifier:" get:"_usernamePrefillForSpecifier:" detail:0 cell:8 edit:0];

  [v10 setKeyboardType:0 autoCaps:0 autoCorrection:1];
  [v10 setProperty:@"Domain" forKey:PSKeyNameKey];
  [v10 setIdentifier:@"DOMAIN_TEXT_FIELD"];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SETUP_DOMAIN_TEXT_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v10 setPlaceholder:v12];

  [v3 addObject:v10];
  v13 = OBJC_IVAR___PSListController__specifiers;
  v14 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v15 = v3;

  v16 = *&self->PSListController_opaque[v13];
  v17 = v16;

  return v16;
}

- (void)_addDomain
{
  spinner = self->_spinner;
  if (!spinner)
  {
    v4 = [[BYODSpinner alloc] initWithViewController:self];
    v5 = self->_spinner;
    self->_spinner = v4;

    spinner = self->_spinner;
  }

  [(BYODSpinner *)spinner startSpinner];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4AA1C;
  v17[3] = &unk_B8EB0;
  v17[4] = self;
  v6 = objc_retainBlock(v17);
  v7 = [BYODAddDomainRequest alloc];
  loggedInuserAccount = self->_loggedInuserAccount;
  accountStore = [(ACAccount *)loggedInuserAccount accountStore];
  _getDomainName = [(BYODExistingAddressViewController *)self _getDomainName];
  v11 = [(BYODAddDomainRequest *)v7 initWithAccount:loggedInuserAccount accountStore:accountStore domain:_getDomainName familyFlow:self->_isFamilyFlow hasEmail:self->_hasExistingAddress];

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_4ADF4;
  v13[3] = &unk_B9598;
  objc_copyWeak(&v15, &location);
  v12 = v6;
  v14 = v12;
  [(BYODAddDomainRequest *)v11 performRequestWithCallback:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_triggerManualDomainSetupFlow
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4B170;
  v3[3] = &unk_B8EB0;
  v3[4] = self;
  v2 = +[EFScheduler mainThreadScheduler];
  [v2 performBlock:v3];
}

- (void)_fetchDomainDetails
{
  objc_initWeak(&location, self);
  v3 = [BYODGetDomainRequest alloc];
  loggedInuserAccount = self->_loggedInuserAccount;
  accountStore = [(ACAccount *)loggedInuserAccount accountStore];
  _getDomainName = [(BYODExistingAddressViewController *)self _getDomainName];
  v7 = [(BYODGetDomainRequest *)v3 initWithAccount:loggedInuserAccount accountStore:accountStore domain:_getDomainName];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4B338;
  v8[3] = &unk_B9308;
  objc_copyWeak(&v9, &location);
  [(BYODGetDomainRequest *)v7 performRequestWithCallback:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)_showDomainConnectSignInAlert:(id)alert
{
  alertCopy = alert;
  domainConnectServerUrl = [alertCopy domainConnectServerUrl];
  if ([domainConnectServerUrl length])
  {
    v23 = [[NSURL alloc] initWithString:domainConnectServerUrl];
    v24 = domainConnectServerUrl;
    dnsProviderName = [alertCopy dnsProviderName];
    name = [alertCopy name];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_ALERT_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v25 = [NSString stringWithFormat:v7, dnsProviderName];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"BYOD_FINISH_SETUP_DOMAIN_ALERT_MESSAGE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v10 = [NSString stringWithFormat:v9, name, dnsProviderName];

    v22 = v10;
    v11 = [UIAlertController alertControllerWithTitle:v25 message:v10 preferredStyle:1];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CANCEL_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
    v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];

    v15 = [NSBundle bundleForClass:objc_opt_class()];
    domainConnectServerUrl = v24;
    v16 = [v15 localizedStringForKey:@"CONTINUE_TEXT" value:&stru_B9FC8 table:@"AccountPreferences"];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_4BAE0;
    v30[3] = &unk_B9388;
    v17 = v23;
    v31 = v17;
    selfCopy = self;
    v18 = [UIAlertAction actionWithTitle:v16 style:0 handler:v30];

    [v11 addAction:v14];
    [v11 addAction:v18];
    [v11 setPreferredAction:v18];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_4BB64;
    v28[3] = &unk_B9060;
    v28[4] = self;
    v19 = v11;
    v29 = v19;
    v20 = +[EFScheduler mainThreadScheduler];
    [v20 performBlock:v28];
  }

  else
  {
    v17 = +[BYODExistingAddressViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [alertCopy ef_publicDescription];
      sub_79840(ef_publicDescription, buf, v17);
    }
  }
}

- (void)_fetchFamilyDetails
{
  familyRequest = self->_familyRequest;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4BBF8;
  v3[3] = &unk_B95C0;
  v3[4] = self;
  [(FAFetchFamilyCircleRequest *)familyRequest startRequestWithCompletionHandler:v3];
}

- (id)_getDomainName
{
  v2 = [(BYODExistingAddressViewController *)self specifierForID:@"DOMAIN_TEXT_FIELD"];
  v3 = [v2 propertyForKey:@"cellObject"];
  textField = [v3 textField];
  text = [textField text];

  return text;
}

- (void)safariViewControllerDidFinish:(id)finish
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"BYOD_REFRESH_NOTIFICATION" object:0 userInfo:0];

  [(BYODExistingAddressViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end
@interface VSDeveloperIdentityProviderViewController_iOS
- (VSDeveloperIdentityProviderViewController_iOS)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)deletePressed:(id)pressed;
- (void)persistProviderAndDismiss;
- (void)reevaluateActions;
- (void)returnPressedAtEnd;
- (void)setApiEnabled:(id)enabled;
- (void)setAuthenticationURL:(id)l;
- (void)setDisplayName:(id)name;
- (void)setIdentifier:(id)identifier;
- (void)setRequireAuthenticationURLSystemTrustEnabled:(id)enabled;
- (void)setRequireXHRRequestSystemTrustEnabled:(id)enabled;
- (void)setSamlEnabled:(id)enabled;
- (void)setupViewForIdentityProvider:(id)provider;
- (void)testSystemTrustPressed:(id)pressed;
- (void)textFieldDidChangeNotification:(id)notification;
@end

@implementation VSDeveloperIdentityProviderViewController_iOS

- (VSDeveloperIdentityProviderViewController_iOS)init
{
  v12.receiver = self;
  v12.super_class = VSDeveloperIdentityProviderViewController_iOS;
  v2 = [(VSDeveloperIdentityProviderViewController_iOS *)&v12 init];
  if (v2)
  {
    v3 = +[VSDeveloperSettingsFacade sharedFacade];
    settingsFacade = v2->_settingsFacade;
    v2->_settingsFacade = v3;

    v5 = objc_alloc_init(NSOperationQueue);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v5;

    v7 = v2->_privateQueue;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(NSOperationQueue *)v7 setName:v9];

    samlEnabled = v2->_samlEnabled;
    v2->_samlEnabled = &__kCFBooleanTrue;
  }

  return v2;
}

- (void)setupViewForIdentityProvider:(id)provider
{
  providerCopy = provider;
  nameForSorting = [providerCopy nameForSorting];
  displayName = self->_displayName;
  self->_displayName = nameForSorting;

  providerID = [providerCopy providerID];
  forceUnwrapObject = [providerID forceUnwrapObject];
  identifier = self->_identifier;
  self->_identifier = forceUnwrapObject;

  authenticationURL = [providerCopy authenticationURL];
  absoluteString = [authenticationURL absoluteString];
  authenticationURL = self->_authenticationURL;
  self->_authenticationURL = absoluteString;

  supportedAuthenticationSchemes = [providerCopy supportedAuthenticationSchemes];
  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [supportedAuthenticationSchemes containsObject:VSAccountProviderAuthenticationSchemeSAML]);
  samlEnabled = self->_samlEnabled;
  self->_samlEnabled = v14;

  supportedAuthenticationSchemes2 = [providerCopy supportedAuthenticationSchemes];

  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [supportedAuthenticationSchemes2 containsObject:VSAccountProviderAuthenticationSchemeAPI]);
  apiEnabled = self->_apiEnabled;
  self->_apiEnabled = v16;
}

- (void)reevaluateActions
{
  navigationItem = [(VSDeveloperIdentityProviderViewController_iOS *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  displayName = [(VSDeveloperIdentityProviderViewController_iOS *)self displayName];
  if ([displayName length])
  {
    identifier = [(VSDeveloperIdentityProviderViewController_iOS *)self identifier];
    if ([identifier length])
    {
      authenticationURL = [(VSDeveloperIdentityProviderViewController_iOS *)self authenticationURL];
      v7 = [authenticationURL length] != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  [rightBarButtonItem setEnabled:v7];
  authenticationURL2 = [(VSDeveloperIdentityProviderViewController_iOS *)self authenticationURL];
  if ([authenticationURL2 length])
  {
    v9 = [(VSDeveloperIdentityProviderViewController_iOS *)self testingSystemTrust]^ 1;
  }

  else
  {
    v9 = 0;
  }

  testSystemTrustSpecifier = [(VSDeveloperIdentityProviderViewController_iOS *)self testSystemTrustSpecifier];
  v11 = [NSNumber numberWithBool:v9];
  [testSystemTrustSpecifier setProperty:v11 forKey:PSEnabledKey];
}

- (void)setDisplayName:(id)name
{
  objc_storeStrong(&self->_displayName, name);

  [(VSDeveloperIdentityProviderViewController_iOS *)self reevaluateActions];
}

- (void)setIdentifier:(id)identifier
{
  objc_storeStrong(&self->_identifier, identifier);

  [(VSDeveloperIdentityProviderViewController_iOS *)self reevaluateActions];
}

- (void)setAuthenticationURL:(id)l
{
  objc_storeStrong(&self->_authenticationURL, l);

  [(VSDeveloperIdentityProviderViewController_iOS *)self reevaluateActions];
}

- (void)setSamlEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (![(NSNumber *)enabledCopy BOOLValue])
  {
    apiEnabled = [(VSDeveloperIdentityProviderViewController_iOS *)self apiEnabled];
    bOOLValue = [apiEnabled BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      apiEnabled2 = [(VSDeveloperIdentityProviderViewController_iOS *)self apiEnabled];
      v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [apiEnabled2 BOOLValue] ^ 1);
      [(VSDeveloperIdentityProviderViewController_iOS *)self setApiEnabled:v8];
    }
  }

  samlEnabled = self->_samlEnabled;
  self->_samlEnabled = enabledCopy;

  [(VSDeveloperIdentityProviderViewController_iOS *)self reloadSpecifiers];
}

- (void)setApiEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (![(NSNumber *)enabledCopy BOOLValue])
  {
    samlEnabled = [(VSDeveloperIdentityProviderViewController_iOS *)self samlEnabled];
    bOOLValue = [samlEnabled BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      samlEnabled2 = [(VSDeveloperIdentityProviderViewController_iOS *)self samlEnabled];
      v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [samlEnabled2 BOOLValue] ^ 1);
      [(VSDeveloperIdentityProviderViewController_iOS *)self setSamlEnabled:v8];
    }
  }

  apiEnabled = self->_apiEnabled;
  self->_apiEnabled = enabledCopy;

  [(VSDeveloperIdentityProviderViewController_iOS *)self reloadSpecifiers];
}

- (void)setRequireAuthenticationURLSystemTrustEnabled:(id)enabled
{
  objc_storeStrong(&self->_requireAuthenticationURLSystemTrustEnabled, enabled);

  [(VSDeveloperIdentityProviderViewController_iOS *)self reloadSpecifiers];
}

- (void)setRequireXHRRequestSystemTrustEnabled:(id)enabled
{
  objc_storeStrong(&self->_requireXHRRequestSystemTrustEnabled, enabled);

  [(VSDeveloperIdentityProviderViewController_iOS *)self reloadSpecifiers];
}

- (void)persistProviderAndDismiss
{
  displayName = [(VSDeveloperIdentityProviderViewController_iOS *)self displayName];
  if (![displayName length])
  {
    goto LABEL_12;
  }

  identifier = [(VSDeveloperIdentityProviderViewController_iOS *)self identifier];
  if (![identifier length])
  {

LABEL_12:
    goto LABEL_13;
  }

  authenticationURL = [(VSDeveloperIdentityProviderViewController_iOS *)self authenticationURL];
  v6 = [authenticationURL length];

  if (!v6)
  {
LABEL_13:
    v25 = +[NSBundle vs_frameworkBundle];
    v8 = [v25 localizedStringForKey:@"DEVELOPER_REQUIRED_FIELDS_ERROR_ALERT_TITLE" value:0 table:0];

    v26 = +[NSBundle vs_frameworkBundle];
    v12 = [v26 localizedStringForKey:@"DEVELOPER_REQUIRED_FIELDS_ERROR_ALERT_MESSAGE" value:0 table:0];

    v27 = +[NSBundle vs_frameworkBundle];
    v28 = [v27 localizedStringForKey:@"ERROR_DISMISS_BUTTON_TITLE" value:0 table:0];

    [UIAlertController alertControllerWithTitle:v8 message:v12 preferredStyle:1];
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_380C;
    v35 = v34 = &unk_C5F8;
    v29 = v35;
    v30 = [UIAlertAction actionWithTitle:v28 style:0 handler:&v31];
    [v29 addAction:{v30, v31, v32, v33, v34}];
    [(VSDeveloperIdentityProviderViewController_iOS *)self presentViewController:v29 animated:1 completion:0];

    goto LABEL_14;
  }

  identityProvider = [(VSDeveloperIdentityProviderViewController_iOS *)self identityProvider];
  v8 = identityProvider;
  if (!identityProvider)
  {
    v8 = objc_alloc_init(VSIdentityProvider);
    [v8 setDeveloper:1];
    v9 = +[NSUUID UUID];
    uUIDString = [v9 UUIDString];
    v11 = [VSOptional optionalWithObject:uUIDString];
    [v8 setUniqueID:v11];
  }

  v12 = objc_alloc_init(NSMutableArray);
  samlEnabled = [(VSDeveloperIdentityProviderViewController_iOS *)self samlEnabled];
  bOOLValue = [samlEnabled BOOLValue];

  if (bOOLValue)
  {
    [v12 addObject:VSAccountProviderAuthenticationSchemeSAML];
  }

  apiEnabled = [(VSDeveloperIdentityProviderViewController_iOS *)self apiEnabled];
  bOOLValue2 = [apiEnabled BOOLValue];

  if (bOOLValue2)
  {
    [v12 addObject:VSAccountProviderAuthenticationSchemeAPI];
  }

  [v8 setSupportedAuthenticationSchemes:v12];
  identifier2 = [(VSDeveloperIdentityProviderViewController_iOS *)self identifier];
  v18 = [VSOptional optionalWithObject:identifier2];
  [v8 setProviderID:v18];

  displayName2 = [(VSDeveloperIdentityProviderViewController_iOS *)self displayName];
  [v8 setNameForSorting:displayName2];

  authenticationURL2 = [(VSDeveloperIdentityProviderViewController_iOS *)self authenticationURL];
  v21 = [NSURL URLWithString:authenticationURL2];
  [v8 setAuthenticationURL:v21];

  requireAuthenticationURLSystemTrustEnabled = [(VSDeveloperIdentityProviderViewController_iOS *)self requireAuthenticationURLSystemTrustEnabled];
  [v8 setRequireAuthenticationURLSystemTrust:{objc_msgSend(requireAuthenticationURLSystemTrustEnabled, "BOOLValue")}];

  requireXHRRequestSystemTrustEnabled = [(VSDeveloperIdentityProviderViewController_iOS *)self requireXHRRequestSystemTrustEnabled];
  [v8 setRequireXHRRequestSystemTrust:{objc_msgSend(requireXHRRequestSystemTrustEnabled, "BOOLValue")}];

  settingsFacade = [(VSDeveloperIdentityProviderViewController_iOS *)self settingsFacade];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_361C;
  v36[3] = &unk_C620;
  v36[4] = self;
  [settingsFacade enqueueChange:identityProvider != 0 withIdentityProvider:v8 completionHandler:v36];

LABEL_14:
}

- (void)deletePressed:(id)pressed
{
  identityProvider = [(VSDeveloperIdentityProviderViewController_iOS *)self identityProvider];
  settingsFacade = [(VSDeveloperIdentityProviderViewController_iOS *)self settingsFacade];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3910;
  v9[3] = &unk_C620;
  v10 = identityProvider;
  v6 = identityProvider;
  [settingsFacade enqueueChange:2 withIdentityProvider:v6 completionHandler:v9];

  navigationController = [(VSDeveloperIdentityProviderViewController_iOS *)self navigationController];
  v8 = [navigationController popViewControllerAnimated:1];
}

- (void)testSystemTrustPressed:(id)pressed
{
  if (+[VSProxyDetector isProxyConfigured])
  {
    settingsFacade = [(VSDeveloperIdentityProviderViewController_iOS *)self settingsFacade];
    alertTitleForProxyDetection = [settingsFacade alertTitleForProxyDetection];

    settingsFacade2 = [(VSDeveloperIdentityProviderViewController_iOS *)self settingsFacade];
    alertMessageForProxyDetection = [settingsFacade2 alertMessageForProxyDetection];

    v7 = [UIAlertController alertControllerWithTitle:alertTitleForProxyDetection message:alertMessageForProxyDetection preferredStyle:1];
    settingsFacade3 = [(VSDeveloperIdentityProviderViewController_iOS *)self settingsFacade];
    dismissTitleForProxyDetection = [settingsFacade3 dismissTitleForProxyDetection];

    v10 = [UIAlertAction actionWithTitle:dismissTitleForProxyDetection style:0 handler:0];
    [v7 addAction:v10];

    [(VSDeveloperIdentityProviderViewController_iOS *)self presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    testSystemTrustSpecifier = [(VSDeveloperIdentityProviderViewController_iOS *)self testSystemTrustSpecifier];
    [testSystemTrustSpecifier setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];

    testSystemTrustSpecifier2 = [(VSDeveloperIdentityProviderViewController_iOS *)self testSystemTrustSpecifier];
    [(VSDeveloperIdentityProviderViewController_iOS *)self reloadSpecifier:testSystemTrustSpecifier2];

    authenticationURL = [(VSDeveloperIdentityProviderViewController_iOS *)self authenticationURL];
    v14 = [NSURL URLWithString:authenticationURL];

    v15 = [[VSApplicationBootURLOperation alloc] initWithBootURL:v14 isDeveloper:0];
    [v15 setTest:1];
    v20 = v15;
    v16 = v15;
    v17 = VSMainThreadOperationWithBlock();
    [v17 addDependency:v16];
    privateQueue = [(VSDeveloperIdentityProviderViewController_iOS *)self privateQueue];
    [privateQueue addOperation:v16];

    VSEnqueueCompletionOperation();
  }
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v62 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = +[NSBundle vs_frameworkBundle];
    v6 = [v5 localizedStringForKey:@"DEVELOPER_PROVIDER_DISPLAY_NAME_TITLE" value:0 table:0];

    v7 = +[NSBundle vs_frameworkBundle];
    v8 = [v7 localizedStringForKey:@"DEVELOPER_PROVIDER_NAME_PLACEHOLDER" value:0 table:0];

    v61 = v6;
    v9 = [PSTextFieldSpecifier preferenceSpecifierNamed:v6 target:self set:"setDisplayName:" get:"displayName" detail:0 cell:8 edit:0];
    v60 = v8;
    [v9 setPlaceholder:v8];
    [v9 setKeyboardType:0 autoCaps:0 autoCorrection:1];
    [v4 addObject:v9];
    v59 = v9;
    [(VSDeveloperIdentityProviderViewController_iOS *)self setDisplayNameSpecicier:v9];
    v10 = +[NSBundle vs_frameworkBundle];
    v11 = [v10 localizedStringForKey:@"DEVELOPER_PROVIDER_IDENTIFIER_TITLE" value:0 table:0];

    v12 = +[NSBundle vs_frameworkBundle];
    v13 = [v12 localizedStringForKey:@"DEVELOPER_PROVIDER_IDENTIFIER_PLACEHOLDER" value:0 table:0];

    v58 = v11;
    v14 = [PSTextFieldSpecifier preferenceSpecifierNamed:v11 target:self set:"setIdentifier:" get:"identifier" detail:0 cell:8 edit:0];
    v57 = v13;
    [v14 setPlaceholder:v13];
    [v14 setKeyboardType:0 autoCaps:0 autoCorrection:1];
    [v4 addObject:v14];
    v56 = v14;
    [(VSDeveloperIdentityProviderViewController_iOS *)self setIdentifierSpecicier:v14];
    v15 = +[NSBundle vs_frameworkBundle];
    v16 = [v15 localizedStringForKey:@"DEVELOPER_PROVIDER_AUTH_URL_TITLE" value:0 table:0];

    v17 = +[NSBundle vs_frameworkBundle];
    v18 = [v17 localizedStringForKey:@"DEVELOPER_PROVIDER_AUTH_URL_PLACEHOLDER" value:0 table:0];

    v55 = v16;
    v19 = [PSTextFieldSpecifier preferenceSpecifierNamed:v16 target:self set:"setAuthenticationURL:" get:"authenticationURL" detail:0 cell:8 edit:0];
    v54 = v18;
    [v19 setPlaceholder:v18];
    [v19 setKeyboardType:3 autoCaps:0 autoCorrection:1];
    [v4 addObject:v19];
    v53 = v19;
    [(VSDeveloperIdentityProviderViewController_iOS *)self setAuthenticationURLSpecicier:v19];
    v20 = +[NSBundle vs_frameworkBundle];
    v21 = [v20 localizedStringForKey:@"DEVELOPER_PROVIDER_AUTH_SCHEME_TITLE" value:0 table:0];

    v22 = +[NSBundle vs_frameworkBundle];
    v23 = [v22 localizedStringForKey:@"DEVELOPER_SETTINGS_AUTH_SCHEME_ERROR_MESSAGE" value:0 table:0];

    v52 = v21;
    v24 = [PSSpecifier groupSpecifierWithName:v21];
    v51 = v23;
    [v24 setProperty:v23 forKey:PSFooterTextGroupKey];
    v50 = v24;
    [v4 addObject:v24];
    v49 = [PSSpecifier preferenceSpecifierNamed:@"SAML" target:self set:"setSamlEnabled:" get:"samlEnabled" detail:0 cell:6 edit:0];
    [v4 addObject:?];
    v48 = [PSSpecifier preferenceSpecifierNamed:@"API" target:self set:"setApiEnabled:" get:"apiEnabled" detail:0 cell:6 edit:0];
    [v4 addObject:?];
    v25 = +[NSBundle vs_frameworkBundle];
    v26 = [v25 localizedStringForKey:@"DEVELOPER_PROVIDER_PRODUCTION_SECURITY_GROUP_TITLE" value:0 table:0];

    v47 = v26;
    v46 = [PSSpecifier groupSpecifierWithName:v26];
    [v4 addObject:?];
    v27 = +[NSBundle vs_frameworkBundle];
    v28 = [v27 localizedStringForKey:@"DEVELOPER_PROVIDER_AUTH_URL_SYSTEM_TRUST" value:0 table:0];

    v45 = v28;
    v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:"setRequireAuthenticationURLSystemTrustEnabled:" get:"requireAuthenticationURLSystemTrustEnabled" detail:0 cell:6 edit:0];
    [(VSDeveloperIdentityProviderViewController_iOS *)self setRequireAuthenticationURLSystemTrustSpecifier:v29];
    [v4 addObject:v29];
    v30 = +[NSBundle vs_frameworkBundle];
    v31 = [v30 localizedStringForKey:@"DEVELOPER_PROVIDER_XHR_REQUEST_SYSTEM_TRUST" value:0 table:0];

    v44 = v31;
    v32 = [PSSpecifier preferenceSpecifierNamed:v31 target:self set:"setRequireXHRRequestSystemTrustEnabled:" get:"requireXHRRequestSystemTrustEnabled" detail:0 cell:6 edit:0];
    [(VSDeveloperIdentityProviderViewController_iOS *)self setRequireXHRRequestSystemTrustSpecifier:v32];
    [v4 addObject:self->_requireXHRRequestSystemTrustSpecifier];
    v33 = +[PSSpecifier emptyGroupSpecifier];
    [v4 addObject:v33];
    v34 = +[NSBundle vs_frameworkBundle];
    v35 = [v34 localizedStringForKey:@"DEVELOPER_TEST_SYSTEM_TRUST_ACTION_TITLE" value:0 table:0];

    v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v36 setButtonAction:"testSystemTrustPressed:"];
    [v4 addObject:v36];
    [(VSDeveloperIdentityProviderViewController_iOS *)self setTestSystemTrustSpecifier:v36];
    identityProvider = [(VSDeveloperIdentityProviderViewController_iOS *)self identityProvider];

    if (identityProvider)
    {
      v38 = +[PSSpecifier emptyGroupSpecifier];
      [v4 addObject:v38];
      v39 = +[NSBundle vs_frameworkBundle];
      v40 = [v39 localizedStringForKey:@"DEVELOPER_DELETION_ACTION_TITLE" value:0 table:0];

      v41 = [PSSpecifier deleteButtonSpecifierWithName:v40 target:self action:"deletePressed:"];
      [v4 addObject:v41];
    }

    v42 = *&self->PSListController_opaque[v62];
    *&self->PSListController_opaque[v62] = v4;

    v3 = *&self->PSListController_opaque[v62];
  }

  return v3;
}

- (void)returnPressedAtEnd
{
  table = [(VSDeveloperIdentityProviderViewController_iOS *)self table];
  firstResponder = [table firstResponder];
  [firstResponder resignFirstResponder];
}

- (void)textFieldDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  text = [notificationCopy text];
  displayNameTextField = [(VSDeveloperIdentityProviderViewController_iOS *)self displayNameTextField];

  if (displayNameTextField == notificationCopy)
  {
    [(VSDeveloperIdentityProviderViewController_iOS *)self setDisplayName:text];
  }

  else
  {
    identifierTextField = [(VSDeveloperIdentityProviderViewController_iOS *)self identifierTextField];

    if (identifierTextField == notificationCopy)
    {
      [(VSDeveloperIdentityProviderViewController_iOS *)self setIdentifier:text];
    }

    else
    {
      authenticationURLTextField = [(VSDeveloperIdentityProviderViewController_iOS *)self authenticationURLTextField];

      if (authenticationURLTextField == notificationCopy)
      {
        [(VSDeveloperIdentityProviderViewController_iOS *)self setAuthenticationURL:text];
      }

      else
      {
        v9 = VSErrorLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_6C50(notificationCopy, v9);
        }
      }
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = VSDeveloperIdentityProviderViewController_iOS;
  v5 = [(VSDeveloperIdentityProviderViewController_iOS *)&v13 tableView:view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  editableTextField = [v5 editableTextField];
  displayNameSpecicier = [(VSDeveloperIdentityProviderViewController_iOS *)self displayNameSpecicier];

  if (specifier == displayNameSpecicier)
  {
    [(VSDeveloperIdentityProviderViewController_iOS *)self setDisplayNameTextField:editableTextField];
  }

  else
  {
    identifierSpecicier = [(VSDeveloperIdentityProviderViewController_iOS *)self identifierSpecicier];

    if (specifier == identifierSpecicier)
    {
      [(VSDeveloperIdentityProviderViewController_iOS *)self setIdentifierTextField:editableTextField];
    }

    else
    {
      authenticationURLSpecicier = [(VSDeveloperIdentityProviderViewController_iOS *)self authenticationURLSpecicier];

      if (specifier != authenticationURLSpecicier)
      {
        goto LABEL_8;
      }

      [(VSDeveloperIdentityProviderViewController_iOS *)self setAuthenticationURLTextField:editableTextField];
    }
  }

  [editableTextField addTarget:self action:"textFieldDidChangeNotification:" forControlEvents:0x20000];
LABEL_8:
  if ([v5 tag] == &dword_8)
  {
    editableTextField2 = [v5 editableTextField];
    [editableTextField2 setClearButtonMode:1];
  }

  return v5;
}

@end
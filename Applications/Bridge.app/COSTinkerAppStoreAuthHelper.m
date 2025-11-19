@interface COSTinkerAppStoreAuthHelper
+ (id)satelliteStoreAccountForFamilyMember:(id)a3;
+ (id)storeAccountWithDSID:(id)a3 altDSID:(id)a4 username:(id)a5;
- (COSTinkerAppStoreAuthHelper)initWithContext:(id)a3;
- (void)authenticateWithCompletion:(id)a3;
@end

@implementation COSTinkerAppStoreAuthHelper

- (COSTinkerAppStoreAuthHelper)initWithContext:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = COSTinkerAppStoreAuthHelper;
  v5 = [(COSTinkerAppStoreAuthHelper *)&v13 init];
  if (v5)
  {
    v6 = [v4 presentingViewController];
    presentingViewController = v5->_presentingViewController;
    v5->_presentingViewController = v6;

    v8 = [v4 satelliteAppStoreAccount];
    satelliteAppStoreAccount = v5->_satelliteAppStoreAccount;
    v5->_satelliteAppStoreAccount = v8;

    v10 = [v4 satelliteAKDevice];
    satelliteAKDevice = v5->_satelliteAKDevice;
    v5->_satelliteAKDevice = v10;
  }

  return v5;
}

+ (id)satelliteStoreAccountForFamilyMember:(id)a3
{
  v3 = a3;
  if ([v3 hasLinkediTunesAccount])
  {
    v4 = [v3 iTunesAccountDSID];
    v5 = [v3 iTunesAccountUsername];
    v6 = 0;
  }

  else
  {
    v4 = [v3 dsid];
    v5 = [v3 appleID];
    v6 = [v3 altDSID];
  }

  v7 = [objc_opt_class() storeAccountWithDSID:v4 altDSID:v6 username:v5];

  return v7;
}

+ (id)storeAccountWithDSID:(id)a3 altDSID:(id)a4 username:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ACAccountStore ams_sharedAccountStore];
  v11 = [v10 ams_iTunesAccountWithAltDSID:v8 DSID:v7 username:v9];

  if (!v11)
  {
    if (v7 || v8 || v9)
    {
      v12 = pbb_accountsignin_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315138;
        v17 = "+[COSTinkerAppStoreAuthHelper storeAccountWithDSID:altDSID:username:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s creatring satellite account", &v16, 0xCu);
      }

      v13 = +[ACAccountStore ams_sharedAccountStore];
      v14 = [v13 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifieriTunesStore];

      v11 = [[ACAccount alloc] initWithAccountType:v14];
      [v11 setUsername:v9];
      [v11 ams_setDSID:v7];
      [v11 ams_setAltDSID:v8];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)authenticateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSAuthenticateOptions);
  [v5 setAllowServerDialogs:1];
  [v5 setAuthenticationType:1];
  [v5 setCanMakeAccountActive:0];
  v6 = AMSLogKey();
  [v5 setLogKey:v6];

  v7 = pbb_accountsignin_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating new AMS authenticate request", buf, 2u);
  }

  v8 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v8 setPresentingViewController:self->_presentingViewController];
  [v8 setServiceType:2];
  [v8 _setProxyingForApp:1];
  [v8 setAppProvidedContext:@"tinker"];
  v9 = +[CDPAccount sharedInstance];
  v10 = [v9 primaryAccountAltDSID];
  [v8 setAltDSID:v10];

  v11 = [(ACAccount *)self->_satelliteAppStoreAccount username];
  [v8 setUsername:v11];

  [v8 setProxiedDevice:self->_satelliteAKDevice];
  [v8 setIsUsernameEditable:0];
  v12 = objc_opt_new();
  v13 = [(COSTinkerAppStoreAuthHelper *)self presentingViewController];
  [v12 setPresentingController:v13];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100133F6C;
  v16[3] = &unk_10026CB40;
  v17 = v5;
  v18 = v4;
  v16[4] = self;
  v14 = v5;
  v15 = v4;
  [v12 authenticateWithContext:v8 completion:v16];
}

@end
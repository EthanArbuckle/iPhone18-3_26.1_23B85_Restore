@interface COSTinkerAppStoreAuthHelper
+ (id)satelliteStoreAccountForFamilyMember:(id)member;
+ (id)storeAccountWithDSID:(id)d altDSID:(id)iD username:(id)username;
- (COSTinkerAppStoreAuthHelper)initWithContext:(id)context;
- (void)authenticateWithCompletion:(id)completion;
@end

@implementation COSTinkerAppStoreAuthHelper

- (COSTinkerAppStoreAuthHelper)initWithContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = COSTinkerAppStoreAuthHelper;
  v5 = [(COSTinkerAppStoreAuthHelper *)&v13 init];
  if (v5)
  {
    presentingViewController = [contextCopy presentingViewController];
    presentingViewController = v5->_presentingViewController;
    v5->_presentingViewController = presentingViewController;

    satelliteAppStoreAccount = [contextCopy satelliteAppStoreAccount];
    satelliteAppStoreAccount = v5->_satelliteAppStoreAccount;
    v5->_satelliteAppStoreAccount = satelliteAppStoreAccount;

    satelliteAKDevice = [contextCopy satelliteAKDevice];
    satelliteAKDevice = v5->_satelliteAKDevice;
    v5->_satelliteAKDevice = satelliteAKDevice;
  }

  return v5;
}

+ (id)satelliteStoreAccountForFamilyMember:(id)member
{
  memberCopy = member;
  if ([memberCopy hasLinkediTunesAccount])
  {
    iTunesAccountDSID = [memberCopy iTunesAccountDSID];
    iTunesAccountUsername = [memberCopy iTunesAccountUsername];
    altDSID = 0;
  }

  else
  {
    iTunesAccountDSID = [memberCopy dsid];
    iTunesAccountUsername = [memberCopy appleID];
    altDSID = [memberCopy altDSID];
  }

  v7 = [objc_opt_class() storeAccountWithDSID:iTunesAccountDSID altDSID:altDSID username:iTunesAccountUsername];

  return v7;
}

+ (id)storeAccountWithDSID:(id)d altDSID:(id)iD username:(id)username
{
  dCopy = d;
  iDCopy = iD;
  usernameCopy = username;
  v10 = +[ACAccountStore ams_sharedAccountStore];
  v11 = [v10 ams_iTunesAccountWithAltDSID:iDCopy DSID:dCopy username:usernameCopy];

  if (!v11)
  {
    if (dCopy || iDCopy || usernameCopy)
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
      [v11 setUsername:usernameCopy];
      [v11 ams_setDSID:dCopy];
      [v11 ams_setAltDSID:iDCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)authenticateWithCompletion:(id)completion
{
  completionCopy = completion;
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
  primaryAccountAltDSID = [v9 primaryAccountAltDSID];
  [v8 setAltDSID:primaryAccountAltDSID];

  username = [(ACAccount *)self->_satelliteAppStoreAccount username];
  [v8 setUsername:username];

  [v8 setProxiedDevice:self->_satelliteAKDevice];
  [v8 setIsUsernameEditable:0];
  v12 = objc_opt_new();
  presentingViewController = [(COSTinkerAppStoreAuthHelper *)self presentingViewController];
  [v12 setPresentingController:presentingViewController];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100133F6C;
  v16[3] = &unk_10026CB40;
  v17 = v5;
  v18 = completionCopy;
  v16[4] = self;
  v14 = v5;
  v15 = completionCopy;
  [v12 authenticateWithContext:v8 completion:v16];
}

@end
@interface BuddyStoreRenewController
- (BFFFlowItemDelegate)delegate;
- (BOOL)_canSkipAccount:(id)account;
- (BOOL)_isActiveBuddyStoreAccount:(id)account;
- (BOOL)_isActiveBuddyStoreAccountWithUsername:(id)username orAltDSID:(id)d;
- (BOOL)_isPrimaryAccount:(id)account;
- (BOOL)_isPrimaryAccountWithUsername:(id)username orAltDSID:(id)d;
- (BOOL)controllerNeedsToRun;
- (BuddyStoreRenewController)init;
- (id)_amsStoreAccountForUsername:(id)username altDSID:(id)d;
- (id)_localizedExtraStoresSignInTextForStoreContentMap:(id)map;
- (id)_localizedExtraStoresSignInTextKeyForStoreContentMap:(id)map;
- (id)_primaryAccount;
- (void)_authenticateAccount:(id)account;
- (void)_authenticateNextAccount;
- (void)_authenticateThenSignInNextAccount;
- (void)_didAuthenticateWithAuthenticationResults:(id)results;
- (void)_didSignInUsername:(id)username altDSID:(id)d;
- (void)_familyMembersForAccount:(id)account completion:(id)completion;
- (void)_fetchAccountsWithCompletion:(id)completion;
- (void)_fetchMediaLinkedAccountDSIDWithCompletion:(id)completion;
- (void)_makeStoreAccountActiveForAccount:(id)account completion:(id)completion;
- (void)_removeAccountsToSignIn:(id)in;
- (void)_startSpinningWithIdentifier:(id)identifier;
- (void)_stopSpinningForIdentifier:(id)identifier;
- (void)appleIDController:(id)controller didAuthenticateForCredentialRecovery:(id)recovery;
- (void)appleIDControllerFinished:(id)finished;
- (void)fetchAccounts:(id)accounts;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyStoreRenewController

- (BuddyStoreRenewController)init
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = BuddyStoreRenewController;
  location = [(BuddyStoreRenewController *)&v4 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    *(location + 8) = 1;
  }

  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)fetchAccounts:(id)accounts
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accounts);
  objc_storeStrong(location, 0);
}

- (void)_authenticateThenSignInNextAccount
{
  selfCopy = self;
  location[1] = a2;
  storeAccountsToSignIn = [(BuddyStoreRenewController *)self storeAccountsToSignIn];
  location[0] = [(NSMutableArray *)storeAccountsToSignIn firstObject];

  if (location[0])
  {
    if ([(BuddyStoreRenewController *)selfCopy shouldOnlySetActiveStoreAccount]&& [(BuddyStoreRenewController *)selfCopy _isActiveBuddyStoreAccount:location[0]])
    {
      v12 = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_1001E912C;
      v16 = &unk_10032B6F0;
      v17 = selfCopy;
      [(BuddyStoreRenewController *)selfCopy _makeStoreAccountActiveForAccount:location[0] completion:&v12];
      objc_storeStrong(&v17, 0);
    }

    else if ([(BuddyStoreRenewController *)selfCopy _canSkipAccount:location[0]])
    {
      oslog = _BYLoggingFacility();
      v10 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_10006AE18(buf, location[0]);
        _os_log_impl(&_mh_execute_header, oslog, v10, "Skipping %@...", buf, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      storeAccountsToSignIn2 = [(BuddyStoreRenewController *)selfCopy storeAccountsToSignIn];
      [(NSMutableArray *)storeAccountsToSignIn2 removeObjectAtIndex:0];

      [(BuddyStoreRenewController *)selfCopy _authenticateThenSignInNextAccount];
    }

    else
    {
      [(BuddyStoreRenewController *)selfCopy _authenticateNextAccount];
    }
  }

  else
  {
    v9 = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v9;
      v5 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v4, v5, "No store accounts remaining to sign-in", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    [(BuddyStoreRenewController *)selfCopy setStoreAccountsToSignIn:0];
    delegate = [(BuddyStoreRenewController *)selfCopy delegate];
    [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_canSkipAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v17 = [(BuddyStoreRenewController *)selfCopy _isActiveBuddyStoreAccount:location[0]];
  v16 = [(BuddyStoreRenewController *)selfCopy _isPrimaryAccount:location[0]];
  if (!v16 || (v17 & 1) != 0)
  {
    v14 = 0;
    v12 = 0;
    v7 = 0;
    if ((v16 & 1) == 0)
    {
      mediaLinkedAccountDSID = [(BuddyStoreRenewController *)selfCopy mediaLinkedAccountDSID];
      v14 = 1;
      v7 = 0;
      if (mediaLinkedAccountDSID)
      {
        dsid = [location[0] dsid];
        v12 = 1;
        v7 = dsid != 0;
      }
    }

    if (v12)
    {
    }

    if (v14)
    {
    }

    if (v7)
    {
      mediaLinkedAccountDSID2 = [(BuddyStoreRenewController *)selfCopy mediaLinkedAccountDSID];
      stringValue = [(NSNumber *)mediaLinkedAccountDSID2 stringValue];
      dsid2 = [location[0] dsid];
      v20 = [(NSString *)stringValue isEqualToString:dsid2];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v3 = selfCopy;
    username = [location[0] username];
    altDSID = [location[0] altDSID];
    v6 = [(BuddyStoreRenewController *)v3 _amsStoreAccountForUsername:username altDSID:altDSID];
    v20 = ([v6 isActive] ^ 1) & 1;
  }

  objc_storeStrong(location, 0);
  return v20 & 1;
}

- (void)_makeStoreAccountActiveForAccount:(id)account completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v23 = 0;
  objc_storeStrong(&v23, completion);
  v5 = selfCopy;
  username = [location[0] username];
  altDSID = [location[0] altDSID];
  v22 = [(BuddyStoreRenewController *)v5 _amsStoreAccountForUsername:username altDSID:altDSID];

  if (v22)
  {
    [v22 setActive:1];
    _amsAccountStore = [(BuddyStoreRenewController *)selfCopy _amsAccountStore];
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_1001E96D4;
    v14 = &unk_10032E570;
    v15 = selfCopy;
    v16 = v22;
    v17 = v23;
    [_amsAccountStore saveAccount:v22 withCompletionHandler:&v10];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&_amsAccountStore, 0);
    v19 = 0;
  }

  else
  {
    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(buf, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, v20, "Failed to find store account for active store account: %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (v23)
    {
      v8 = v23;
      v9 = [NSError errorWithDomain:ACErrorDomain code:6 userInfo:0];
      v8[2](v8, v9);
    }

    v19 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)_removeAccountsToSignIn:(id)in
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, in);
  storeAccountsToSignIn = [(BuddyStoreRenewController *)selfCopy storeAccountsToSignIn];
  v4 = [(NSMutableArray *)storeAccountsToSignIn count];

  if (v4)
  {
    memset(__b, 0, sizeof(__b));
    v5 = location[0];
    v6 = [v5 countByEnumeratingWithState:__b objects:v17 count:16];
    if (v6)
    {
      v7 = *__b[2];
      do
      {
        for (i = 0; i < v6; ++i)
        {
          if (*__b[2] != v7)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(__b[1] + 8 * i);
          v9 = [BuddyStoreAccount alloc];
          v11 = [(BuddyStoreAccount *)v9 initWithUsername:v13 dsid:0 altDSID:0];
          storeAccountsToSignIn2 = [(BuddyStoreRenewController *)selfCopy storeAccountsToSignIn];
          [(NSMutableArray *)storeAccountsToSignIn2 removeObject:v11];

          objc_storeStrong(&v11, 0);
        }

        v6 = [v5 countByEnumeratingWithState:__b objects:v17 count:16];
      }

      while (v6);
    }

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_familyMembersForAccount:(id)account completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v20 = 0;
  objc_storeStrong(&v20, completion);
  v5 = +[AMSFamilyInfoLookupTask bagKeySet];
  v6 = +[AMSFamilyInfoLookupTask bagSubProfile];
  v7 = +[AMSFamilyInfoLookupTask bagSubProfileVersion];
  [AMSBagKeySet registerBagKeySet:v5 forProfile:v6 profileVersion:v7];

  v8 = +[AMSFamilyInfoLookupTask bagSubProfile];
  v9 = +[AMSFamilyInfoLookupTask bagSubProfileVersion];
  v19 = [AMSBag bagForProfile:v8 profileVersion:v9];

  v10 = [AMSFamilyInfoLookupTask alloc];
  v18 = [v10 initWithAccount:location[0] bag:v19];
  performFamilyInfoLookup = [v18 performFamilyInfoLookup];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1001E9DC8;
  v15 = &unk_10032ED08;
  v16 = v20;
  [performFamilyInfoLookup addFinishBlock:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&performFamilyInfoLookup, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_authenticateNextAccount
{
  selfCopy = self;
  location[1] = a2;
  storeAccountsToSignIn = [(BuddyStoreRenewController *)self storeAccountsToSignIn];
  location[0] = [(NSMutableArray *)storeAccountsToSignIn firstObject];

  [(BuddyStoreRenewController *)selfCopy _authenticateAccount:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_authenticateAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v3 = [BuddyAppleIDController alloc];
  passcodeCacheManager = [(BuddyStoreRenewController *)selfCopy passcodeCacheManager];
  analyticsManager = [(BuddyStoreRenewController *)selfCopy analyticsManager];
  runState = [(BuddyStoreRenewController *)selfCopy runState];
  featureFlags = [(BuddyStoreRenewController *)selfCopy featureFlags];
  v8 = [(BuddyAppleIDController *)v3 initWithAccount:0 passcodeCacheManager:passcodeCacheManager analyticsManager:analyticsManager runState:runState featureFlags:featureFlags];
  [(BuddyStoreRenewController *)selfCopy setStoreAppleIDController:v8];

  storeAppleIDController = [(BuddyStoreRenewController *)selfCopy storeAppleIDController];
  [(BuddyAppleIDController *)storeAppleIDController setDelegate:selfCopy];

  delegate = [(BuddyStoreRenewController *)selfCopy delegate];
  storeAppleIDController2 = [(BuddyStoreRenewController *)selfCopy storeAppleIDController];
  [(BuddyAppleIDController *)storeAppleIDController2 setFlowItemDelegate:delegate];

  storeAppleIDController3 = [(BuddyStoreRenewController *)selfCopy storeAppleIDController];
  navigationController = [(BuddyStoreRenewController *)selfCopy navigationController];
  [(BuddyAppleIDController *)storeAppleIDController3 setNavigationController:navigationController];

  proximitySetupController = [(BuddyStoreRenewController *)selfCopy proximitySetupController];
  LOBYTE(navigationController) = [(ProximitySetupController *)proximitySetupController hasConnection];
  storeAppleIDController4 = [(BuddyStoreRenewController *)selfCopy storeAppleIDController];
  [(BuddyAppleIDController *)storeAppleIDController4 setHasProximityConnection:navigationController & 1];

  navigationController2 = [(BuddyStoreRenewController *)selfCopy navigationController];
  passcodeCacheManager2 = [(BuddyStoreRenewController *)selfCopy passcodeCacheManager];
  featureFlags2 = [(BuddyStoreRenewController *)selfCopy featureFlags];
  v19 = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:navigationController2 mode:6 passcodeCacheManager:passcodeCacheManager2 featureFlags:featureFlags2];
  [(BuddyStoreRenewController *)selfCopy setSignInController:v19];

  signInController = [(BuddyStoreRenewController *)selfCopy signInController];
  username = [location[0] username];
  [(BuddyAppleIDSignInController *)signInController setUsername:username];

  v22 = selfCopy;
  storeAccountMap = [(BuddyStoreRenewController *)selfCopy storeAccountMap];
  username2 = [location[0] username];
  v25 = [(NSDictionary *)storeAccountMap objectForKeyedSubscript:username2];
  v63 = [(BuddyStoreRenewController *)v22 _localizedExtraStoresSignInTextForStoreContentMap:v25];

  if (v63)
  {
    v26 = +[NSBundle mainBundle];
    v27 = [(NSBundle *)v26 localizedStringForKey:@"STORE_ACCOUNT_UPGRADE_TEXT_%@" value:&stru_10032F900 table:@"RestoreFromBackup"];
    signInController2 = [(BuddyStoreRenewController *)selfCopy signInController];
    username3 = [(BuddyAppleIDSignInController *)signInController2 username];
    v30 = [AKUsernameFormatter formattedUsernameFromUsername:username3];
    v62 = [NSString localizedStringWithFormat:v27, v30];

    v31 = [NSString localizedStringWithFormat:@"%@\n\n%@", v63, v62];
    signInController3 = [(BuddyStoreRenewController *)selfCopy signInController];
    [(BuddyAppleIDSignInController *)signInController3 setDetailText:v31];

    objc_storeStrong(&v62, 0);
  }

  signInController4 = [(BuddyStoreRenewController *)selfCopy signInController];
  v34 = +[NSBundle mainBundle];
  v35 = [(NSBundle *)v34 localizedStringForKey:@"FORGOT_PASSWORD_QUESTION" value:&stru_10032F900 table:@"Localizable"];
  v56 = _NSConcreteStackBlock;
  v57 = -1073741824;
  v58 = 0;
  v59 = sub_1001EAAD4;
  v60 = &unk_10032B0D0;
  v61 = selfCopy;
  [(BuddyAppleIDSignInController *)signInController4 setiForgotText:v35 handler:&v56];

  objc_initWeak(&from, selfCopy);
  signInController5 = [(BuddyStoreRenewController *)selfCopy signInController];
  v49 = _NSConcreteStackBlock;
  v50 = -1073741824;
  v51 = 0;
  v52 = sub_1001EAB98;
  v53 = &unk_10032AF58;
  objc_copyWeak(&v54, &from);
  [(BuddyAppleIDSignInController *)signInController5 setAppearanceHandler:&v49];

  signInController6 = [(BuddyStoreRenewController *)selfCopy signInController];
  v42 = _NSConcreteStackBlock;
  v43 = -1073741824;
  v44 = 0;
  v45 = sub_1001EAC2C;
  v46 = &unk_10032ED30;
  objc_copyWeak(&v48, &from);
  v47 = location[0];
  [(BuddyAppleIDSignInController *)signInController6 setHandler:&v42];

  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    username4 = [location[0] username];
    sub_10006AE18(buf, username4);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Showing sign-in for %@...", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  navigationController3 = [(BuddyStoreRenewController *)selfCopy navigationController];
  signInController7 = [(BuddyStoreRenewController *)selfCopy signInController];
  [(BFFNavigationController *)navigationController3 pushViewController:signInController7 animated:1];

  objc_storeStrong(&v47, 0);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&from);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);
}

- (void)_didAuthenticateWithAuthenticationResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v41 = [location[0] objectForKeyedSubscript:AKAuthenticationUsernameKey];
  v40 = [location[0] objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
  v3 = [CDPUIController alloc];
  navigationController = [(BuddyStoreRenewController *)selfCopy navigationController];
  v5 = [v3 initWithPresentingViewController:navigationController];
  [(BuddyStoreRenewController *)selfCopy setCdpUIController:v5];

  cdpUIController = [(BuddyStoreRenewController *)selfCopy cdpUIController];
  [(CDPUIController *)cdpUIController setForceInlinePresentation:1];

  v7 = [AAUISignInFlowControllerDelegate alloc];
  navigationController2 = [(BuddyStoreRenewController *)selfCopy navigationController];
  v9 = [v7 initWithPresentingViewController:navigationController2];
  [(BuddyStoreRenewController *)selfCopy setFlowControllerDelegate:v9];

  flowControllerDelegate = [(BuddyStoreRenewController *)selfCopy flowControllerDelegate];
  [(AAUISignInFlowControllerDelegate *)flowControllerDelegate setShouldStashLoginResponse:1];

  v39 = objc_alloc_init(AMSSignInContext);
  v38 = [(BuddyStoreRenewController *)selfCopy _isActiveBuddyStoreAccountWithUsername:v41 orAltDSID:v40];
  v37 = [(BuddyStoreRenewController *)selfCopy _isPrimaryAccountWithUsername:v41 orAltDSID:v40];
  [v39 setIgnoreAccountConversion:1];
  [v39 setCanMakeAccountActive:v38 & 1];
  v11 = 0;
  if (v37)
  {
    v11 = v38;
  }

  [v39 setSkipAuthentication:v11 & 1];
  [v39 setDebugReason:@"Setup Assistant"];
  v36 = objc_alloc_init(AIDAMutableServiceContext);
  [v36 setAuthenticationResults:location[0]];
  navigationController3 = [(BuddyStoreRenewController *)selfCopy navigationController];
  [v36 setViewController:navigationController3];

  cdpUIController2 = [(BuddyStoreRenewController *)selfCopy cdpUIController];
  [v36 setCdpUiProvider:cdpUIController2];

  [v36 setShouldForceOperation:0];
  [v36 setOperationUIPermissions:1];
  v44[0] = AIDAServiceTypeCloud;
  flowControllerDelegate2 = [(BuddyStoreRenewController *)selfCopy flowControllerDelegate];
  v45[0] = flowControllerDelegate2;
  v44[1] = AIDAServiceTypeStore;
  v45[1] = v39;
  v15 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
  [v36 setSignInContexts:v15];

  v16 = [AIDAServiceOwnersManager alloc];
  v17 = +[ACAccountStore defaultStore];
  v35 = [v16 initWithAccountStore:v17];

  oslog = _BYLoggingFacility();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = oslog;
    v19 = v33;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v18, v19, "Beginning sign-in for store account...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyStoreRenewController *)selfCopy _startSpinningWithIdentifier:@"signin"];
  v20 = v35;
  v21 = AIDAServiceTypeStore;
  v22 = v36;
  v23 = _NSConcreteStackBlock;
  v24 = -1073741824;
  v25 = 0;
  v26 = sub_1001EB930;
  v27 = &unk_10032ED80;
  v28 = selfCopy;
  v29 = v35;
  v30 = v41;
  v31 = v40;
  [v20 signInService:v21 withContext:v22 completion:&v23];
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

- (void)_didSignInUsername:(id)username altDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v29 = 0;
  objc_storeStrong(&v29, d);
  storeAccountsToSignIn = [(BuddyStoreRenewController *)selfCopy storeAccountsToSignIn];
  [(NSMutableArray *)storeAccountsToSignIn removeObjectAtIndex:0];

  if ([(BuddyStoreRenewController *)selfCopy _isActiveBuddyStoreAccountWithUsername:location[0] orAltDSID:v29])
  {
    v28 = 1;
    activeStoreAccount = [(BuddyStoreRenewController *)selfCopy activeStoreAccount];
    v7 = activeStoreAccount == 0;

    if (v7)
    {
      oslog = _BYLoggingFacility();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = oslog;
        v9 = v26;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v8, v9, "Skipping fetching family members as there is no active store account", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v28 = 0;
    }

    storeAccountsToSignIn2 = [(BuddyStoreRenewController *)selfCopy storeAccountsToSignIn];
    v11 = [(NSMutableArray *)storeAccountsToSignIn2 count];

    if (!v11)
    {
      v24 = _BYLoggingFacility();
      v23 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v24;
        v13 = v23;
        sub_10006AA68(v22);
        _os_log_impl(&_mh_execute_header, v12, v13, "Skipping fetching family members as there are no more accounts to authenticate", v22, 2u);
      }

      objc_storeStrong(&v24, 0);
      v28 = 0;
    }

    if (v28)
    {
      [(BuddyStoreRenewController *)selfCopy _startSpinningWithIdentifier:@"family"];
      v14 = selfCopy;
      activeStoreAccount2 = [(BuddyStoreRenewController *)selfCopy activeStoreAccount];
      v16 = _NSConcreteStackBlock;
      v17 = -1073741824;
      v18 = 0;
      v19 = sub_1001EC0A0;
      v20 = &unk_10032EDA8;
      v21 = selfCopy;
      [(BuddyStoreRenewController *)v14 _familyMembersForAccount:activeStoreAccount2 completion:&v16];

      objc_storeStrong(&v21, 0);
    }

    else
    {
      [(BuddyStoreRenewController *)selfCopy _authenticateThenSignInNextAccount];
    }
  }

  else
  {
    [(BuddyStoreRenewController *)selfCopy _authenticateThenSignInNextAccount];
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (id)_localizedExtraStoresSignInTextForStoreContentMap:(id)map
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, map);
  v6 = [(BuddyStoreRenewController *)selfCopy _localizedExtraStoresSignInTextKeyForStoreContentMap:location[0]];
  if (v6)
  {
    v3 = +[NSBundle mainBundle];
    v9 = [(NSBundle *)v3 localizedStringForKey:v6 value:&stru_10032F900 table:@"RestoreFromBackup"];
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  v4 = v9;

  return v4;
}

- (id)_localizedExtraStoresSignInTextKeyForStoreContentMap:(id)map
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, map);
  v6 = [location[0] objectForKeyedSubscript:@"dataClasses"];
  v5 = [NSMutableString stringWithString:@"EXTRA_STORES"];
  if ([v6 containsObject:@"Book"])
  {
    [v5 appendString:@"_IBOOKS"];
  }

  if ([v6 containsObject:@"Media"])
  {
    [v5 appendString:@"_ITUNES"];
  }

  if ([v6 containsObject:@"Application"])
  {
    [v5 appendString:@"_APP"];
  }

  v3 = v5;
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v3;
}

- (void)_startSpinningWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  navigationController = [(BuddyStoreRenewController *)selfCopy navigationController];
  topViewController = [(BFFNavigationController *)navigationController topViewController];
  view = [topViewController view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  navigationController2 = [(BuddyStoreRenewController *)selfCopy navigationController];
  topViewController2 = [(BFFNavigationController *)navigationController2 topViewController];
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:topViewController2 identifier:location[0]];

  objc_storeStrong(location, 0);
}

- (void)_stopSpinningForIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  navigationController = [(BuddyStoreRenewController *)selfCopy navigationController];
  topViewController = [(BFFNavigationController *)navigationController topViewController];
  view = [topViewController view];
  window = [view window];
  [window setUserInteractionEnabled:1];

  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v19 = a2;
  buddyPreferencesInternal = [(BuddyStoreRenewController *)self buddyPreferencesInternal];
  v17 = 0;
  v15 = 0;
  v3 = 0;
  if (buddyPreferencesInternal)
  {
    buddyPreferencesInternal2 = [(BuddyStoreRenewController *)selfCopy buddyPreferencesInternal];
    v17 = 1;
    v16 = [(BYPreferencesController *)buddyPreferencesInternal2 objectForKey:@"ams-force-run" includeCache:0];
    v15 = 1;
    v3 = v16 != 0;
  }

  if (v15)
  {
  }

  if (v17)
  {
  }

  if (v3)
  {
    oslog = _BYLoggingFacility();
    v13 = 2;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v4 = oslog;
      v5 = v13;
      sub_10006AA68(buf);
      _os_log_debug_impl(&_mh_execute_header, v4, v5, "AMSAccount fetchMedialLinkedAccountDSID force run flag found", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    return 1;
  }

  else
  {
    networkProvider = [(BuddyStoreRenewController *)selfCopy networkProvider];
    networkReachable = [(BuddyNetworkProvider *)networkProvider networkReachable];
    v10 = 0;
    v8 = 1;
    if ((networkReachable & 1) == 0)
    {
      miscState = [(BuddyStoreRenewController *)selfCopy miscState];
      v10 = 1;
      v8 = ![(BuddyMiscState *)miscState userSkippedWiFi];
    }

    v21 = v8 & 1;
    if (v10)
    {
    }
  }

  return v21;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v27 = dispatch_group_create();
  dispatch_group_enter(v27);
  v3 = selfCopy;
  v21 = _NSConcreteStackBlock;
  v22 = -1073741824;
  v23 = 0;
  v24 = sub_1001ECBD4;
  v25 = &unk_10032B0D0;
  v26 = v27;
  [(BuddyStoreRenewController *)v3 _fetchAccountsWithCompletion:&v21];
  dispatch_group_enter(v27);
  v4 = selfCopy;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_1001ECC00;
  v18 = &unk_10032EDD0;
  v19 = selfCopy;
  v20 = v27;
  [(BuddyStoreRenewController *)v4 _fetchMediaLinkedAccountDSIDWithCompletion:&v14];
  v5 = v27;
  v6 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001ECC5C;
  v11 = &unk_10032BCA0;
  v13 = location[0];
  v12 = selfCopy;
  dispatch_group_notify(v5, v6, &block);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchAccountsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001ECDF0;
  v8 = &unk_10032EE48;
  v9 = selfCopy;
  v10 = location[0];
  [(BuddyStoreRenewController *)v3 fetchAccounts:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchMediaLinkedAccountDSIDWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _primaryAccount = [(BuddyStoreRenewController *)selfCopy _primaryAccount];
  ams_DSID = [_primaryAccount ams_DSID];

  if (ams_DSID)
  {
    v63 = _BYLoggingFacility();
    v62 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      username = [_primaryAccount username];
      ams_DSID2 = [_primaryAccount ams_DSID];
      sub_10010DD40(buf, username, ams_DSID2);
      _os_log_impl(&_mh_execute_header, v63, v62, "Fetching media link account DSID for %@: %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&v63, 0);
    v6 = [AMSAccountIdentity alloc];
    ams_DSID3 = [_primaryAccount ams_DSID];
    ams_altDSID = [_primaryAccount ams_altDSID];
    v61 = [v6 initWithDSID:ams_DSID3 altDSID:ams_altDSID];

    v54 = 0;
    v55 = &v54;
    v56 = 838860800;
    v57 = 48;
    v58 = sub_1001EE048;
    v59 = sub_1001EE074;
    v60 = 0;
    v50[0] = 0;
    v50[1] = v50;
    v51 = 0x20000000;
    v52 = 32;
    v53 = 0;
    v43 = _NSConcreteStackBlock;
    v44 = -1073741824;
    v45 = 0;
    v46 = sub_1001EE080;
    v47 = &unk_10032EE98;
    v48[1] = &v54;
    v48[2] = v50;
    v48[0] = location[0];
    v49 = objc_retainBlock(&v43);
    block = _NSConcreteStackBlock;
    v38 = -1073741824;
    v39 = 0;
    v40 = sub_1001EE424;
    v41 = &unk_10032B120;
    v42 = v49;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    v10 = v55[5];
    v55[5] = v9;

    v11 = dispatch_time(0, 15000000000);
    v12 = &_dispatch_main_q;
    v31 = _NSConcreteStackBlock;
    v32 = -1073741824;
    v33 = 0;
    v34 = sub_1001EE4DC;
    v35 = &unk_10032B070;
    v36 = &v54;
    dispatch_after(v11, v12, &v31);

    v13 = +[AMSAccountCachedServerData sharedInstance];
    v14 = v61;
    v24 = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_1001EE524;
    v28 = &unk_10032EEC0;
    v29 = v49;
    v30 = [(AMSAccountCachedServerData *)v13 intForKey:3 accountID:v14 updateBlock:&v24];

    v15 = v30;
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_1001EE798;
    v22 = &unk_10032EEC0;
    v23 = v49;
    [v15 addFinishBlock:&v18];
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v49, 0);
    objc_storeStrong(v48, 0);
    _Block_object_dispose(v50, 8);
    _Block_object_dispose(&v54, 8);
    objc_storeStrong(&v60, 0);
    objc_storeStrong(&v61, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      username2 = [_primaryAccount username];
      sub_10006AE18(v67, username2);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Skip fetch media linked account. Failed to determine DSID for primary account: %@", v67, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 0);
    }
  }

  objc_storeStrong(&_primaryAccount, 0);
  objc_storeStrong(location, 0);
}

- (void)appleIDControllerFinished:(id)finished
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finished);
  objc_storeStrong(location, 0);
}

- (void)appleIDController:(id)controller didAuthenticateForCredentialRecovery:(id)recovery
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v5 = 0;
  objc_storeStrong(&v5, recovery);
  [(BuddyStoreRenewController *)selfCopy _didAuthenticateWithAuthenticationResults:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isActiveBuddyStoreAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v3 = selfCopy;
  username = [location[0] username];
  altDSID = [location[0] altDSID];
  LOBYTE(v3) = [(BuddyStoreRenewController *)v3 _isActiveBuddyStoreAccountWithUsername:username orAltDSID:altDSID];

  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (BOOL)_isActiveBuddyStoreAccountWithUsername:(id)username orAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v16 = 0;
  objc_storeStrong(&v16, d);
  v5 = location[0];
  activeBuddyStoreAccount = [(BuddyStoreRenewController *)selfCopy activeBuddyStoreAccount];
  username = [(BuddyStoreAccount *)activeBuddyStoreAccount username];
  v8 = [v5 isEqualToString:username];
  v14 = 0;
  v12 = 0;
  v9 = 1;
  if ((v8 & 1) == 0)
  {
    v10 = v16;
    activeBuddyStoreAccount2 = [(BuddyStoreRenewController *)selfCopy activeBuddyStoreAccount];
    v14 = 1;
    altDSID = [(BuddyStoreAccount *)activeBuddyStoreAccount2 altDSID];
    v12 = 1;
    v9 = [v10 isEqualToString:?];
  }

  v19 = v9 & 1;
  if (v12)
  {
  }

  if (v14)
  {
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v19 & 1;
}

- (BOOL)_isPrimaryAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v3 = selfCopy;
  username = [location[0] username];
  altDSID = [location[0] altDSID];
  LOBYTE(v3) = [(BuddyStoreRenewController *)v3 _isPrimaryAccountWithUsername:username orAltDSID:altDSID];

  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (BOOL)_isPrimaryAccountWithUsername:(id)username orAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v16 = 0;
  objc_storeStrong(&v16, d);
  v5 = location[0];
  _primaryAccountInfo = [(BuddyStoreRenewController *)selfCopy _primaryAccountInfo];
  username = [_primaryAccountInfo username];
  v8 = [v5 isEqualToString:username];
  v14 = 0;
  v12 = 0;
  v9 = 1;
  if ((v8 & 1) == 0)
  {
    v10 = v16;
    _primaryAccountInfo2 = [(BuddyStoreRenewController *)selfCopy _primaryAccountInfo];
    v14 = 1;
    altDSID = [_primaryAccountInfo2 altDSID];
    v12 = 1;
    v9 = [v10 isEqualToString:?];
  }

  v19 = v9 & 1;
  if (v12)
  {
  }

  if (v14)
  {
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v19 & 1;
}

- (id)_amsStoreAccountForUsername:(id)username altDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v8 = 0;
  objc_storeStrong(&v8, d);
  _amsAccountStore = [(BuddyStoreRenewController *)selfCopy _amsAccountStore];
  if (v8)
  {
    v11 = [_amsAccountStore ams_iTunesAccountWithAltDSID:v8];
  }

  else
  {
    v11 = [_amsAccountStore ams_iTunesAccountWithUsername:location[0]];
  }

  objc_storeStrong(&_amsAccountStore, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  v5 = v11;

  return v5;
}

- (id)_primaryAccount
{
  v2 = [ACAccountStore defaultStore:a2];
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
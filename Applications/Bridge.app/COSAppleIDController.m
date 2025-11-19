@interface COSAppleIDController
- (BOOL)_federatedAuthRequiredForAccount:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (COSAppleIDController)init;
- (id)newPasswordTextFieldSpecifierWithID:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_textFieldValueDidChange:(id)a3;
- (void)addForgotPasswordFooterToSpecifier:(id)a3 withActionSelector:(SEL)a4;
- (void)appleIDAuthController:(id)a3 didSignInWithSuccess:(BOOL)a4 error:(id)a5;
- (void)dealloc;
- (void)enableSignInButtons:(BOOL)a3;
- (void)handleAccountsInfoReply:(id)a3 error:(id)a4;
- (void)loggedInSuccessfullyToAccount:(id)a3;
- (void)openiCloudPaneInSettingsApp;
- (void)queryWatchForAccountsInfo;
- (void)removeForgotPasswordFooterFromSpecifier:(id)a3;
- (void)startNetworkRequest;
- (void)stopNetworkRequest;
- (void)tappedForgotButton;
- (void)tappedForgotFaceTimeButton;
- (void)tappedForgotiCloudButton;
- (void)tappedForgotiMessageButton;
- (void)tappedForgotiTunesStoreButton;
- (void)tappedSignInToFaceTime;
- (void)tappedSignInToiCloud;
- (void)tappedSignInToiMessage;
- (void)tappedSignInToiTunesStore;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation COSAppleIDController

- (COSAppleIDController)init
{
  v71.receiver = self;
  v71.super_class = COSAppleIDController;
  v2 = [(COSAppleIDController *)&v71 init];
  v3 = v2;
  if (v2)
  {
    v2->_hasFetchedAccountsInfo = 0;
    v4 = [UIApp activeWatch];
    pairedWatch = v3->_pairedWatch;
    v3->_pairedWatch = v4;

    if (!v3->_pairedWatch)
    {
      v6 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
      v7 = v3->_pairedWatch;
      v3->_pairedWatch = v6;

      v8 = pbb_accountsignin_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v3->_pairedWatch != 0;
        *buf = 136315394;
        v73 = "[COSAppleIDController init]";
        v74 = 1024;
        LODWORD(v75) = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s active watch: %{BOOL}d", buf, 0x12u);
      }
    }

    v10 = objc_alloc_init(ACAccountStore);
    accountStore = v3->_accountStore;
    v3->_accountStore = v10;

    v12 = +[COSiCloudAuthController iCloudAccountInAccountStore];
    iCloudAccount = v3->_iCloudAccount;
    v3->_iCloudAccount = v12;

    v14 = [COSAppleIDAuthController lookupIDMSAccountWithAccountStore:v3->_accountStore matchingAccount:v3->_iCloudAccount];
    iCloudIDMSAccount = v3->_iCloudIDMSAccount;
    v3->_iCloudIDMSAccount = v14;

    v16 = +[COSiMessageFaceTimeAuthController iMessageAccountInAccountStore];
    iMessageAccount = v3->_iMessageAccount;
    v3->_iMessageAccount = v16;

    v18 = [COSAppleIDAuthController lookupIDMSAccountWithAccountStore:v3->_accountStore matchingAccount:v3->_iMessageAccount];
    iMessageIDMSAccount = v3->_iMessageIDMSAccount;
    v3->_iMessageIDMSAccount = v18;

    if (v3->_iCloudAccount && v3->_iMessageAccount)
    {
      v20 = [COSAppleIDUtilities checkIfAccount:"checkIfAccount:isForSameAppleIDAsAccount:" isForSameAppleIDAsAccount:?];
    }

    else
    {
      v20 = 0;
    }

    v3->_sameiCloudAndiMessageAppleID = v20;
    v21 = v3->_pairedWatch;
    v22 = [[NSUUID alloc] initWithUUIDString:@"DEBFF23F-9327-44FB-A219-0428BEBD5BA7"];
    v3->_watchSupportsFaceTime = [(NRDevice *)v21 supportsCapability:v22];

    if (v3->_watchSupportsFaceTime)
    {
      v23 = +[COSiMessageFaceTimeAuthController faceTimeAccountInAccountStore];
      faceTimeAccount = v3->_faceTimeAccount;
      v3->_faceTimeAccount = v23;

      v25 = [COSAppleIDAuthController lookupIDMSAccountWithAccountStore:v3->_accountStore matchingAccount:v3->_faceTimeAccount];
      faceTimeIDMSAccount = v3->_faceTimeIDMSAccount;
      v3->_faceTimeIDMSAccount = v25;
    }

    if (v3->_iCloudAccount && v3->_faceTimeAccount)
    {
      v27 = [COSAppleIDUtilities checkIfAccount:"checkIfAccount:isForSameAppleIDAsAccount:" isForSameAppleIDAsAccount:?];
    }

    else
    {
      v27 = 0;
    }

    v3->_sameiCloudAndFaceTimeAppleID = v27;
    if (v3->_iMessageAccount && v3->_faceTimeAccount)
    {
      v28 = [COSAppleIDUtilities checkIfAccount:"checkIfAccount:isForSameAppleIDAsAccount:" isForSameAppleIDAsAccount:?];
    }

    else
    {
      v28 = 0;
    }

    v3->_sameiMessageAndFaceTimeAppleID = v28;
    v29 = v3->_pairedWatch;
    v30 = [[NSUUID alloc] initWithUUIDString:@"1F1097A5-5A0B-4795-9FBE-B206DB49FA1D"];
    v3->_watchSupportsiTunesStore = [(NRDevice *)v29 supportsCapability:v30];

    if (v3->_watchSupportsiTunesStore)
    {
      v31 = +[COSiTunesStoreAuthController iTunesStoreAccountInAccountStore];
      iTunesStoreAccount = v3->_iTunesStoreAccount;
      v3->_iTunesStoreAccount = v31;

      v33 = [COSAppleIDAuthController lookupIDMSAccountWithAccountStore:v3->_accountStore matchingAccount:v3->_iTunesIDMSAccount];
      iTunesIDMSAccount = v3->_iTunesIDMSAccount;
      v3->_iTunesIDMSAccount = v33;
    }

    if (v3->_iTunesStoreAccount && v3->_iCloudAccount)
    {
      v35 = [COSAppleIDUtilities checkIfAccount:"checkIfAccount:isForSameAppleIDAsAccount:" isForSameAppleIDAsAccount:?];
    }

    else
    {
      v35 = 0;
    }

    v3->_sameiCloudAndiTunesStoreAppleID = v35;
    v36 = v3->_iCloudAccount;
    if (v36)
    {
      v37 = [COSAppleIDAuthController shouldAttemptPasswordLessSignInForAccount:v36 inAccountStore:v3->_accountStore];
      v3->_iCloudInteractiveAuthRequired = v37 ^ 1;
      if (v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = ![(COSAppleIDController *)v3 _federatedAuthRequiredForAccount:v3->_iCloudIDMSAccount];
      }
    }

    else
    {
      v38 = 0;
      v3->_iCloudInteractiveAuthRequired = 0;
    }

    v3->_displayiCloudPasswordTextField = v38;
    v39 = v3->_iMessageAccount;
    if (v39)
    {
      v40 = [COSAppleIDAuthController shouldAttemptPasswordLessSignInForAccount:v39 inAccountStore:v3->_accountStore];
      v3->_iMessageInteractiveAuthRequired = v40 ^ 1;
      if (v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = ![(COSAppleIDController *)v3 _federatedAuthRequiredForAccount:v3->_iMessageIDMSAccount];
      }
    }

    else
    {
      v41 = 0;
      v3->_iMessageInteractiveAuthRequired = 0;
    }

    v3->_displayiMessagePasswordTextField = v41;
    v42 = v3->_faceTimeAccount;
    if (v42)
    {
      v43 = [COSAppleIDAuthController shouldAttemptPasswordLessSignInForAccount:v42 inAccountStore:v3->_accountStore];
      v3->_facetimeInteractiveAuthRequired = v43 ^ 1;
      if (v43)
      {
        LOBYTE(v44) = 0;
      }

      else
      {
        v44 = ![(COSAppleIDController *)v3 _federatedAuthRequiredForAccount:v3->_faceTimeIDMSAccount];
      }
    }

    else
    {
      LOBYTE(v44) = 0;
      v3->_facetimeInteractiveAuthRequired = 0;
    }

    v3->_displayFaceTimePasswordTextField = v44;
    v45 = v3->_iTunesStoreAccount;
    if (v45)
    {
      v46 = [COSAppleIDAuthController shouldAttemptPasswordLessSignInForAccount:v45 inAccountStore:v3->_accountStore];
      v3->_iTunesInteractiveAuthRequired = v46 ^ 1;
      if (v46)
      {
        v47 = 0;
      }

      else
      {
        v47 = ![(COSAppleIDController *)v3 _federatedAuthRequiredForAccount:v3->_iTunesIDMSAccount];
      }
    }

    else
    {
      v47 = 0;
      v3->_iTunesInteractiveAuthRequired = 0;
    }

    v3->_displayiTunesStorePasswordTextField = v47;
    v48 = pbb_accountsignin_log();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "COSAppleIDController: Phone Info!!!!---------------------", buf, 2u);
    }

    v49 = pbb_accountsignin_log();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      if (v3->_accountStore)
      {
        v50 = "YES";
      }

      else
      {
        v50 = "NO";
      }

      v51 = [(ACAccount *)v3->_iCloudAccount aa_displayName];
      v52 = [(ACAccount *)v3->_iMessageAccount aa_displayName];
      v53 = [(ACAccount *)v3->_faceTimeAccount aa_displayName];
      v54 = [(ACAccount *)v3->_iTunesStoreAccount aa_displayName];
      v55 = v54;
      v56 = "YES";
      if (!v3->_sameiCloudAndiMessageAppleID)
      {
        v56 = "NO";
      }

      v57 = !v3->_sameiMessageAndFaceTimeAppleID;
      *buf = 136316674;
      v58 = "YES";
      if (v57)
      {
        v58 = "NO";
      }

      v73 = v50;
      v74 = 2112;
      v75 = v51;
      v76 = 2112;
      v77 = v52;
      v78 = 2112;
      v79 = v53;
      v80 = 2112;
      v81 = v54;
      v82 = 2080;
      v83 = v56;
      v84 = 2080;
      v85 = v58;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "COSAppleIDController: accountStore=%s iCloudAccount=%@ iMessageAccount=%@ faceTimeAccount=%@ iTunesStoreAccount=%@ sameiCloudAndiMessageAppleID=%s sameiMessageAndFaceTimeAppleID=%s", buf, 0x48u);
    }

    v59 = pbb_accountsignin_log();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      if (v3->_watchSupportsFaceTime)
      {
        v60 = "YES";
      }

      else
      {
        v60 = "NO";
      }

      sameiCloudAndiTunesStoreAppleID = v3->_sameiCloudAndiTunesStoreAppleID;
      if (v3->_watchSupportsiTunesStore)
      {
        v62 = "YES";
      }

      else
      {
        v62 = "NO";
      }

      *buf = 136315650;
      if (sameiCloudAndiTunesStoreAppleID)
      {
        v63 = "YES";
      }

      else
      {
        v63 = "NO";
      }

      v73 = v60;
      v74 = 2080;
      v75 = v62;
      v76 = 2080;
      v77 = v63;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "COSAppleIDController: watchSupportsFaceTime=%s watchSupportsiTunesStore=%s sameiCloudAndiTunesStoreAppleID=%s", buf, 0x20u);
    }

    v64 = pbb_accountsignin_log();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      if (v3->_iCloudPasswordTextField)
      {
        v65 = "YES";
      }

      else
      {
        v65 = "NO";
      }

      if (v3->_iMessagePasswordTextField)
      {
        v66 = "YES";
      }

      else
      {
        v66 = "NO";
      }

      if (v3->_faceTimePasswordTextField)
      {
        v67 = "YES";
      }

      else
      {
        v67 = "NO";
      }

      if (v3->_iTunesStorePasswordTextField)
      {
        v68 = "YES";
      }

      else
      {
        v68 = "NO";
      }

      *buf = 136315906;
      v73 = v65;
      v74 = 2080;
      v75 = v66;
      v76 = 2080;
      v77 = v67;
      v78 = 2080;
      v79 = v68;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "COSAppleIDController: display- iCloudPasswordTextField=%s iMessagePasswordTextField=%s FaceTimePasswordTextField=%s iTunesStorePasswordTextField=%s", buf, 0x2Au);
    }

    v69 = pbb_accountsignin_log();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "COSAppleIDController: Phone Info!!!!---------------------", buf, 2u);
    }

    [(COSAppleIDController *)v3 queryWatchForAccountsInfo];
  }

  return v3;
}

- (BOOL)_federatedAuthRequiredForAccount:(id)a3
{
  v3 = [a3 accountPropertyForKey:AKAuthMode];
  v4 = [v3 unsignedIntegerValue] == 2;

  return v4;
}

- (void)dealloc
{
  [(COSAppleIDAuthController *)self->_authController setDelegate:0];
  if (self->_iCloudPasswordTextFieldTextDidChangeObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_iCloudPasswordTextFieldTextDidChangeObserver name:UITextFieldTextDidChangeNotification object:self->_iCloudPasswordTextField];

    iCloudPasswordTextFieldTextDidChangeObserver = self->_iCloudPasswordTextFieldTextDidChangeObserver;
    self->_iCloudPasswordTextFieldTextDidChangeObserver = 0;
  }

  if (self->_iMessagePasswordTextFieldTextDidChangeObserver)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self->_iMessagePasswordTextFieldTextDidChangeObserver name:UITextFieldTextDidChangeNotification object:self->_iMessagePasswordTextField];

    iMessagePasswordTextFieldTextDidChangeObserver = self->_iMessagePasswordTextFieldTextDidChangeObserver;
    self->_iMessagePasswordTextFieldTextDidChangeObserver = 0;
  }

  if (self->_faceTimePasswordTextFieldTextDidChangeObserver)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self->_faceTimePasswordTextFieldTextDidChangeObserver name:UITextFieldTextDidChangeNotification object:self->_faceTimePasswordTextField];

    faceTimePasswordTextFieldTextDidChangeObserver = self->_faceTimePasswordTextFieldTextDidChangeObserver;
    self->_faceTimePasswordTextFieldTextDidChangeObserver = 0;
  }

  if (self->_iTunesStorePasswordTextFieldTextDidChangeObserver)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 removeObserver:self->_iTunesStorePasswordTextFieldTextDidChangeObserver name:UITextFieldTextDidChangeNotification object:self->_iTunesStorePasswordTextField];

    iTunesStorePasswordTextFieldTextDidChangeObserver = self->_iTunesStorePasswordTextFieldTextDidChangeObserver;
    self->_iTunesStorePasswordTextFieldTextDidChangeObserver = 0;
  }

  v11.receiver = self;
  v11.super_class = COSAppleIDController;
  [(COSAppleIDController *)&v11 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_100035080;
    v80[3] = &unk_100268DB8;
    v80[4] = self;
    v6 = objc_retainBlock(v80);
    objc_initWeak(&location, self);
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_100035214;
    v76[3] = &unk_100268DE0;
    objc_copyWeak(&v78, &location);
    v7 = v6;
    v77 = v7;
    v8 = objc_retainBlock(v76);
    v9 = [PSSpecifier groupSpecifierWithID:@"iCloudHeader"];
    v75 = v8;
    v10 = BPSStockholmSupportedInGizmoRegion();
    (v7[2])(v7, v9, v10);
    [v5 addObject:v9];
    if (!self->_hasFetchedAccountsInfo)
    {
      v21 = +[PSSpecifier emptyGroupSpecifier];

      [v5 addObject:v21];
      v22 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];

      [v5 addObject:v22];
LABEL_77:
      objc_storeStrong(&self->BPSListController_opaque[v3], v5);
      v63 = [(COSAppleIDController *)self navigationItem];
      v64 = +[NSBundle mainBundle];
      v65 = [v64 localizedStringForKey:@"TITLE" value:&stru_10026E598 table:@"AppleID"];
      [v63 setTitle:v65];

      objc_destroyWeak(&v78);
      objc_destroyWeak(&location);

      v4 = *&self->BPSListController_opaque[v3];
      goto LABEL_78;
    }

    if (!self->_iCloudAccount)
    {
      v23 = +[PSSpecifier emptyGroupSpecifier];

      [v5 addObject:v23];
      v24 = +[NSBundle mainBundle];
      v25 = [v24 localizedStringForKey:@"SIGN_IN_COMPANION" value:&stru_10026E598 table:@"AppleID"];
      v22 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v22 setButtonAction:"openiCloudPaneInSettingsApp"];
      [v5 addObject:v22];
      goto LABEL_33;
    }

    v11 = [PSSpecifier groupSpecifierWithID:@"iCloudGroup"];

    [v5 addObject:v11];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"APPLE_ID" value:&stru_10026E598 table:@"AppleID"];
    v14 = [PSTextFieldSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"getiCloudUsernameForSpecifier:" detail:0 cell:8 edit:0];

    [v14 setProperty:@"iCloudLogin" forKey:PSIDKey];
    v15 = PSEnabledKey;
    [v14 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    [v5 addObject:v14];
    if (!self->_watchIsSignedInToiCloud)
    {
      goto LABEL_27;
    }

    v16 = 208;
    iMessageAccount = self->_iMessageAccount;
    if (iMessageAccount)
    {
      if (self->_sameiCloudAndiMessageAppleID && !self->_watchIsSignedInToiMessage)
      {
        goto LABEL_27;
      }
    }

    faceTimeAccount = self->_faceTimeAccount;
    if (!faceTimeAccount || !self->_sameiCloudAndFaceTimeAppleID || self->_watchIsSignedInToFaceTime)
    {
      v19 = 0;
LABEL_12:
      if (self->_iTunesStoreAccount && self->_sameiCloudAndiTunesStoreAppleID)
      {
        watchIsSignedInToiTunesStore = self->_watchIsSignedInToiTunesStore;
        if (v19)
        {
        }

        if (!watchIsSignedInToiTunesStore)
        {
          goto LABEL_27;
        }
      }

      else if (v19)
      {
      }

      v22 = v11;
LABEL_32:

LABEL_33:
      hasFetchedAccountsInfo = self->_hasFetchedAccountsInfo;
      if (hasFetchedAccountsInfo)
      {
        v32 = self->_iMessageAccount;
        if (!v32)
        {
LABEL_37:
          LOBYTE(hasFetchedAccountsInfo) = 1;
          goto LABEL_54;
        }

        if (self->_sameiCloudAndiMessageAppleID)
        {
          LODWORD(v32) = 0;
          goto LABEL_37;
        }

        if (self->_watchSupportsFaceTime && self->_faceTimeAccount && self->_sameiMessageAndFaceTimeAppleID && self->_watchIsSignedInToiMessage && self->_watchIsSignedInToFaceTime)
        {
          v33 = +[NSBundle mainBundle];
          v73 = [v33 localizedStringForKey:@"MESSAGES_AND_FACETIME" value:&stru_10026E598 table:@"AppleID"];
        }

        else
        {
          v33 = +[NSBundle mainBundle];
          v73 = [v33 localizedStringForKey:@"MESSAGES" value:&stru_10026E598 table:@"AppleID"];
        }

        v34 = [PSSpecifier groupSpecifierWithID:@"iMessageGroup" name:v73];

        [v5 addObject:v34];
        v35 = +[NSBundle mainBundle];
        v36 = [v35 localizedStringForKey:@"APPLE_ID" value:&stru_10026E598 table:@"AppleID"];
        v37 = [PSTextFieldSpecifier preferenceSpecifierNamed:v36 target:self set:0 get:"getiMessageUsernameForSpecifier:" detail:0 cell:8 edit:0];

        [v37 setProperty:@"iMessageLogin" forKey:PSIDKey];
        v72 = PSEnabledKey;
        [v37 setProperty:&__kCFBooleanFalse forKey:?];
        [v5 addObject:v37];
        if (self->_watchIsSignedInToiMessage)
        {
          v22 = v34;
        }

        else
        {
          if (self->_displayiMessagePasswordTextField)
          {
            v38 = [(COSAppleIDController *)self newPasswordTextFieldSpecifierWithID:@"iMessagePassword"];

            [v5 addObject:v38];
            v37 = v38;
          }

          if (![(COSAppleIDController *)self _federatedAuthRequiredForAccount:self->_iMessageIDMSAccount])
          {
            v39 = [v5 specifierForID:@"iMessageGroup"];
            [(COSAppleIDController *)self addForgotPasswordFooterToSpecifier:v39 withActionSelector:"tappedForgotiMessageButton"];
          }

          v40 = +[NSBundle mainBundle];
          v41 = [v40 localizedStringForKey:@"SIGN_IN" value:&stru_10026E598 table:@"AppleID"];
          v22 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:0 get:0 detail:0 cell:13 edit:0];

          [v22 setIdentifier:@"iMessageSignIn"];
          [v22 setButtonAction:"tappedSignInToiMessage"];
          v42 = [NSNumber numberWithInt:[(COSAppleIDController *)self signingIn]^ 1];
          [v22 setProperty:v42 forKey:v72];

          [v5 addObject:v22];
        }

        LOBYTE(hasFetchedAccountsInfo) = self->_hasFetchedAccountsInfo;
        LODWORD(v32) = 1;
      }

      else
      {
        LODWORD(v32) = 0;
      }

LABEL_54:
      if (self->_watchSupportsFaceTime)
      {
        if (!hasFetchedAccountsInfo)
        {
          if ((v32 & 1) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        if (self->_faceTimeAccount && !self->_sameiCloudAndFaceTimeAppleID && !self->_sameiMessageAndFaceTimeAppleID)
        {
          v43 = +[NSBundle mainBundle];
          v44 = [v43 localizedStringForKey:@"FACETIME" value:&stru_10026E598 table:@"AppleID"];
          v45 = [PSSpecifier groupSpecifierWithID:@"iFaceTimeGroup" name:v44];

          [v5 addObject:v45];
          v46 = +[NSBundle mainBundle];
          v47 = [v46 localizedStringForKey:@"APPLE_ID" value:&stru_10026E598 table:@"AppleID"];
          v48 = [PSTextFieldSpecifier preferenceSpecifierNamed:v47 target:self set:0 get:"getFaceTimeUsernameForSpecifier:" detail:0 cell:8 edit:0];

          [v48 setProperty:@"iFaceTimeLogin" forKey:PSIDKey];
          v49 = PSEnabledKey;
          [v48 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
          [v5 addObject:v48];
          if (self->_watchIsSignedInToFaceTime)
          {
            v22 = v45;
          }

          else
          {
            if (self->_displayFaceTimePasswordTextField)
            {
              v67 = [(COSAppleIDController *)self newPasswordTextFieldSpecifierWithID:@"iFaceTimePassword"];

              [v5 addObject:v67];
              v48 = v67;
            }

            if (![(COSAppleIDController *)self _federatedAuthRequiredForAccount:self->_faceTimeIDMSAccount])
            {
              v68 = [v5 specifierForID:@"iFaceTimeGroup"];
              [(COSAppleIDController *)self addForgotPasswordFooterToSpecifier:v68 withActionSelector:"tappedForgotFaceTimeButton"];
            }

            v69 = +[NSBundle mainBundle];
            v70 = [v69 localizedStringForKey:@"SIGN_IN" value:&stru_10026E598 table:@"AppleID"];
            v22 = [PSSpecifier preferenceSpecifierNamed:v70 target:self set:0 get:0 detail:0 cell:13 edit:0];

            [v22 setIdentifier:@"iFaceTimeSignIn"];
            [v22 setButtonAction:"tappedSignInToFaceTime"];
            v71 = [NSNumber numberWithInt:[(COSAppleIDController *)self signingIn]^ 1];
            [v22 setProperty:v71 forKey:v49];

            [v5 addObject:v22];
          }

          if (!self->_hasFetchedAccountsInfo)
          {
            goto LABEL_76;
          }

          LODWORD(v32) = 1;
        }
      }

      else if (!hasFetchedAccountsInfo)
      {
        goto LABEL_64;
      }

      if (!self->_iTunesStoreAccount || self->_sameiCloudAndiTunesStoreAppleID)
      {
LABEL_64:
        if (!v32)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }

      v50 = +[NSBundle mainBundle];
      v51 = [v50 localizedStringForKey:@"ITUNES_STORE" value:&stru_10026E598 table:@"AppleID"];

      v52 = [PSSpecifier groupSpecifierWithID:@"iTunesStoreGroup" name:v51];

      [v5 addObject:v52];
      v74 = v51;
      v53 = +[NSBundle mainBundle];
      v54 = [v53 localizedStringForKey:@"APPLE_ID" value:&stru_10026E598 table:@"AppleID"];
      v55 = [PSTextFieldSpecifier preferenceSpecifierNamed:v54 target:self set:0 get:"getiTunesStoreUsernameForSpecifier:" detail:0 cell:8 edit:0];

      [v55 setProperty:@"iTunesStoreLoginCell" forKey:PSIDKey];
      v56 = PSEnabledKey;
      [v55 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
      [v5 addObject:v55];
      if (self->_watchIsSignedInToiTunesStore)
      {
        v22 = v52;
      }

      else
      {
        if (self->_displayiTunesStorePasswordTextField)
        {
          v57 = [(COSAppleIDController *)self newPasswordTextFieldSpecifierWithID:@"iTunesStorePasswordCell"];

          [v5 addObject:v57];
          v55 = v57;
        }

        if (![(COSAppleIDController *)self _federatedAuthRequiredForAccount:self->_iTunesIDMSAccount])
        {
          v58 = [v5 specifierForID:@"iTunesStoreGroup"];
          [(COSAppleIDController *)self addForgotPasswordFooterToSpecifier:v58 withActionSelector:"tappedForgotiTunesStoreButton"];
        }

        v59 = +[NSBundle mainBundle];
        v60 = [v59 localizedStringForKey:@"SIGN_IN" value:&stru_10026E598 table:@"AppleID"];
        v22 = [PSSpecifier preferenceSpecifierNamed:v60 target:self set:0 get:0 detail:0 cell:13 edit:0];

        [v22 setIdentifier:@"iTunesStoreSignInCell"];
        [v22 setButtonAction:"tappedSignInToiTunesStore"];
        v61 = [NSNumber numberWithInt:[(COSAppleIDController *)self signingIn]^ 1];
        [v22 setProperty:v61 forKey:v56];

        [v5 addObject:v22];
      }

LABEL_76:
      v62 = [v5 specifierForID:@"iCloudGroup"];
      [v62 setName:@"ICLOUD"];

      goto LABEL_77;
    }

    if (iMessageAccount)
    {
      v12 = [(ACAccount *)faceTimeAccount identifier];
      v16 = [(ACAccount *)self->_iMessageAccount identifier];
      if ([v12 isEqualToString:v16])
      {
        v19 = 1;
        goto LABEL_12;
      }
    }

LABEL_27:
    if (self->_displayiCloudPasswordTextField)
    {
      v26 = [(COSAppleIDController *)self newPasswordTextFieldSpecifierWithID:@"iCloudPassword"];

      [v5 addObject:v26];
      v14 = v26;
    }

    if (![(COSAppleIDController *)self _federatedAuthRequiredForAccount:self->_iCloudIDMSAccount])
    {
      v27 = [v5 specifierForID:@"iCloudGroup"];
      [(COSAppleIDController *)self addForgotPasswordFooterToSpecifier:v27 withActionSelector:"tappedForgotiCloudButton"];
    }

    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"SIGN_IN" value:&stru_10026E598 table:@"AppleID"];
    v22 = [PSSpecifier preferenceSpecifierNamed:v29 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v22 setIdentifier:@"iCloudSignIn"];
    [v22 setButtonAction:"tappedSignInToiCloud"];
    v30 = [NSNumber numberWithInt:[(COSAppleIDController *)self signingIn]^ 1];
    [v22 setProperty:v30 forKey:v15];

    [v5 addObject:v22];
    goto LABEL_32;
  }

LABEL_78:

  return v4;
}

- (void)addForgotPasswordFooterToSpecifier:(id)a3 withActionSelector:(SEL)a4
{
  v6 = a3;
  v7 = +[NSBundle mainBundle];
  v14 = [v7 localizedStringForKey:@"FORGOT" value:&stru_10026E598 table:@"AppleID"];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v6 setProperty:v9 forKey:PSFooterCellClassGroupKey];

  [v6 setProperty:v14 forKey:PSFooterHyperlinkViewTitleKey];
  v16.length = [v14 length];
  v16.location = 0;
  v10 = NSStringFromRange(v16);
  [v6 setProperty:v10 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v11 = [NSValue valueWithNonretainedObject:self];
  [v6 setProperty:v11 forKey:PSFooterHyperlinkViewTargetKey];

  v12 = NSStringFromSelector(a4);
  [v6 setProperty:v12 forKey:PSFooterHyperlinkViewActionKey];

  v13 = [NSNumber numberWithInt:1];
  [v6 setProperty:v13 forKey:PSFooterAlignmentGroupKey];
}

- (void)removeForgotPasswordFooterFromSpecifier:(id)a3
{
  v3 = PSFooterCellClassGroupKey;
  v4 = a3;
  [v4 removePropertyForKey:v3];
  [v4 removePropertyForKey:PSFooterHyperlinkViewTitleKey];
  [v4 removePropertyForKey:PSFooterHyperlinkViewLinkRangeKey];
  [v4 removePropertyForKey:PSFooterHyperlinkViewTargetKey];
  [v4 removePropertyForKey:PSFooterHyperlinkViewActionKey];
  [v4 removePropertyForKey:PSFooterAlignmentGroupKey];
}

- (id)newPasswordTextFieldSpecifierWithID:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"PASSWORD" value:&stru_10026E598 table:@"AppleID"];
  v7 = [PSTextFieldSpecifier preferenceSpecifierNamed:v6 target:self set:"setPassword:withSpecifier:" get:0 detail:0 cell:8 edit:0];

  [v7 setProperty:v4 forKey:PSIDKey];
  [v7 setKeyboardType:1 autoCaps:0 autoCorrection:1];
  [v7 setCellType:12];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"REQUIRED" value:&stru_10026E598 table:@"AppleID"];
  [v7 setPlaceholder:v9];

  return v7;
}

- (void)queryWatchForAccountsInfo
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "queryWatchForAccountsInfo...", buf, 2u);
  }

  objc_initWeak(buf, self);
  if (self->_iCloudAccount || self->_iMessageAccount || self->_faceTimeAccount || self->_iTunesStoreAccount)
  {
    self->_watchIsSignedInToiCloud = 0;
    self->_watchIsSignedInToiMessage = 0;
    self->_watchIsSignedInToFaceTime = 0;
    self->_hasFetchedAccountsInfo = 0;
    if (!self->_nssManager)
    {
      v4 = objc_opt_new();
      nssManager = self->_nssManager;
      self->_nssManager = v4;
    }

    v6 = +[NSThread currentThread];
    v7 = +[NSThread mainThread];

    if (v6 == v7)
    {
      v8 = self->_nssManager;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100035894;
      v10[3] = &unk_100268980;
      objc_copyWeak(&v11, buf);
      [(NSSManager *)v8 getAccountsInfo:v10];
      objc_destroyWeak(&v11);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(buf);
    [WeakRetained handleAccountsInfoReply:0 error:0];
  }

  objc_destroyWeak(buf);
}

- (void)handleAccountsInfoReply:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = v6;
  self->_hasFetchedAccountsInfo = 1;
  if (a4)
  {
    v52 = _NSConcreteStackBlock;
    v53 = 3221225472;
    v54 = sub_1000362DC;
    v55 = &unk_1002682F0;
    v56 = self;
    BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();
    goto LABEL_55;
  }

  v8 = [v6 objectForKeyedSubscript:kNSSAccountsKey];
  v37 = v7;
  v9 = [v7 objectForKeyedSubscript:kNSSAKDeviceKey];
  watchAKDevice = self->_watchAKDevice;
  self->_watchAKDevice = v9;

  [self->_watchAKDevice setLinkType:2];
  v11 = pbb_accountsignin_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_watchAKDevice;
    *buf = 138412290;
    v58 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "handleAccountsInfoReply: Got AKDevice from watch=%@", buf, 0xCu);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v48 objects:v65 count:16];
  if (v13)
  {
    v14 = v13;
    v47 = *v49;
    v46 = kNSSAccountTypeKey;
    v45 = kNSSAccountUsernameKey;
    v44 = kNSSAccountDSIDKey;
    v43 = kNSSAccountAltDSIDKey;
    v39 = ACAccountTypeIdentifierAppleAccount;
    v42 = ACAccountTypeIdentifierIdentityServices;
    v38 = ACAccountTypeIdentifieriTunesStore;
    do
    {
      v15 = 0;
      v40 = v14;
      do
      {
        if (*v49 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v48 + 1) + 8 * v15);
        v17 = [v16 objectForKeyedSubscript:v46];
        v18 = [v16 objectForKeyedSubscript:v45];
        v19 = [v16 objectForKeyedSubscript:v44];
        v20 = [v16 objectForKeyedSubscript:v43];
        if (self->_iCloudAccount && !self->_watchIsSignedInToiCloud && [v17 isEqualToString:v39])
        {
          v21 = [COSiCloudAuthController usernameForiCloudAccount:self->_iCloudAccount];
          v22 = [COSiCloudAuthController DSIDForiCloudAccount:self->_iCloudAccount];
          v23 = [COSiCloudAuthController altDSIDForiCloudAccount:self->_iCloudAccount];
          self->_watchIsSignedInToiCloud = [COSAppleIDUtilities checkIfSameAppleIDForUsername1:v18 username2:v21 DSID1:v19 DSID2:v22 altDSID1:v20 altDSID2:v23];
          v24 = pbb_accountsignin_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v58 = v21;
            v25 = v24;
            v26 = "handleAccountsInfoReply: watch localiCloudUsername=%@";
            goto LABEL_34;
          }

          goto LABEL_35;
        }

        if ([v17 isEqualToString:v42])
        {
          if (self->_iMessageAccount && !self->_watchIsSignedInToiMessage)
          {
            v27 = [COSiMessageFaceTimeAuthController usernameForIDSAccount:?];
            v28 = [COSiMessageFaceTimeAuthController DSIDForIDSAccount:self->_iMessageAccount];
            v29 = [COSiMessageFaceTimeAuthController altDSIDForIDSAccount:self->_iMessageAccount];
            self->_watchIsSignedInToiMessage = [COSAppleIDUtilities checkIfSameAppleIDForUsername1:v18 username2:v27 DSID1:v19 DSID2:v28 altDSID1:v20 altDSID2:v29];
            v30 = pbb_accountsignin_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v58 = v27;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "handleAccountsInfoReply: watch localiMessageUsername=%@", buf, 0xCu);
            }

            v14 = v40;
          }

          if (self->_watchSupportsFaceTime && self->_faceTimeAccount && !self->_watchIsSignedInToFaceTime)
          {
            v21 = [COSiMessageFaceTimeAuthController usernameForIDSAccount:?];
            v22 = [COSiMessageFaceTimeAuthController DSIDForIDSAccount:self->_faceTimeAccount];
            v23 = [COSiMessageFaceTimeAuthController altDSIDForIDSAccount:self->_faceTimeAccount];
            self->_watchIsSignedInToFaceTime = [COSAppleIDUtilities checkIfSameAppleIDForUsername1:v18 username2:v21 DSID1:v19 DSID2:v22 altDSID1:v20 altDSID2:v23];
            v24 = pbb_accountsignin_log();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v58 = v21;
              v25 = v24;
              v26 = "handleAccountsInfoReply: watch localFaceTimeUsername=%@";
              goto LABEL_34;
            }

            goto LABEL_35;
          }
        }

        else if (self->_watchSupportsiTunesStore && self->_iTunesStoreAccount && !self->_watchIsSignedInToiTunesStore && [v17 isEqualToString:v38])
        {
          v21 = [COSiTunesStoreAuthController usernameForiTunesStoreAccount:self->_iTunesStoreAccount];
          v22 = [COSiTunesStoreAuthController DSIDForiTunesStoreAccount:self->_iTunesStoreAccount];
          v23 = [COSiTunesStoreAuthController altDSIDForiTunesStoreAccount:self->_iTunesStoreAccount];
          v31 = [COSAppleIDUtilities checkIfSameAppleIDForUsername1:v18 username2:v21 DSID1:v19 DSID2:v22 altDSID1:v20 altDSID2:v23];
          self->_watchIsSignedInToiTunesStore = v31;
          if (v31)
          {
            [(COSAppleIDController *)self _removeStoreFollowUp];
          }

          v24 = pbb_accountsignin_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v58 = v21;
            v25 = v24;
            v26 = "handleAccountsInfoReply: watch iTunesStoreUsername=%@";
LABEL_34:
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
          }

LABEL_35:

          v14 = v40;
        }

        v15 = v15 + 1;
      }

      while (v14 != v15);
      v14 = [obj countByEnumeratingWithState:&v48 objects:v65 count:16];
    }

    while (v14);
  }

  v32 = pbb_accountsignin_log();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = "NO";
    if (self->_watchIsSignedInToiCloud)
    {
      v34 = "YES";
    }

    else
    {
      v34 = "NO";
    }

    if (self->_watchIsSignedInToiMessage)
    {
      v35 = "YES";
    }

    else
    {
      v35 = "NO";
    }

    if (self->_watchIsSignedInToFaceTime)
    {
      v36 = "YES";
    }

    else
    {
      v36 = "NO";
    }

    if (self->_watchIsSignedInToiTunesStore)
    {
      v33 = "YES";
    }

    *buf = 136315906;
    v58 = v34;
    v59 = 2080;
    v60 = v35;
    v61 = 2080;
    v62 = v36;
    v63 = 2080;
    v64 = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "handleAccountsInfoReply: watchANDPhoneAreSignedInTo- iCloud=%s iMessage=%s FaceTime=%s iTunesStore=%s", buf, 0x2Au);
  }

  v7 = v37;
  if (self->_watchIsSignedInToiCloud && self->_watchSupportsiTunesStore)
  {
    [(COSAppleIDController *)self _removeAppleIDFollowUp];
    [(COSAppleIDController *)self _removeStoreFollowUp];
  }

  [(COSAppleIDController *)self reloadSpecifiers];

LABEL_55:
}

- (void)openiCloudPaneInSettingsApp
{
  v2 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT"];
  BPSOpenSensitiveURLAsync();
}

- (void)enableSignInButtons:(BOOL)a3
{
  v3 = a3;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enable / disable sign in button: %d", buf, 8u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003654C;
  v7[3] = &unk_100268E08;
  v7[4] = self;
  v8 = v3;
  v6 = objc_retainBlock(v7);
  (v6[2])(v6, @"iCloudSignIn");
  (v6[2])(v6, @"iMessageSignIn");
  (v6[2])(v6, @"iFaceTimeSignIn");
  (v6[2])(v6, @"iTunesStoreSignInCell");
}

- (void)tappedSignInToiCloud
{
  if (![COSAppleIDLoginViewController showAlertIfLackingConnectivityAndPresentAlertWithPresentingViewController:self])
  {
    self->_signingInToiCloud = 1;
    [(COSAppleIDController *)self enableSignInButtons:0];
    [(COSAppleIDController *)self startNetworkRequest];
    if (self->_displayiCloudPasswordTextField)
    {
      v3 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
      [v3 resignFirstResponder];
    }

    v4 = self->_iCloudAccount;
    if (self->_watchIsSignedInToiCloud && self->_sameiCloudAndiTunesStoreAppleID && !self->_watchIsSignedInToiTunesStore)
    {
      v6 = pbb_accountsignin_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User asked to sign in to iTunesStore.", buf, 2u);
      }

      p_super = &v4->super;
      v4 = self->_iTunesStoreAccount;
    }

    else
    {
      p_super = pbb_accountsignin_log();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "User asked to sign in to iCloud.", v10, 2u);
      }
    }

    v7 = [[COSAppleIDAuthController alloc] initWithAccountStore:self->_accountStore account:v4 timeout:self->_pairedWatch device:0.0];
    authController = self->_authController;
    self->_authController = v7;

    [(COSAppleIDAuthController *)self->_authController setDelegate:self];
    [(COSAppleIDAuthController *)self->_authController setProxiedDevice:self->_watchAKDevice];
    if (self->_iCloudInteractiveAuthRequired)
    {
      if (self->_displayiCloudPasswordTextField)
      {
        v9 = [(UITextField *)self->_iCloudPasswordTextField text];
      }

      else
      {
        v9 = 0;
      }

      [(COSAppleIDAuthController *)self->_authController startSigningInWithPassword:v9];
    }

    else
    {
      [(COSAppleIDAuthController *)self->_authController startSigningInWithoutPassword];
    }
  }
}

- (void)tappedSignInToiMessage
{
  if (![COSAppleIDLoginViewController showAlertIfLackingConnectivityAndPresentAlertWithPresentingViewController:self])
  {
    v3 = pbb_accountsignin_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User asked to sign in to iMessage.", v8, 2u);
    }

    self->_signingInToiMessage = 1;
    [(COSAppleIDController *)self enableSignInButtons:0];
    [(COSAppleIDController *)self startNetworkRequest];
    if (self->_displayiMessagePasswordTextField)
    {
      v4 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
      [v4 resignFirstResponder];
    }

    v5 = [[COSAppleIDAuthController alloc] initWithAccountStore:self->_accountStore account:self->_iMessageAccount timeout:self->_pairedWatch device:0.0];
    authController = self->_authController;
    self->_authController = v5;

    [(COSAppleIDAuthController *)self->_authController setDelegate:self];
    [(COSAppleIDAuthController *)self->_authController setProxiedDevice:self->_watchAKDevice];
    if (self->_iMessageInteractiveAuthRequired)
    {
      if (self->_displayiMessagePasswordTextField)
      {
        v7 = [(UITextField *)self->_iMessagePasswordTextField text];
      }

      else
      {
        v7 = 0;
      }

      [(COSAppleIDAuthController *)self->_authController startSigningInWithPassword:v7];
    }

    else
    {
      [(COSAppleIDAuthController *)self->_authController startSigningInWithoutPassword];
    }
  }
}

- (void)tappedSignInToFaceTime
{
  if (![COSAppleIDLoginViewController showAlertIfLackingConnectivityAndPresentAlertWithPresentingViewController:self])
  {
    v3 = pbb_accountsignin_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User asked to sign in to FaceTime.", v8, 2u);
    }

    self->_signingInToFaceTime = 1;
    [(COSAppleIDController *)self enableSignInButtons:0];
    [(COSAppleIDController *)self startNetworkRequest];
    if (self->_displayFaceTimePasswordTextField)
    {
      v4 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
      [v4 resignFirstResponder];
    }

    v5 = [[COSAppleIDAuthController alloc] initWithAccountStore:self->_accountStore account:self->_faceTimeAccount timeout:self->_pairedWatch device:0.0];
    authController = self->_authController;
    self->_authController = v5;

    [(COSAppleIDAuthController *)self->_authController setDelegate:self];
    [(COSAppleIDAuthController *)self->_authController setProxiedDevice:self->_watchAKDevice];
    if (self->_facetimeInteractiveAuthRequired)
    {
      if (self->_displayFaceTimePasswordTextField)
      {
        v7 = [(UITextField *)self->_faceTimePasswordTextField text];
      }

      else
      {
        v7 = 0;
      }

      [(COSAppleIDAuthController *)self->_authController startSigningInWithPassword:v7];
    }

    else
    {
      [(COSAppleIDAuthController *)self->_authController startSigningInWithoutPassword];
    }
  }
}

- (void)tappedSignInToiTunesStore
{
  if (![COSAppleIDLoginViewController showAlertIfLackingConnectivityAndPresentAlertWithPresentingViewController:self])
  {
    v3 = pbb_accountsignin_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User asked to sign in to iTunesStore.", v8, 2u);
    }

    self->_signingInToiTunesStore = 1;
    [(COSAppleIDController *)self enableSignInButtons:0];
    [(COSAppleIDController *)self startNetworkRequest];
    if (self->_displayiTunesStorePasswordTextField)
    {
      v4 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
      [v4 resignFirstResponder];
    }

    v5 = [[COSAppleIDAuthController alloc] initWithAccountStore:self->_accountStore account:self->_iTunesStoreAccount timeout:self->_pairedWatch device:0.0];
    authController = self->_authController;
    self->_authController = v5;

    [(COSAppleIDAuthController *)self->_authController setDelegate:self];
    [(COSAppleIDAuthController *)self->_authController setProxiedDevice:self->_watchAKDevice];
    if (self->_iTunesInteractiveAuthRequired)
    {
      if (self->_displayiTunesStorePasswordTextField)
      {
        v7 = [(UITextField *)self->_iTunesStorePasswordTextField text];
      }

      else
      {
        v7 = 0;
      }

      [(COSAppleIDAuthController *)self->_authController startSigningInWithPassword:v7];
    }

    else
    {
      [(COSAppleIDAuthController *)self->_authController startSigningInWithoutPassword];
    }
  }
}

- (void)loggedInSuccessfullyToAccount:(id)a3
{
  v4 = a3;
  [(COSAppleIDController *)self _removeAppleIDFollowUp];
  if ([(ACAccount *)v4 isEqual:ACAccountTypeIdentifierAppleAccount])
  {
    v5 = [(COSAppleIDController *)self parentController];

    if (v5)
    {
      [PBBridgeCAReporter recordSigninEventPostPair:0];
    }

    else
    {
      [PBBridgeCAReporter recordSigninEventFollowup:0];
    }
  }

  if (!self->_signingInToiCloud && !self->_recoveringCredentialsForiCloud)
  {
    if (self->_signingInToiMessage || self->_recoveringCredentialsForiMessage)
    {
      self->_watchIsSignedInToiMessage = 1;
      self->_iMessageInteractiveAuthRequired = 0;
      [(COSAppleIDController *)self removeSpecifierID:@"iMessageSignIn" animated:1];
      [(COSAppleIDController *)self removeSpecifierID:@"iMessagePassword" animated:1];
      v10 = [(COSAppleIDController *)self specifiers];
      v11 = v10;
      v12 = @"iMessageGroup";
    }

    else if (self->_signingInToFaceTime || self->_recoveringCredentialsForFaceTime)
    {
      self->_watchIsSignedInToFaceTime = 1;
      self->_facetimeInteractiveAuthRequired = 0;
      [(COSAppleIDController *)self removeSpecifierID:@"iFaceTimeSignIn" animated:1];
      [(COSAppleIDController *)self removeSpecifierID:@"iFaceTimePassword" animated:1];
      v10 = [(COSAppleIDController *)self specifiers];
      v11 = v10;
      v12 = @"iFaceTimeGroup";
    }

    else
    {
      if (!self->_signingInToiTunesStore && !self->_recoveringCredentialsForiTunesStore)
      {
        goto LABEL_15;
      }

      self->_watchIsSignedInToiTunesStore = 1;
      self->_iTunesInteractiveAuthRequired = 0;
      [(COSAppleIDController *)self _removeStoreFollowUp];
      [(COSAppleIDController *)self removeSpecifierID:@"iTunesStoreSignInCell" animated:1];
      [(COSAppleIDController *)self removeSpecifierID:@"iTunesStorePasswordCell" animated:1];
      v10 = [(COSAppleIDController *)self specifiers];
      v11 = v10;
      v12 = @"iTunesStoreGroup";
    }

    v13 = [v10 specifierForID:v12];
    [(COSAppleIDController *)self removeForgotPasswordFooterFromSpecifier:v13];

    goto LABEL_15;
  }

  self->_watchIsSignedInToiCloud = 1;
  self->_iCloudInteractiveAuthRequired = 0;
  [(COSAppleIDController *)self removeSpecifierID:@"iCloudSignIn" animated:1];
  [(COSAppleIDController *)self removeSpecifierID:@"iCloudPassword" animated:1];
  v6 = [(COSAppleIDController *)self specifiers];
  v7 = [v6 specifierForID:@"iCloudGroup"];
  [(COSAppleIDController *)self removeForgotPasswordFooterFromSpecifier:v7];

  if (self->_iCloudAccount == v4 && self->_sameiCloudAndiTunesStoreAppleID && !self->_watchIsSignedInToiTunesStore)
  {
    iTunesStoreAccount = self->_iTunesStoreAccount;
    accountStore = self->_accountStore;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003725C;
    v14[3] = &unk_1002682C8;
    v14[4] = self;
    [COSiTunesStoreAuthController saveToPairedDeviceiTunesStoreAccount:iTunesStoreAccount fromAccountStore:accountStore completion:v14];
  }

LABEL_15:
}

- (void)startNetworkRequest
{
  v3 = [(COSAppleIDController *)self view];
  [v3 setUserInteractionEnabled:0];

  v8 = [[UIActivityIndicatorView alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  v4 = [[UIBarButtonItem alloc] initWithCustomView:v8];
  v5 = [(COSAppleIDController *)self navigationController];
  v6 = [v5 navigationBar];

  v7 = [v6 topItem];
  [v7 setRightBarButtonItem:v4];
  [v8 startAnimating];
}

- (void)stopNetworkRequest
{
  v3 = [(COSAppleIDController *)self navigationController];
  v6 = [v3 navigationBar];

  v4 = [v6 topItem];
  [v4 setRightBarButtonItem:0];
  v5 = [(COSAppleIDController *)self view];
  [v5 setUserInteractionEnabled:1];
}

- (void)tappedForgotiCloudButton
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User asked to recover iCloud credential (iForgot).", v4, 2u);
  }

  self->_recoveringCredentialsForiCloud = 1;
  [(COSAppleIDController *)self tappedForgotButton];
}

- (void)tappedForgotiMessageButton
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User asked to recover iMessage credential (iForgot).", v4, 2u);
  }

  self->_recoveringCredentialsForiMessage = 1;
  [(COSAppleIDController *)self tappedForgotButton];
}

- (void)tappedForgotFaceTimeButton
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User asked to recover FaceTime credential (iForgot).", v4, 2u);
  }

  self->_recoveringCredentialsForFaceTime = 1;
  [(COSAppleIDController *)self tappedForgotButton];
}

- (void)tappedForgotiTunesStoreButton
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User asked to recover iTunesStore credential (iForgot).", v4, 2u);
  }

  self->_recoveringCredentialsForiTunesStore = 1;
  [(COSAppleIDController *)self tappedForgotButton];
}

- (void)tappedForgotButton
{
  if ([COSAppleIDLoginViewController showAlertIfLackingConnectivityAndPresentAlertWithPresentingViewController:self])
  {
    self->_recoveringCredentialsForiCloud = 0;
    self->_recoveringCredentialsForiMessage = 0;
    self->_recoveringCredentialsForFaceTime = 0;
    self->_recoveringCredentialsForiTunesStore = 0;
    return;
  }

  [(COSAppleIDController *)self enableSignInButtons:0];
  [(COSAppleIDController *)self startNetworkRequest];
  if (self->_displayiCloudPasswordTextField || self->_displayiMessagePasswordTextField || self->_displayFaceTimePasswordTextField || self->_displayiTunesStorePasswordTextField)
  {
    v3 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
    [v3 resignFirstResponder];
  }

  if (self->_recoveringCredentialsForiCloud)
  {
    v4 = &OBJC_IVAR___COSAppleIDController__iCloudAccount;
  }

  else if (self->_recoveringCredentialsForiMessage)
  {
    v4 = &OBJC_IVAR___COSAppleIDController__iMessageAccount;
  }

  else if (self->_recoveringCredentialsForFaceTime)
  {
    v4 = &OBJC_IVAR___COSAppleIDController__faceTimeAccount;
  }

  else
  {
    if (!self->_recoveringCredentialsForiTunesStore)
    {
      v7 = 0;
      goto LABEL_17;
    }

    v4 = &OBJC_IVAR___COSAppleIDController__iTunesStoreAccount;
  }

  v7 = *&self->BPSListController_opaque[*v4];
LABEL_17:
  v5 = [[COSAppleIDAuthController alloc] initWithAccountStore:self->_accountStore account:v7 timeout:self->_pairedWatch device:0.0];
  authController = self->_authController;
  self->_authController = v5;

  [(COSAppleIDAuthController *)self->_authController setDelegate:self];
  [(COSAppleIDAuthController *)self->_authController startRecoveringCredentials];
}

- (void)_textFieldValueDidChange:(id)a3
{
  v4 = [a3 object];
  v11 = v4;
  if (v4 == self->_iCloudPasswordTextField)
  {
    v5 = @"iCloudSignIn";
  }

  else if (v4 == self->_iMessagePasswordTextField)
  {
    v5 = @"iMessageSignIn";
  }

  else if (v4 == self->_faceTimePasswordTextField)
  {
    v5 = @"iFaceTimeSignIn";
  }

  else if (v4 == self->_iTunesStorePasswordTextField)
  {
    v5 = @"iTunesStoreSignInCell";
  }

  else
  {
    v5 = 0;
  }

  v6 = [(COSAppleIDController *)self specifierForID:v5];
  v7 = [(UITextField *)v11 text];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 isEqualToString:&stru_10026E598] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [NSNumber numberWithBool:v9];
  [v6 setProperty:v10 forKey:PSEnabledKey];

  [(COSAppleIDController *)self reloadSpecifier:v6];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [v5 resignFirstResponder];

  v6.receiver = self;
  v6.super_class = COSAppleIDController;
  [(COSAppleIDController *)&v6 viewWillDisappear:v3];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v56.receiver = self;
  v56.super_class = COSAppleIDController;
  v8 = [(COSAppleIDController *)&v56 tableView:v6 cellForRowAtIndexPath:v7];
  v9 = [v8 specifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = [v9 identifier];
    if (([v11 isEqualToString:@"iCloudLogin"] & 1) == 0)
    {
      v12 = [v9 identifier];
      if (([v12 isEqualToString:@"iMessageLogin"] & 1) == 0)
      {
        v13 = [v9 identifier];
        if (![v13 isEqualToString:@"iFaceTimeLogin"])
        {
          [v9 identifier];
          v19 = v46 = v10;
          v20 = [v19 isEqualToString:@"iTunesStoreLoginCell"];

          v10 = v46;
          if ((v20 & 1) == 0)
          {
            v14 = [v46 editableTextField];
            v21 = [v9 identifier];
            v22 = [v21 isEqualToString:@"iCloudPassword"];

            if (v22)
            {
              objc_storeStrong(&self->_iCloudPasswordTextField, v14);
              [(UITextField *)self->_iCloudPasswordTextField setDelegate:self];
              if (self->_iCloudPasswordTextFieldTextDidChangeObserver)
              {
                v23 = +[NSNotificationCenter defaultCenter];
                [v23 removeObserver:self->_iCloudPasswordTextFieldTextDidChangeObserver name:UITextFieldTextDidChangeNotification object:v14];
              }

              objc_initWeak(&location, self);
              v24 = +[NSNotificationCenter defaultCenter];
              v25 = v53;
              v53[0] = _NSConcreteStackBlock;
              v53[1] = 3221225472;
              v53[2] = sub_1000381F4;
              v53[3] = &unk_100268E70;
              objc_copyWeak(&v54, &location);
              v26 = [v24 addObserverForName:UITextFieldTextDidChangeNotification object:v14 queue:0 usingBlock:v53];
              iCloudPasswordTextFieldTextDidChangeObserver = self->_iCloudPasswordTextFieldTextDidChangeObserver;
              self->_iCloudPasswordTextFieldTextDidChangeObserver = v26;

              [v14 setReturnKeyType:9];
            }

            else
            {
              v28 = [v9 identifier];
              v29 = [v28 isEqualToString:@"iMessagePassword"];

              if (v29)
              {
                objc_storeStrong(&self->_iMessagePasswordTextField, v14);
                [(UITextField *)self->_iMessagePasswordTextField setDelegate:self];
                if (self->_iMessagePasswordTextFieldTextDidChangeObserver)
                {
                  v30 = +[NSNotificationCenter defaultCenter];
                  [v30 removeObserver:self->_iMessagePasswordTextFieldTextDidChangeObserver name:UITextFieldTextDidChangeNotification object:v14];
                }

                objc_initWeak(&location, self);
                v31 = +[NSNotificationCenter defaultCenter];
                v25 = v51;
                v51[0] = _NSConcreteStackBlock;
                v51[1] = 3221225472;
                v51[2] = sub_100038250;
                v51[3] = &unk_100268E70;
                objc_copyWeak(&v52, &location);
                v32 = [v31 addObserverForName:UITextFieldTextDidChangeNotification object:v14 queue:0 usingBlock:v51];
                iMessagePasswordTextFieldTextDidChangeObserver = self->_iMessagePasswordTextFieldTextDidChangeObserver;
                self->_iMessagePasswordTextFieldTextDidChangeObserver = v32;

                [v14 setReturnKeyType:9];
              }

              else
              {
                v34 = [v9 identifier];
                v35 = [v34 isEqualToString:@"iFaceTimePassword"];

                if (v35)
                {
                  objc_storeStrong(&self->_faceTimePasswordTextField, v14);
                  [(UITextField *)self->_faceTimePasswordTextField setDelegate:self];
                  if (self->_faceTimePasswordTextFieldTextDidChangeObserver)
                  {
                    v36 = +[NSNotificationCenter defaultCenter];
                    [v36 removeObserver:self->_faceTimePasswordTextFieldTextDidChangeObserver name:UITextFieldTextDidChangeNotification object:v14];
                  }

                  objc_initWeak(&location, self);
                  v37 = +[NSNotificationCenter defaultCenter];
                  v25 = v49;
                  v49[0] = _NSConcreteStackBlock;
                  v49[1] = 3221225472;
                  v49[2] = sub_1000382AC;
                  v49[3] = &unk_100268E70;
                  objc_copyWeak(&v50, &location);
                  v38 = [v37 addObserverForName:UITextFieldTextDidChangeNotification object:v14 queue:0 usingBlock:v49];
                  faceTimePasswordTextFieldTextDidChangeObserver = self->_faceTimePasswordTextFieldTextDidChangeObserver;
                  self->_faceTimePasswordTextFieldTextDidChangeObserver = v38;

                  [v14 setReturnKeyType:9];
                }

                else
                {
                  v40 = [v9 identifier];
                  v41 = [v40 isEqualToString:@"iTunesStorePasswordCell"];

                  if (!v41)
                  {
                    goto LABEL_9;
                  }

                  objc_storeStrong(&self->_iTunesStorePasswordTextField, v14);
                  [(UITextField *)self->_iTunesStorePasswordTextField setDelegate:self];
                  if (self->_iTunesStorePasswordTextFieldTextDidChangeObserver)
                  {
                    v42 = +[NSNotificationCenter defaultCenter];
                    [v42 removeObserver:self->_iTunesStorePasswordTextFieldTextDidChangeObserver name:UITextFieldTextDidChangeNotification object:v14];
                  }

                  objc_initWeak(&location, self);
                  v43 = +[NSNotificationCenter defaultCenter];
                  v25 = v47;
                  v47[0] = _NSConcreteStackBlock;
                  v47[1] = 3221225472;
                  v47[2] = sub_100038308;
                  v47[3] = &unk_100268E70;
                  objc_copyWeak(&v48, &location);
                  v44 = [v43 addObserverForName:UITextFieldTextDidChangeNotification object:v14 queue:0 usingBlock:v47];
                  iTunesStorePasswordTextFieldTextDidChangeObserver = self->_iTunesStorePasswordTextFieldTextDidChangeObserver;
                  self->_iTunesStorePasswordTextFieldTextDidChangeObserver = v44;

                  [v14 setReturnKeyType:9];
                }
              }
            }

            objc_destroyWeak(v25 + 4);
            objc_destroyWeak(&location);
            v10 = v46;
            goto LABEL_9;
          }

LABEL_8:
          v14 = [v10 editableTextField];
          v15 = BPSDetailTextColor();
          [v14 setTextColor:v15];

          [v14 setAdjustsFontSizeToFitWidth:1];
          [v14 setMinimumFontSize:1.0];
          v16 = [v10 titleLabel];
          [v16 setEnabled:1];
          v17 = BPSTextColor();
          [v16 setTextColor:v17];

LABEL_9:
          goto LABEL_10;
        }
      }
    }

    goto LABEL_8;
  }

LABEL_10:

  return v8;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  [(UITextField *)v4 resignFirstResponder];
  v5 = [(UITextField *)v4 text];
  v6 = v5;
  if (v5 && ([v5 isEqualToString:&stru_10026E598] & 1) == 0)
  {
    if (self->_iCloudPasswordTextField == v4)
    {
      [(COSAppleIDController *)self tappedSignInToiCloud];
    }

    else if (self->_iMessagePasswordTextField == v4)
    {
      [(COSAppleIDController *)self tappedSignInToiMessage];
    }

    else if (self->_faceTimePasswordTextField == v4)
    {
      [(COSAppleIDController *)self tappedSignInToFaceTime];
    }

    else if (self->_iTunesStorePasswordTextField == v4)
    {
      [(COSAppleIDController *)self tappedSignInToiTunesStore];
    }
  }

  return 1;
}

- (void)appleIDAuthController:(id)a3 didSignInWithSuccess:(BOOL)a4 error:(id)a5
{
  v18 = a3;
  v8 = a5;
  [(COSAppleIDAuthController *)self->_authController setDelegate:0];
  authController = self->_authController;
  self->_authController = 0;

  [(COSAppleIDController *)self stopNetworkRequest];
  [(COSAppleIDController *)self enableSignInButtons:1];
  if (a4)
  {
    goto LABEL_2;
  }

  v11 = [v8 domain];
  if ([v11 isEqualToString:@"com.apple.appleaccount"])
  {
    v12 = [v8 code];

    if (v12 == -6)
    {
LABEL_2:
      v10 = [v18 account];
      [(COSAppleIDController *)self loggedInSuccessfullyToAccount:v10];

      goto LABEL_33;
    }
  }

  else
  {
  }

  signingInToiCloud = self->_signingInToiCloud;
  if (!signingInToiCloud || self->_iCloudInteractiveAuthRequired)
  {
    if (self->_signingInToiMessage && !self->_iMessageInteractiveAuthRequired)
    {
      if (!self->_signingInToiCloud)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if ((!self->_signingInToFaceTime || self->_facetimeInteractiveAuthRequired) && (!self->_signingInToiTunesStore || self->_iTunesInteractiveAuthRequired))
      {
        [COSAppleIDLoginViewController showAlertForLoginFailureWithError:v8 presentingViewController:self];
        goto LABEL_33;
      }

      if (!signingInToiCloud)
      {
        if (!self->_signingInToiMessage)
        {
          if (self->_signingInToFaceTime)
          {
            self->_facetimeInteractiveAuthRequired = 1;
            v14 = @"iFaceTimeLogin";
            if (![(COSAppleIDController *)self _federatedAuthRequiredForAccount:self->_faceTimeIDMSAccount])
            {
              v15 = @"iFaceTimePassword";
              v16 = &OBJC_IVAR___COSAppleIDController__displayFaceTimePasswordTextField;
LABEL_27:
              self->BPSListController_opaque[*v16] = 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (!self->_signingInToiTunesStore)
            {
              v15 = 0;
              v14 = 0;
              goto LABEL_28;
            }

            self->_iTunesInteractiveAuthRequired = 1;
            v14 = @"iTunesStoreLoginCell";
            if (![(COSAppleIDController *)self _federatedAuthRequiredForAccount:self->_iTunesIDMSAccount])
            {
              v15 = @"iTunesStorePasswordCell";
              v16 = &OBJC_IVAR___COSAppleIDController__displayiTunesStorePasswordTextField;
              goto LABEL_27;
            }
          }

          goto LABEL_25;
        }

LABEL_24:
        self->_iMessageInteractiveAuthRequired = 1;
        v14 = @"iMessageLogin";
        if (![(COSAppleIDController *)self _federatedAuthRequiredForAccount:self->_iMessageIDMSAccount])
        {
          v15 = @"iMessagePassword";
          v16 = &OBJC_IVAR___COSAppleIDController__displayiMessagePasswordTextField;
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }
  }

  self->_iCloudInteractiveAuthRequired = 1;
  v14 = @"iCloudLogin";
  if (![(COSAppleIDController *)self _federatedAuthRequiredForAccount:self->_iCloudIDMSAccount])
  {
    v15 = @"iCloudPassword";
    v16 = &OBJC_IVAR___COSAppleIDController__displayiCloudPasswordTextField;
    goto LABEL_27;
  }

LABEL_25:
  v15 = 0;
LABEL_28:
  if (self->_displayiCloudPasswordTextField || self->_displayiMessagePasswordTextField || self->_displayFaceTimePasswordTextField || self->_displayiTunesStorePasswordTextField)
  {
    v17 = [(COSAppleIDController *)self newPasswordTextFieldSpecifierWithID:v15];
    [(COSAppleIDController *)self insertSpecifier:v17 afterSpecifierID:v14];
  }

LABEL_33:
  self->_signingInToiCloud = 0;
  self->_signingInToiMessage = 0;
  self->_signingInToFaceTime = 0;
  self->_signingInToiTunesStore = 0;
  self->_recoveringCredentialsForiCloud = 0;
  self->_recoveringCredentialsForiMessage = 0;
  self->_recoveringCredentialsForFaceTime = 0;
  self->_recoveringCredentialsForiTunesStore = 0;
}

@end
@interface COSAppleIDSilentSignInController
+ (double)silentAuthTimeout;
- (COSAppleIDSilentSignInController)initWithDelegate:(id)delegate device:(id)device;
- (COSAppleIDSilentSignInControllerDelegate)delegate;
- (void)appleIDAuthController:(id)controller didSignInWithSuccess:(BOOL)success error:(id)error;
- (void)startSigninIn;
@end

@implementation COSAppleIDSilentSignInController

- (COSAppleIDSilentSignInController)initWithDelegate:(id)delegate device:(id)device
{
  delegateCopy = delegate;
  deviceCopy = device;
  v35.receiver = self;
  v35.super_class = COSAppleIDSilentSignInController;
  v8 = [(COSAppleIDSilentSignInController *)&v35 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_39;
  }

  objc_storeWeak(&v8->_delegate, delegateCopy);
  objc_storeStrong(&v9->_device, device);
  device = v9->_device;
  v11 = [[NSUUID alloc] initWithUUIDString:@"DEBFF23F-9327-44FB-A219-0428BEBD5BA7"];
  LODWORD(device) = [(NRDevice *)device supportsCapability:v11];

  v12 = v9->_device;
  v13 = [[NSUUID alloc] initWithUUIDString:@"1F1097A5-5A0B-4795-9FBE-B206DB49FA1D"];
  v14 = [(NRDevice *)v12 supportsCapability:v13];

  v15 = objc_alloc_init(ACAccountStore);
  accountStore = v9->_accountStore;
  v9->_accountStore = v15;

  v17 = +[COSiCloudAuthController iCloudAccountInAccountStore];
  iCloudAccount = v9->_iCloudAccount;
  v9->_iCloudAccount = v17;

  v19 = +[COSiMessageFaceTimeAuthController iMessageAccountInAccountStore];
  iMessageAccount = v9->_iMessageAccount;
  v9->_iMessageAccount = v19;

  if (device)
  {
    v21 = +[COSiMessageFaceTimeAuthController faceTimeAccountInAccountStore];
  }

  else
  {
    v21 = 0;
  }

  faceTimeAccount = v9->_faceTimeAccount;
  v9->_faceTimeAccount = v21;

  if (v14)
  {
    v23 = +[COSiTunesStoreAuthController iTunesStoreAccountInAccountStore];
  }

  else
  {
    v23 = 0;
  }

  iTunesStoreAccount = v9->_iTunesStoreAccount;
  v9->_iTunesStoreAccount = v23;

  v25 = pbb_accountsignin_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v9->_iCloudAccount != 0;
    v27 = v9->_iMessageAccount != 0;
    v28 = v9->_faceTimeAccount != 0;
    v29 = v9->_iTunesStoreAccount != 0;
    *buf = 67109888;
    v37 = v26;
    v38 = 1024;
    v39 = v27;
    v40 = 1024;
    v41 = v28;
    v42 = 1024;
    v43 = v29;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found Accounts... iCloud: %d iMessage: %d FaceTime: %d iTunes: %d", buf, 0x1Au);
  }

  if (v9->_iMessageAccount)
  {
    if (v9->_iCloudAccount && [COSAppleIDUtilities checkIfAccount:"checkIfAccount:isForSameAppleIDAsAccount:" isForSameAppleIDAsAccount:?])
    {
      v30 = 0;
      v31 = 1;
    }

    else
    {
      v31 = 0;
      v30 = 1;
    }

    v9->_shouldSigniMessageAccountSeparately = v30;
    v9->_iMessageAccountIsForSameUserAsiCloudAccount = v31;
  }

  if (v9->_faceTimeAccount)
  {
    if (v9->_iCloudAccount && [COSAppleIDUtilities checkIfAccount:"checkIfAccount:isForSameAppleIDAsAccount:" isForSameAppleIDAsAccount:?])
    {
      v32 = 12;
    }

    else
    {
      if (!v9->_iMessageAccount || ![COSAppleIDUtilities checkIfAccount:v9->_faceTimeAccount isForSameAppleIDAsAccount:?])
      {
        v32 = 9;
        goto LABEL_25;
      }

      v32 = 13;
    }

    v9->_shouldSignFaceTimeAccountSeparately = 0;
LABEL_25:
    *(&v9->super.isa + v32) = 1;
  }

  if (v9->_iTunesStoreAccount)
  {
    if (v9->_iCloudAccount && [COSAppleIDUtilities checkIfAccount:"checkIfAccount:isForSameAppleIDAsAccount:" isForSameAppleIDAsAccount:?])
    {
      v33 = 14;
    }

    else if (v9->_iMessageAccount && [COSAppleIDUtilities checkIfAccount:v9->_iTunesStoreAccount isForSameAppleIDAsAccount:?])
    {
      v33 = 15;
    }

    else
    {
      if (!v9->_faceTimeAccount || ![COSAppleIDUtilities checkIfAccount:v9->_iTunesStoreAccount isForSameAppleIDAsAccount:?])
      {
        v33 = 10;
        goto LABEL_38;
      }

      v33 = 16;
    }

    v9->_shouldSigniTunesStoreAccountSeparately = 0;
LABEL_38:
    *(&v9->super.isa + v33) = 1;
  }

LABEL_39:

  return v9;
}

- (void)startSigninIn
{
  [objc_opt_class() silentAuthTimeout];
  v4 = v3;
  iCloudAccount = self->_iCloudAccount;
  if (iCloudAccount && [COSAppleIDAuthController shouldAttemptPasswordLessSignInForAccount:iCloudAccount inAccountStore:self->_accountStore])
  {
    v6 = [[COSAppleIDAuthController alloc] initWithAccountStore:self->_accountStore account:self->_iCloudAccount timeout:self->_device device:v4];
    iCloudAuthController = self->_iCloudAuthController;
    self->_iCloudAuthController = v6;

    [(COSAppleIDAuthController *)self->_iCloudAuthController setDelegate:self];
    [(COSAppleIDAuthController *)self->_iCloudAuthController setSignInAccountType:COSSignInAccountTypeiCloud];
    [(COSAppleIDAuthController *)self->_iCloudAuthController startSigningInWithoutPassword];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained appleIDSilentSignInControllerSignedAccountType:0 withSuccess:0];

    if (self->_iMessageAccount && self->_iMessageAccountIsForSameUserAsiCloudAccount && !self->_shouldSigniMessageAccountSeparately)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 appleIDSilentSignInControllerSignedAccountType:1 withSuccess:0];
    }

    if (self->_faceTimeAccount && self->_faceTimeAccountIsForSameUserAsiCloudAccount && !self->_shouldSignFaceTimeAccountSeparately)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 appleIDSilentSignInControllerSignedAccountType:2 withSuccess:0];
    }

    if (self->_iTunesStoreAccount && self->_iTunesStoreAccountIsForSameUserAsiCloudAccount && !self->_shouldSigniTunesStoreAccountSeparately)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 appleIDSilentSignInControllerSignedAccountType:3 withSuccess:0];
    }
  }

  if (self->_iMessageAccount && self->_shouldSigniMessageAccountSeparately && [COSAppleIDAuthController shouldAttemptPasswordLessSignInForAccount:"shouldAttemptPasswordLessSignInForAccount:inAccountStore:" inAccountStore:?])
  {
    v12 = [[COSAppleIDAuthController alloc] initWithAccountStore:self->_accountStore account:self->_iMessageAccount timeout:self->_device device:v4];
    iMessageAuthController = self->_iMessageAuthController;
    self->_iMessageAuthController = v12;

    [(COSAppleIDAuthController *)self->_iMessageAuthController setDelegate:self];
    [(COSAppleIDAuthController *)self->_iMessageAuthController setSignInAccountType:COSSignInAccountTypeiMessage];
    [(COSAppleIDAuthController *)self->_iMessageAuthController startSigningInWithoutPassword];
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 appleIDSilentSignInControllerSignedAccountType:1 withSuccess:0];

    if (self->_faceTimeAccount && self->_faceTimeAccountIsForSameUserAsiMessageAccount && !self->_shouldSignFaceTimeAccountSeparately)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 appleIDSilentSignInControllerSignedAccountType:2 withSuccess:0];
    }

    if (self->_iTunesStoreAccount && self->_iTunesStoreAccountIsForSameUserAsiMessageAccount && !self->_shouldSigniTunesStoreAccountSeparately)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 appleIDSilentSignInControllerSignedAccountType:3 withSuccess:0];
    }
  }

  if (self->_faceTimeAccount && self->_shouldSignFaceTimeAccountSeparately && [COSAppleIDAuthController shouldAttemptPasswordLessSignInForAccount:"shouldAttemptPasswordLessSignInForAccount:inAccountStore:" inAccountStore:?])
  {
    v17 = [[COSAppleIDAuthController alloc] initWithAccountStore:self->_accountStore account:self->_faceTimeAccount timeout:self->_device device:v4];
    faceTimeAuthController = self->_faceTimeAuthController;
    self->_faceTimeAuthController = v17;

    [(COSAppleIDAuthController *)self->_faceTimeAuthController setDelegate:self];
    [(COSAppleIDAuthController *)self->_faceTimeAuthController setSignInAccountType:COSSignInAccountTypeFaceTime];
    [(COSAppleIDAuthController *)self->_faceTimeAuthController startSigningInWithoutPassword];
  }

  else
  {
    v19 = objc_loadWeakRetained(&self->_delegate);
    [v19 appleIDSilentSignInControllerSignedAccountType:2 withSuccess:0];

    if (self->_iTunesStoreAccount && self->_iTunesStoreAccountIsForSameUserAsFaceTimeAccount && !self->_shouldSigniTunesStoreAccountSeparately)
    {
      v20 = objc_loadWeakRetained(&self->_delegate);
      [v20 appleIDSilentSignInControllerSignedAccountType:3 withSuccess:0];
    }
  }

  if (!self->_iTunesStoreAccount)
  {
    goto LABEL_42;
  }

  if (!self->_shouldSigniTunesStoreAccountSeparately)
  {
    return;
  }

  if ([COSAppleIDAuthController shouldAttemptPasswordLessSignInForAccount:"shouldAttemptPasswordLessSignInForAccount:inAccountStore:" inAccountStore:?])
  {
    v21 = [[COSAppleIDAuthController alloc] initWithAccountStore:self->_accountStore account:self->_iTunesStoreAccount timeout:self->_device device:v4];
    iTunesStoreAuthController = self->_iTunesStoreAuthController;
    self->_iTunesStoreAuthController = v21;

    [(COSAppleIDAuthController *)self->_iTunesStoreAuthController setDelegate:self];
    [(COSAppleIDAuthController *)self->_iTunesStoreAuthController setSignInAccountType:COSSignInAccountTypeiTunes];
    v23 = self->_iTunesStoreAuthController;

    [(COSAppleIDAuthController *)v23 startSigningInWithoutPassword];
  }

  else
  {
LABEL_42:
    v24 = objc_loadWeakRetained(&self->_delegate);
    [v24 appleIDSilentSignInControllerSignedAccountType:3 withSuccess:0];
  }
}

+ (double)silentAuthTimeout
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 doubleForKey:@"SilentAppleIDSignInTimeout"];
  v4 = v3;

  result = 0.0;
  if (v4 != 0.0)
  {
    return v4;
  }

  return result;
}

- (void)appleIDAuthController:(id)controller didSignInWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  controllerCopy = controller;
  errorCopy = error;
  objc_initWeak(&location, self);
  if (self->_iCloudAuthController == controllerCopy)
  {
    if (successCopy)
    {
      v14 = 0;
    }

    else
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:@"com.apple.appleaccount"])
      {
        v14 = [errorCopy code] == -6;
      }

      else
      {
        v14 = 0;
      }
    }

    v30 = pbb_accountsignin_log();
    v31 = v14 || successCopy;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      iCloudAccount = self->_iCloudAccount;
      *buf = 138412546;
      v76 = iCloudAccount;
      v77 = 1024;
      v78 = v14 || successCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Silent sign in for iCloud account (%@) completed with success: (%d)", buf, 0x12u);
    }

    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_1000FD9D4;
    v71[3] = &unk_100268FC8;
    objc_copyWeak(&v72, &location);
    v73 = v14 || successCopy;
    v33 = objc_retainBlock(v71);
    if (self->_iMessageAccount && !self->_shouldSigniMessageAccountSeparately)
    {
      v34 = pbb_accountsignin_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v76) = v31;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Silent combined sign in for iMessage (via iCloud) completed with success: (%d)", buf, 8u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained appleIDSilentSignInControllerSignedAccountType:1 withSuccess:!v14];
    }

    if (self->_faceTimeAccount && !self->_shouldSignFaceTimeAccountSeparately && self->_faceTimeAccountIsForSameUserAsiCloudAccount)
    {
      v36 = pbb_accountsignin_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v76) = v31;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Silent combined sign in for FaceTime (via iCloud) completed with success: (%d)", buf, 8u);
      }

      v37 = objc_loadWeakRetained(&self->_delegate);
      [v37 appleIDSilentSignInControllerSignedAccountType:2 withSuccess:!v14];
    }

    if (self->_iTunesStoreAccount && !self->_shouldSigniTunesStoreAccountSeparately && self->_iTunesStoreAccountIsForSameUserAsiCloudAccount)
    {
      if (v31)
      {
        v38 = pbb_accountsignin_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          iTunesStoreAccount = self->_iTunesStoreAccount;
          *buf = 138412290;
          v76 = iTunesStoreAccount;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Starting silent combined sign in for iTunesStore (via iCloud) account: (%@)", buf, 0xCu);
        }

        [COSiTunesStoreAuthController saveToPairedDeviceiTunesStoreAccount:self->_iTunesStoreAccount fromAccountStore:self->_accountStore completion:&stru_10026BCF0];
        delegate = [(COSAppleIDSilentSignInController *)self delegate];
        [delegate appleIDSilentSignInControllerSignedAccountType:3 withSuccess:1];
      }

      else
      {
        v41 = pbb_accountsignin_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_10018A4F8(v41, v42, v43, v44, v45, v46, v47, v48);
        }

        delegate = objc_loadWeakRetained(&self->_delegate);
        [delegate appleIDSilentSignInControllerSignedAccountType:3 withSuccess:0];
      }
    }

    (v33[2])(v33);

    objc_destroyWeak(&v72);
  }

  else if (self->_iMessageAuthController == controllerCopy)
  {
    v15 = pbb_accountsignin_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      iMessageAccount = self->_iMessageAccount;
      *buf = 138412546;
      v76 = iMessageAccount;
      v77 = 1024;
      v78 = successCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Silent sign in for iMessage account (%@) completed with success: (%d)", buf, 0x12u);
    }

    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1000FDB08;
    v68[3] = &unk_100268FC8;
    objc_copyWeak(&v69, &location);
    v70 = successCopy;
    v17 = objc_retainBlock(v68);
    if (self->_faceTimeAccount && !self->_shouldSignFaceTimeAccountSeparately && self->_faceTimeAccountIsForSameUserAsiMessageAccount)
    {
      v18 = pbb_accountsignin_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v76) = successCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Silent combined sign in for FaceTime (via iMessage) completed with success: (%d)", buf, 8u);
      }

      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 appleIDSilentSignInControllerSignedAccountType:2 withSuccess:successCopy];
    }

    if (self->_iTunesStoreAccount && !self->_shouldSigniTunesStoreAccountSeparately && self->_iTunesStoreAccountIsForSameUserAsiMessageAccount)
    {
      if (successCopy)
      {
        v20 = pbb_accountsignin_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = self->_iTunesStoreAccount;
          *buf = 138412290;
          v76 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Starting silent combined sign in for iTunesStore (via iMessage) account: (%@)", buf, 0xCu);
        }

        [COSiTunesStoreAuthController saveToPairedDeviceiTunesStoreAccount:self->_iTunesStoreAccount fromAccountStore:self->_accountStore completion:&stru_10026BD10];
        delegate2 = [(COSAppleIDSilentSignInController *)self delegate];
        [delegate2 appleIDSilentSignInControllerSignedAccountType:3 withSuccess:1];
      }

      else
      {
        v49 = pbb_accountsignin_log();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_10018A4C0(v49, v50, v51, v52, v53, v54, v55, v56);
        }

        delegate2 = objc_loadWeakRetained(&self->_delegate);
        [delegate2 appleIDSilentSignInControllerSignedAccountType:3 withSuccess:0];
      }
    }

    (v17[2])(v17);

    objc_destroyWeak(&v69);
  }

  else if (self->_faceTimeAuthController == controllerCopy)
  {
    v24 = pbb_accountsignin_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      faceTimeAccount = self->_faceTimeAccount;
      *buf = 138412546;
      v76 = faceTimeAccount;
      v77 = 1024;
      v78 = successCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Silent sign in for FaceTime account (%@) completed with success: (%d)", buf, 0x12u);
    }

    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1000FDC3C;
    v65[3] = &unk_100268FC8;
    objc_copyWeak(&v66, &location);
    v67 = successCopy;
    v26 = objc_retainBlock(v65);
    if (self->_iTunesStoreAccount && !self->_shouldSigniTunesStoreAccountSeparately && self->_iTunesStoreAccountIsForSameUserAsFaceTimeAccount)
    {
      if (successCopy)
      {
        v27 = pbb_accountsignin_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = self->_iTunesStoreAccount;
          *buf = 138412290;
          v76 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Starting silent combined sign in for iTunesStore (via FaceTime) account: (%@)", buf, 0xCu);
        }

        [COSiTunesStoreAuthController saveToPairedDeviceiTunesStoreAccount:self->_iTunesStoreAccount fromAccountStore:self->_accountStore completion:&stru_10026BD30];
        delegate3 = [(COSAppleIDSilentSignInController *)self delegate];
        [delegate3 appleIDSilentSignInControllerSignedAccountType:3 withSuccess:1];
      }

      else
      {
        v57 = pbb_accountsignin_log();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_10018A488(v57, v58, v59, v60, v61, v62, v63, v64);
        }

        delegate3 = objc_loadWeakRetained(&self->_delegate);
        [delegate3 appleIDSilentSignInControllerSignedAccountType:3 withSuccess:0];
      }
    }

    (v26[2])(v26);

    objc_destroyWeak(&v66);
  }

  else if (self->_iTunesStoreAuthController == controllerCopy)
  {
    v10 = pbb_accountsignin_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_iTunesStoreAccount;
      *buf = 138412546;
      v76 = v11;
      v77 = 1024;
      v78 = successCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Silent sign in for iTunesStore account (%@) completed with success: (%d)", buf, 0x12u);
    }

    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 appleIDSilentSignInControllerSignedAccountType:3 withSuccess:successCopy];

    [(COSAppleIDAuthController *)self->_iTunesStoreAuthController setDelegate:0];
    iTunesStoreAuthController = self->_iTunesStoreAuthController;
    self->_iTunesStoreAuthController = 0;
  }

  objc_destroyWeak(&location);
}

- (COSAppleIDSilentSignInControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
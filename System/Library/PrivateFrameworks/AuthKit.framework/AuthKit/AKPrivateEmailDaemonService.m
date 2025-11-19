@interface AKPrivateEmailDaemonService
- (AKPrivateEmailDaemonService)init;
- (AKPrivateEmailDaemonService)initWithClient:(id)a3 store:(id)a4;
- (BOOL)_verifyEntitlements;
- (void)_cacheFetchedPrivateEmail:(id)a3 keyAlreadyHashed:(BOOL)a4 error:(id)a5 completion:(id)a6;
- (void)_performFetchSiwAHmeRequestWithContext:(id)a3 completion:(id)a4;
- (void)_performRegisterRequestWithContext:(id)a3 completion:(id)a4;
- (void)_performRequestForContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)deletePrivateEmailDatabaseWithCompletion:(id)a3;
- (void)fetchPrivateEmailForAltDSID:(id)a3 withKey:(id)a4 completion:(id)a5;
- (void)fetchPrivateEmailWithContext:(id)a3 completion:(id)a4;
- (void)fetchSignInWithApplePrivateEmailWithContext:(id)a3 completion:(id)a4;
- (void)getContextForRequestContext:(id)a3 completion:(id)a4;
- (void)listAllPrivateEmailsForAltDSID:(id)a3 completion:(id)a4;
- (void)lookupPrivateEmailForAltDSID:(id)a3 withKey:(id)a4 completion:(id)a5;
- (void)lookupPrivateEmailWithContext:(id)a3 completion:(id)a4;
- (void)presentPrivateEmailUIForContext:(id)a3 completion:(id)a4;
- (void)privateEmailListVersionWithCompletion:(id)a3;
- (void)registerPrivateEmailForAltDSID:(id)a3 withKey:(id)a4 completion:(id)a5;
- (void)registerPrivateEmailWithContext:(id)a3 completion:(id)a4;
- (void)removePrivateEmailKey:(id)a3 completion:(id)a4;
- (void)removePrivateEmailWithContext:(id)a3 completion:(id)a4;
@end

@implementation AKPrivateEmailDaemonService

- (AKPrivateEmailDaemonService)init
{
  v3 = self;
  [(AKPrivateEmailDaemonService *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&v3, 0);
  return 0;
}

- (AKPrivateEmailDaemonService)initWithClient:(id)a3 store:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v4 = v14;
  v14 = 0;
  v11.receiver = v4;
  v11.super_class = AKPrivateEmailDaemonService;
  v9 = [(AKPrivateEmailDaemonService *)&v11 init];
  v14 = v9;
  objc_storeStrong(&v14, v9);
  if (v9)
  {
    v10 = _AKLogHme();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [location[0] bundleID];
      sub_1000194D4(v15, v7);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Private email service initialized with client id %@", v15, 0xCu);
      _objc_release(v7);
    }

    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v14->_client, location[0]);
    objc_storeStrong(&v14->_store, v12);
  }

  v6 = _objc_retain(v14);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v6;
}

- (void)dealloc
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogHme();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Private email service deallocated", v5, 2u);
  }

  objc_storeStrong(location, 0);
  v4.receiver = v8;
  v4.super_class = AKPrivateEmailDaemonService;
  [(AKPrivateEmailDaemonService *)&v4 dealloc];
}

- (void)lookupPrivateEmailForAltDSID:(id)a3 withKey:(id)a4 completion:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v5 = [AKPrivateEmailContext alloc];
  v8 = [v5 initWithKey:v10 altDSID:location[0]];
  [(AKPrivateEmailDaemonService *)v12 lookupPrivateEmailWithContext:v8 completion:v9];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)lookupPrivateEmailWithContext:(id)a3 completion:(id)a4
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = 0;
  v26 = 0;
  v18 = +[AKAccountManager sharedInstance];
  v17 = [location[0] altDSID];
  v25 = [AKAccountManager authKitAccountWithAltDSID:v18 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(v17);
  _objc_release(v18);
  if (v25)
  {
    [location[0] sanitiseInternalState];
    v14 = [(AKPrivateEmailDaemonService *)v30 store];
    v22 = v27;
    v13 = [(AKPrivateEmailStorage *)v14 emailForContext:location[0] error:&v22];
    objc_storeStrong(&v27, v22);
    v6 = v26;
    v26 = v13;
    _objc_release(v6);
    _objc_release(v14);
    if (v26)
    {
      v19 = _AKLogHme();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [location[0] key];
        v7 = v26;
        v8 = [location[0] clientAppBundleId];
        sub_10004DCC8(v31, v9, v7, v8);
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Email found for %@: %@ [bundle:%@]", v31, 0x20u);
        _objc_release(v8);
        _objc_release(v9);
      }

      objc_storeStrong(&v19, 0);
    }

    else
    {
      v21 = _AKLogHme();
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [location[0] altDSID];
        v11 = [location[0] key];
        v10 = [location[0] clientAppBundleId];
        sub_10004DCC8(v32, v12, v11, v10);
        _os_log_impl(&_mh_execute_header, v21, v20, "No match found with given altDSID: %@ for key %@ [bundle:%@]", v32, 0x20u);
        _objc_release(v10);
        _objc_release(v11);
        _objc_release(v12);
      }

      objc_storeStrong(&v21, 0);
    }
  }

  else
  {
    v24 = _AKLogHme();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v15 = [location[0] altDSID];
      sub_1000194D4(v33, v15);
      _os_log_error_impl(&_mh_execute_header, v24, v23, "No account found with given altDSID: %@, failing private email lookup", v33, 0xCu);
      _objc_release(v15);
    }

    objc_storeStrong(&v24, 0);
    v4 = [NSError ak_errorWithCode:-7025];
    v5 = v27;
    v27 = v4;
    _objc_release(v5);
  }

  (*(v28 + 2))(v28, v26, v27);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchPrivateEmailForAltDSID:(id)a3 withKey:(id)a4 completion:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v5 = [AKPrivateEmailContext alloc];
  v8 = [v5 initWithKey:v10 altDSID:location[0]];
  [(AKPrivateEmailDaemonService *)v12 fetchPrivateEmailWithContext:v8 completion:v9];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchPrivateEmailWithContext:(id)a3 completion:(id)a4
{
  v48 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v46 = 0;
  objc_storeStrong(&v46, a4);
  v45 = [(AKPrivateEmailDaemonService *)v48 _verifyEntitlements];
  if ((v45 & 1) == 1)
  {
    v22 = +[AKAccountManager sharedInstance];
    v21 = [location[0] altDSID];
    v41 = [AKAccountManager authKitAccountWithAltDSID:v22 error:"authKitAccountWithAltDSID:error:"];
    _objc_release(v21);
    _objc_release(v22);
    if (v41)
    {
      [location[0] sanitiseInternalState];
      v38 = 0;
      v37 = 0;
      v17 = [AKPrivateEmailValidator canPerformRequestWithAccount:v41 error:&v37];
      objc_storeStrong(&v38, v37);
      if (v17)
      {
        oslog = _AKLogHme();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v49, location[0]);
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "[ios] requesting for %@", v49, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        [(AKPrivateEmailDaemonService *)v48 _performRequestForContext:location[0] completion:v46];
      }

      else
      {
        v51[0] = NSLocalizedDescriptionKey;
        v13 = [NSBundle bundleWithIdentifier:?];
        v12 = [NSBundle localizedStringForKey:v13 value:"localizedStringForKey:value:table:" table:@"HME_ERROR_ALERT_INSUFFICIENT_SECURITY_LEVEL_TITLE"];
        v52[0] = v12;
        v51[1] = NSLocalizedFailureReasonErrorKey;
        v11 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
        v10 = [(NSBundle *)v11 localizedStringForKey:@"HME_ERROR_ALERT_INSUFFICIENT_SECURITY_LEVEL_MESSAGE" value:&stru_100330538 table:@"Localizable"];
        v52[1] = v10;
        v51[2] = NSLocalizedRecoveryOptionsErrorKey;
        v9 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
        v8 = [(NSBundle *)v9 localizedStringForKey:@"HME_ERROR_ALERT_BUTTON_CONTINUE" value:&stru_100330538 table:@"Localizable"];
        v50[0] = v8;
        v7 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
        v6 = [(NSBundle *)v7 localizedStringForKey:@"HME_ERROR_ALERT_BUTTON_CLOSE" value:&stru_100330538 table:@"Localizable"];
        v50[1] = v6;
        v5 = [NSArray arrayWithObjects:v50 count:2];
        v52[2] = v5;
        v36 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:3];
        _objc_release(v5);
        _objc_release(v6);
        _objc_release(v7);
        _objc_release(v8);
        _objc_release(v9);
        _objc_release(v10);
        _objc_release(v11);
        _objc_release(v12);
        _objc_release(v13);
        v14 = [v38 domain];
        v4 = [v38 code];
        v35 = [NSError errorWithDomain:v14 code:v4 userInfo:v36];
        _objc_release(v14);
        v16 = +[AKAlertHandler sharedInstance];
        v15 = v35;
        v28 = _NSConcreteStackBlock;
        v29 = -1073741824;
        v30 = 0;
        v31 = sub_1000F5D30;
        v32 = &unk_10031FB38;
        v34 = _objc_retain(v46);
        v33 = _objc_retain(v38);
        [(AKAlertHandler *)v16 showAlertForError:v15 withCompletion:&v28];
        _objc_release(v16);
        objc_storeStrong(&v33, 0);
        objc_storeStrong(&v34, 0);
        objc_storeStrong(&v35, 0);
        objc_storeStrong(&v36, 0);
      }

      objc_storeStrong(&v38, 0);
      v42 = 0;
    }

    else
    {
      v40 = _AKLogHme();
      v39 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v20 = [location[0] altDSID];
        sub_1000194D4(v53, v20);
        _os_log_error_impl(&_mh_execute_header, v40, v39, "No valid account fount for altDSID: %@, failing hme fetch", v53, 0xCu);
        _objc_release(v20);
      }

      objc_storeStrong(&v40, 0);
      v18 = v46;
      v19 = [NSError ak_errorWithCode:-7025];
      v18[2](v18, 0);
      _objc_release(v19);
      v42 = 1;
    }

    objc_storeStrong(&v41, 0);
  }

  else
  {
    v44 = _AKLogHme();
    v43 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v25 = [location[0] altDSID];
      sub_1000194D4(v54, v25);
      _os_log_error_impl(&_mh_execute_header, v44, v43, "Insufficient entitlement for altDSID: %@, failing hme context fetch", v54, 0xCu);
      _objc_release(v25);
    }

    objc_storeStrong(&v44, 0);
    v23 = v46;
    v24 = [NSError ak_errorWithCode:-7026];
    v23[2](v23, 0);
    _objc_release(v24);
    v42 = 1;
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
}

- (void)registerPrivateEmailForAltDSID:(id)a3 withKey:(id)a4 completion:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v5 = [AKPrivateEmailContext alloc];
  v8 = [v5 initWithKey:v10 altDSID:location[0] originType:AKPrivateEmailOriginTypeMailApp originIdentifier:0];
  [(AKPrivateEmailDaemonService *)v12 registerPrivateEmailWithContext:v8 completion:v9];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)registerPrivateEmailWithContext:(id)a3 completion:(id)a4
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  if ([(AKPrivateEmailDaemonService *)v26 _verifyEntitlements])
  {
    v10 = +[AKAccountManager sharedInstance];
    v9 = [location[0] altDSID];
    v20 = [AKAccountManager authKitAccountWithAltDSID:v10 error:"authKitAccountWithAltDSID:error:"];
    _objc_release(v9);
    _objc_release(v10);
    if (v20)
    {
      v17 = 0;
      v16 = 0;
      v5 = [AKPrivateEmailValidator canPerformRequestWithAccount:v20 error:&v16];
      objc_storeStrong(&v17, v16);
      if (v5 == 1)
      {
        [(AKPrivateEmailDaemonService *)v26 _performRegisterRequestWithContext:location[0] completion:v24];
      }

      else
      {
        v15 = _AKLogHme();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v4 = [location[0] altDSID];
          sub_1000194D4(v27, v4);
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Account not eligible to perform register Private Email - altDSID: %@", v27, 0xCu);
          _objc_release(v4);
        }

        objc_storeStrong(&v15, 0);
        (*(v24 + 2))(v24, 0, v17);
      }

      objc_storeStrong(&v17, 0);
      v21 = 0;
    }

    else
    {
      v19 = _AKLogHme();
      v18 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v8 = [location[0] altDSID];
        sub_1000194D4(v28, v8);
        _os_log_error_impl(&_mh_execute_header, v19, v18, "No valid account found for altDSID: %@, aborting register private email", v28, 0xCu);
        _objc_release(v8);
      }

      objc_storeStrong(&v19, 0);
      v6 = v24;
      v7 = [NSError ak_errorWithCode:-7055];
      v6[2](v6, 0);
      _objc_release(v7);
      v21 = 1;
    }

    objc_storeStrong(&v20, 0);
  }

  else
  {
    v23 = _AKLogHme();
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v13 = [location[0] altDSID];
      sub_1000194D4(v29, v13);
      _os_log_error_impl(&_mh_execute_header, v23, v22, "Insufficient entitlement for altDSID: %@, aborting register private email", v29, 0xCu);
      _objc_release(v13);
    }

    objc_storeStrong(&v23, 0);
    v11 = v24;
    v12 = [NSError ak_errorWithCode:-7026];
    v11[2](v11, 0);
    _objc_release(v12);
    v21 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)getContextForRequestContext:(id)a3 completion:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = [(AKPrivateEmailDaemonService *)v31 _verifyEntitlements];
  if ((v28 & 1) == 1)
  {
    v14 = [location[0] altDSID];
    _objc_release(v14);
    if (v14)
    {
      v13 = +[AKAccountManager sharedInstance];
      v12 = [location[0] altDSID];
      v24 = [AKAccountManager authKitAccountWithAltDSID:v13 error:"authKitAccountWithAltDSID:error:"];
      _objc_release(v12);
      _objc_release(v13);
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v23 = _AKLogHme();
        v22 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v34, location[0]);
          _os_log_error_impl(&_mh_execute_header, v23, v22, "No valid account found for context: %@, failing hme context fetch", v34, 0xCu);
        }

        objc_storeStrong(&v23, 0);
        v10 = v29;
        v11 = [NSError ak_errorWithCode:-7044];
        v10[2](v10, 0);
        _objc_release(v11);
        v25 = 1;
      }

      objc_storeStrong(&v24, 0);
      if (!v25)
      {
        [location[0] sanitiseInternalState];
        v4 = [AKPrivateEmailContext alloc];
        v5 = [v4 initWithContext:location[0] client:v31->_client];
        v19 = v5;
        if (v5)
        {
          (*(v29 + 2))(v29, v19, 0);
        }

        else
        {
          v18 = _AKLogHme();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1000194D4(v32, location[0]);
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Updated context is nil for: %@, failing hme context fetch", v32, 0xCu);
          }

          objc_storeStrong(&v18, 0);
          v6 = v29;
          v7 = [NSError ak_errorWithCode:-7011];
          v6[2](v6, 0);
          _objc_release(v7);
        }

        objc_storeStrong(&v19, 0);
        v25 = 0;
      }
    }

    else
    {
      v21 = _AKLogHme();
      v20 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v33, location[0]);
        _os_log_error_impl(&_mh_execute_header, v21, v20, "No altDSID in context: %@, failing hme context fetch", v33, 0xCu);
      }

      objc_storeStrong(&v21, 0);
      v8 = v29;
      v9 = [NSError ak_errorWithCode:-7025];
      v8[2](v8, 0);
      _objc_release(v9);
      v25 = 1;
    }
  }

  else
  {
    v27 = _AKLogHme();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v35, location[0]);
      _os_log_error_impl(&_mh_execute_header, v27, v26, "Insufficient entitlement for context: %@, failing hme context fetch", v35, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    v15 = v29;
    v16 = [NSError ak_errorWithCode:-7026];
    v15[2](v15, 0);
    _objc_release(v16);
    v25 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)listAllPrivateEmailsForAltDSID:(id)a3 completion:(id)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  if ([(AKPrivateEmailDaemonService *)v27 _verifyEntitlements])
  {
    v21 = 0;
    v20 = 0;
    v9 = +[AKAccountManager sharedInstance];
    v19 = [(AKAccountManager *)v9 authKitAccountWithAltDSID:location[0] error:0];
    _objc_release(v9);
    if (v19)
    {
      v8 = [(AKPrivateEmailDaemonService *)v27 store];
      v16 = v21;
      v7 = [(AKPrivateEmailStorage *)v8 fetchAllPrivateEmailsWithError:&v16];
      objc_storeStrong(&v21, v16);
      v6 = v20;
      v20 = v7;
      _objc_release(v6);
      _objc_release(v8);
      if (v21)
      {
        v15 = _AKLogHme();
        v14 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10001B098(v29, location[0], v21);
          _os_log_error_impl(&_mh_execute_header, v15, v14, "Failed to fetch private emails for altDSID %@, error - %@", v29, 0x16u);
        }

        objc_storeStrong(&v15, 0);
      }

      else
      {
        oslog = _AKLogHme();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v28, v20);
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Private Emails found: %@", v28, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }
    }

    else
    {
      v18 = _AKLogHme();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v30, location[0]);
        _os_log_error_impl(&_mh_execute_header, v18, v17, "No account found with given altDSID: %@, failing private email lookup", v30, 0xCu);
      }

      objc_storeStrong(&v18, 0);
      v4 = [NSError ak_errorWithCode:-7055];
      v5 = v21;
      v21 = v4;
      _objc_release(v5);
    }

    (*(v25 + 2))(v25, v20, v21);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    v22 = 0;
  }

  else
  {
    v24 = _AKLogHme();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v31, location[0]);
      _os_log_error_impl(&_mh_execute_header, v24, v23, "Insufficient entitlement for altDSID: %@, aborting listAllPrivateEmails", v31, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    v10 = v25;
    v11 = [NSError ak_errorWithCode:-7026];
    v10[2](v10, 0);
    _objc_release(v11);
    v22 = 1;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)presentPrivateEmailUIForContext:(id)a3 completion:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v18, "[AKPrivateEmailDaemonService presentPrivateEmailUIForContext:completion:]", 265);
    _os_log_debug_impl(&_mh_execute_header, v14, v13, "%s (%d) called", v18, 0x12u);
  }

  objc_storeStrong(&v14, 0);
  client = v17->_client;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000F6F98;
  v10 = &unk_100321FF0;
  v11 = _objc_retain(v15);
  v12 = [(AKClient *)client proxyWithErrorHandler:&v6];
  [v12 presentPrivateEmailUIForContext:location[0] completion:v15];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)deletePrivateEmailDatabaseWithCompletion:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKClient *)v15->_client hasInternalAccess]|| [(AKClient *)v15->_client hasOwnerAccess])
  {
    v9 = 0;
    v3 = [(AKPrivateEmailDaemonService *)v15 store];
    v8 = v9;
    [(AKPrivateEmailStorage *)v3 clearDatabase:&v8];
    objc_storeStrong(&v9, v8);
    _objc_release(v3);
    if (v9)
    {
      (*(location[0] + 2))(location[0], 0, v9);
    }

    else
    {
      (*(location[0] + 2))(location[0], 1, 0);
    }

    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  else
  {
    v13 = _AKLogHme();
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      sub_10001CEEC(v11);
      _os_log_error_impl(&_mh_execute_header, log, type, "Owner/Internal access entitlement required but missing!", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    v4 = location[0];
    v5 = [NSError ak_errorWithCode:-7026];
    v4[2](v4, 0);
    _objc_release(v5);
    v10 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)privateEmailListVersionWithCompletion:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKClient *)v14->_client hasInternalAccess]|| [(AKClient *)v14->_client hasOwnerAccess])
  {
    v3 = [(AKPrivateEmailDaemonService *)v14 store];
    v8 = [(AKPrivateEmailStorage *)v3 currentEmailListVersion];
    _objc_release(v3);
    (*(location[0] + 2))(location[0], v8);
    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  else
  {
    v12 = _AKLogHme();
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      sub_10001CEEC(v10);
      _os_log_error_impl(&_mh_execute_header, log, type, "Owner/Internal access entitlement required but missing!", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    v4 = location[0];
    v5 = [NSError ak_errorWithCode:-7026];
    v4[2](v4, 0);
    _objc_release(v5);
    v9 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)removePrivateEmailKey:(id)a3 completion:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v4 = [AKPrivateEmailContext alloc];
  v6 = [v4 initWithKey:location[0]];
  [(AKPrivateEmailDaemonService *)v9 removePrivateEmailWithContext:v6 completion:v7];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)removePrivateEmailWithContext:(id)a3 completion:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  if ([(AKClient *)v31->_client hasPrivateAccess]|| [(AKClient *)v31->_client hasOwnerAccess])
  {
    v24 = _AKLogHme();
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v8 = v24;
      v9 = v23;
      sub_10001CEEC(v22);
      _os_log_error_impl(&_mh_execute_header, v8, v9, "Owner/Private access entitlement present for removePrivateEmailKey!", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v21 = 0;
    v7 = [(AKPrivateEmailDaemonService *)v31 store];
    v20 = v21;
    [(AKPrivateEmailStorage *)v7 removePrivateEmailForContext:location[0] error:&v20];
    objc_storeStrong(&v21, v20);
    _objc_release(v7);
    if (v21)
    {
      v19 = _AKLogHme();
      v18 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v32, v21);
        _os_log_error_impl(&_mh_execute_header, v19, v18, "Owner/Private access entitlement for removePrivateEmailKey error %@", v32, 0xCu);
      }

      objc_storeStrong(&v19, 0);
      (*(v29 + 2))(v29, v21);
    }

    else
    {
      v17 = _AKLogHme();
      v16 = 16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v5 = v17;
        v6 = v16;
        sub_10001CEEC(v15);
        _os_log_error_impl(&_mh_execute_header, v5, v6, "Owner/Private access entitlement for removePrivateEmailKey SUCCESS", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      v4 = +[NSDistributedNotificationCenter defaultCenter];
      [(NSDistributedNotificationCenter *)v4 postNotificationName:AKPrivateEmailControllerDidUnregistredEmail object:0 userInfo:?];
      _objc_release(v4);
      (*(v29 + 2))(v29, 0);
    }

    objc_storeStrong(&v21, 0);
    v25 = 0;
  }

  else
  {
    v28 = _AKLogHme();
    v27 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      log = v28;
      type = v27;
      sub_10001CEEC(v26);
      _os_log_error_impl(&_mh_execute_header, log, type, "Owner/Private access entitlement required but missing for removePrivateEmailKey!", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    v10 = v29;
    v11 = [NSError ak_errorWithCode:-7026];
    v10[2]();
    _objc_release(v11);
    v25 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchSignInWithApplePrivateEmailWithContext:(id)a3 completion:(id)a4
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  if ([(AKPrivateEmailDaemonService *)v37 _verifyEntitlements])
  {
    v14 = +[AKAccountManager sharedInstance];
    v13 = [location[0] altDSID];
    v31 = [AKAccountManager authKitAccountWithAltDSID:v14 error:"authKitAccountWithAltDSID:error:"];
    _objc_release(v13);
    _objc_release(v14);
    if (v31)
    {
      v28 = 0;
      v27 = 0;
      v9 = [AKPrivateEmailValidator canPerformRequestWithAccount:v31 error:&v27];
      objc_storeStrong(&v28, v27);
      if (v9 == 1)
      {
        v7 = +[AKURLBag sharedBag];
        v26 = [v7 urlAtKey:AKURLBagKeyPrivateEmailFetchSIWAHme];
        _objc_release(v7);
        v24 = 0;
        v8 = 0;
        if (v26)
        {
          v25 = [v26 absoluteString];
          v24 = 1;
          v8 = [v25 length] != 0;
        }

        if (v24)
        {
          _objc_release(v25);
        }

        if (v8)
        {
          [(AKPrivateEmailDaemonService *)v37 _performFetchSiwAHmeRequestWithContext:location[0] completion:v35];
        }

        else
        {
          v23 = _AKLogHme();
          v22 = 16;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v5 = v23;
            v6 = v22;
            sub_10001CEEC(v21);
            _os_log_error_impl(&_mh_execute_header, v5, v6, "Unable to fetchSiwAHme. The URL is missing from the URL bag", v21, 2u);
          }

          objc_storeStrong(&v23, 0);
          v20 = [NSError errorWithDomain:AKPrivateEmailErrorDomain code:-11013 userInfo:0];
          (*(v35 + 2))(v35, 0, v20);
          objc_storeStrong(&v20, 0);
        }

        objc_storeStrong(&v26, 0);
      }

      else
      {
        v19 = _AKLogHme();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v4 = [location[0] altDSID];
          sub_1000194D4(v38, v4);
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Account not eligible to perform fetchSiwAHme - altDSID: %@", v38, 0xCu);
          _objc_release(v4);
        }

        objc_storeStrong(&v19, 0);
        (*(v35 + 2))(v35, 0, v28);
      }

      objc_storeStrong(&v28, 0);
      v32 = 0;
    }

    else
    {
      v30 = _AKLogHme();
      v29 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v12 = [location[0] altDSID];
        sub_1000194D4(v39, v12);
        _os_log_error_impl(&_mh_execute_header, v30, v29, "No valid account found for altDSID: %@, aborting fetchSiwAHme", v39, 0xCu);
        _objc_release(v12);
      }

      objc_storeStrong(&v30, 0);
      v10 = v35;
      v11 = [NSError ak_errorWithCode:-7055];
      v10[2](v10, 0);
      _objc_release(v11);
      v32 = 1;
    }

    objc_storeStrong(&v31, 0);
  }

  else
  {
    v34 = _AKLogHme();
    v33 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v17 = [location[0] altDSID];
      sub_1000194D4(v40, v17);
      _os_log_error_impl(&_mh_execute_header, v34, v33, "Insufficient entitlement for altDSID: %@, aborting fetchSiwAHme", v40, 0xCu);
      _objc_release(v17);
    }

    objc_storeStrong(&v34, 0);
    v15 = v35;
    v16 = [NSError ak_errorWithCode:-7026];
    v15[2](v15, 0);
    _objc_release(v16);
    v32 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)_performRequestForContext:(id)a3 completion:(id)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = _AKLogHme();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [location[0] key];
    sub_1000194D4(v23, v7);
    _os_log_impl(&_mh_execute_header, v19, v18, "Presenting UI for key %@", v23, 0xCu);
    _objc_release(v7);
  }

  objc_storeStrong(&v19, 0);
  v17 = objc_alloc_init(AKPrivateEmailPresenter);
  v6 = v17;
  v4 = location[0];
  client = v22->_client;
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1000F82BC;
  v13 = &unk_100323398;
  v14 = _objc_retain(v22);
  v16 = _objc_retain(v20);
  v15 = _objc_retain(v17);
  [(AKPrivateEmailPresenter *)v6 presentPrivateEmailWithContext:v4 client:client completion:&v9];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_performRegisterRequestWithContext:(id)a3 completion:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v8 = [location[0] altDSID];
  [v12 setAltDSID:?];
  _objc_release(v8);
  v4 = [AKPrivateEmailRegistrationRequestProvider alloc];
  v11 = [(AKPrivateEmailRegistrationRequestProvider *)v4 initWithContext:v12 urlBagKey:AKURLBagKeyPrivateEmailRegister];
  [(AKURLRequestProviderImpl *)v11 setClient:v15->_client];
  [(AKGrandSlamRequestProvider *)v11 setAuthenticatedRequest:1];
  v5 = [AKServiceControllerImpl alloc];
  v10 = [(AKServiceControllerImpl *)v5 initWithRequestProvider:v11];
  v6 = [AKPrivateEmailRegistrationService alloc];
  v9 = [(AKPrivateEmailRegistrationService *)v6 initWithServiceController:v10];
  [(AKPrivateEmailRegistrationService *)v9 performRegistrationWith:location[0] completionHandler:v13];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_performFetchSiwAHmeRequestWithContext:(id)a3 completion:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = _AKLogHme();
  v16 = 2;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    log = v17;
    type = v16;
    sub_10001CEEC(v15);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Performing Fetch SIWA HME", v15, 2u);
  }

  objc_storeStrong(&v17, 0);
  v14 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v7 = [location[0] altDSID];
  [v14 setAltDSID:?];
  _objc_release(v7);
  v4 = [AKPrivateEmailRegistrationRequestProvider alloc];
  v13 = [(AKPrivateEmailRegistrationRequestProvider *)v4 initWithContext:v14 urlBagKey:AKURLBagKeyPrivateEmailFetchSIWAHme];
  [(AKURLRequestProviderImpl *)v13 setClient:v20->_client];
  [(AKGrandSlamRequestProvider *)v13 setAuthenticatedRequest:1];
  v5 = [AKServiceControllerImpl alloc];
  v12 = [(AKServiceControllerImpl *)v5 initWithRequestProvider:v13];
  v6 = [AKPrivateEmailRegistrationService alloc];
  v11 = [(AKPrivateEmailRegistrationService *)v6 initWithServiceController:v12];
  [(AKPrivateEmailRegistrationService *)v11 fetchSignInWithApplePrivateEmailWith:location[0] completionHandler:v18];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_cacheFetchedPrivateEmail:(id)a3 keyAlreadyHashed:(BOOL)a4 error:(id)a5 completion:(id)a6
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  if (location[0])
  {
    v12 = 0;
    v6 = [(AKPrivateEmailDaemonService *)v17 store];
    v11 = v12;
    [(AKPrivateEmailStorage *)v6 setPrivateEmail:location[0] keyAlreadyHashed:v15 error:&v11];
    objc_storeStrong(&v12, v11);
    _objc_release(v6);
    if (v12)
    {
      v10 = _AKLogHme();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v18, location[0], v12);
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to store fetched email (%@) error:%@", v18, 0x16u);
      }

      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  (*(v13 + 2))(v13, location[0], v14);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_verifyEntitlements
{
  v14 = self;
  v13 = a2;
  v12 = [(AKClient *)self->_client hasOwnerAccess];
  v11 = [(AKClient *)v14->_client hasInternalAccess];
  v10 = [(AKClient *)v14->_client hasPrivateAccess];
  if (v12)
  {
    location = _AKLogHme();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, log, type, "Owner detected!", v7, 2u);
    }

    objc_storeStrong(&location, 0);
    return 1;
  }

  else if (v11)
  {
    oslog = _AKLogHme();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [NSNumber numberWithBool:v11 & 1];
      sub_1000194D4(v16, v3);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Internal request made by internal client? %@", v16, 0xCu);
      _objc_release(v3);
    }

    objc_storeStrong(&oslog, 0);
    return v11 & 1;
  }

  else if (v10)
  {
    return v10 & 1;
  }

  else
  {
    return 0;
  }
}

@end
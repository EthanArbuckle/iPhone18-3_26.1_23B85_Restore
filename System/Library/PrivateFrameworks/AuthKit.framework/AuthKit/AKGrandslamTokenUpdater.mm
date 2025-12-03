@interface AKGrandslamTokenUpdater
+ (BOOL)shouldUpdateSynchronouslyWith:(id)with;
- (BOOL)_isTouchIDRequiredForGrandSlamServiceTokenWithID:(id)d;
- (void)_updateCredentialForSavedAIDAAccount:(id)account accountStore:(id)store withNewTokens:(id)tokens;
- (void)_updateWithRequest:(id)request error:(id *)error;
- (void)updateGrandSlamServiceTokensWithRequest:(id)request error:(id *)error;
@end

@implementation AKGrandslamTokenUpdater

- (void)updateGrandSlamServiceTokensWithRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  if ([objc_opt_class() shouldUpdateSynchronouslyWith:location[0]])
  {
    [(AKGrandslamTokenUpdater *)selfCopy _updateWithRequest:location[0] error:errorCopy];
  }

  else
  {
    queue = dispatch_get_global_queue(0, 0);
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_100186A80;
    v10 = &unk_1003254E0;
    v11 = _objc_retain(selfCopy);
    v12[0] = _objc_retain(location[0]);
    v12[1] = errorCopy;
    dispatch_async(queue, &v6);
    _objc_release(queue);
    objc_storeStrong(v12, 0);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(location, 0);
}

+ (BOOL)shouldUpdateSynchronouslyWith:(id)with
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, with);
  context = [location[0] context];
  serviceIdentifier = [context serviceIdentifier];
  v7 = 0;
  v6 = 0;
  if (serviceIdentifier)
  {
    aidaAccount = [location[0] aidaAccount];
    v7 = 1;
    v6 = aidaAccount != 0;
  }

  v10 = v6;
  if (v7)
  {
    _objc_release(aidaAccount);
  }

  _objc_release(serviceIdentifier);
  _objc_release(context);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)_updateWithRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  v72 = 0uLL;
  v42 = _AKSignpostLogSystem();
  *&v71 = _AKSignpostCreate();
  *(&v71 + 1) = v4;
  _objc_release(v42);
  v70 = _AKSignpostLogSystem();
  v69 = 1;
  v68 = v71;
  if (v71 && v68 != -1 && os_signpost_enabled(v70))
  {
    log = v70;
    type = v69;
    spid = v68;
    sub_10001CEEC(v67);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, type, spid, "PersistGrandslamTokens", " enableTelemetry=YES ", v67, 2u);
  }

  objc_storeStrong(&v70, 0);
  v66 = _AKSignpostLogSystem();
  v65 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v82, v71);
    _os_log_impl(&_mh_execute_header, v66, v65, "BEGIN [%lld]: PersistGrandslamTokens  enableTelemetry=YES ", v82, 0xCu);
  }

  objc_storeStrong(&v66, 0);
  v72 = v71;
  aidaAccount = [location[0] aidaAccount];
  if (!aidaAccount)
  {
    v63 = _AKLogSystem();
    v62 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      altDSID = [location[0] altDSID];
      appleIDUsername = [location[0] appleIDUsername];
      sub_10006A3A4(v81, 1752392040, altDSID, appleIDUsername);
      _os_log_impl(&_mh_execute_header, v63, v62, "No AIDA account for altDSID %{mask.hash}@ was found. Searching by Apple ID: %@", v81, 0x20u);
      _objc_release(appleIDUsername);
      _objc_release(altDSID);
    }

    objc_storeStrong(&v63, 0);
    accountManager = [location[0] accountManager];
    appleIDUsername2 = [location[0] appleIDUsername];
    v5 = [accountManager appleIDAccountWithAppleID:?];
    v6 = aidaAccount;
    aidaAccount = v5;
    _objc_release(v6);
    _objc_release(appleIDUsername2);
    _objc_release(accountManager);
  }

  if (!aidaAccount)
  {
    v61 = _AKLogSystem();
    v60 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      appleIDUsername3 = [location[0] appleIDUsername];
      sub_1000194D4(v80, appleIDUsername3);
      _os_log_impl(&_mh_execute_header, v61, v60, "Creating new AIDA account for Apple ID: %@", v80, 0xCu);
      _objc_release(appleIDUsername3);
    }

    objc_storeStrong(&v61, 0);
    v28 = [ACAccount alloc];
    accountManager2 = [location[0] accountManager];
    appleIDAccountType = [accountManager2 appleIDAccountType];
    v7 = [v28 initWithAccountType:?];
    v8 = aidaAccount;
    aidaAccount = v7;
    _objc_release(v8);
    _objc_release(appleIDAccountType);
    _objc_release(accountManager2);
    v31 = aidaAccount;
    appleIDUsername4 = [location[0] appleIDUsername];
    [v31 setUsername:?];
    _objc_release(appleIDUsername4);
    v59 = +[AKAccountManager personaIDIfCurrentPersonaIsDataSeparated];
    if (v59)
    {
      [aidaAccount setObject:v59 forKeyedSubscript:ACAccountPropertyPersonaIdentifier];
    }

    objc_storeStrong(&v59, 0);
  }

  accountManager3 = [location[0] accountManager];
  altDSID2 = [location[0] altDSID];
  v58 = [accountManager3 authKitAccountWithAltDSID:? error:?];
  _objc_release(altDSID2);
  _objc_release(accountManager3);
  if (v58)
  {
    accountManager4 = [location[0] accountManager];
    [accountManager4 setCredentialStorageOption:objc_msgSend(v58 forAccount:{"credentialLocation"), aidaAccount}];
    _objc_release(accountManager4);
  }

  oslog = _AKLogSystem();
  v56 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v79, aidaAccount);
    _os_log_impl(&_mh_execute_header, oslog, v56, "Updating AIDA account %@ with properties and tokens.", v79, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [aidaAccount setCredential:0];
  [aidaAccount setAuthenticated:1];
  accountManager5 = [location[0] accountManager];
  altDSID3 = [location[0] altDSID];
  [accountManager5 setAltDSID:? forAccount:?];
  _objc_release(altDSID3);
  _objc_release(accountManager5);
  dsid = [location[0] dsid];
  _objc_release(dsid);
  if (dsid)
  {
    v20 = aidaAccount;
    dsid2 = [location[0] dsid];
    [v20 setAccountProperty:? forKey:?];
    _objc_release(dsid2);
  }

  v55 = 0;
  accountManager6 = [location[0] accountManager];
  obj = v55;
  v19 = [accountManager6 saveAccount:aidaAccount error:&obj];
  objc_storeStrong(&v55, obj);
  _objc_release(accountManager6);
  v54 = v19;
  if (v19)
  {
    v52 = _AKLogSystem();
    v51 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v52;
      v17 = v51;
      sub_10001CEEC(v50);
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully saved AIDA account.", v50, 2u);
    }

    objc_storeStrong(&v52, 0);
    v12 = selfCopy;
    v11 = aidaAccount;
    accountManager7 = [location[0] accountManager];
    store = [accountManager7 store];
    tokensById = [location[0] tokensById];
    [(AKGrandslamTokenUpdater *)v12 _updateCredentialForSavedAIDAAccount:v11 accountStore:store withNewTokens:?];
    _objc_release(tokensById);
    _objc_release(store);
    _objc_release(accountManager7);
  }

  else
  {
    if (errorCopy)
    {
      v10 = v55;
      v9 = v55;
      *errorCopy = v10;
    }

    v49 = _AKLogSystem();
    v48 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v78, v55);
      _os_log_error_impl(&_mh_execute_header, v49, v48, "Failed to save AIDA account! Error: %@", v78, 0xCu);
    }

    objc_storeStrong(&v49, 0);
  }

  v47 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v46 = _AKSignpostLogSystem();
  v45 = OS_SIGNPOST_INTERVAL_END;
  v44 = v72;
  if (v72 && v44 != -1 && os_signpost_enabled(v46))
  {
    sub_100034290(v77, [v55 code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, v45, v44, "PersistGrandslamTokens", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v77, 8u);
  }

  objc_storeStrong(&v46, 0);
  v43 = _AKSignpostLogSystem();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v76, v72, *&v47, [v55 code]);
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:PersistGrandslamTokens  Error=%{public,signpost.telemetry:number2,name=Error}d ", v76, 0x1Cu);
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&aidaAccount, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateCredentialForSavedAIDAAccount:(id)account accountStore:(id)store withNewTokens:(id)tokens
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v18 = 0;
  objc_storeStrong(&v18, store);
  v17 = 0;
  objc_storeStrong(&v17, tokens);
  queue = dispatch_get_global_queue(33, 0);
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001879F0;
  v12 = &unk_100320000;
  v13 = _objc_retain(v17);
  v14 = _objc_retain(selfCopy);
  v15 = _objc_retain(v18);
  v16 = _objc_retain(location[0]);
  dispatch_sync(queue, &v8);
  _objc_release(queue);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isTouchIDRequiredForGrandSlamServiceTokenWithID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v5 = ([location[0] isEqualToString:@"com.apple.gs.icloud.storage.buy"] & 1) != 0;
  objc_storeStrong(location, 0);
  return v5;
}

@end
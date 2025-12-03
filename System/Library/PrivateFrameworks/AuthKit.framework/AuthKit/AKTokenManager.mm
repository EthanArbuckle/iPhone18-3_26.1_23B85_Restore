@interface AKTokenManager
+ (AKTokenManager)sharedInstance;
- (AKTokenManager)init;
- (BOOL)_deleteTokenWithIdentifer:(id)identifer altDSID:(id)d account:(id)account credential:(id)credential error:(id *)error;
- (BOOL)deleteTokenFromCacheWithIdentifer:(id)identifer altDSID:(id)d error:(id *)error;
- (BOOL)synchronizeTokensForAllAccounts:(id *)accounts;
- (BOOL)synchronizeTokensForAltDSID:(id)d account:(id)account error:(id *)error;
- (BOOL)updateToken:(id)token identifier:(id)identifier altDSID:(id)d account:(id)account credential:(id)credential error:(id *)error;
- (id)synchronizedCredentialForAccount:(id)account;
- (id)tokenWithIdentifier:(id)identifier altDSID:(id)d forAccount:(id)account error:(id *)error;
- (id)tokenWithIdentifier:(id)identifier altDSID:(id)d forAccount:(id)account shouldSync:(BOOL)sync error:(id *)error;
@end

@implementation AKTokenManager

+ (AKTokenManager)sharedInstance
{
  v5 = &unk_100374870;
  location = 0;
  objc_storeStrong(&location, &stru_1003247A8);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374868;

  return v2;
}

- (AKTokenManager)init
{
  v14 = a2;
  v15 = 0;
  v13.receiver = self;
  v13.super_class = AKTokenManager;
  v15 = [(AKTokenManager *)&v13 init];
  objc_storeStrong(&v15, v15);
  if (v15)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.authkit.AKTokenManagerQueue", v12);
    tokenManagerQueue = v15->_tokenManagerQueue;
    v15->_tokenManagerQueue = v2;
    _objc_release(tokenManagerQueue);
    _objc_release(v12);
    v4 = objc_opt_new();
    keychainManager = v15->_keychainManager;
    v15->_keychainManager = v4;
    _objc_release(keychainManager);
    v6 = objc_opt_new();
    tokenCache = v15->_tokenCache;
    v15->_tokenCache = v6;
    _objc_release(tokenCache);
    v8 = objc_opt_new();
    tokenKeychain = v15->_tokenKeychain;
    v15->_tokenKeychain = v8;
    _objc_release(tokenKeychain);
  }

  v11 = _objc_retain(v15);
  objc_storeStrong(&v15, 0);
  return v11;
}

- (BOOL)updateToken:(id)token identifier:(id)identifier altDSID:(id)d account:(id)account credential:(id)credential error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, token);
  v46 = 0;
  objc_storeStrong(&v46, identifier);
  v45 = 0;
  objc_storeStrong(&v45, d);
  v44 = 0;
  objc_storeStrong(&v44, account);
  v43 = 0;
  objc_storeStrong(&v43, credential);
  errorCopy = error;
  v41 = _AKLogSystem();
  v40 = 2;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    log = v41;
    type = v40;
    sub_10001CEEC(v39);
    _os_log_debug_impl(&_mh_execute_header, log, type, "AKTokenManager attempting to update token.", v39, 2u);
  }

  objc_storeStrong(&v41, 0);
  if (v46 && v45)
  {
    if (location[0])
    {
      queue = selfCopy->_tokenManagerQueue;
      v21 = _NSConcreteStackBlock;
      v22 = -1073741824;
      v23 = 0;
      v24 = sub_100145BF8;
      v25 = &unk_1003247D0;
      v26 = _objc_retain(v46);
      v27 = _objc_retain(v45);
      v28 = _objc_retain(location[0]);
      v29 = _objc_retain(selfCopy);
      v31[1] = errorCopy;
      v30 = _objc_retain(v44);
      v31[0] = _objc_retain(v43);
      dispatch_sync(queue, &v21);
      v49 = errorCopy == 0;
      v35 = 1;
      objc_storeStrong(v31, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v26, 0);
    }

    else
    {
      v34 = _AKLogSystem();
      v33 = 2;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v10 = v34;
        v11 = v33;
        sub_10001CEEC(v32);
        _os_log_debug_impl(&_mh_execute_header, v10, v11, "Token is nil. Let's delete the token.", v32, 2u);
      }

      objc_storeStrong(&v34, 0);
      v49 = [(AKTokenManager *)selfCopy _deleteTokenWithIdentifer:v46 altDSID:v45 account:v44 credential:v43 error:errorCopy];
      v35 = 1;
    }
  }

  else
  {
    v38 = _AKLogSystem();
    v37 = 2;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v12 = v38;
      v13 = v37;
      sub_10001CEEC(v36);
      _os_log_debug_impl(&_mh_execute_header, v12, v13, "Missing required inputs. Skipping.", v36, 2u);
    }

    objc_storeStrong(&v38, 0);
    v49 = 0;
    v35 = 1;
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  return v49 & 1;
}

- (BOOL)deleteTokenFromCacheWithIdentifer:(id)identifer altDSID:(id)d error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifer);
  v9 = 0;
  objc_storeStrong(&v9, d);
  v8 = [(AKTokenManager *)selfCopy _deleteTokenWithIdentifer:location[0] altDSID:v9 account:0 credential:0 error:error];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (id)tokenWithIdentifier:(id)identifier altDSID:(id)d forAccount:(id)account error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v12 = 0;
  objc_storeStrong(&v12, d);
  v11 = 0;
  objc_storeStrong(&v11, account);
  v10 = [(AKTokenManager *)selfCopy tokenWithIdentifier:location[0] altDSID:v12 forAccount:v11 shouldSync:0 error:error];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)tokenWithIdentifier:(id)identifier altDSID:(id)d forAccount:(id)account shouldSync:(BOOL)sync error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v86 = 0;
  objc_storeStrong(&v86, d);
  v85 = 0;
  objc_storeStrong(&v85, account);
  syncCopy = sync;
  errorCopy = error;
  v82 = _AKLogSystem();
  v81 = 2;
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
  {
    log = v82;
    type = v81;
    sub_10001CEEC(v80);
    _os_log_debug_impl(&_mh_execute_header, log, type, "AKTokenManager attempting to fetch token.", v80, 2u);
  }

  objc_storeStrong(&v82, 0);
  if (location[0])
  {
    if (v86)
    {
      v72 = _AKLogSystem();
      v71 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CFB9C(v90, location[0], 1752392040, v86);
        _os_log_debug_impl(&_mh_execute_header, v72, v71, "AKTokenManager fetching tokens for tokenIdentifier:%@ altDSID:%{mask.hash}@", v90, 0x20u);
      }

      objc_storeStrong(&v72, 0);
      v65[0] = 0;
      v65[1] = v65;
      v66 = 838860800;
      v67 = 48;
      v68 = sub_100003CF4;
      v69 = sub_100011380;
      v70 = 0;
      v59[0] = 0;
      v59[1] = v59;
      v60 = 838860800;
      v61 = 48;
      v62 = sub_100003CF4;
      v63 = sub_100011380;
      v64 = 0;
      v53[0] = 0;
      v53[1] = v53;
      v54 = 838860800;
      v55 = 48;
      v56 = sub_100003CF4;
      v57 = sub_100011380;
      v58 = 0;
      v46 = 0;
      v47 = &v46;
      v48 = 838860800;
      v49 = 48;
      v50 = sub_100003CF4;
      v51 = sub_100011380;
      v52 = 0;
      v42[0] = 0;
      v42[1] = v42;
      v43 = 0x20000000;
      v44 = 32;
      v45 = 0;
      v38[0] = 0;
      v38[1] = v38;
      v39 = 0x20000000;
      v40 = 32;
      v41 = 0;
      v34[0] = 0;
      v34[1] = v34;
      v35 = 0x20000000;
      v36 = 32;
      v37 = 0;
      queue = selfCopy->_tokenManagerQueue;
      v24 = _NSConcreteStackBlock;
      v25 = -1073741824;
      v26 = 0;
      v27 = sub_1001465FC;
      v28 = &unk_1003247F8;
      v29 = _objc_retain(location[0]);
      v30 = _objc_retain(v86);
      v32[1] = v65;
      v31 = _objc_retain(selfCopy);
      v32[2] = &v46;
      v32[3] = v42;
      v32[4] = v59;
      v32[8] = errorCopy;
      v32[5] = v38;
      v32[0] = _objc_retain(v85);
      v32[6] = v53;
      v32[7] = v34;
      v33 = syncCopy;
      dispatch_sync(queue, &v24);
      v89 = _objc_retain(v47[5]);
      v76 = 1;
      objc_storeStrong(v32, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v29, 0);
      _Block_object_dispose(v34, 8);
      _Block_object_dispose(v38, 8);
      _Block_object_dispose(v42, 8);
      _Block_object_dispose(&v46, 8);
      objc_storeStrong(&v52, 0);
      _Block_object_dispose(v53, 8);
      objc_storeStrong(&v58, 0);
      _Block_object_dispose(v59, 8);
      objc_storeStrong(&v64, 0);
      _Block_object_dispose(v65, 8);
      objc_storeStrong(&v70, 0);
    }

    else
    {
      v75 = _AKLogSystem();
      v74 = 2;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        v13 = v75;
        v14 = v74;
        sub_10001CEEC(v73);
        _os_log_debug_impl(&_mh_execute_header, v13, v14, "AKTokenManager missing required inputs (altDSID). Skipping.", v73, 2u);
      }

      objc_storeStrong(&v75, 0);
      if (errorCopy)
      {
        v12 = [NSError ak_errorWithCode:-7025];
        v8 = v12;
        *errorCopy = v12;
      }

      v89 = 0;
      v76 = 1;
    }
  }

  else
  {
    v79 = _AKLogSystem();
    v78 = 16;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v16 = v79;
      v17 = v78;
      sub_10001CEEC(v77);
      _os_log_error_impl(&_mh_execute_header, v16, v17, "AKTokenManager missing required inputs (tokenIdentifier). Skipping.", v77, 2u);
    }

    objc_storeStrong(&v79, 0);
    if (errorCopy)
    {
      v15 = [NSError ak_errorWithCode:-7009];
      v7 = v15;
      *errorCopy = v15;
    }

    v89 = 0;
    v76 = 1;
  }

  objc_storeStrong(&v85, 0);
  objc_storeStrong(&v86, 0);
  objc_storeStrong(location, 0);
  v9 = v89;

  return v9;
}

- (BOOL)synchronizeTokensForAltDSID:(id)d account:(id)account error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v12 = 0;
  objc_storeStrong(&v12, account);
  v5 = [(AKTokenManager *)selfCopy tokenWithIdentifier:ACContinuationTokenKey altDSID:location[0] forAccount:v12 shouldSync:1 error:error];
  v6 = [(AKTokenManager *)selfCopy tokenWithIdentifier:ACPasswordResetTokenKey altDSID:location[0] forAccount:v12 shouldSync:1 error:error];
  v7 = [(AKTokenManager *)selfCopy tokenWithIdentifier:ACHeartbeatTokenKey altDSID:location[0] forAccount:v12 shouldSync:1 error:error];
  v11 = 0;
  if (error)
  {
    v11 = *error != 0;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return !v11;
}

- (BOOL)synchronizeTokensForAllAccounts:(id *)accounts
{
  selfCopy = self;
  v20 = a2;
  accountsCopy = accounts;
  v18 = +[AKAccountManager sharedInstance];
  v17 = [v18 allAuthKitAccountsWithError:0];
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(v17);
  v11 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(__b[1] + 8 * v8);
      location = [v18 altDSIDForAccount:v16];
      if ([location length])
      {
        v13 = [(AKTokenManager *)selfCopy synchronizeTokensForAltDSID:location account:v16 error:accountsCopy];
        if ((v13 & 1) == 0)
        {
          oslog = _AKLogSystem();
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            log = oslog;
            sub_1000194D4(v22, *accountsCopy);
            _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "AKTokenManager sync hit an error: %@.", v22, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
        }
      }

      objc_storeStrong(&location, 0);
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  v4 = 0;
  if (accountsCopy)
  {
    v4 = *accountsCopy != 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  return !v4;
}

- (BOOL)_deleteTokenWithIdentifer:(id)identifer altDSID:(id)d account:(id)account credential:(id)credential error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifer);
  v43 = 0;
  objc_storeStrong(&v43, d);
  v42 = 0;
  objc_storeStrong(&v42, account);
  v41 = 0;
  objc_storeStrong(&v41, credential);
  errorCopy = error;
  v39 = _AKLogSystem();
  v38 = 2;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    log = v39;
    type = v38;
    sub_10001CEEC(v37);
    _os_log_debug_impl(&_mh_execute_header, log, type, "AKTokenManager: attempting to delete token from keychain", v37, 2u);
  }

  objc_storeStrong(&v39, 0);
  if (v43)
  {
    v27[0] = 0;
    v27[1] = v27;
    v28 = 838860800;
    v29 = 48;
    v30 = sub_100003CF4;
    v31 = sub_100011380;
    v32 = _objc_retain(v42);
    queue = selfCopy->_tokenManagerQueue;
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_100147E10;
    v22 = &unk_100324820;
    v23 = _objc_retain(location[0]);
    v24 = _objc_retain(v43);
    v25 = _objc_retain(selfCopy);
    v26[2] = errorCopy;
    v26[1] = v27;
    v26[0] = _objc_retain(v41);
    dispatch_sync(queue, &v18);
    if (errorCopy)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v47, *errorCopy);
        _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "AKTokenManager: error deleting token: %@", v47, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v46 = 0;
      v33 = 1;
    }

    else
    {
      v46 = 1;
      v33 = 1;
    }

    objc_storeStrong(v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    _Block_object_dispose(v27, 8);
    objc_storeStrong(&v32, 0);
  }

  else
  {
    v36 = _AKLogSystem();
    v35 = 2;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v9 = v36;
      v10 = v35;
      sub_10001CEEC(v34);
      _os_log_debug_impl(&_mh_execute_header, v9, v10, "AKTokenManager: missing required inputs.", v34, 2u);
    }

    objc_storeStrong(&v36, 0);
    v46 = 0;
    v33 = 1;
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  return v46 & 1;
}

- (id)synchronizedCredentialForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v27 = _AKLogSystem();
  v26 = 2;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    log = v27;
    v15 = v26;
    sub_10001CEEC(v25);
    _os_log_debug_impl(&_mh_execute_header, log, v15, "AKTokenManager: Synchronizing Credential", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  v24 = 0;
  v22 = 0;
  v11 = [location[0] credentialWithError:&v22];
  objc_storeStrong(&v24, v22);
  v23 = v11;
  v12 = +[AKFeatureManager sharedManager];
  isTokenCacheEnabled = [v12 isTokenCacheEnabled];
  _objc_release(v12);
  if ((isTokenCacheEnabled & 1) != 0 && v23)
  {
    v21 = 0;
    v20 = [location[0] accountPropertyForKey:AKAltDSID];
    v18 = v21;
    v9 = [(AKTokenManager *)selfCopy tokenWithIdentifier:ACContinuationTokenKey altDSID:v20 forAccount:location[0] error:&v18];
    objc_storeStrong(&v21, v18);
    v19 = v9;
    objc_storeStrong(&v21, 0);
    v16 = v21;
    v10 = [(AKTokenManager *)selfCopy tokenWithIdentifier:ACPasswordResetTokenKey altDSID:v20 forAccount:location[0] error:&v16];
    objc_storeStrong(&v21, v16);
    v17 = v10;
    if (v19)
    {
      v7 = v23;
      stringValue = [v19 stringValue];
      [v7 setCredentialItem:? forKey:?];
      _objc_release(stringValue);
    }

    if (v17)
    {
      v5 = v23;
      stringValue2 = [v17 stringValue];
      [v5 setCredentialItem:? forKey:?];
      _objc_release(stringValue2);
    }

    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  v4 = _objc_retain(v23);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end
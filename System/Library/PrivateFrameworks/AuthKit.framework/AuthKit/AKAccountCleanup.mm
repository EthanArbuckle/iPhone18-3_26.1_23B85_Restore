@interface AKAccountCleanup
- (AKAccountCleanup)init;
- (id)_eligibleCleanupAccounts;
- (id)_inMemoryTokensForAccounts:(id)accounts;
- (void)_cleanupAccountsToRemove:(id)remove accountsToSave:(id)save completion:(id)completion;
- (void)_removeAccounts:(id)accounts;
- (void)_saveAccounts:(id)accounts inMemoryTokens:(id)tokens completion:(id)completion;
- (void)cleanupStaleAccountsWithCompletion:(id)completion;
@end

@implementation AKAccountCleanup

- (AKAccountCleanup)init
{
  v13 = a2;
  v14 = 0;
  v12.receiver = self;
  v12.super_class = AKAccountCleanup;
  v11 = [(AKAccountCleanup *)&v12 init];
  v14 = v11;
  objc_storeStrong(&v14, v11);
  if (v11)
  {
    v2 = +[AKAccountManager sharedInstance];
    accountManager = v14->_accountManager;
    v14->_accountManager = v2;
    _objc_release(accountManager);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AKAccountManager.groupedAccountCleanup", v10);
    queue = v14->_queue;
    v14->_queue = v4;
    _objc_release(queue);
    _objc_release(v10);
    v6 = dispatch_group_create();
    group = v14->_group;
    v14->_group = v6;
    _objc_release(group);
  }

  v9 = _objc_retain(v14);
  objc_storeStrong(&v14, 0);
  return v9;
}

- (void)cleanupStaleAccountsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _eligibleCleanupAccounts = [(AKAccountCleanup *)selfCopy _eligibleCleanupAccounts];
  v53 = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v63, [_eligibleCleanupAccounts count]);
    _os_log_impl(&_mh_execute_header, v53, type, "Checking if IDMS account cleanup is necessary (%lu accounts found)...", v63, 0xCu);
  }

  objc_storeStrong(&v53, 0);
  v51 = objc_opt_new();
  v50 = +[NSMutableDictionary dictionary];
  v49 = +[NSMutableDictionary dictionary];
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(_eligibleCleanupAccounts);
  v29 = [obj countByEnumeratingWithState:__b objects:v62 count:16];
  if (v29)
  {
    v25 = *__b[2];
    v26 = 0;
    v27 = v29;
    while (1)
    {
      v24 = v26;
      if (*__b[2] != v25)
      {
        objc_enumerationMutation(obj);
      }

      v48 = *(__b[1] + 8 * v26);
      v46 = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAccount:v48];
      v45 = [(AKAccountManager *)selfCopy->_accountManager servicesUsingAccount:v48];
      if ([v45 count])
      {
        [v50 setObject:v48 forKeyedSubscript:v46];
      }

      else
      {
        v44 = _AKLogSystem();
        v43 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v44;
          sub_1000194D4(v61, v48);
          _os_log_impl(&_mh_execute_header, v23, v43, "Removing unusued IDMS account %@...", v61, 0xCu);
        }

        objc_storeStrong(&v44, 0);
        [v51 addObject:v48];
      }

      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v46, 0);
      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [obj countByEnumeratingWithState:__b objects:v62 count:16];
        if (!v27)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  memset(v41, 0, sizeof(v41));
  v21 = _objc_retain(_eligibleCleanupAccounts);
  v22 = [v21 countByEnumeratingWithState:v41 objects:v60 count:16];
  if (v22)
  {
    v18 = *v41[2];
    v19 = 0;
    v20 = v22;
    while (1)
    {
      v17 = v19;
      if (*v41[2] != v18)
      {
        objc_enumerationMutation(v21);
      }

      v42 = *(v41[1] + 8 * v19);
      v40 = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAccount:v42];
      v39 = [v50 objectForKeyedSubscript:v40];
      identifier = [v39 identifier];
      identifier2 = [v42 identifier];
      _objc_release(identifier2);
      _objc_release(identifier);
      if (identifier == identifier2)
      {
        v13 = +[AKFeatureManager sharedManager];
        isTokenCacheEnabled = [v13 isTokenCacheEnabled];
        _objc_release(v13);
        if (isTokenCacheEnabled)
        {
          v38 = 0;
          v11 = +[AKTokenManager sharedInstance];
          v36 = v38;
          v12 = [(AKTokenManager *)v11 synchronizeTokensForAltDSID:v40 account:v39 error:&v36];
          objc_storeStrong(&v38, v36);
          _objc_release(v11);
          v37 = v12;
          if ((v12 & 1) == 0)
          {
            oslog = _AKLogSystem();
            v34 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              v9 = oslog;
              v10 = v34;
              sub_1000194D4(v59, v38);
              _os_log_debug_impl(&_mh_execute_header, v9, v10, "AKTokenManager sync hit an error: %@.", v59, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
          }

          objc_storeStrong(&v38, 0);
        }

        v33 = 5;
      }

      else
      {
        if (v39)
        {
          v32 = _AKLogSystem();
          v31 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v7 = v32;
            v8 = v31;
            sub_1000194D4(v58, v39);
            _os_log_impl(&_mh_execute_header, v7, v8, "Preserving IDMS account %@...", v58, 0xCu);
          }

          objc_storeStrong(&v32, 0);
          [v49 setObject:v39 forKeyedSubscript:v40];
          v30 = _AKLogSystem();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v6 = v30;
            sub_1000194D4(v57, v42);
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing duplicate IDMS account %@...", v57, 0xCu);
          }

          objc_storeStrong(&v30, 0);
          [v51 addObject:v42];
        }

        v33 = 0;
      }

      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
      ++v19;
      if (v17 + 1 >= v20)
      {
        v19 = 0;
        v20 = [v21 countByEnumeratingWithState:v41 objects:v60 count:16];
        if (!v20)
        {
          break;
        }
      }
    }
  }

  _objc_release(v21);
  v3 = selfCopy;
  allObjects = [v51 allObjects];
  allValues = [v49 allValues];
  [AKAccountCleanup _cleanupAccountsToRemove:v3 accountsToSave:"_cleanupAccountsToRemove:accountsToSave:completion:" completion:allObjects];
  _objc_release(allValues);
  _objc_release(allObjects);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&_eligibleCleanupAccounts, 0);
  objc_storeStrong(location, 0);
}

- (id)_eligibleCleanupAccounts
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = [(AKAccountManager *)self->_accountManager allAuthKitAccountsWithError:?];
  v3 = v7[0];
  v5 = _objc_retain(selfCopy);
  v6 = [v3 aaf_filter:?];
  v4 = _objc_retain(v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v7, 0);

  return v4;
}

- (void)_cleanupAccountsToRemove:(id)remove accountsToSave:(id)save completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, remove);
  v20 = 0;
  objc_storeStrong(&v20, save);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v18 = [(AKAccountCleanup *)selfCopy _inMemoryTokensForAccounts:v20];
  [(AKAccountCleanup *)selfCopy _removeAccounts:location[0]];
  group = selfCopy->_group;
  queue = selfCopy->_queue;
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_10004A54C;
  v13 = &unk_1003200A8;
  v14 = _objc_retain(selfCopy);
  v15 = _objc_retain(v20);
  v16 = _objc_retain(v18);
  v17 = _objc_retain(v19);
  dispatch_group_notify(group, queue, &v9);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (id)_inMemoryTokensForAccounts:(id)accounts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accounts);
  v21 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(location[0]);
  v13 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v10);
      v18 = 0;
      v17 = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAccount:v20];
      accountManager = selfCopy->_accountManager;
      v15 = v18;
      v7 = [(AKAccountManager *)accountManager allTokensForAccount:v20 error:&v15];
      objc_storeStrong(&v18, v15);
      v16 = v7;
      if (v18)
      {
        oslog = _AKLogSystem();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          sub_10001B098(v24, v20, v18);
          _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Something went wrong when fetching tokens for account %@. Error: %@", v24, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
      }

      else
      {
        [v21 setObject:v16 forKeyedSubscript:v17];
      }

      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  v5 = [v21 copy];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)_removeAccounts:(id)accounts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accounts);
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(location[0]);
  v10 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v7);
      dispatch_group_enter(selfCopy->_group);
      store = [(AKAccountManager *)selfCopy->_accountManager store];
      v3 = v19;
      v11 = _NSConcreteStackBlock;
      v12 = -1073741824;
      v13 = 0;
      v14 = sub_10004AB58;
      v15 = &unk_1003200D0;
      v16 = _objc_retain(v19);
      v17 = _objc_retain(selfCopy);
      [store removeAccount:v3 withCompletionHandler:&v11];
      _objc_release(store);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v16, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  objc_storeStrong(location, 0);
}

- (void)_saveAccounts:(id)accounts inMemoryTokens:(id)tokens completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accounts);
  v30 = 0;
  objc_storeStrong(&v30, tokens);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  memset(__b, 0, sizeof(__b));
  v12 = _objc_retain(location[0]);
  v13 = [v12 countByEnumeratingWithState:__b objects:v33 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(v12);
      }

      v28 = *(__b[1] + 8 * v10);
      v7 = v28;
      v19 = _NSConcreteStackBlock;
      v20 = -1073741824;
      v21 = 0;
      v22 = sub_10004B260;
      v23 = &unk_10031F050;
      v24 = _objc_retain(selfCopy);
      v25 = _objc_retain(v28);
      v26 = _objc_retain(v30);
      [AKAccountManager performWithinPersonaForAccount:v7 withBlock:&v19];
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v24, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [v12 countByEnumeratingWithState:__b objects:v33 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  _objc_release(v12);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v6 = type;
    sub_10001CEEC(v16);
    _os_log_impl(&_mh_execute_header, log, v6, "Done removing unused and duplicate IDMS accounts.", v16, 2u);
  }

  objc_storeStrong(&oslog, 0);
  if (v29)
  {
    (*(v29 + 2))();
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

@end
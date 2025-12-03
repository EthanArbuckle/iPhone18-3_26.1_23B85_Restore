@interface AKPrivateEmailStoreManager
+ (id)sharedInstance;
- (AKPrivateEmailStoreManager)init;
- (AKPrivateEmailStoreManager)initWithDatabasePath:(id)path;
- (AKPrivateEmailStoreManager)initWithExecutor:(id)executor;
- (AKPrivateEmailStoreManager)initWithPath:(id)path;
- (BOOL)commitChangesToCacheWithInformation:(id)information error:(id *)error;
- (BOOL)removePrivateEmailForContext:(id)context error:(id *)error;
- (BOOL)setCurrentEmailListVersion:(id)version error:(id *)error;
- (BOOL)setPrivateEmail:(id)email keyAlreadyHashed:(BOOL)hashed error:(id *)error;
- (BOOL)setProtocolVersion:(int)version error:(id *)error;
- (id)_hashKeyIfNecessary:(id)necessary;
- (id)currentEmailListVersion;
- (id)emailForContext:(id)context error:(id *)error;
- (id)fetchAllPrivateEmailsWithError:(id *)error;
- (int)currentProtocolVersion;
- (void)clearDatabase:(id *)database;
@end

@implementation AKPrivateEmailStoreManager

+ (id)sharedInstance
{
  v5 = &unk_100374508;
  location = 0;
  objc_storeStrong(&location, &stru_10031F238);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374500;

  return v2;
}

- (AKPrivateEmailStoreManager)init
{
  v4 = 0;
  v4 = [(AKPrivateEmailStoreManager *)self initWithPath:@"/Library/Application Support/com.apple.akd/privateEmails.db"];
  v3 = _objc_retain(v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKPrivateEmailStoreManager)initWithDatabasePath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKPrivateEmailStoreManager *)v3 initWithPath:location[0]];
  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKPrivateEmailStoreManager)initWithExecutor:(id)executor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, executor);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKPrivateEmailStoreManager;
  v6 = [(AKPrivateEmailStoreManager *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_executor, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKPrivateEmailStoreManager)initWithPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v3 = selfCopy;
  selfCopy = 0;
  v13.receiver = v3;
  v13.super_class = AKPrivateEmailStoreManager;
  v11 = [(AKPrivateEmailStoreManager *)&v13 init];
  selfCopy = v11;
  objc_storeStrong(&selfCopy, v11);
  if (v11)
  {
    v12 = objc_alloc_init(AKPrivateEmailStoreMigrator);
    v8 = [AKSQLiteExecutor alloc];
    v10 = NSHomeDirectory();
    v9 = [(NSString *)v10 stringByAppendingString:location[0]];
    v4 = [AKSQLiteExecutor initWithDatabasePath:v8 migrationController:"initWithDatabasePath:migrationController:"];
    executor = selfCopy->_executor;
    selfCopy->_executor = v4;
    _objc_release(executor);
    _objc_release(v9);
    _objc_release(v10);
    objc_storeStrong(&v12, 0);
  }

  v7 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)clearDatabase:(id *)database
{
  selfCopy = self;
  v9 = a2;
  databaseCopy = database;
  v7 = 0;
  executor = self->_executor;
  obj = 0;
  [(AKSQLiteExecutor *)executor wipeDatabase:&obj];
  objc_storeStrong(&v7, obj);
  if (databaseCopy)
  {
    v5 = v7;
    v4 = v7;
    *databaseCopy = v5;
  }

  objc_storeStrong(&v7, 0);
}

- (BOOL)setPrivateEmail:(id)email keyAlreadyHashed:(BOOL)hashed error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, email);
  hashedCopy = hashed;
  errorCopy = error;
  v43 = 0;
  v44 = &v43;
  v45 = 0x20000000;
  v46 = 32;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 838860800;
  v39 = 48;
  v40 = sub_10000366C;
  v41 = sub_100010FF0;
  v42 = 0;
  if (location[0])
  {
    v34 = 0;
    v17 = [location[0] key];
    v18 = 1;
    if (v17)
    {
      privateEmailAddress = [location[0] privateEmailAddress];
      v34 = 1;
      v18 = privateEmailAddress == 0;
    }

    if (v34)
    {
      _objc_release(privateEmailAddress);
    }

    _objc_release(v17);
    if (v18)
    {
      v5 = [NSError errorWithDomain:AKPrivateEmailErrorDomain code:-6002 userInfo:0];
      v6 = v37[5];
      v37[5] = v5;
      _objc_release(v6);
    }

    else
    {
      v33 = [location[0] key];
      if (!hashedCopy)
      {
        v7 = [(AKPrivateEmailStoreManager *)selfCopy _hashKeyIfNecessary:v33];
        v8 = v33;
        v33 = v7;
        _objc_release(v8);
      }

      v52[0] = v33;
      privateEmailAddress2 = [location[0] privateEmailAddress];
      v52[1] = privateEmailAddress2;
      v32 = [NSArray arrayWithObjects:v52 count:2];
      _objc_release(privateEmailAddress2);
      v31 = _objc_retain(@"INSERT OR REPLACE INTO emails (client_key, email) VALUES (?, ?)");
      v30 = [AKSQLiteQuery queryWithString:v31];
      v15 = (v37 + 5);
      v29 = v37[5];
      [v30 bindParameters:v32 error:&v29];
      objc_storeStrong(v15, v29);
      objc_initWeak(&from, selfCopy);
      v21 = _NSConcreteStackBlock;
      v22 = -1073741824;
      v23 = 0;
      v24 = sub_100021048;
      v25 = &unk_10031F260;
      objc_copyWeak(&v27, &from);
      v26[0] = _objc_retain(v30);
      v26[1] = &v36;
      v26[2] = &v43;
      [AKSQLiteExecutor performBlockAndWait:&v21];
      objc_storeStrong(v26, 0);
      objc_destroyWeak(&v27);
      objc_destroyWeak(&from);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
    }
  }

  else
  {
    v9 = [NSError errorWithDomain:AKPrivateEmailErrorDomain code:-6003 userInfo:0];
    v10 = v37[5];
    v37[5] = v9;
    _objc_release(v10);
  }

  if (errorCopy)
  {
    v14 = v37[5];
    v11 = v14;
    *errorCopy = v14;
  }

  v13 = *(v44 + 24);
  _Block_object_dispose(&v36, 8);
  objc_storeStrong(&v42, 0);
  _Block_object_dispose(&v43, 8);
  objc_storeStrong(location, 0);
  return v13 & 1;
}

- (BOOL)removePrivateEmailForContext:(id)context error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  errorCopy = error;
  v33 = 0;
  v34 = &v33;
  v35 = 0x20000000;
  v36 = 32;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 838860800;
  v29 = 48;
  v30 = sub_10000366C;
  v31 = sub_100010FF0;
  v32 = 0;
  v25 = [location[0] key];
  if (v25)
  {
    if (![location[0] keyAndBundleIdAreHashed])
    {
      v4 = [(AKPrivateEmailStoreManager *)selfCopy _hashKeyIfNecessary:v25];
      v5 = v25;
      v25 = v4;
      _objc_release(v5);
    }

    v24 = _objc_retain(@"DELETE FROM emails WHERE email = (SELECT email FROM emails WHERE client_key = ?)");
    v23 = [AKSQLiteQuery queryWithString:v24];
    v12 = (v27 + 5);
    v22 = v27[5];
    [v23 bindParameter:v25 error:&v22];
    objc_storeStrong(v12, v22);
    objc_initWeak(&v21, selfCopy);
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_100021524;
    v18 = &unk_10031F260;
    objc_copyWeak(&v20, &v21);
    v19[0] = _objc_retain(v23);
    v19[1] = &v26;
    v19[2] = &v33;
    [AKSQLiteExecutor performBlockAndWait:&v14];
    objc_storeStrong(v19, 0);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v21);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:AKPrivateEmailErrorDomain code:-6002 userInfo:0];
    v7 = v27[5];
    v27[5] = v6;
    _objc_release(v7);
  }

  if (errorCopy)
  {
    v11 = v27[5];
    v8 = v11;
    *errorCopy = v11;
  }

  v10 = *(v34 + 24);
  objc_storeStrong(&v25, 0);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(&v32, 0);
  _Block_object_dispose(&v33, 8);
  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (id)emailForContext:(id)context error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  errorCopy = error;
  v54 = 0;
  v52 = 0;
  v17 = 1;
  if (location[0])
  {
    v53 = [location[0] key];
    v52 = 1;
    v17 = v53 == 0;
  }

  if (v52)
  {
    _objc_release(v53);
  }

  if (v17)
  {
    v15 = [NSError errorWithDomain:AKPrivateEmailErrorDomain code:-6002 userInfo:0];
    v4 = v15;
    *errorCopy = v15;
    v58 = _objc_retain(v54);
    v51 = 1;
  }

  else
  {
    v14 = [location[0] key];
    v50 = [v14 copy];
    _objc_release(v14);
    if (![location[0] keyAndBundleIdAreHashed])
    {
      v5 = [(AKPrivateEmailStoreManager *)selfCopy _hashKeyIfNecessary:v50];
      v6 = v50;
      v50 = v5;
      _objc_release(v6);
    }

    v43 = 0;
    v44 = &v43;
    v45 = 838860800;
    v46 = 48;
    v47 = sub_10000366C;
    v48 = sub_100010FF0;
    v49 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 838860800;
    v39 = 48;
    v40 = sub_10000366C;
    v41 = sub_100010FF0;
    v42 = 0;
    v35 = _objc_retain(@"SELECT email FROM emails WHERE client_key=?");
    v34 = [AKSQLiteQuery queryWithString:v35];
    v13 = (v44 + 5);
    v33 = v44[5];
    [v34 bindParameter:v50 error:&v33];
    objc_storeStrong(v13, v33);
    v27[1] = _NSConcreteStackBlock;
    v28 = -1073741824;
    v29 = 0;
    v30 = sub_100021CE4;
    v31 = &unk_10031F288;
    v32 = &v36;
    [v34 setRowHandler:?];
    objc_initWeak(v27, selfCopy);
    v20 = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_100021D68;
    v24 = &unk_10031F2B0;
    objc_copyWeak(&v26, v27);
    v25[0] = _objc_retain(v34);
    v25[1] = &v43;
    [AKSQLiteExecutor performBlockAndWait:&v20];
    if (v37[5])
    {
      v12 = [[AKPrivateEmail alloc] initWithAddress:v37[5] forKey:v50];
      v7 = v54;
      v54 = v12;
      _objc_release(v7);
    }

    else
    {
      v18 = 0;
      if (v44[5])
      {
        v11 = v44[5];
      }

      else
      {
        v19 = [NSError errorWithDomain:AKPrivateEmailErrorDomain code:-6003 userInfo:0];
        v18 = 1;
        v11 = v19;
      }

      v8 = v11;
      *errorCopy = v11;
      if (v18)
      {
        _objc_release(v19);
      }
    }

    v58 = _objc_retain(v54);
    v51 = 1;
    objc_storeStrong(v25, 0);
    objc_destroyWeak(&v26);
    objc_destroyWeak(v27);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    _Block_object_dispose(&v36, 8);
    objc_storeStrong(&v42, 0);
    _Block_object_dispose(&v43, 8);
    objc_storeStrong(&v49, 0);
    objc_storeStrong(&v50, 0);
  }

  objc_storeStrong(&v54, 0);
  objc_storeStrong(location, 0);
  v9 = v58;

  return v9;
}

- (id)_hashKeyIfNecessary:(id)necessary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, necessary);
  currentProtocolVersion = [(AKPrivateEmailStoreManager *)selfCopy currentProtocolVersion];
  if (currentProtocolVersion < AKPrivateEmailProtocolVersion2)
  {
    v13 = _objc_retain(location[0]);
  }

  else
  {
    v9 = _AKLogHme();
    v8 = 2;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      log = v9;
      type = v8;
      sub_10001CEEC(v7);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Converting key to hashed value", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    v13 = [AKStoreUtils hash:location[0]];
  }

  objc_storeStrong(location, 0);
  v3 = v13;

  return v3;
}

- (id)currentEmailListVersion
{
  selfCopy = self;
  v30[1] = a2;
  v30[0] = [AKSQLiteQuery queryWithString:@"SELECT privateEmailListVersion FROM version"];
  v24[0] = 0;
  v24[1] = v24;
  v25 = 838860800;
  v26 = 48;
  v27 = sub_10000366C;
  v28 = sub_100010FF0;
  v29 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = sub_10000366C;
  v22 = sub_100010FF0;
  v23 = 0;
  location[3] = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_100022260;
  v15 = &unk_10031F288;
  v16 = &v17;
  [v30[0] setRowHandler:?];
  objc_initWeak(location, selfCopy);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000222E4;
  v8 = &unk_10031F2B0;
  objc_copyWeak(&v10, location);
  v9[0] = _objc_retain(v30[0]);
  v9[1] = v24;
  [AKSQLiteExecutor performBlockAndWait:&v4];
  v3 = _objc_retain(v18[5]);
  objc_storeStrong(v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(location);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(v24, 8);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v30, 0);

  return v3;
}

- (BOOL)setCurrentEmailListVersion:(id)version error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  errorCopy = error;
  v30 = 0;
  v31 = &v30;
  v32 = 0x20000000;
  v33 = 32;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 838860800;
  v26 = 48;
  v27 = sub_10000366C;
  v28 = sub_100010FF0;
  v29 = 0;
  if (location[0])
  {
    v22 = _objc_retain(@"UPDATE version SET privateEmailListVersion = ?");
    v21 = [AKSQLiteQuery queryWithString:v22];
    v10 = (v24 + 5);
    v20 = v24[5];
    [v21 bindParameter:location[0] error:&v20];
    objc_storeStrong(v10, v20);
    objc_initWeak(&v19, selfCopy);
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10002270C;
    v16 = &unk_10031F260;
    objc_copyWeak(&v18, &v19);
    v17[0] = _objc_retain(v21);
    v17[1] = &v23;
    v17[2] = &v30;
    [AKSQLiteExecutor performBlockAndWait:&v12];
    objc_storeStrong(v17, 0);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v19);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v4 = [NSError errorWithDomain:AKPrivateEmailErrorDomain code:-6002 userInfo:0];
    v5 = v24[5];
    v24[5] = v4;
    _objc_release(v5);
  }

  if (errorCopy)
  {
    v9 = v24[5];
    v6 = v9;
    *errorCopy = v9;
  }

  v8 = *(v31 + 24);
  _Block_object_dispose(&v23, 8);
  objc_storeStrong(&v29, 0);
  _Block_object_dispose(&v30, 8);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (BOOL)commitChangesToCacheWithInformation:(id)information error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  errorCopy = error;
  v67 = 0;
  v66 = 1;
  privateEmailListVersion = [location[0] privateEmailListVersion];
  v39 = privateEmailListVersion != 0;
  _objc_release(privateEmailListVersion);
  v65 = v39;
  if (v39)
  {
    protocolVersion = [location[0] protocolVersion];
    v64 = protocolVersion >= AKPrivateEmailProtocolVersion2;
    memset(__b, 0, sizeof(__b));
    obj = [location[0] addedPrivateEmails];
    v37 = [obj countByEnumeratingWithState:__b objects:v79 count:16];
    if (v37)
    {
      v33 = *__b[2];
      v34 = 0;
      v35 = v37;
      while (1)
      {
        v32 = v34;
        if (*__b[2] != v33)
        {
          objc_enumerationMutation(obj);
        }

        v63 = *(__b[1] + 8 * v34);
        v61 = _AKLogHme();
        type = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          log = v61;
          v31 = type;
          sub_1000194D4(v78, v63);
          _os_log_debug_impl(&_mh_execute_header, log, v31, "Added:%@", v78, 0xCu);
        }

        objc_storeStrong(&v61, 0);
        objc_storeStrong(&v67, 0);
        v59 = v67;
        [(AKPrivateEmailStoreManager *)selfCopy setPrivateEmail:v63 keyAlreadyHashed:v64 error:&v59];
        objc_storeStrong(&v67, v59);
        if (v67)
        {
          v66 = 0;
          v58 = _AKLogHme();
          v57 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v27 = v58;
            v28 = v57;
            v29 = [v63 key];
            v56 = _objc_retain(v29);
            sub_10001B098(v77, v56, v67);
            _os_log_error_impl(&_mh_execute_header, v27, v28, "Failed to persist private email with key:%@ error: %@", v77, 0x16u);
            _objc_release(v29);
            objc_storeStrong(&v56, 0);
          }

          objc_storeStrong(&v58, 0);
        }

        ++v34;
        if (v32 + 1 >= v35)
        {
          v34 = 0;
          v35 = [obj countByEnumeratingWithState:__b objects:v79 count:16];
          if (!v35)
          {
            break;
          }
        }
      }
    }

    _objc_release(obj);
    if (v66)
    {
      memset(v54, 0, sizeof(v54));
      removedPrivateEmails = [location[0] removedPrivateEmails];
      v26 = [removedPrivateEmails countByEnumeratingWithState:v54 objects:v76 count:16];
      if (v26)
      {
        v22 = *v54[2];
        v23 = 0;
        v24 = v26;
        while (1)
        {
          v21 = v23;
          if (*v54[2] != v22)
          {
            objc_enumerationMutation(removedPrivateEmails);
          }

          v55 = *(v54[1] + 8 * v23);
          oslog = _AKLogHme();
          v52 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            v19 = oslog;
            v20 = v52;
            sub_1000194D4(v75, v55);
            _os_log_debug_impl(&_mh_execute_header, v19, v20, "Remove:%@", v75, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          v51 = [v55 key];
          objc_storeStrong(&v67, 0);
          v16 = [AKPrivateEmailContext alloc];
          v18 = [v55 key];
          clientAppBundleId = [v55 clientAppBundleId];
          v50 = [v16 initWithKey:v18 altDSID:&stru_100330538 clientAppBundleId:?];
          _objc_release(clientAppBundleId);
          _objc_release(v18);
          [v50 setKeyAndBundleIdAreHashed:v64];
          v49 = v67;
          [(AKPrivateEmailStoreManager *)selfCopy removePrivateEmailForContext:v50 error:&v49];
          objc_storeStrong(&v67, v49);
          if (v67)
          {
            v66 = 0;
            v48 = _AKLogHme();
            v47 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v15 = v48;
              sub_10001B098(v74, v51, v67);
              _os_log_error_impl(&_mh_execute_header, v15, v47, "Failed to remove private email with key:%@ error: %@", v74, 0x16u);
            }

            objc_storeStrong(&v48, 0);
          }

          objc_storeStrong(&v50, 0);
          objc_storeStrong(&v51, 0);
          ++v23;
          if (v21 + 1 >= v24)
          {
            v23 = 0;
            v24 = [removedPrivateEmails countByEnumeratingWithState:v54 objects:v76 count:16];
            if (!v24)
            {
              break;
            }
          }
        }
      }

      _objc_release(removedPrivateEmails);
    }

    if (v66)
    {
      objc_storeStrong(&v67, 0);
      v13 = selfCopy;
      privateEmailListVersion2 = [location[0] privateEmailListVersion];
      v46 = v67;
      [AKPrivateEmailStoreManager setCurrentEmailListVersion:v13 error:"setCurrentEmailListVersion:error:"];
      objc_storeStrong(&v67, v46);
      _objc_release(privateEmailListVersion2);
      if (v67)
      {
        v66 = 0;
        v45 = _AKLogHme();
        v44 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v73, v67);
          _os_log_error_impl(&_mh_execute_header, v45, v44, "Failed to persist private emails list version with error: %@", v73, 0xCu);
        }

        objc_storeStrong(&v45, 0);
      }
    }

    if (v66)
    {
      protocolVersion2 = [location[0] protocolVersion];
      if (protocolVersion2 > AKPrivateEmailInitialProtocolVersion)
      {
        objc_storeStrong(&v67, 0);
        v12 = selfCopy;
        protocolVersion3 = [location[0] protocolVersion];
        v43 = v67;
        [(AKPrivateEmailStoreManager *)v12 setProtocolVersion:protocolVersion3 error:&v43];
        objc_storeStrong(&v67, v43);
        if (v67)
        {
          v66 = 0;
          v42 = _AKLogHme();
          v41 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_1000194D4(v72, v67);
            _os_log_error_impl(&_mh_execute_header, v42, v41, "Failed to persist private emails protocol version with error: %@", v72, 0xCu);
          }

          objc_storeStrong(&v42, 0);
        }
      }
    }
  }

  else
  {
    v40 = _AKLogHme();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v71, location[0]);
      _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Tried to commit without listVersion. Info:%@", v71, 0xCu);
    }

    objc_storeStrong(&v40, 0);
    v66 = 0;
  }

  if (errorCopy)
  {
    v11 = v67;
    v8 = v67;
    *errorCopy = v11;
  }

  v10 = v66;
  objc_storeStrong(&v67, 0);
  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (int)currentProtocolVersion
{
  selfCopy = self;
  v30[1] = a2;
  v30[0] = [AKSQLiteQuery queryWithString:@"SELECT protocol_version FROM version"];
  v24[0] = 0;
  v24[1] = v24;
  v25 = 838860800;
  v26 = 48;
  v27 = sub_10000366C;
  v28 = sub_100010FF0;
  v29 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 838860800;
  v20 = 48;
  v21 = sub_10000366C;
  v22 = sub_100010FF0;
  v23 = 0;
  location[3] = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1000235F8;
  v15 = &unk_10031F288;
  v16 = &v17;
  [v30[0] setRowHandler:?];
  objc_initWeak(location, selfCopy);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10002367C;
  v8 = &unk_10031F2B0;
  objc_copyWeak(&v10, location);
  v9[0] = _objc_retain(v30[0]);
  v9[1] = v24;
  [AKSQLiteExecutor performBlockAndWait:&v4];
  intValue = AKPrivateEmailInitialProtocolVersion;
  if (v18[5])
  {
    intValue = [v18[5] intValue];
    if (intValue < AKPrivateEmailInitialProtocolVersion)
    {
      intValue = AKPrivateEmailInitialProtocolVersion;
    }
  }

  objc_storeStrong(v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(location);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(v24, 8);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v30, 0);
  return intValue;
}

- (BOOL)setProtocolVersion:(int)version error:(id *)error
{
  selfCopy = self;
  v35 = a2;
  versionCopy = version;
  errorCopy = error;
  v28 = 0;
  v29 = &v28;
  v30 = 0x20000000;
  v31 = 32;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 838860800;
  v24 = 48;
  v25 = sub_10000366C;
  v26 = sub_100010FF0;
  v27 = 0;
  v20 = _objc_retain(@"UPDATE version SET protocol_version = ?");
  v19 = [AKSQLiteQuery queryWithString:v20];
  v8 = [NSNumber numberWithInteger:versionCopy];
  location = (v22 + 5);
  v18 = v22[5];
  [v19 bindParameter:? error:?];
  objc_storeStrong(location, v18);
  _objc_release(v8);
  objc_initWeak(&v17, selfCopy);
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100023A58;
  v14 = &unk_10031F260;
  objc_copyWeak(&v16, &v17);
  v15[0] = _objc_retain(v19);
  v15[1] = &v21;
  v15[2] = &v28;
  [AKSQLiteExecutor performBlockAndWait:&v10];
  if (errorCopy)
  {
    v7 = v22[5];
    v4 = v7;
    *errorCopy = v7;
  }

  v6 = *(v29 + 24);
  objc_storeStrong(v15, 0);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v17);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  _Block_object_dispose(&v21, 8);
  objc_storeStrong(&v27, 0);
  _Block_object_dispose(&v28, 8);
  return v6 & 1;
}

- (id)fetchAllPrivateEmailsWithError:(id *)error
{
  selfCopy = self;
  v28[2] = a2;
  v28[1] = error;
  v28[0] = [AKSQLiteQuery queryWithString:@"SELECT email, client_key FROM emails"];
  v21 = 0;
  v22 = &v21;
  v23 = 838860800;
  v24 = 48;
  v25 = sub_10000366C;
  v26 = sub_100010FF0;
  v27 = 0;
  v20 = +[NSMutableArray array];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100023F7C;
  v18 = &unk_10031F2D8;
  v19 = _objc_retain(v20);
  [v28[0] setRowHandler:&v14];
  objc_initWeak(&location, selfCopy);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100024070;
  v10 = &unk_10031F2B0;
  objc_copyWeak(&v12, &location);
  v11[0] = _objc_retain(v28[0]);
  v11[1] = &v21;
  [AKSQLiteExecutor performBlockAndWait:&v6];
  if (v22[5])
  {
    oslog = _AKLogHme();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v30, v22[5]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch authorized all private email with error: %@", v30, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v4 = [v20 copy];
  objc_storeStrong(v11, 0);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  _Block_object_dispose(&v21, 8);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v28, 0);

  return v4;
}

@end
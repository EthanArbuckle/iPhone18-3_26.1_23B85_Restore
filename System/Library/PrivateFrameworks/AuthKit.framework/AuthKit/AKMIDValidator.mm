@interface AKMIDValidator
+ (id)_anisetteValidationQueue;
+ (id)sharedValidator;
- (AKMIDValidator)init;
- (BOOL)_isMatchingMIDDriftedErrorDictionary:(id)dictionary ttrConfigMIDDriftedErrors:(id)errors;
- (BOOL)_isTTRConfigMatchingMIDDriftedErrors:(id)errors;
- (BOOL)_isTTREligibleForMIDDriftedError:(id)error;
- (BOOL)_setLastKnownMID:(id)d keychainError:(id *)error;
- (id)_createErrorWithMIDDriftUnderlyingError:(id)error anisetteFetchError:(id)fetchError;
- (id)_initWithKeychain:(id)keychain;
- (id)_lastKnownMIDWithKeychainError:(id *)error;
- (id)_normalizedMIDDriftedError:(id)error underlyingLevel:(unint64_t)level midDriftedErrorDict:(id)dict;
- (int64_t)_calculateAndPersistDriftStatusForMID:(id)d anisetteFetchError:(id)error error:(id *)a5;
- (void)_triggerTTRForMIDDriftedError:(id)error;
- (void)validateMID:(id)d anisetteFetchError:(id)error;
@end

@implementation AKMIDValidator

+ (id)sharedValidator
{
  v5 = &unk_100374840;
  location = 0;
  objc_storeStrong(&location, &stru_1003245C8);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374838;

  return v2;
}

+ (id)_anisetteValidationQueue
{
  v5 = &unk_100374850;
  location = 0;
  objc_storeStrong(&location, &stru_1003245E8);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374848;

  return v2;
}

- (AKMIDValidator)init
{
  selfCopy = self;
  v5[1] = a2;
  v5[0] = objc_opt_new();
  v2 = [AKMIDValidator alloc];
  v4 = [(AKMIDValidator *)v2 _initWithKeychain:v5[0]];
  objc_storeStrong(v5, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

- (id)_initWithKeychain:(id)keychain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, keychain);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKMIDValidator;
  v6 = [(AKMIDValidator *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_midKeychain, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)validateMID:(id)d anisetteFetchError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v19 = 0;
  objc_storeStrong(&v19, error);
  v18 = 0;
  if (location[0])
  {
    machineID = [location[0] machineID];
    v5 = v18;
    v18 = machineID;
    _objc_release(v5);
  }

  v17 = os_transaction_create();
  queue = [objc_opt_class() _anisetteValidationQueue];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10013BAA4;
  v12 = &unk_100320000;
  v13 = _objc_retain(selfCopy);
  v14 = _objc_retain(v18);
  v15 = _objc_retain(v19);
  v16 = _objc_retain(v17);
  dispatch_async(queue, &v8);
  _objc_release(queue);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)_triggerTTRForMIDDriftedError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"MID drifted with error code - %ld", [location[0] code]);
  v3 = [location[0] description];
  v8 = [NSString stringWithFormat:@"MID drifted with error - \n\terror: %@", v3];
  _objc_release(v3);
  v7 = +[AKTTRController sharedController];
  v4 = v9;
  v5 = v8;
  v11 = @"1756944";
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  [v7 requestSilentTTRWithTitle:v4 message:v5 keywords:? completion:?];
  _objc_release(v6);
  _objc_release(v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isTTREligibleForMIDDriftedError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v5 = [(AKMIDValidator *)selfCopy _normalizedMIDDriftedError:location[0] underlyingLevel:0 midDriftedErrorDict:&__NSDictionary0__struct];
  v4 = [(AKMIDValidator *)selfCopy _isTTRConfigMatchingMIDDriftedErrors:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)_isTTRConfigMatchingMIDDriftedErrors:(id)errors
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, errors);
  v17 = +[AKURLBag sharedBag];
  v25 = [v17 ttrConfigurationAtKey:@"com.apple.authkit.midInvalidated"];
  _objc_release(v17);
  if (!v25)
  {
    v24 = _AKLogSystem();
    v23 = 2;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      log = v24;
      type = v23;
      sub_10001CEEC(v22);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Setting default MID Invalidated ttr config", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    _defaultMIDInvalidatedTTRConfig = [(AKMIDValidator *)selfCopy _defaultMIDInvalidatedTTRConfig];
    v4 = v25;
    v25 = _defaultMIDInvalidatedTTRConfig;
    _objc_release(v4);
  }

  v11 = objc_opt_class();
  v12 = [v25 objectForKeyedSubscript:@"iOS"];
  v21 = sub_10013C4A4(v11, v12);
  _objc_release(0);
  _objc_release(v12);
  v20 = 0;
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(location[0]);
  v14 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
  if (v14)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v14;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v9);
      if ([(AKMIDValidator *)selfCopy _isMatchingMIDDriftedErrorDictionary:v19 ttrConfigMIDDriftedErrors:v21])
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v10)
        {
          goto LABEL_13;
        }
      }
    }

    v20 = 1;
  }

LABEL_13:
  _objc_release(obj);
  v6 = v20;
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)_isMatchingMIDDriftedErrorDictionary:(id)dictionary ttrConfigMIDDriftedErrors:(id)errors
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v10 = 0;
  objc_storeStrong(&v10, errors);
  v6 = v10;
  v8 = _objc_retain(location[0]);
  v9 = [v6 aaf_filter:?];
  v7 = [v9 count] != 0;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)_normalizedMIDDriftedError:(id)error underlyingLevel:(unint64_t)level midDriftedErrorDict:(id)dict
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  levelCopy = level;
  v39 = 0;
  objc_storeStrong(&v39, dict);
  v38 = _objc_retain(&__NSDictionary0__struct);
  v37 = _objc_retain(&__NSArray0__struct);
  if (levelCopy)
  {
    levelCopy = [NSString stringWithFormat:@"uec%lu", levelCopy];
    levelCopy2 = [NSString stringWithFormat:@"ued%lu", levelCopy];
    v46[0] = levelCopy;
    v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [location[0] code]);
    stringValue = [(NSNumber *)v27 stringValue];
    v47[0] = stringValue;
    v46[1] = levelCopy2;
    domain = [location[0] domain];
    v47[1] = domain;
    v7 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
    v8 = v38;
    v38 = v7;
    _objc_release(v8);
    _objc_release(domain);
    _objc_release(stringValue);
    _objc_release(v27);
    objc_storeStrong(&levelCopy2, 0);
    objc_storeStrong(&levelCopy, 0);
  }

  else
  {
    v48[0] = @"ec";
    v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [location[0] code]);
    stringValue2 = [(NSNumber *)v30 stringValue];
    v49[0] = stringValue2;
    v48[1] = @"ed";
    domain2 = [location[0] domain];
    v49[1] = domain2;
    v5 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
    v6 = v38;
    v38 = v5;
    _objc_release(v6);
    _objc_release(domain2);
    _objc_release(stringValue2);
    _objc_release(v30);
  }

  v9 = [v39 aaf_dictionaryByAddingEntriesFromDictionary:v38];
  v10 = v39;
  v39 = v9;
  _objc_release(v10);
  underlyingErrors = [location[0] underlyingErrors];
  v24 = 0;
  if ([underlyingErrors count])
  {
    v24 = levelCopy < 2;
  }

  _objc_release(underlyingErrors);
  if (v24)
  {
    memset(__b, 0, sizeof(__b));
    underlyingErrors2 = [location[0] underlyingErrors];
    v22 = [underlyingErrors2 countByEnumeratingWithState:__b objects:v45 count:16];
    if (v22)
    {
      v18 = *__b[2];
      v19 = 0;
      v20 = v22;
      while (1)
      {
        v17 = v19;
        if (*__b[2] != v18)
        {
          objc_enumerationMutation(underlyingErrors2);
        }

        v34 = *(__b[1] + 8 * v19);
        v15 = v37;
        v16 = [(AKMIDValidator *)selfCopy _normalizedMIDDriftedError:v34 underlyingLevel:levelCopy + 1 midDriftedErrorDict:v39];
        v11 = [v15 arrayByAddingObjectsFromArray:?];
        v12 = v37;
        v37 = v11;
        _objc_release(v12);
        _objc_release(v16);
        ++v19;
        if (v17 + 1 >= v20)
        {
          v19 = 0;
          v20 = [underlyingErrors2 countByEnumeratingWithState:__b objects:v45 count:16];
          if (!v20)
          {
            break;
          }
        }
      }
    }

    _objc_release(underlyingErrors2);
    v43 = _objc_retain(v37);
  }

  else
  {
    v44 = v39;
    v43 = [NSArray arrayWithObjects:&v44 count:1];
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  v13 = v43;

  return v13;
}

- (id)_lastKnownMIDWithKeychainError:(id *)error
{
  if (!self->_lastKnownMID)
  {
    v3 = [(AKMIDKeychain *)self->_midKeychain lastKnownMID:error];
    lastKnownMID = self->_lastKnownMID;
    self->_lastKnownMID = v3;
    _objc_release(lastKnownMID);
  }

  v5 = self->_lastKnownMID;

  return v5;
}

- (BOOL)_setLastKnownMID:(id)d keychainError:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v8 = [(AKMIDKeychain *)selfCopy->_midKeychain updateLastKnownMID:location[0] error:error];
  if ((v8 & 1) == 1)
  {
    v4 = [location[0] copy];
    lastKnownMID = selfCopy->_lastKnownMID;
    selfCopy->_lastKnownMID = v4;
    _objc_release(lastKnownMID);
  }

  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (int64_t)_calculateAndPersistDriftStatusForMID:(id)d anisetteFetchError:(id)error error:(id *)a5
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v56 = 0;
  objc_storeStrong(&v56, error);
  v55 = a5;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v24 = [(AKMIDValidator *)selfCopy _lastKnownMIDWithKeychainError:&v52];
  objc_storeStrong(&v53, v52);
  v5 = v54;
  v54 = v24;
  _objc_release(v5);
  if (v53)
  {
    v51 = _AKLogSystem();
    v50 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v64, v53);
      _os_log_error_impl(&_mh_execute_header, v51, v50, "Failed to read keychain value for last known MID with error (%@)", v64, 0xCu);
    }

    objc_storeStrong(&v51, 0);
    if (v55)
    {
      v21 = v53;
      v6 = v53;
      *v55 = v21;
    }

    v59 = 0;
    v49 = 1;
  }

  else
  {
    userInfo = [v56 userInfo];
    v48 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
    _objc_release(userInfo);
    if ([v48 isAccountNotProvisioned])
    {
      if (v54)
      {
        v47 = 0;
        v45 = 0;
        v19 = [(AKMIDValidator *)selfCopy _setLastKnownMID:location[0] keychainError:&v45];
        objc_storeStrong(&v47, v45);
        v46 = v19;
        if (v19)
        {
          oslog = _AKLogSystem();
          v41 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            sub_1000194D4(v62, v54);
            _os_log_debug_impl(&_mh_execute_header, oslog, v41, "Unexpected MID drift will happen because we will provision even when previous MID is not null. Previous MID: %@", v62, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          v59 = 2;
          v49 = 1;
        }

        else
        {
          v44 = _AKLogSystem();
          v43 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            sub_1000194D4(v63, v47);
            _os_log_error_impl(&_mh_execute_header, v44, v43, "Failed to clear last knownMID with error (%@)", v63, 0xCu);
          }

          objc_storeStrong(&v44, 0);
          if (v55)
          {
            v18 = v47;
            v7 = v47;
            *v55 = v18;
          }

          v59 = 0;
          v49 = 1;
        }

        objc_storeStrong(&v47, 0);
      }

      else
      {
        v40 = _AKLogSystem();
        v39 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v16 = v40;
          v17 = v39;
          sub_10001CEEC(v38);
          _os_log_debug_impl(&_mh_execute_header, v16, v17, "Expected first time sign in anisette provision.", v38, 2u);
        }

        objc_storeStrong(&v40, 0);
        v59 = 1;
        v49 = 1;
      }
    }

    else
    {
      if ([location[0] isEqualToString:v54])
      {
        goto LABEL_44;
      }

      v37 = 0;
      v35 = 0;
      v15 = [(AKMIDValidator *)selfCopy _setLastKnownMID:location[0] keychainError:&v35];
      objc_storeStrong(&v37, v35);
      v36 = v15;
      if (v15)
      {
        if (location[0] && v54)
        {
          v32 = _AKLogSystem();
          v31 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            sub_10001B098(v60, v54, location[0]);
            _os_log_debug_impl(&_mh_execute_header, v32, v31, "MID Drifted! Previous MID: %@; New MID: %@", v60, 0x16u);
          }

          objc_storeStrong(&v32, 0);
          v59 = 2;
          v49 = 1;
        }

        else
        {
          if (location[0] || !v54)
          {
            v27 = _AKLogSystem();
            v26 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v10 = v27;
              v11 = v26;
              sub_10001CEEC(v25);
              _os_log_debug_impl(&_mh_execute_header, v10, v11, "Previous MID is null. There may be issues with keychain cache. This is not the first time sign in flow since we are not provisioning.", v25, 2u);
            }

            objc_storeStrong(&v27, 0);
          }

          else
          {
            v30 = _AKLogSystem();
            v29 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v12 = v30;
              v13 = v29;
              sub_10001CEEC(v28);
              _os_log_debug_impl(&_mh_execute_header, v12, v13, "MID not available at the moment! Please check underlying ADI error for the reason.", v28, 2u);
            }

            objc_storeStrong(&v30, 0);
          }

          v49 = 0;
        }
      }

      else
      {
        v34 = _AKLogSystem();
        v33 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v61, v37);
          _os_log_error_impl(&_mh_execute_header, v34, v33, "Failed to set last knownMID with error (%@)", v61, 0xCu);
        }

        objc_storeStrong(&v34, 0);
        if (v55)
        {
          v14 = v37;
          v8 = v37;
          *v55 = v14;
        }

        v59 = 0;
        v49 = 1;
      }

      objc_storeStrong(&v37, 0);
      if (!v49)
      {
LABEL_44:
        v59 = 1;
        v49 = 1;
      }
    }

    objc_storeStrong(&v48, 0);
  }

  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(location, 0);
  return v59;
}

- (id)_createErrorWithMIDDriftUnderlyingError:(id)error anisetteFetchError:(id)fetchError
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v12 = 0;
  objc_storeStrong(&v12, fetchError);
  v11 = 0;
  userInfo = [v12 userInfo];
  v10 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
  _objc_release(userInfo);
  if ([v10 isAccountNotProvisioned])
  {
    objc_storeStrong(&v11, location[0]);
  }

  else
  {
    v4 = [NSError ak_generalErrorWithCode:-8023 errorDomain:AKAnisetteErrorDomain underlyingError:location[0]];
    v5 = v11;
    v11 = v4;
    _objc_release(v5);
  }

  v7 = _objc_retain(v11);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v7;
}

@end
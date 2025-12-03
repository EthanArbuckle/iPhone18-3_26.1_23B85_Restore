@interface AKSQLiteQuery
+ (id)queryWithString:(id)string;
- (BOOL)_bindStatement:(sqlite3_stmt *)statement withParameter:(id)parameter atPosition:(int)position;
- (void)bindParameter:(id)parameter error:(id *)error;
- (void)bindParameters:(id)parameters error:(id *)error;
@end

@implementation AKSQLiteQuery

+ (id)queryWithString:(id)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v5 = objc_alloc_init(AKSQLiteQuery);
  [(AKSQLiteQuery *)v5 setQueryString:location[0]];
  v4 = _objc_retain(v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)bindParameter:(id)parameter error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, parameter);
  errorCopy = error;
  objc_initWeak(&v14, selfCopy);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001859D0;
  v11 = &unk_100325490;
  objc_copyWeak(v13, &v14);
  v12 = _objc_retain(location[0]);
  v13[1] = errorCopy;
  v4 = objc_retainBlock(&v7);
  bindHandler = selfCopy->_bindHandler;
  selfCopy->_bindHandler = v4;
  _objc_release(bindHandler);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v13);
  objc_destroyWeak(&v14);
  objc_storeStrong(location, 0);
}

- (void)bindParameters:(id)parameters error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, parameters);
  errorCopy = error;
  objc_initWeak(&v14, selfCopy);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100185D44;
  v11 = &unk_100325490;
  objc_copyWeak(v13, &v14);
  v12 = _objc_retain(location[0]);
  v13[1] = errorCopy;
  v4 = objc_retainBlock(&v7);
  bindHandler = selfCopy->_bindHandler;
  selfCopy->_bindHandler = v4;
  _objc_release(bindHandler);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v13);
  objc_destroyWeak(&v14);
  objc_storeStrong(location, 0);
}

- (BOOL)_bindStatement:(sqlite3_stmt *)statement withParameter:(id)parameter atPosition:(int)position
{
  selfCopy = self;
  v34 = a2;
  statementCopy = statement;
  location = 0;
  objc_storeStrong(&location, parameter);
  positionCopy = position;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = statementCopy;
    v18 = location;
    v5 = location;
    v30 = sqlite3_bind_text(v19, positionCopy, [v18 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v36 = v30 == 0;
    v29 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = statementCopy;
      [location doubleValue];
      v28 = sqlite3_bind_double(v17, positionCopy, v6);
      v36 = v28 == 0;
      v29 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = sqlite3_bind_int(statementCopy, positionCopy, [location intValue]);
        v36 = v27 == 0;
        v29 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = _objc_retain(location);
          v16 = statementCopy;
          v14 = positionCopy;
          v13 = v26;
          v7 = v26;
          bytes = [v13 bytes];
          v25 = sqlite3_bind_blob64(v16, v14, bytes, [v26 length], 0xFFFFFFFFFFFFFFFFLL);
          v36 = v25 == 0;
          v29 = 1;
          objc_storeStrong(&v26, 0);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = statementCopy;
            [location timeIntervalSince1970];
            v24 = sqlite3_bind_double(v12, positionCopy, v8);
            v36 = v24 == 0;
            v29 = 1;
          }

          else
          {
            v23 = _AKLogSystem();
            v22 = 16;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              log = v23;
              type = v22;
              sub_10001CEEC(v21);
              _os_log_error_impl(&_mh_execute_header, log, type, "Parameter type not handled, failing binding statement.", v21, 2u);
            }

            objc_storeStrong(&v23, 0);
            v36 = 0;
            v29 = 1;
          }
        }
      }
    }
  }

  objc_storeStrong(&location, 0);
  return v36;
}

@end
@interface FetchPostbackTask
- (void)main;
@end

@implementation FetchPostbackTask

- (void)main
{
  if (self->_appAdamID)
  {
    selfCopy2 = self;
    v3 = self->_params;
    if (!selfCopy2->_requestEncoder)
    {
      v4 = objc_alloc_init(AMSURLRequestEncoder);
      requestEncoder = selfCopy2->_requestEncoder;
      selfCopy2->_requestEncoder = v4;

      v6 = selfCopy2->_requestEncoder;
      v7 = +[BagService appstoredService];
      amsBag = [v7 amsBag];
      [(AMSURLRequestEncoder *)v6 setBag:amsBag];

      selfCopy2 = self;
      [(AMSURLRequestEncoder *)self->_requestEncoder setAccount:self->_account];
      [(AMSURLRequestEncoder *)self->_requestEncoder setRequestEncoding:3];
    }

    [(NSMutableDictionary *)selfCopy2->_paramsDict setObject:v3 forKeyedSubscript:@"ad-networks"];
    fetchPostbackInfoURL = selfCopy2->_fetchPostbackInfoURL;
    if (fetchPostbackInfoURL)
    {
      v10 = [(AMSURLRequestEncoder *)selfCopy2->_requestEncoder requestWithMethod:4 URL:fetchPostbackInfoURL parameters:selfCopy2->_paramsDict];
      *v42 = 0;
      v38 = [v10 resultWithError:v42];
      v11 = *v42;

      v12 = ASDErrorWithSafeUserInfo();
      v13 = v12;
    }

    else
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v42 = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not find URL for fetching postback info", v42, 2u);
      }

      v12 = 0;
      v38 = 0;
    }

    v37 = v12;
    if (v38 || !v37)
    {
      v35 = sub_10024A6D0();
      v34 = [v35 dataTaskPromiseWithRequest:v38];
      v56 = 0;
      v36 = [v34 resultWithError:&v56];
      v32 = v56;
      v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v36 responseStatusCode]);
      responseStatusCode = self->_responseStatusCode;
      self->_responseStatusCode = v15;

      object = [v36 object];
      v17 = [object objectForKeyedSubscript:@"ad-networks"];
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = v17;
      v18 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
      if (v18)
      {
        v19 = *v53;
        do
        {
          v20 = 0;
          do
          {
            if (*v53 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v52 + 1) + 8 * v20);
            v22 = [v21 objectForKeyedSubscript:@"status"];
            v23 = [v21 objectForKeyedSubscript:@"error"];
            lowercaseString = [v22 lowercaseString];
            if (([lowercaseString isEqualToString:@"ok"] & 1) != 0 || !objc_msgSend(lowercaseString, "isEqualToString:", @"error"))
            {
              v26 = 0;
            }

            else if (v23)
            {
              v25 = [NSString stringWithFormat:@"SKAdNetwork Multi Error:%@", v23];
              v26 = ASDErrorWithDescription();
            }

            else
            {
              v26 = ASDErrorWithDescription();
            }

            if (v26)
            {
              [(NSMutableArray *)self->_results addObject:v26];
            }

            else
            {
              v27 = sub_10024B378(InstallAttributionPingback, v21);
              if (v27)
              {
                [(NSMutableArray *)self->_results addObject:v27];
              }
            }

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v28 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
          v18 = v28;
        }

        while (v28);
      }

      if ([v36 responseStatusCode] == 200)
      {
        v48 = 0;
        v49 = &v48;
        v50 = 0x2020000000;
        v51 = 0;
        *v42 = 0;
        v43 = v42;
        v44 = 0x3032000000;
        v45 = sub_1002CDC80;
        databaseStore = self->_databaseStore;
        v46 = sub_1002CDC90;
        v47 = 0;
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_1002CDC98;
        v41[3] = &unk_10051EE08;
        v41[4] = self;
        v41[5] = &v48;
        v41[6] = v42;
        [(SQLiteDatabaseStore *)databaseStore modifyUsingTransaction:v41];
        if (*(v49 + 24) == 1)
        {
          v30 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Removed parameters after fetching postbacks", buf, 2u);
          }
        }

        else
        {
          v30 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = *(v43 + 5);
            *buf = 138543362;
            v58 = v31;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not remove parameters %{public}@", buf, 0xCu);
          }
        }

        _Block_object_dispose(v42, 8);
        _Block_object_dispose(&v48, 8);
      }

      [(Task *)self completeWithSuccess];
    }

    else
    {
      [(Task *)self completeWithError:v37];
    }

    v14 = v37;
  }

  else
  {
    v14 = ASDErrorWithDescription();
    [(Task *)self completeWithError:v14];
  }
}

@end
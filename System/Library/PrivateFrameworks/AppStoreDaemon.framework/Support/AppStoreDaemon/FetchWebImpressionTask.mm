@interface FetchWebImpressionTask
- (FetchWebImpressionTask)initWithWebParams:(id)a3;
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation FetchWebImpressionTask

- (FetchWebImpressionTask)initWithWebParams:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = FetchWebImpressionTask;
  v6 = [(Task *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 50), a3);
    v8 = [InstallAttributionDatabaseStore alloc];
    v9 = sub_1001C0DF0();
    v10 = sub_1001C0FB8(v9);
    v11 = [(SQLiteDatabaseStore *)v8 initWithDatabase:v10];
    v12 = *(v7 + 58);
    *(v7 + 58) = v11;

    v13 = +[BagService appstoredService];
    v14 = [v13 lastBag];
    v15 = *(v7 + 66);
    *(v7 + 66) = v14;
  }

  return v7;
}

- (void)mainWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [NSSet setWithObjects:@"Accept-Language", 0];
  if (sub_1002B31B0(self))
  {
    if (!self)
    {
      goto LABEL_35;
    }

    v6 = [*(&self->_databaseStore + 2) URLForKey:@"install-attribution-postback-proxy-url"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 host];
      v9 = [v7 port];
      v69[0] = @"HTTPEnable";
      v69[1] = @"HTTPSEnable";
      *&buf = &off_1005479F8;
      *(&buf + 1) = &off_1005479F8;
      v69[2] = kCFStreamPropertyHTTPProxyPort;
      v69[3] = kCFStreamPropertyHTTPSProxyPort;
      v71 = v9;
      v72 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&buf forKeys:v69 count:4];
      v11 = v10;
      if (v8)
      {
        v12 = [v10 mutableCopy];
        [v12 setObject:v8 forKeyedSubscript:kCFStreamPropertyHTTPProxyHost];
        [v12 setObject:v8 forKeyedSubscript:kCFStreamPropertyHTTPSProxyHost];
        v13 = [v12 copy];

        v11 = v13;
      }

      v14 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
      [v14 setConnectionProxyDictionary:v11];
      [v14 set_preventsSystemHTTPProxyAuthentication:1];
      [v14 set_requiresSecureHTTPSProxyConnection:1];
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v68 = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not get install attribution postback proxy URL from the bag", v68, 2u);
      }

      v14 = 0;
    }

    if (!v14)
    {
LABEL_35:
      v14 = ASDErrorWithDescription();
      v34 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v14;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to send postback since proxy URL could not be found in the bag %{public}@", &buf, 0xCu);
      }

      v4[2](v4, v14);
      goto LABEL_76;
    }
  }

  else
  {
    v14 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    if (!v14)
    {
      v14 = ASDErrorWithDescription();
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error in creating URLSessionConfig", &buf, 2u);
      }

      v4[2](v4, v14);
      goto LABEL_76;
    }
  }

  [v14 set_suppressedAutoAddedHTTPHeaders:v5];
  v16 = [NSURLSession sessionWithConfiguration:v14 delegate:self delegateQueue:0];
  if (v16)
  {
    v17 = sub_1002AFB3C(*(&self->_webImpression + 2));
    v18 = [NSURL URLWithString:v17];

    if (os_variant_has_internal_content())
    {
      v19 = sub_1003D5CF8();

      if (v19)
      {
        v20 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SKAdNetwork: Web impression fetch URL override.", &buf, 2u);
        }

        v21 = sub_1003D5CF8();
        v22 = [NSURL URLWithString:v21];

        v18 = v22;
      }
    }

    if (!v18)
    {
      v35 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "SKAdNetwork: Web impression fetch URL is invalid.", &buf, 2u);
      }

      v63 = ASDErrorWithDescription();
      v4[2](v4, v63);
      goto LABEL_75;
    }

    v63 = [NSMutableURLRequest requestWithURL:v18];
    [v63 setHTTPMethod:@"POST"];
    v23 = objc_opt_new();
    [v23 setObject:@"click_to_App_Store" forKeyedSubscript:@"source_engagement_type"];
    v24 = *(&self->_webImpression + 2);
    if (v24)
    {
      v24 = v24[4];
    }

    v25 = v24;
    [v23 setObject:v25 forKeyedSubscript:@"source_domain"];

    v26 = *(&self->_webImpression + 2);
    if (v26)
    {
      v26 = v26[3];
    }

    v27 = v26;
    [v23 setObject:v27 forKeyedSubscript:@"source_nonce"];

    v28 = *(&self->_webImpression + 2);
    if (v28)
    {
      v28 = v28[5];
    }

    v29 = v28;
    [v23 setObject:v29 forKeyedSubscript:@"version"];

    v67 = 0;
    v62 = [NSJSONSerialization dataWithJSONObject:v23 options:1 error:&v67];
    v61 = v67;
    if (v61)
    {
      v30 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v61;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "SKAdNetwork: Web impression fetch serialization failed:%{public}@", &buf, 0xCu);
      }
    }

    else
    {
      if (v62)
      {
        [v63 setHTTPBody:?];
        [v63 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        v60 = v18;
        v57 = ASDErrorWithDescription();
        v36 = [v60 absoluteString];

        v37 = +[NSDate date];
        [v37 timeIntervalSince1970];
        v39 = [NSString stringWithFormat:@"%@%@;%f", @"App Store", v36, v38];;

        v59 = [v39 stringByRemovingPercentEncoding];

        if (v59)
        {
          v40 = [v59 dataUsingEncoding:4];
          v58 = v40;
          if (v40)
          {
            oslog = [v40 base64EncodedStringWithOptions:0];
            if ([oslog length])
            {
              v41 = +[BagService appstoredService];
              v42 = [v41 amsBag];
              v69[0] = 0;
              v54 = [AMSMescal signatureFromData:v58 type:1 bag:v42 error:v69];
              log = v69[0];

              if (log)
              {
                v43 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = log;
                  _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Problem with generating mescal signature %@", &buf, 0xCu);
                }

                v44 = 0;
              }

              else
              {
                v43 = [v54 base64EncodedStringWithOptions:0];
                v53 = [NSString stringWithFormat:@"%@:%@", oslog, v43];
                v46 = [v53 dataUsingEncoding:4];
                v44 = [v46 base64EncodedStringWithOptions:0];
              }
            }

            else
            {
              log = ASDLogHandleForCategory();
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v57;
                _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to generate signature %@", &buf, 0xCu);
              }

              v44 = 0;
            }
          }

          else
          {
            oslog = ASDLogHandleForCategory();
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v57;
              _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to generate signature %@", &buf, 0xCu);
            }

            v44 = 0;
          }

          v45 = v58;
        }

        else
        {
          v45 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v57;
            _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to generate signature %@", &buf, 0xCu);
          }

          v44 = 0;
        }

        v31 = [NSString stringWithFormat:@"Basic %@", v44];

        if (v31)
        {
          v47 = v31;

          [v63 setValue:v47 forHTTPHeaderField:@"Proxy-Authorization"];
        }

        else
        {
          v48 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v52 = [v60 absoluteString];
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v52;
            _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to generate proxy header for URL:%{public}@", &buf, 0xCu);
          }

          if (sub_1002B31B0(self))
          {
            v49 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Proxy auth header generation failed. Failing fetch.", &buf, 2u);
            }

            v50 = ASDErrorWithDescription();
            v4[2](v4, v50);

            v31 = 0;
            goto LABEL_74;
          }
        }

        objc_initWeak(&buf, self);
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_1002B3250;
        v64[3] = &unk_100520AD8;
        objc_copyWeak(&v66, &buf);
        v65 = v4;
        v51 = [v16 dataTaskWithRequest:v63 completionHandler:v64];
        [v51 resume];

        objc_destroyWeak(&v66);
        objc_destroyWeak(&buf);
LABEL_74:

LABEL_75:
        v14 = v16;
        goto LABEL_76;
      }

      v30 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "SKAdNetwork: Web impression serialization failed.", &buf, 2u);
      }
    }

    v31 = ASDErrorWithDescription();
    v4[2](v4, v31);
    goto LABEL_74;
  }

  v32 = ASDErrorWithDescription();
  v33 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to initialize url session", &buf, 2u);
  }

  v4[2](v4, v32);
LABEL_76:
}

@end
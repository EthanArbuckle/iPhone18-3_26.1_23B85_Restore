@interface BuddyActivationEngine
+ (id)cellularActivationEngineWithOverrideActivationURL:(id)l sessionURL:(id)rL usingBootstrap:(BOOL)bootstrap;
+ (id)wifiActivationEngineWithOverrideActivationURL:(id)l sessionURL:(id)rL;
- (BuddyActivationEngine)initWithOverrideActivationURL:(id)l sessionURL:(id)rL;
- (NSURLSession)session;
- (NSURLSessionConfiguration)sessionConfiguration;
- (id)_newActivationRequestWithOptions:(id)options sessionData:(id)data error:(id *)error;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
- (void)_addCommonHeaders:(id)headers;
- (void)_cleanup;
- (void)_sendSessionRequest:(id)request withOptions:(id)options;
- (void)cancel;
- (void)makeRequest:(id)request completion:(id)completion;
- (void)tryActivateWithOptions:(id)options requestMutator:(id)mutator completion:(id)completion;
@end

@implementation BuddyActivationEngine

+ (id)wifiActivationEngineWithOverrideActivationURL:(id)l sessionURL:(id)rL
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v9 = 0;
  objc_storeStrong(&v9, rL);
  v5 = [BuddyActivationEngine alloc];
  v8 = [(BuddyActivationEngine *)v5 initWithOverrideActivationURL:location[0] sessionURL:v9];
  v6 = v8;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v6;
}

+ (id)cellularActivationEngineWithOverrideActivationURL:(id)l sessionURL:(id)rL usingBootstrap:(BOOL)bootstrap
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v12 = 0;
  objc_storeStrong(&v12, rL);
  bootstrapCopy = bootstrap;
  v7 = [BuddyActivationEngine alloc];
  v10 = [(BuddyActivationEngine *)v7 initWithOverrideActivationURL:location[0] sessionURL:v12];
  [v10 setUseCellular:1];
  [v10 setUsingBootstrap:bootstrap];
  v8 = v10;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (BuddyActivationEngine)initWithOverrideActivationURL:(id)l sessionURL:(id)rL
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v13 = 0;
  objc_storeStrong(&v13, rL);
  v5 = selfCopy;
  selfCopy = 0;
  v12.receiver = v5;
  v12.super_class = BuddyActivationEngine;
  selfCopy = [(BuddyActivationEngine *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [selfCopy setOverrideActivationURL:location[0]];
    [selfCopy setOverrideSessionURL:v13];
    v6 = dispatch_queue_create("Telephony Client Queue", 0);
    [selfCopy setTelephonyClientQueue:v6];

    v7 = [CoreTelephonyClient alloc];
    telephonyClientQueue = [selfCopy telephonyClientQueue];
    v9 = [v7 initWithQueue:telephonyClientQueue];
    [selfCopy setTelephonyClient:v9];
  }

  v10 = selfCopy;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)cancel
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(BuddyActivationEngine *)self completion];
  v7 = selfCopy->_session != 0;
  [(BuddyActivationEngine *)selfCopy _cleanup];
  if (v7)
  {
    oslog = _BYLoggingFacility();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_impl(&_mh_execute_header, v2, v3, "Buddy Activate: Canceling any in-flight activation", v4, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0, 0, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_cleanup
{
  [(NSURLSession *)self->_session invalidateAndCancel];
  connectivityTimer = [(BuddyActivationEngine *)self connectivityTimer];
  [(NSTimer *)connectivityTimer invalidate];

  objc_storeStrong(&self->_session, 0);
  objc_storeStrong(&self->_activationData, 0);
  completion = self->_completion;
  self->_completion = 0;

  [(BuddyActivationEngine *)self setConnectivityTimer:0];
}

- (NSURLSession)session
{
  selfCopy = self;
  v43[1] = a2;
  if (!self->_session)
  {
    v43[0] = +[NSURLSessionConfiguration defaultSessionConfiguration];
    [v43[0] setWaitsForConnectivity:1];
    if (selfCopy->_useCellular)
    {
      [v43[0] set_CTDataConnectionServiceType:kCTDataConnectionServiceTypeOTAActivation];
      location = 0;
      v41 = 0;
      v40 = 0;
      telephonyClient = [(BuddyActivationEngine *)selfCopy telephonyClient];
      obj = 0;
      v3 = [(CoreTelephonyClient *)telephonyClient getPreferredDataSubscriptionContextSync:&obj];
      objc_storeStrong(&location, obj);
      v39 = v3;

      if (v39)
      {
        v37 = [[CTBundle alloc] initWithBundleType:1];
        telephonyClient2 = [(BuddyActivationEngine *)selfCopy telephonyClient];
        v36 = location;
        v5 = [(CoreTelephonyClient *)telephonyClient2 copyCarrierBundleValue:v39 key:@"OTAActivationProxyHost" bundleType:v37 error:&v36];
        objc_storeStrong(&location, v36);
        v6 = v41;
        v41 = v5;

        if (!v41 && location)
        {
          oslog = _BYLoggingFacility();
          v34 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            sub_10006AE18(buf, location);
            _os_log_impl(&_mh_execute_header, oslog, v34, "Failed to get proxy host from telephony: %@", buf, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
        }

        telephonyClient3 = [(BuddyActivationEngine *)selfCopy telephonyClient];
        v33 = location;
        v8 = [(CoreTelephonyClient *)telephonyClient3 copyCarrierBundleValue:v39 key:@"OTAActivationProxyPort" bundleType:v37 error:&v33];
        objc_storeStrong(&location, v33);
        v9 = v40;
        v40 = v8;

        if (!v40 && location)
        {
          v32 = _BYLoggingFacility();
          v31 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            sub_10006AE18(v49, location);
            _os_log_impl(&_mh_execute_header, v32, v31, "Failed to get proxy port from telephony: %@", v49, 0xCu);
          }

          objc_storeStrong(&v32, 0);
        }

        uuid = [v39 uuid];
        uUIDString = [uuid UUIDString];
        [v43[0] set_sourceApplicationSecondaryIdentifier:uUIDString];

        objc_storeStrong(&v37, 0);
      }

      else if (location)
      {
        v30 = _BYLoggingFacility();
        v29 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10006AE18(v48, location);
          _os_log_error_impl(&_mh_execute_header, v30, v29, "Failed to get data preferred subscription context: %@", v48, 0xCu);
        }

        objc_storeStrong(&v30, 0);
      }

      if (v41 && v40)
      {
        v46[0] = kCFStreamPropertyHTTPProxyHost;
        v47[0] = v41;
        v46[1] = kCFStreamPropertyHTTPProxyPort;
        v47[1] = v40;
        v46[2] = kCFStreamPropertyHTTPSProxyHost;
        v47[2] = v41;
        v46[3] = kCFStreamPropertyHTTPSProxyPort;
        v47[3] = v40;
        v28 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:4];

        [v43[0] setConnectionProxyDictionary:v28];
        v27 = _BYLoggingFacility();
        v26 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          sub_10006AE18(v45, v28);
          _os_log_impl(&_mh_execute_header, v27, v26, "Set Proxy Settings %@", v45, 0xCu);
        }

        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v28, 0);
      }

      else
      {
        v25 = _BYLoggingFacility();
        v24 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v25;
          v13 = v24;
          sub_10006AA68(v23);
          _os_log_impl(&_mh_execute_header, v12, v13, "No Proxy Settings Detected!", v23, 2u);
        }

        objc_storeStrong(&v25, 0);
      }

      if (v40)
      {
        if ([v40 integerValue] == 443)
        {
          v14 = +[BuddyActivationConfiguration currentConfiguration];
          cellularActivationMethod = [v14 cellularActivationMethod];

          if (cellularActivationMethod == 1)
          {
            [v43[0] set_requiresSecureHTTPSProxyConnection:1];
          }
        }
      }

      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&location, 0);
    }

    v16 = v43[0];
    v17 = selfCopy;
    v18 = +[NSOperationQueue mainQueue];
    v19 = [NSURLSession sessionWithConfiguration:v16 delegate:v17 delegateQueue:v18];
    session = selfCopy->_session;
    selfCopy->_session = v19;

    objc_storeStrong(v43, 0);
  }

  v21 = selfCopy->_session;

  return v21;
}

- (NSURLSessionConfiguration)sessionConfiguration
{
  v2 = [(BuddyActivationEngine *)self session:a2];
  configuration = [(NSURLSession *)v2 configuration];

  return configuration;
}

- (id)_newActivationRequestWithOptions:(id)options sessionData:(id)data error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v81 = 0;
  objc_storeStrong(&v81, data);
  errorCopy = error;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v7 = _BYSignpostSubsystem();
  v8 = _BYSignpostCreate();
  v75 = v9;
  v74 = v8;

  log = _BYSignpostSubsystem();
  v72 = 1;
  v71 = v74;
  if (v74 && v71 != -1 && os_signpost_enabled(log))
  {
    v10 = log;
    v11 = v72;
    v12 = v71;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v12, "ActivationCreateActivationRequest", "", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  v68 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(v91, v74);
    _os_log_impl(&_mh_execute_header, oslog, v68, "BEGIN [%lld]: ActivationCreateActivationRequest ", v91, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v76 = v74;
  v77 = v75;
  obj = v79;
  v66 = v78;
  v13 = MAECreateActivationRequestWithError();
  objc_storeStrong(&v79, obj);
  objc_storeStrong(&v78, v66);
  if (v13)
  {
    v58 = _BYSignpostGetNanoseconds() / 1000000000.0;
    v57 = _BYSignpostSubsystem();
    v56 = 2;
    v55 = v76;
    if (v76 && v55 != -1 && os_signpost_enabled(v57))
    {
      v16 = v57;
      v17 = v56;
      v18 = v55;
      sub_10006AA68(v54);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v18, "ActivationCreateActivationRequest", "", v54, 2u);
    }

    objc_storeStrong(&v57, 0);
    v53 = _BYSignpostSubsystem();
    v52 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000CE794(v89, v76, *&v58);
      _os_log_impl(&_mh_execute_header, v53, v52, "END [%lld] %fs: ActivationCreateActivationRequest ", v89, 0x16u);
    }

    objc_storeStrong(&v53, 0);
    v51 = [v79 valueForHTTPHeaderField:@"User-Agent"];
    v19 = selfCopy;
    v20 = sub_100195EC4();
    v21 = [v20 stringByAppendingFormat:@" %@", v51];
    [(BuddyActivationEngine *)v19 setUserAgent:v21];

    v50 = _BYLoggingFacility();
    v49 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [v79 URL];
      sub_10006AE18(v88, v48);
      _os_log_impl(&_mh_execute_header, v50, v49, "Setting override URL with old URL: %@", v88, 0xCu);

      objc_storeStrong(&v48, 0);
    }

    objc_storeStrong(&v50, 0);
    if (selfCopy->_overrideActivationURL)
    {
      [v79 setURL:selfCopy->_overrideActivationURL];
    }

    v22 = v79;
    userAgent = [(BuddyActivationEngine *)selfCopy userAgent];
    [v22 setValue:userAgent forHTTPHeaderField:@"User-Agent"];

    v24 = +[NSLocale _deviceLanguage];
    v87 = v24;
    v25 = [NSArray arrayWithObjects:&v87 count:1];
    v26 = [NSLocale minimizedLanguagesFromLanguages:v25];
    v47 = [v26 componentsJoinedByString:{@", "}];

    v46 = _BYLoggingFacility();
    v45 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v86, v47);
      _os_log_impl(&_mh_execute_header, v46, v45, "Accepted languages: %@", v86, 0xCu);
    }

    objc_storeStrong(&v46, 0);
    [v79 setValue:v47 forHTTPHeaderField:@"Accept-Language"];
    v43 = 0;
    v41 = 0;
    v27 = 0;
    if (os_variant_allows_internal_security_policies())
    {
      v44 = [v79 URL];
      v43 = 1;
      absoluteString = [v44 absoluteString];
      v41 = 1;
      v27 = [absoluteString hasSuffix:@"/deviceActivation"];
    }

    if (v41)
    {
    }

    if (v43)
    {
    }

    if (v27)
    {
      v28 = +[NSUserDefaults standardUserDefaults];
      v40 = [(NSUserDefaults *)v28 dictionaryForKey:@"CustomActivationHeaders"];

      memset(__b, 0, sizeof(__b));
      v29 = v40;
      v30 = [v29 countByEnumeratingWithState:__b objects:v85 count:16];
      if (v30)
      {
        v31 = *__b[2];
        do
        {
          for (i = 0; i < v30; ++i)
          {
            if (*__b[2] != v31)
            {
              objc_enumerationMutation(v29);
            }

            v39 = *(__b[1] + 8 * i);
            v33 = v79;
            v34 = [v40 objectForKeyedSubscript:v39];
            [v33 setValue:v34 forHTTPHeaderField:v39];
          }

          v30 = [v29 countByEnumeratingWithState:__b objects:v85 count:16];
        }

        while (v30);
      }

      objc_storeStrong(&v40, 0);
    }

    if (selfCopy->_allowAnyHTTPSCertificate)
    {
      v35 = [v79 URL];
      host = [v35 host];
      [NSURLRequest setAllowsAnyHTTPSCertificate:1 forHost:host];
    }

    [(BuddyActivationEngine *)selfCopy _addCommonHeaders:v79];
    v84 = v79;
    v59 = 1;
    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v51, 0);
  }

  else
  {
    v65 = _BYLoggingFacility();
    v64 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v62 = 0;
      v60 = 0;
      if (_BYIsInternalInstall())
      {
        v14 = v78;
      }

      else if (v78)
      {
        domain = [v78 domain];
        v62 = 1;
        v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v78 code]);
        v61 = v14;
        v60 = 1;
      }

      else
      {
        v14 = 0;
      }

      sub_100071CBC(v90, v14);
      _os_log_impl(&_mh_execute_header, v65, v64, "Buddy Activate: Failed to create activation request: %{public}@", v90, 0xCu);
      if (v60)
      {
      }

      if (v62)
      {
      }
    }

    objc_storeStrong(&v65, 0);
    if (errorCopy)
    {
      v15 = v78;
      *errorCopy = v15;
    }

    v84 = 0;
    v59 = 1;
  }

  objc_storeStrong(&v78, 0);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(location, 0);
  return v84;
}

- (void)_sendSessionRequest:(id)request withOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v38 = 0;
  objc_storeStrong(&v38, options);
  v37 = 0uLL;
  v5 = _BYSignpostSubsystem();
  *&v36 = _BYSignpostCreate();
  *(&v36 + 1) = v6;

  v35 = _BYSignpostSubsystem();
  v34 = 1;
  v33 = v36;
  if (v36 && v33 != -1 && os_signpost_enabled(v35))
  {
    v7 = v35;
    v8 = v34;
    v9 = v33;
    sub_10006AA68(&buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, v9, "ActivationSendRequest", "", &buf, 2u);
  }

  objc_storeStrong(&v35, 0);
  v31 = _BYSignpostSubsystem();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(v42, v36);
    _os_log_impl(&_mh_execute_header, v31, v30, "BEGIN [%lld]: ActivationSendRequest ", v42, 0xCu);
  }

  objc_storeStrong(&v31, 0);
  v37 = v36;
  v23 = 0;
  v24 = &v23;
  v25 = 838860800;
  v26 = 48;
  v27 = sub_100209A2C;
  v28 = sub_100209A70;
  v29 = 0;
  session = [(BuddyActivationEngine *)selfCopy session];
  v11 = location[0];
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_100209A7C;
  v19 = &unk_10032F2A8;
  v22 = v37;
  v20 = selfCopy;
  v21[0] = v38;
  v21[1] = &v23;
  v12 = [(NSURLSession *)session dataTaskWithRequest:v11 completionHandler:&v15];
  v13 = v24[5];
  v24[5] = v12;

  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100071CBC(v41, v24[5]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Buddy Activation: Created session data task: %{public}@", v41, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [v24[5] resume];
  _Block_object_dispose(&v23, 8);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

- (void)tryActivateWithOptions:(id)options requestMutator:(id)mutator completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v18 = 0;
  objc_storeStrong(&v18, mutator);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  [(BuddyActivationEngine *)selfCopy setCompletion:v17];
  objc_storeStrong(&selfCopy->_activationData, 0);
  v7 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10020AABC;
  v12 = &unk_10032F2D0;
  v15 = v17;
  v13 = selfCopy;
  v16 = v18;
  v14 = location[0];
  dispatch_async(v7, &block);

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)makeRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v32 = 0;
  objc_storeStrong(&v32, completion);
  v31 = [location[0] mutableCopy];
  userAgent = [(BuddyActivationEngine *)selfCopy userAgent];
  [v31 setValue:userAgent forHTTPHeaderField:@"User-Agent"];

  objc_storeStrong(&selfCopy->_activationRequest, v31);
  v30 = 0;
  v29 = 0;
  v6 = _BYSignpostSubsystem();
  v7 = _BYSignpostCreate();
  v28 = v8;
  v27 = v7;

  log = _BYSignpostSubsystem();
  v25 = 1;
  v24 = v27;
  if (v27 && v24 != -1 && os_signpost_enabled(log))
  {
    v9 = log;
    v10 = v25;
    v11 = v24;
    sub_10006AA68(buf);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v11, "ActivationSendRequest", "", buf, 2u);
  }

  objc_storeStrong(&log, 0);
  oslog = _BYSignpostSubsystem();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(v36, v27);
    _os_log_impl(&_mh_execute_header, oslog, v21, "BEGIN [%lld]: ActivationSendRequest ", v36, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v29 = v27;
  v30 = v28;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_10020B4B8;
  v19 = &unk_10032F280;
  v20[1] = v27;
  v20[2] = v28;
  v20[0] = v32;
  [(BuddyActivationEngine *)selfCopy setCompletion:&v15];
  session = [(BuddyActivationEngine *)selfCopy session];
  v14 = [(NSURLSession *)session dataTaskWithRequest:selfCopy->_activationRequest];

  v13 = _BYLoggingFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sub_100071CBC(v35, v14);
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Buddy Activation: Created arbitrary data task: %{public}@", v35, 0xCu);
  }

  objc_storeStrong(&v13, 0);
  [v14 resume];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v20, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

- (void)_addCommonHeaders:(id)headers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  v5 = 0;
  if ([(BuddyActivationEngine *)selfCopy useCellular])
  {
    if ([(BuddyActivationEngine *)selfCopy usingBootstrap])
    {
      objc_storeStrong(&v5, &off_10033D038);
    }

    else
    {
      objc_storeStrong(&v5, &off_10033D060);
    }
  }

  if ([v5 count])
  {
    allHTTPHeaderFields = [location[0] allHTTPHeaderFields];
    v4 = [allHTTPHeaderFields mutableCopy];

    [v4 addEntriesFromDictionary:v5];
    [location[0] setAllHTTPHeaderFields:v4];
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v22 = 0;
  objc_storeStrong(&v22, task);
  v21 = 0;
  objc_storeStrong(&v21, response);
  v20 = 0;
  objc_storeStrong(&v20, handler);
  oslog = _BYLoggingFacility();
  v18 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10006AE18(buf, v21);
    _os_log_debug_impl(&_mh_execute_header, oslog, v18, "Session received response: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  connectivityTimer = [(BuddyActivationEngine *)selfCopy connectivityTimer];

  if (connectivityTimer)
  {
    v17 = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v17;
      v11 = v16;
      sub_10006AA68(v15);
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalidating connectivity timer...", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    connectivityTimer2 = [(BuddyActivationEngine *)selfCopy connectivityTimer];
    [(NSTimer *)connectivityTimer2 invalidate];

    [(BuddyActivationEngine *)selfCopy setConnectivityTimer:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = selfCopy;
    allHeaderFields = [v21 allHeaderFields];
    [(BuddyActivationEngine *)v13 setResponseHeaders:allHeaderFields];
  }

  else
  {
    [(BuddyActivationEngine *)selfCopy setResponseHeaders:0];
  }

  if (v20)
  {
    (*(v20 + 2))(v20, 1);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v11 = 0;
  objc_storeStrong(&v11, task);
  v10 = 0;
  objc_storeStrong(&v10, data);
  if (location[0] == selfCopy->_session)
  {
    if (selfCopy->_activationData)
    {
      [(NSMutableData *)selfCopy->_activationData appendData:v10];
    }

    else
    {
      v7 = [NSMutableData alloc];
      v8 = [v7 initWithData:v10];
      activationData = selfCopy->_activationData;
      selfCopy->_activationData = v8;
    }
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v24 = 0;
  objc_storeStrong(&v24, task);
  v23 = 0;
  objc_storeStrong(&v23, error);
  oslog = _BYLoggingFacility();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v24;
    v8 = [(NSMutableData *)selfCopy->_activationData length];
    v19 = 0;
    v17 = 0;
    if (_BYIsInternalInstall())
    {
      v9 = v23;
    }

    else if (v23)
    {
      domain = [v23 domain];
      v19 = 1;
      v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v23 code]);
      v18 = v9;
      v17 = 1;
    }

    else
    {
      v9 = 0;
    }

    sub_100073590(buf, v7, v8, v9);
    _os_log_impl(&_mh_execute_header, oslog, v21, "Task %{public}@ completed with activationData length = %llu, error: %{public}@", buf, 0x20u);
    if (v17)
    {
    }

    if (v19)
    {
    }
  }

  objc_storeStrong(&oslog, 0);
  if (location[0] == selfCopy->_session)
  {
    completion = [(BuddyActivationEngine *)selfCopy completion];

    if (completion)
    {
      v16 = [(NSMutableData *)selfCopy->_activationData copy];
      responseHeaders = [(BuddyActivationEngine *)selfCopy responseHeaders];
      v15 = [(NSDictionary *)responseHeaders copy];

      completion2 = [(BuddyActivationEngine *)selfCopy completion];
      [(BuddyActivationEngine *)selfCopy _cleanup];
      response = [v24 response];
      v13 = [response URL];
      (*(completion2 + 2))(completion2, v16, v15, v13, v23);

      objc_storeStrong(&completion2, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v25 = 0;
  objc_storeStrong(&v25, task);
  v24 = 0;
  objc_storeStrong(&v24, redirection);
  v23 = 0;
  objc_storeStrong(&v23, request);
  v22 = 0;
  objc_storeStrong(&v22, handler);
  statusCode = [v24 statusCode];
  oslog = _BYLoggingFacility();
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10020C1D0(buf, statusCode, v24, v23);
    _os_log_debug_impl(&_mh_execute_header, oslog, v19, "Activate: Will redirect, code %i: %@, new request: %@", buf, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  v17 = 0;
  v11 = 0;
  if (v24)
  {
    v11 = 0;
    if (statusCode == 302)
    {
      v11 = 0;
      if (selfCopy->_activationRequest)
      {
        hTTPBody = [(NSURLRequest *)selfCopy->_activationRequest HTTPBody];
        v17 = 1;
        v11 = hTTPBody != 0;
      }
    }
  }

  if (v17)
  {
  }

  if (v11)
  {
    obj = [v23 mutableCopy];
    [obj setHTTPMethod:@"POST"];
    v12 = [(NSURLRequest *)selfCopy->_activationRequest valueForHTTPHeaderField:@"Content-Type"];
    [obj setValue:v12 forHTTPHeaderField:@"Content-Type"];

    v13 = [(NSURLRequest *)selfCopy->_activationRequest valueForHTTPHeaderField:@"Content-Length"];
    [obj setValue:v13 forHTTPHeaderField:@"Content-Length"];

    userAgent = [(BuddyActivationEngine *)selfCopy userAgent];
    [obj setValue:userAgent forHTTPHeaderField:@"User-Agent"];

    hTTPBody2 = [(NSURLRequest *)selfCopy->_activationRequest HTTPBody];
    [obj setHTTPBody:hTTPBody2];

    objc_storeStrong(&v23, obj);
    objc_storeStrong(&obj, 0);
  }

  if (location[0] == selfCopy->_session && selfCopy->_activationRequest != v23)
  {
    [(BuddyActivationEngine *)selfCopy setActivationRequest:v23];
  }

  if (v22)
  {
    (*(v22 + 2))(v22, v23);
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v17 = 0;
  objc_storeStrong(&v17, connectivity);
  v16 = 15.0;
  if (selfCopy->_useCellular)
  {
    v5 = +[BuddyActivationConfiguration currentConfiguration];
    cellularActivationMethod = [v5 cellularActivationMethod];

    if (cellularActivationMethod == 1)
    {
      v16 = 60.0;
    }
  }

  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, *&v16);
    _os_log_impl(&_mh_execute_header, oslog, v14, "Waiting %0.f seconds for connectivity for activation...", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v7 = v16;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10020C434;
  v12 = &unk_10032CAC0;
  v13 = v17;
  v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v9 block:v7];
  [(BuddyActivationEngine *)selfCopy setConnectivityTimer:v8, v9, v10, v11, v12];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

@end
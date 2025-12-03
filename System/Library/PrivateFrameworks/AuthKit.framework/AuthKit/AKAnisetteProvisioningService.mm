@interface AKAnisetteProvisioningService
- (AKAnisetteProvisioningService)initWithClient:(id)client;
- (AKAnisetteProvisioningService)initWithClient:(id)client authenticationContext:(id)context;
- (AKAnisetteProvisioningService)initWithClient:(id)client context:(id)context;
- (id)_clientAnisetteService;
- (id)_helperServiceForDevice:(id)device;
- (id)_nativeAnisetteService;
- (id)anisetteDataForDevice:(id)device provisionIfNecessary:(BOOL)necessary;
- (void)_attestationDataForRequestData:(id)data completion:(id)completion;
- (void)_fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary device:(id)device completion:(id)completion;
- (void)absintheSignatureForData:(id)data completion:(id)completion;
- (void)attestationDataForDevice:(id)device withRequest:(id)request completion:(id)completion;
- (void)attestationDataForRequestData:(id)data completion:(id)completion;
- (void)eraseAnisetteForDevice:(id)device completion:(id)completion;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary device:(id)device completion:(id)completion;
- (void)legacyAnisetteDataForDSID:(id)d device:(id)device completion:(id)completion;
- (void)postAttestationAnalyticsWithData:(id)data completion:(id)completion;
- (void)provisionAnisetteForDevice:(id)device completion:(id)completion;
- (void)refreshBAADeviceTokenWithCompletion:(id)completion;
- (void)resetDeviceIdentityWithCompletion:(id)completion;
- (void)setTimeAdjustmentWithServerTime:(id)time completion:(id)completion;
- (void)signaturesForData:(id)data options:(id)options completion:(id)completion;
- (void)syncAnisetteWithSIMData:(id)data device:(id)device completion:(id)completion;
@end

@implementation AKAnisetteProvisioningService

- (id)_nativeAnisetteService
{
  if (!self->_nativeAnisetteService)
  {
    v2 = [[AKNativeAnisetteService alloc] initWithClient:self->_client];
    nativeAnisetteService = self->_nativeAnisetteService;
    self->_nativeAnisetteService = v2;
    _objc_release(nativeAnisetteService);
  }

  v4 = self->_nativeAnisetteService;

  return v4;
}

- (AKAnisetteProvisioningService)initWithClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v3 = selfCopy;
  selfCopy = 0;
  v10.receiver = v3;
  v10.super_class = AKAnisetteProvisioningService;
  selfCopy = [(AKAnisetteProvisioningService *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_client, location[0]);
    v4 = +[AKAbsintheSigner sharedSigner];
    absintheSigner = selfCopy->_absintheSigner;
    selfCopy->_absintheSigner = v4;
    _objc_release(absintheSigner);
    v6 = +[AKAttestationSigner sharedSigner];
    attestationSigner = selfCopy->_attestationSigner;
    selfCopy->_attestationSigner = v6;
    _objc_release(attestationSigner);
  }

  v9 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (AKAnisetteProvisioningService)initWithClient:(id)client context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v9 = 0;
  objc_storeStrong(&v9, context);
  v4 = selfCopy;
  selfCopy = 0;
  v8 = [(AKAnisetteProvisioningService *)v4 initWithClient:location[0]];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_context, v9);
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKAnisetteProvisioningService)initWithClient:(id)client authenticationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v10 = 0;
  objc_storeStrong(&v10, context);
  v4 = [AKAppleIDAuthenticationContext alloc];
  v9 = [v4 initWithContext:v10];
  v5 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKAnisetteProvisioningService *)v5 initWithClient:location[0] context:v9];
  v8 = _objc_retain(selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (id)anisetteDataForDevice:(id)device provisionIfNecessary:(BOOL)necessary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  necessaryCopy = necessary;
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = sub_100003A34;
  v23 = sub_100011200;
  v24 = 0;
  v17 = dispatch_semaphore_create(0);
  v9 = selfCopy;
  v7 = necessaryCopy;
  v8 = location[0];
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000FC6E0;
  v14 = &unk_100323510;
  v15 = _objc_retain(location[0]);
  v16[1] = &v18;
  v16[0] = _objc_retain(v17);
  [(AKAnisetteProvisioningService *)v9 fetchAnisetteDataAndProvisionIfNecessary:v7 device:v8 completion:&v10];
  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  v5 = _objc_retain(v19[5]);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  _Block_object_dispose(&v18, 8);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)attestationDataForDevice:(id)device withRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v16 = 0;
  objc_storeStrong(&v16, request);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10004DCC8(v21, selfCopy, location[0], v16);
    _os_log_debug_impl(&_mh_execute_header, oslog, type, "%@: Fetching attestation data for device (%@) with request (%@)", v21, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  v12 = [(AKAnisetteProvisioningService *)selfCopy _helperServiceForDevice:location[0]];
  if (objc_opt_respondsToSelector())
  {
    v11 = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v20, selfCopy, v12);
      _os_log_impl(&_mh_execute_header, v11, v10, "%@: Calling anisette service (%@) for peer attestation data", v20, 0x16u);
    }

    objc_storeStrong(&v11, 0);
    [v12 fetchPeerAttestationDataForRequest:v16 completion:v15];
  }

  else
  {
    v9 = _AKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100034214(v19, selfCopy, location[0], v16, v12);
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@: Unable to grab attestation data for device (%@) with request (%@) using anisette service (%@)", v19, 0x2Au);
    }

    objc_storeStrong(&v9, 0);
    v5 = v15;
    v6 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8009 userInfo:0];
    v5[2](v5, 0);
    _objc_release(v6);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)attestationDataForRequestData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v12 = 0;
  objc_storeStrong(&v12, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    [(AKAnisetteProvisioningService *)selfCopy _attestationDataForRequestData:location[0] completion:v12];
  }

  else
  {
    v11 = _AKTrafficLogSubsystem();
    v10 = 16;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      log = v11;
      type = v10;
      sub_10001CEEC(v9);
      _os_log_error_impl(&_mh_execute_header, log, type, "Denied access to Anisette data to non-internal client.", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    v4 = v12;
    v5 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v4[2](v4, 0);
    _objc_release(v5);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_attestationDataForRequestData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  _nativeAnisetteService = [(AKAnisetteProvisioningService *)selfCopy _nativeAnisetteService];
  [_nativeAnisetteService fetchAttestationDataForRequestData:location[0] completion:v6];
  _objc_release(_nativeAnisetteService);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setTimeAdjustmentWithServerTime:(id)time completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, time);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v4 = +[AKBAATimeProvider sharedInstance];
    v5 = [(AKBAATimeProvider *)v4 addServerAdjustment:location[0]];
    _objc_release(v4);
    (*(v14 + 2))(v14, v5, 0);
  }

  else
  {
    v13 = _AKTrafficLogSubsystem();
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      sub_10001CEEC(v11);
      _os_log_error_impl(&_mh_execute_header, log, type, "Denied access to set time adjustment to non-internal client.", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    v6 = v14;
    v7 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v6[2](v6, 3);
    _objc_release(v7);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary device:(id)device completion:(id)completion
{
  selfCopy = self;
  v16 = a2;
  necessaryCopy = necessary;
  location = 0;
  objc_storeStrong(&location, device);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    [(AKAnisetteProvisioningService *)selfCopy _fetchAnisetteDataAndProvisionIfNecessary:necessaryCopy device:location completion:v13];
  }

  else
  {
    v12 = _AKTrafficLogSubsystem();
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      sub_10001CEEC(v10);
      _os_log_error_impl(&_mh_execute_header, log, type, "Denied access to Anisette data to non-internal client.", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    v5 = v13;
    v6 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v5[2](v5, 0);
    _objc_release(v6);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

- (void)resetDeviceIdentityWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    _nativeAnisetteService = [(AKAnisetteProvisioningService *)selfCopy _nativeAnisetteService];
    [_nativeAnisetteService resetDeviceIdentityWithCompletion:location[0]];
    _objc_release(_nativeAnisetteService);
  }

  else
  {
    v10 = _AKTrafficLogSubsystem();
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      sub_10001CEEC(v8);
      _os_log_error_impl(&_mh_execute_header, log, type, "Denied access to reset anisette data to non-internal client.", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
    v4 = location[0];
    v5 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v4[2]();
    _objc_release(v5);
  }

  objc_storeStrong(location, 0);
}

- (void)refreshBAADeviceTokenWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v7 = +[AKBAADeviceTokenController sharedTokenController];
    [(AKBAADeviceTokenController *)v7 refreshBAADeviceTokenWithCompletionHandler:location[0]];
    objc_storeStrong(&v7, 0);
    v8 = 0;
  }

  else
  {
    v11 = _AKTrafficLogSubsystem();
    v10 = 16;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      log = v11;
      type = v10;
      sub_10001CEEC(v9);
      _os_log_error_impl(&_mh_execute_header, log, type, "Denied access to refresh BAA device token to non-internal client.", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    v3 = location[0];
    v4 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v3[2]();
    _objc_release(v4);
    v8 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)postAttestationAnalyticsWithData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v46 = 0;
  objc_storeStrong(&v46, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v25 = +[AKDevice currentDevice];
    v40 = 0;
    v26 = 1;
    if ([v25 isInternalBuild])
    {
      v41 = +[AKDevice currentDevice];
      v40 = 1;
      v26 = [v41 isVirtualMachine] == 0;
    }

    if (v40)
    {
      _objc_release(v41);
    }

    _objc_release(v25);
    if (v26)
    {
      (*(v46 + 2))(v46, 0);
      v42 = 1;
    }

    else
    {
      v23 = +[AKConfiguration sharedConfiguration];
      lastKnownIDMSEnvironment = [v23 lastKnownIDMSEnvironment];
      _objc_release(v23);
      v39[1] = lastKnownIDMSEnvironment;
      if (lastKnownIDMSEnvironment)
      {
        v39[0] = _AKLogSystem();
        v38 = 2;
        if (os_log_type_enabled(v39[0], OS_LOG_TYPE_DEBUG))
        {
          log = v39[0];
          type = v38;
          sub_10001CEEC(v37);
          _os_log_debug_impl(&_mh_execute_header, log, type, "Attestation reporting is not supported for non-prod environments", v37, 2u);
        }

        objc_storeStrong(v39, 0);
        (*(v46 + 2))(v46, 0);
        v42 = 1;
      }

      else
      {
        v36 = 0;
        v35 = [AAFAnalyticsEvent ak_analyticsEventWithEventName:@"com.apple.authkit.baa.stats" error:0];
        name = [(AKClient *)selfCopy->_client name];
        [v35 setObject:? forKeyedSubscript:?];
        _objc_release(name);
        endPointVIP = [location[0] endPointVIP];
        v20 = [endPointVIP length];
        _objc_release(endPointVIP);
        if (v20)
        {
          endPointVIP2 = [location[0] endPointVIP];
          [v35 setObject:? forKeyedSubscript:?];
          _objc_release(endPointVIP2);
        }

        requestMethod = [location[0] requestMethod];
        v16 = [requestMethod length];
        _objc_release(requestMethod);
        if (v16)
        {
          requestMethod2 = [location[0] requestMethod];
          [v35 setObject:? forKeyedSubscript:?];
          _objc_release(requestMethod2);
        }

        if ([location[0] headerSize])
        {
          v36 = 1;
          v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] headerSize]);
          v12 = [(NSNumber *)v11 ak_bucketWithSize:500];
          _objc_release(v11);
          v34[2] = v12;
          v13 = [NSNumber numberWithInteger:v12];
          [v35 setObject:? forKeyedSubscript:?];
          _objc_release(v13);
        }

        if ([location[0] bodySize])
        {
          v36 = 1;
          v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] bodySize]);
          v9 = [(NSNumber *)v8 ak_bucketWithSize:1000];
          _objc_release(v8);
          v34[1] = v9;
          v10 = [NSNumber numberWithInteger:v9];
          [v35 setObject:? forKeyedSubscript:?];
          _objc_release(v10);
        }

        if ([location[0] errorCode] > 0)
        {
          v36 = 1;
          errorDomain = [location[0] errorDomain];
          v7 = 1;
          if (!errorDomain)
          {
            v7 = [location[0] errorCode] != 0;
          }

          _objc_release(errorDomain);
          if (v7)
          {
            errorDomain2 = [location[0] errorDomain];
            v34[0] = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", errorDomain2, [location[0] errorCode]);
            _objc_release(errorDomain2);
            [v35 populateUnderlyingErrorsStartingWithRootError:v34[0]];
            objc_storeStrong(v34, 0);
          }
        }

        if (v36)
        {
          v33 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
          [v33 sendEvent:v35];
          v32 = _AKLogSystem();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            reportData = [v35 reportData];
            sub_1000194D4(v49, reportData);
            _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Finish Aurora reporting for BAA attestation response. Reportdata - %@", v49, 0xCu);
            _objc_release(reportData);
          }

          objc_storeStrong(&v32, 0);
          objc_storeStrong(&v33, 0);
        }

        (*(v46 + 2))();
        objc_storeStrong(&v35, 0);
        v42 = 0;
      }
    }
  }

  else
  {
    v45 = _AKTrafficLogSubsystem();
    v44 = 16;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v29 = v45;
      v30 = v44;
      sub_10001CEEC(v43);
      _os_log_error_impl(&_mh_execute_header, v29, v30, "Denied access to post analytics data to non-internal client.", v43, 2u);
    }

    objc_storeStrong(&v45, 0);
    v27 = v46;
    v28 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v27[2]();
    _objc_release(v28);
    v42 = 1;
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
}

- (void)_fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary device:(id)device completion:(id)completion
{
  selfCopy = self;
  v13 = a2;
  necessaryCopy = necessary;
  location = 0;
  objc_storeStrong(&location, device);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  v9 = [(AKAnisetteProvisioningService *)selfCopy _helperServiceForDevice:location];
  if (v9)
  {
    [v9 fetchAnisetteDataAndProvisionIfNecessary:necessaryCopy withCompletion:v10];
  }

  else
  {
    oslog = _AKTrafficLogSubsystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v15, location);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Invalid target %@ for fetching Anisette data.", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v5 = v10;
    v6 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8013 userInfo:0];
    v5[2](v5, 0);
    _objc_release(v6);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

- (void)legacyAnisetteDataForDSID:(id)d device:(id)device completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v20 = 0;
  objc_storeStrong(&v20, device);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v14 = [(AKAnisetteProvisioningService *)selfCopy _helperServiceForDevice:v20];
    if (v14)
    {
      [v14 legacyAnisetteDataForDSID:location[0] withCompletion:v19];
    }

    else
    {
      v13 = _AKLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v23, v20);
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid target %@ for fetching legacy Anisette data.", v23, 0xCu);
      }

      objc_storeStrong(&v13, 0);
      v5 = v19;
      v6 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8013 userInfo:0];
      v5[2](v5, 0);
      _objc_release(v6);
    }

    objc_storeStrong(&v14, 0);
    v15 = 0;
  }

  else
  {
    v18 = _AKLogSystem();
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      sub_10001CEEC(v16);
      _os_log_error_impl(&_mh_execute_header, log, type, "Denied access to Anisette data to non-internal client.", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    v7 = v19;
    v8 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v7[2](v7, 0);
    _objc_release(v8);
    v15 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)provisionAnisetteForDevice:(id)device completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v12 = [(AKAnisetteProvisioningService *)selfCopy _helperServiceForDevice:location[0]];
    if (v12)
    {
      [v12 provisionAnisetteWithCompletion:v17];
    }

    else
    {
      v11 = _AKLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v20, location[0]);
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid target %@ for provisioning Anisette data.", v20, 0xCu);
      }

      objc_storeStrong(&v11, 0);
      v4 = v17;
      v5 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8013 userInfo:0];
      v4[2](v4, 0);
      _objc_release(v5);
    }

    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      sub_10001CEEC(v14);
      _os_log_error_impl(&_mh_execute_header, log, type, "Client lacks entitlement to provision Anisette!", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v6 = v17;
    v7 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v6[2](v6, 0);
    _objc_release(v7);
    v13 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)syncAnisetteWithSIMData:(id)data device:(id)device completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v20 = 0;
  objc_storeStrong(&v20, device);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v14 = [(AKAnisetteProvisioningService *)selfCopy _helperServiceForDevice:v20];
    if (v14)
    {
      [v14 syncAnisetteWithSIMData:location[0] completion:v19];
    }

    else
    {
      v13 = _AKLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v23, v20);
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid target %@ for resyncing Anisette data.", v23, 0xCu);
      }

      objc_storeStrong(&v13, 0);
      v5 = v19;
      v6 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8013 userInfo:0];
      v5[2](v5, 0);
      _objc_release(v6);
    }

    objc_storeStrong(&v14, 0);
    v15 = 0;
  }

  else
  {
    v18 = _AKLogSystem();
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      sub_10001CEEC(v16);
      _os_log_error_impl(&_mh_execute_header, log, type, "Client lacks entitlement to resync Anisette info!", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    v7 = v19;
    v8 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v7[2](v7, 0);
    _objc_release(v8);
    v15 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)eraseAnisetteForDevice:(id)device completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v12 = [(AKAnisetteProvisioningService *)selfCopy _helperServiceForDevice:location[0]];
    if (v12)
    {
      [v12 eraseAnisetteWithCompletion:v17];
    }

    else
    {
      v11 = _AKLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v20, location[0]);
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid target %@ for erasing Anisette data.", v20, 0xCu);
      }

      objc_storeStrong(&v11, 0);
      v4 = v17;
      v5 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8013 userInfo:0];
      v4[2](v4, 0);
      _objc_release(v5);
    }

    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      sub_10001CEEC(v14);
      _os_log_error_impl(&_mh_execute_header, log, type, "Client lacks entitlement to erase Anisette provisioning!", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v6 = v17;
    v7 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v6[2](v6, 0);
    _objc_release(v7);
    v13 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (id)_helperServiceForDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  if (location[0] && [location[0] linkType] != 1)
  {
    if ([location[0] linkType] == 2)
    {
      _pairedDeviceAnisetteService = [(AKAnisetteProvisioningService *)selfCopy _pairedDeviceAnisetteService];
    }

    else if ([location[0] linkType] == 3)
    {
      _pairedDeviceAnisetteService = [(AKAnisetteProvisioningService *)selfCopy _clientAnisetteService];
    }

    else
    {
      _pairedDeviceAnisetteService = 0;
    }
  }

  else
  {
    _pairedDeviceAnisetteService = [(AKAnisetteProvisioningService *)selfCopy _nativeAnisetteService];
  }

  objc_storeStrong(location, 0);
  v3 = _pairedDeviceAnisetteService;

  return v3;
}

- (id)_clientAnisetteService
{
  v2 = [[AKClientAnisetteService alloc] initWithClient:self->_client context:self->_context];

  return v2;
}

- (void)absintheSignatureForData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    v12 = [NSURL URLWithString:@"https://www.apple.com"];
    v4 = [NSMutableURLRequest alloc];
    v11 = [v4 initWithURL:v12];
    [v11 setHTTPBody:location[0]];
    absintheSigner = [(AKAnisetteProvisioningService *)selfCopy absintheSigner];
    [(AKAbsintheSigner *)absintheSigner signatureForURLRequest:v11 completionHandler:v17];
    _objc_release(absintheSigner);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      sub_10001CEEC(v14);
      _os_log_error_impl(&_mh_execute_header, log, type, "Denied access to Signing data to non-entitled client.", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v6 = v17;
    v7 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v6[2](v6, 0);
    _objc_release(v7);
    v13 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)signaturesForData:(id)data options:(id)options completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v16 = 0;
  objc_storeStrong(&v16, options);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  if ([(AKClient *)selfCopy->_client hasInternalPrivateAccess])
  {
    attestationSigner = [(AKAnisetteProvisioningService *)selfCopy attestationSigner];
    [(AKAttestationSigner *)attestationSigner signaturesForData:location[0] options:v16 completion:v15];
    _objc_release(attestationSigner);
  }

  else
  {
    v14 = _AKLogSystem();
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      log = v14;
      type = v13;
      sub_10001CEEC(v12);
      _os_log_error_impl(&_mh_execute_header, log, type, "Denied access to Signing data to non-entitled client.", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    v6 = v15;
    v7 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v6[2](v6, 0);
    _objc_release(v7);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

@end
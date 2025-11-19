@interface AKAnisetteProvisioningService
- (AKAnisetteProvisioningService)initWithClient:(id)a3;
- (AKAnisetteProvisioningService)initWithClient:(id)a3 authenticationContext:(id)a4;
- (AKAnisetteProvisioningService)initWithClient:(id)a3 context:(id)a4;
- (id)_clientAnisetteService;
- (id)_helperServiceForDevice:(id)a3;
- (id)_nativeAnisetteService;
- (id)anisetteDataForDevice:(id)a3 provisionIfNecessary:(BOOL)a4;
- (void)_attestationDataForRequestData:(id)a3 completion:(id)a4;
- (void)_fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 device:(id)a4 completion:(id)a5;
- (void)absintheSignatureForData:(id)a3 completion:(id)a4;
- (void)attestationDataForDevice:(id)a3 withRequest:(id)a4 completion:(id)a5;
- (void)attestationDataForRequestData:(id)a3 completion:(id)a4;
- (void)eraseAnisetteForDevice:(id)a3 completion:(id)a4;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 device:(id)a4 completion:(id)a5;
- (void)legacyAnisetteDataForDSID:(id)a3 device:(id)a4 completion:(id)a5;
- (void)postAttestationAnalyticsWithData:(id)a3 completion:(id)a4;
- (void)provisionAnisetteForDevice:(id)a3 completion:(id)a4;
- (void)refreshBAADeviceTokenWithCompletion:(id)a3;
- (void)resetDeviceIdentityWithCompletion:(id)a3;
- (void)setTimeAdjustmentWithServerTime:(id)a3 completion:(id)a4;
- (void)signaturesForData:(id)a3 options:(id)a4 completion:(id)a5;
- (void)syncAnisetteWithSIMData:(id)a3 device:(id)a4 completion:(id)a5;
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

- (AKAnisetteProvisioningService)initWithClient:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v12 = 0;
  v10.receiver = v3;
  v10.super_class = AKAnisetteProvisioningService;
  v12 = [(AKAnisetteProvisioningService *)&v10 init];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    objc_storeStrong(&v12->_client, location[0]);
    v4 = +[AKAbsintheSigner sharedSigner];
    absintheSigner = v12->_absintheSigner;
    v12->_absintheSigner = v4;
    _objc_release(absintheSigner);
    v6 = +[AKAttestationSigner sharedSigner];
    attestationSigner = v12->_attestationSigner;
    v12->_attestationSigner = v6;
    _objc_release(attestationSigner);
  }

  v9 = _objc_retain(v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v9;
}

- (AKAnisetteProvisioningService)initWithClient:(id)a3 context:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8 = [(AKAnisetteProvisioningService *)v4 initWithClient:location[0]];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    objc_storeStrong(&v11->_context, v9);
  }

  v6 = _objc_retain(v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (AKAnisetteProvisioningService)initWithClient:(id)a3 authenticationContext:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = [AKAppleIDAuthenticationContext alloc];
  v9 = [v4 initWithContext:v10];
  v5 = v12;
  v12 = 0;
  v12 = [(AKAnisetteProvisioningService *)v5 initWithClient:location[0] context:v9];
  v8 = _objc_retain(v12);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v8;
}

- (id)anisetteDataForDevice:(id)a3 provisionIfNecessary:(BOOL)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = sub_100003A34;
  v23 = sub_100011200;
  v24 = 0;
  v17 = dispatch_semaphore_create(0);
  v9 = v27;
  v7 = v25;
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

- (void)attestationDataForDevice:(id)a3 withRequest:(id)a4 completion:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10004DCC8(v21, v18, location[0], v16);
    _os_log_debug_impl(&_mh_execute_header, oslog, type, "%@: Fetching attestation data for device (%@) with request (%@)", v21, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  v12 = [(AKAnisetteProvisioningService *)v18 _helperServiceForDevice:location[0]];
  if (objc_opt_respondsToSelector())
  {
    v11 = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v20, v18, v12);
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
      sub_100034214(v19, v18, location[0], v16, v12);
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

- (void)attestationDataForRequestData:(id)a3 completion:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  if ([(AKClient *)v14->_client hasInternalPrivateAccess])
  {
    [(AKAnisetteProvisioningService *)v14 _attestationDataForRequestData:location[0] completion:v12];
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

- (void)_attestationDataForRequestData:(id)a3 completion:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKAnisetteProvisioningService *)v8 _nativeAnisetteService];
  [v5 fetchAttestationDataForRequestData:location[0] completion:v6];
  _objc_release(v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setTimeAdjustmentWithServerTime:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  if ([(AKClient *)v16->_client hasInternalPrivateAccess])
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

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 device:(id)a4 completion:(id)a5
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  if ([(AKClient *)v17->_client hasInternalPrivateAccess])
  {
    [(AKAnisetteProvisioningService *)v17 _fetchAnisetteDataAndProvisionIfNecessary:v15 device:location completion:v13];
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

- (void)resetDeviceIdentityWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKClient *)v12->_client hasInternalPrivateAccess])
  {
    v3 = [(AKAnisetteProvisioningService *)v12 _nativeAnisetteService];
    [v3 resetDeviceIdentityWithCompletion:location[0]];
    _objc_release(v3);
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

- (void)refreshBAADeviceTokenWithCompletion:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKClient *)v13->_client hasInternalPrivateAccess])
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

- (void)postAttestationAnalyticsWithData:(id)a3 completion:(id)a4
{
  v48 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v46 = 0;
  objc_storeStrong(&v46, a4);
  if ([(AKClient *)v48->_client hasInternalPrivateAccess])
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
      v24 = [v23 lastKnownIDMSEnvironment];
      _objc_release(v23);
      v39[1] = v24;
      if (v24)
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
        v18 = [(AKClient *)v48->_client name];
        [v35 setObject:? forKeyedSubscript:?];
        _objc_release(v18);
        v19 = [location[0] endPointVIP];
        v20 = [v19 length];
        _objc_release(v19);
        if (v20)
        {
          v17 = [location[0] endPointVIP];
          [v35 setObject:? forKeyedSubscript:?];
          _objc_release(v17);
        }

        v15 = [location[0] requestMethod];
        v16 = [v15 length];
        _objc_release(v15);
        if (v16)
        {
          v14 = [location[0] requestMethod];
          [v35 setObject:? forKeyedSubscript:?];
          _objc_release(v14);
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
          v6 = [location[0] errorDomain];
          v7 = 1;
          if (!v6)
          {
            v7 = [location[0] errorCode] != 0;
          }

          _objc_release(v6);
          if (v7)
          {
            v5 = [location[0] errorDomain];
            v34[0] = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v5, [location[0] errorCode]);
            _objc_release(v5);
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
            v4 = [v35 reportData];
            sub_1000194D4(v49, v4);
            _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Finish Aurora reporting for BAA attestation response. Reportdata - %@", v49, 0xCu);
            _objc_release(v4);
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

- (void)_fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 device:(id)a4 completion:(id)a5
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = [(AKAnisetteProvisioningService *)v14 _helperServiceForDevice:location];
  if (v9)
  {
    [v9 fetchAnisetteDataAndProvisionIfNecessary:v12 withCompletion:v10];
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

- (void)legacyAnisetteDataForDSID:(id)a3 device:(id)a4 completion:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  if ([(AKClient *)v22->_client hasInternalPrivateAccess])
  {
    v14 = [(AKAnisetteProvisioningService *)v22 _helperServiceForDevice:v20];
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

- (void)provisionAnisetteForDevice:(id)a3 completion:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  if ([(AKClient *)v19->_client hasInternalPrivateAccess])
  {
    v12 = [(AKAnisetteProvisioningService *)v19 _helperServiceForDevice:location[0]];
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

- (void)syncAnisetteWithSIMData:(id)a3 device:(id)a4 completion:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  if ([(AKClient *)v22->_client hasInternalPrivateAccess])
  {
    v14 = [(AKAnisetteProvisioningService *)v22 _helperServiceForDevice:v20];
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

- (void)eraseAnisetteForDevice:(id)a3 completion:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  if ([(AKClient *)v19->_client hasInternalPrivateAccess])
  {
    v12 = [(AKAnisetteProvisioningService *)v19 _helperServiceForDevice:location[0]];
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

- (id)_helperServiceForDevice:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0] && [location[0] linkType] != 1)
  {
    if ([location[0] linkType] == 2)
    {
      v7 = [(AKAnisetteProvisioningService *)v6 _pairedDeviceAnisetteService];
    }

    else if ([location[0] linkType] == 3)
    {
      v7 = [(AKAnisetteProvisioningService *)v6 _clientAnisetteService];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [(AKAnisetteProvisioningService *)v6 _nativeAnisetteService];
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (id)_clientAnisetteService
{
  v2 = [[AKClientAnisetteService alloc] initWithClient:self->_client context:self->_context];

  return v2;
}

- (void)absintheSignatureForData:(id)a3 completion:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  if ([(AKClient *)v19->_client hasInternalPrivateAccess])
  {
    v12 = [NSURL URLWithString:@"https://www.apple.com"];
    v4 = [NSMutableURLRequest alloc];
    v11 = [v4 initWithURL:v12];
    [v11 setHTTPBody:location[0]];
    v5 = [(AKAnisetteProvisioningService *)v19 absintheSigner];
    [(AKAbsintheSigner *)v5 signatureForURLRequest:v11 completionHandler:v17];
    _objc_release(v5);
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

- (void)signaturesForData:(id)a3 options:(id)a4 completion:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  if ([(AKClient *)v18->_client hasInternalPrivateAccess])
  {
    v5 = [(AKAnisetteProvisioningService *)v18 attestationSigner];
    [(AKAttestationSigner *)v5 signaturesForData:location[0] options:v16 completion:v15];
    _objc_release(v5);
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
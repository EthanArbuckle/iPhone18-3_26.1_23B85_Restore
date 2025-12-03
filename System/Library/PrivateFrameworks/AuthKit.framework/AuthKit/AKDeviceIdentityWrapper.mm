@interface AKDeviceIdentityWrapper
- (AKDeviceIdentityWrapper)init;
- (BOOL)_isCachedAttestation:(id)attestation;
- (__SecKey)_retrieveDAK:(id)k error:(id *)error;
- (id)_attestationWithDataCerts:(id)certs;
- (id)_attestationWithSecCertRefs:(id)refs;
- (id)_baaCertDeleteOptions;
- (id)_baaCertOptionsFromCache:(BOOL)cache;
- (id)_getAttestationData:(id)data rk:(__SecKey *)rk dak:(__SecKey *)dak error:(id *)error;
- (id)_signatureForDataFields:(id)fields withRefKey:(__SecKey *)key error:(id *)error;
- (id)_splitStringIntoChunks:(id)chunks;
- (unint64_t)_baaConfigTTLInDays;
- (unint64_t)_generateTTLInMins;
- (void)_getDCRTWithCompletion:(id)completion;
- (void)_getDCRTWithContext:(id)context completion:(id)completion;
- (void)_updateRefKeyWithNonce:(id)nonce context:(id)context refkey:(__SecKey *)refkey error:(id *)error;
- (void)createBAASignatureForDataFields:(id)fields completion:(id)completion;
- (void)createBAASignatureForDataFields:(id)fields useCacheOnly:(BOOL)only completion:(id)completion;
- (void)createHostSignatureForData:(id)data completion:(id)completion;
- (void)createOSAttestationDataWithContext:(id)context attestationNonce:(id)nonce completion:(id)completion;
- (void)resetDeviceIdentityWithCompletion:(id)completion;
@end

@implementation AKDeviceIdentityWrapper

- (AKDeviceIdentityWrapper)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKDeviceIdentityWrapper;
  v9 = [(AKDeviceIdentityWrapper *)&v7 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v6 = +[AKConfiguration sharedConfiguration];
    strongDeviceIdentityMarker = [v6 strongDeviceIdentityMarker];
    baaAttestationHash = v9->_baaAttestationHash;
    v9->_baaAttestationHash = strongDeviceIdentityMarker;
    _objc_release(baaAttestationHash);
    _objc_release(v6);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)createBAASignatureForDataFields:(id)fields completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fields);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(AKDeviceIdentityWrapper *)selfCopy createBAASignatureForDataFields:location[0] useCacheOnly:0 completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)createBAASignatureForDataFields:(id)fields useCacheOnly:(BOOL)only completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fields);
  onlyCopy = only;
  v31 = 0;
  objc_storeStrong(&v31, completion);
  v12 = +[AKDevice currentDevice];
  isStrongDeviceIdentitySupported = [v12 isStrongDeviceIdentitySupported];
  _objc_release(v12);
  if (isStrongDeviceIdentitySupported)
  {
    v25 = [(AKDeviceIdentityWrapper *)selfCopy _baaCertOptionsFromCache:onlyCopy];
    v24 = _AKLogSystem();
    v23 = 2;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v6 = v24;
      v7 = v23;
      sub_10001CEEC(v22);
      _os_log_debug_impl(&_mh_execute_header, v6, v7, "Calling DeviceIdentity to issue certs.", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v5 = v25;
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_10019C72C;
    v18 = &unk_100325B28;
    v21 = _objc_retain(v31);
    v19 = _objc_retain(selfCopy);
    v20 = _objc_retain(location[0]);
    sub_100015DF8(0, v5, &v14);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v25, 0);
    v26 = 0;
  }

  else
  {
    v30 = _AKLogSystem();
    v29 = 2;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      log = v30;
      type = v29;
      sub_10001CEEC(v28);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Device Identity is not supported.", v28, 2u);
    }

    objc_storeStrong(&v30, 0);
    v27 = [NSError errorWithDomain:AKAttestationErrorDomain code:-10000 userInfo:0];
    if (v31)
    {
      (*(v31 + 2))(v31, 0, 0, 0, v27);
    }

    v26 = 1;
    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (id)_signatureForDataFields:(id)fields withRefKey:(__SecKey *)key error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fields);
  keyCopy = key;
  errorCopy = error;
  v24 = +[NSMutableArray array];
  v23 = 0;
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(location[0]);
  v17 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
  if (v17)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v17;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v12);
      v19 = v23;
      v9 = [AKSecurityHelper signData:v22 withKey:keyCopy error:&v19];
      objc_storeStrong(&v23, v19);
      v20 = v9;
      if (v23)
      {
        if (errorCopy)
        {
          v8 = v23;
          v5 = v23;
          *errorCopy = v8;
        }

        v28 = 0;
        v18 = 1;
      }

      else
      {
        [v24 addObject:v20];
        v18 = 0;
      }

      objc_storeStrong(&v20, 0);
      if (v18)
      {
        break;
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v13)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
LABEL_13:
    v18 = 0;
  }

  _objc_release(obj);
  if (!v18)
  {
    v28 = [v24 copy];
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  v6 = v28;

  return v6;
}

- (void)createHostSignatureForData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v30 = 0;
  objc_storeStrong(&v30, completion);
  v12 = +[AKDevice currentDevice];
  isStrongDeviceIdentitySupported = [v12 isStrongDeviceIdentitySupported];
  _objc_release(v12);
  if (isStrongDeviceIdentitySupported)
  {
    v7 = +[AKDevice currentDevice];
    isVirtualMachine = [v7 isVirtualMachine];
    _objc_release(v7);
    if (isVirtualMachine)
    {
      v4 = location[0];
      v14 = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_10019D44C;
      v18 = &unk_100325B50;
      v20 = _objc_retain(v30);
      v19 = _objc_retain(selfCopy);
      sub_10019D330(0, v4, 0, &v14);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
      v25 = 0;
    }

    else
    {
      v24 = _AKLogSystem();
      v23 = 2;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v5 = v24;
        v6 = v23;
        sub_10001CEEC(v22);
        _os_log_debug_impl(&_mh_execute_header, v5, v6, "Device is not virtual machine. Host Device Identity is not supported.", v22, 2u);
      }

      objc_storeStrong(&v24, 0);
      v21 = [NSError errorWithDomain:AKAttestationErrorDomain code:-10000 userInfo:0];
      if (v30)
      {
        (*(v30 + 2))(v30, 0, 0, v21);
      }

      v25 = 1;
      objc_storeStrong(&v21, 0);
    }
  }

  else
  {
    v29 = _AKLogSystem();
    v28 = 2;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      log = v29;
      type = v28;
      sub_10001CEEC(v27);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Device Identity is not supported.", v27, 2u);
    }

    objc_storeStrong(&v29, 0);
    v26 = [NSError errorWithDomain:AKAttestationErrorDomain code:-10000 userInfo:0];
    if (v30)
    {
      (*(v30 + 2))(v30, 0, 0, v26);
    }

    v25 = 1;
    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isCachedAttestation:(id)attestation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, attestation);
  ak_SHA256Data = [location[0] ak_SHA256Data];
  baaAttestationHash = [(AKDeviceIdentityWrapper *)selfCopy baaAttestationHash];
  v7 = [ak_SHA256Data isEqualToData:?];
  _objc_release(baaAttestationHash);
  if (v7)
  {
    v23 = 1;
    v19 = 1;
  }

  else
  {
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10019DA8C;
    v16 = &unk_10031F078;
    v17 = _objc_retain(selfCopy);
    v18 = _objc_retain(ak_SHA256Data);
    sub_10019DA28(&unk_100374980, &v12);
    v11 = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      log = v11;
      type = v10;
      sub_10001CEEC(v9);
      _os_log_impl(&_mh_execute_header, log, type, "New BAA cert detected, refreshing BAA device token.", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    v8 = +[AKBAADeviceTokenController sharedTokenController];
    [(AKBAADeviceTokenController *)v8 refreshBAADeviceTokenWithCompletionHandler:&stru_100325B70];
    v23 = 0;
    v19 = 1;
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&ak_SHA256Data, 0);
  objc_storeStrong(location, 0);
  return v23 & 1;
}

- (void)resetDeviceIdentityWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _baaCertDeleteOptions = [(AKDeviceIdentityWrapper *)selfCopy _baaCertDeleteOptions];
  v3 = _baaCertDeleteOptions;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10019DD18;
  v8 = &unk_100325B98;
  v9 = _objc_retain(location[0]);
  sub_100015DF8(0, v3, &v4);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&_baaCertDeleteOptions, 0);
  objc_storeStrong(location, 0);
}

- (void)_getDCRTWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v13 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] eventName:@"com.apple.authkit.generateDCRT" error:0];
  v5 = selfCopy;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10019DFE0;
  v10 = &unk_100325BC0;
  v11 = _objc_retain(v13);
  v12 = _objc_retain(v14);
  [(AKDeviceIdentityWrapper *)v5 _getDCRTWithCompletion:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_getDCRTWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  MAEIssueDCRTWithCompletion();
  objc_storeStrong(location, 0);
}

- (void)_updateRefKeyWithNonce:(id)nonce context:(id)context refkey:(__SecKey *)refkey error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, nonce);
  v16 = 0;
  objc_storeStrong(&v16, context);
  refkeyCopy = refkey;
  errorCopy = error;
  v13 = [AAFAnalyticsEvent ak_analyticsEventWithContext:v16 eventName:@"com.apple.authkit.updateRefkeyWithNonce" error:0];
  v12 = 0;
  SecKeySetParameter();
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v18, location[0], v12);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Added nonce %@ to RK with error %@", v18, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (v12 && errorCopy)
  {
    v7 = v12;
    v6 = v12;
    *errorCopy = v7;
    v12 = 0;
  }

  [AKAnalyticsSender sendAnalyticsEvent:v13 withError:*errorCopy];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (__SecKey)_retrieveDAK:(id)k error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, k);
  errorCopy = error;
  v12 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] eventName:@"com.apple.authkit.retrieveDAK" error:0];
  v11 = 0;
  v10 = SecKeyCopySystemKey();
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v15, v11);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Retrieved DAK with error %@", v15, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (v11 && errorCopy)
  {
    v7 = v11;
    v4 = v11;
    *errorCopy = v7;
    v11 = 0;
  }

  [AKAnalyticsSender sendAnalyticsEvent:v12 withError:*errorCopy];
  v6 = v10;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (id)_getAttestationData:(id)data rk:(__SecKey *)rk dak:(__SecKey *)dak error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  rkCopy = rk;
  dakCopy = dak;
  errorCopy = error;
  v16 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] eventName:@"com.apple.authkit.generateOSVersionAttestationData" error:0];
  v15 = 0;
  Attestation = SecKeyCreateAttestation();
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v21, v15);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Attested RK to DAK with error: %@", v21, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (v15 && errorCopy)
  {
    v9 = v15;
    v6 = v15;
    *errorCopy = v9;
    v15 = 0;
  }

  [AKAnalyticsSender sendAnalyticsEvent:v16 withError:*errorCopy];
  v8 = _objc_retain(Attestation);
  objc_storeStrong(&Attestation, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (void)createOSAttestationDataWithContext:(id)context attestationNonce:(id)nonce completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, nonce);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v8 = selfCopy;
  v7 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10019EC8C;
  v12 = &unk_100325BE8;
  v13 = _objc_retain(selfCopy);
  v14 = _objc_retain(location[0]);
  v16 = _objc_retain(v17);
  v15 = _objc_retain(v18);
  [(AKDeviceIdentityWrapper *)v8 _getDCRTWithContext:v7 completion:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (id)_baaCertOptionsFromCache:(BOOL)cache
{
  selfCopy = self;
  v29 = a2;
  cacheCopy = cache;
  _generateTTLInMins = [(AKDeviceIdentityWrapper *)self _generateTTLInMins];
  location = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    sub_10019F7FC(v35, 262080, _generateTTLInMins, 525600);
    _os_log_debug_impl(&_mh_execute_header, location, v25, "Attempting to generate certificate data... (%d/%lu/%d)", v35, 0x18u);
  }

  objc_storeStrong(&location, 0);
  v12 = sub_10019F860();
  v34[0] = v12;
  v11 = sub_10019F8C8();
  v34[1] = v11;
  v10 = sub_10019F930();
  v34[2] = v10;
  v9 = sub_10019F998();
  v34[3] = v9;
  v24 = [NSArray arrayWithObjects:v34 count:4];
  _objc_release(v9);
  _objc_release(v10);
  _objc_release(v11);
  _objc_release(v12);
  v20 = sub_10019FA00();
  v32[0] = v20;
  v33[0] = &__kCFBooleanFalse;
  v19 = sub_100015D28();
  v32[1] = v19;
  v33[1] = @"com.apple.akd";
  v18 = sub_100015D90();
  v32[2] = v18;
  v33[2] = @"com.apple.AuthKit";
  v17 = sub_10019FA68();
  v32[3] = v17;
  v16 = [NSNumber numberWithUnsignedInteger:_generateTTLInMins];
  v33[3] = v16;
  v15 = sub_10019FAD0();
  v32[4] = v15;
  v33[4] = &__kCFBooleanTrue;
  v14 = sub_10019FB38();
  v32[5] = v14;
  v33[5] = v24;
  v13 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:6];
  v23 = [NSMutableDictionary dictionaryWithDictionary:?];
  _objc_release(v13);
  _objc_release(v14);
  _objc_release(v15);
  _objc_release(v16);
  _objc_release(v17);
  _objc_release(v18);
  _objc_release(v19);
  _objc_release(v20);
  if (cacheCopy)
  {
    v8 = sub_10019FBA0();
    [(NSMutableDictionary *)v23 setObject:&__kCFBooleanTrue forKeyedSubscript:?];
    _objc_release(v8);
  }

  v5 = +[AKBAATimeProvider sharedInstance];
  adjustedDate = [(AKBAATimeProvider *)v5 adjustedDate];
  _objc_release(v5);
  [(NSMutableDictionary *)v23 setObject:adjustedDate forKeyedSubscript:@"ClientProvidedDate"];
  v6 = +[AKConfiguration sharedConfiguration];
  shouldEnableAttestationLogging = [v6 shouldEnableAttestationLogging];
  _objc_release(v6);
  if (shouldEnableAttestationLogging)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v31, v23);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "DeviceIdentity options: %@", v31, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v4 = [(NSMutableDictionary *)v23 copy];
  objc_storeStrong(&adjustedDate, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);

  return v4;
}

- (id)_baaCertDeleteOptions
{
  v7[2] = self;
  v7[1] = a2;
  v5 = sub_100015D28();
  v8[0] = v5;
  v9[0] = @"com.apple.akd";
  v4 = sub_100015D90();
  v8[1] = v4;
  v9[1] = @"com.apple.AuthKit";
  v3 = sub_10019FD68();
  v8[2] = v3;
  v9[2] = &off_100339250;
  v7[0] = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  _objc_release(v3);
  _objc_release(v4);
  _objc_release(v5);
  v6 = _objc_retain(v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

- (unint64_t)_generateTTLInMins
{
  v5 = 1440 * [(AKDeviceIdentityWrapper *)self _baaConfigTTLInDays];
  if (!v5)
  {
    return 525600;
  }

  if (v5 >= 0x3FFC0)
  {
    v4 = v5;
  }

  else
  {
    v4 = 262080;
  }

  if (v4 >= 0x80520)
  {
    return 525600;
  }

  else
  {
    return v4;
  }
}

- (unint64_t)_baaConfigTTLInDays
{
  v4 = &unk_100374990;
  location = 0;
  objc_storeStrong(&location, &stru_100325C08);
  if (*v4 != -1)
  {
    dispatch_once(v4, location);
  }

  objc_storeStrong(&location, 0);
  return qword_100374988;
}

- (id)_attestationWithSecCertRefs:(id)refs
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, refs);
  v14 = objc_alloc_init(NSMutableArray);
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(location[0]);
  v10 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
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

      certificate = *(__b[1] + 8 * v7);
      v11 = SecCertificateCopyData(certificate);
      [v14 addObject:v11];
      objc_storeStrong(&v11, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  v4 = [(AKDeviceIdentityWrapper *)selfCopy _attestationWithDataCerts:v14];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_attestationWithDataCerts:(id)certs
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, certs);
  v19 = objc_alloc_init(NSMutableArray);
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(location[0]);
  v12 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(__b[1] + 8 * v9);
      [v19 addObject:@"-----BEGIN CERTIFICATE-----"];
      v16 = [v18 base64EncodedStringWithOptions:0];
      v15 = [(AKDeviceIdentityWrapper *)selfCopy _splitStringIntoChunks:v16];
      [v19 addObjectsFromArray:v15];
      [v19 addObject:@"-----END CERTIFICATE-----"];
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  v14 = [v19 componentsJoinedByString:@"\n"];
  v13 = [v14 dataUsingEncoding:4];
  v3 = [v13 aaf_toCompressedData:517];
  v4 = v13;
  v13 = v3;
  _objc_release(v4);
  v6 = _objc_retain(v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_splitStringIntoChunks:(id)chunks
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, chunks);
  v12 = +[NSMutableArray array];
  v11 = [location[0] length];
  v10 = 0;
  while (v10 < v11)
  {
    v8 = 64;
    v7 = (v11 - v10);
    if ((v11 - v10) <= 0x40)
    {
      v5 = v7;
    }

    else
    {
      v5 = v8;
    }

    v6[3] = v5;
    v9 = v5;
    location[4] = v10;
    location[3] = v5;
    location[5] = v10;
    location[6] = v5;
    v6[1] = v10;
    v6[2] = v5;
    v6[0] = [location[0] substringWithRange:{v10, v5}];
    [v12 addObject:v6[0]];
    v10 = &v9[v10];
    objc_storeStrong(v6, 0);
  }

  v4 = _objc_retain(v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end
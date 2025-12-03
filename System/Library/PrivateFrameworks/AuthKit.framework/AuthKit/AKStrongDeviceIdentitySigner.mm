@interface AKStrongDeviceIdentitySigner
+ (id)sharedSigner;
- (AKStrongDeviceIdentitySigner)initWithStrongDeviceIdentifying:(id)identifying;
- (BOOL)_chanceInOptionsCountUsingTenExponent:(int64_t)exponent;
- (BOOL)_doesHostVIPMatch:(id)match vipList:(id)list;
- (BOOL)_shouldPostAnalyticsWithSamplingRate:(int64_t)rate;
- (id)_digestForSigningWithBody:(id)body header:(id)header;
- (id)_headersToSignFromRequestData:(id)data;
- (id)_preExcludedProcesses;
- (void)_baaV1HeadersForRequestData:(id)data completion:(id)completion;
- (void)_handleAllowListLogicForProcess:(BOOL)process requestHost:(id)host processName:(id)name completion:(id)completion;
- (void)_handleExclusionLogicForProcessName:(id)name requestHostName:(id)hostName completion:(id)completion;
- (void)_hostSignData:(id)data signatureKey:(id)key completion:(id)completion;
- (void)_hostSignDataList:(id)list completion:(id)completion;
- (void)_isProcessAllowed:(id)allowed completion:(id)completion;
- (void)_isProcessExcluded:(id)excluded completion:(id)completion;
- (void)_isURLHostVIPAllowed:(id)allowed completion:(id)completion;
- (void)_isURLHostVIPExcluded:(id)excluded completion:(id)completion;
- (void)_machineSignDataList:(id)list useCacheOnly:(BOOL)only completion:(id)completion;
- (void)_overrideInternalBAACert:(id)cert;
- (void)_reportBAASigningForEvent:(id)event;
- (void)_shouldExcludeBAAForProcessName:(id)name requestHostName:(id)hostName completion:(id)completion;
- (void)_updateAnalyticsEvent:(id)event withError:(id)error;
- (void)attestationDataForOSVersionWithContext:(id)context attestationNonce:(id)nonce completion:(id)completion;
- (void)baaV1HeadersForRequestData:(id)data completion:(id)completion;
- (void)resetDeviceIdentityWithCompletion:(id)completion;
- (void)signData:(id)data useCacheOnly:(BOOL)only completion:(id)completion;
@end

@implementation AKStrongDeviceIdentitySigner

+ (id)sharedSigner
{
  v5 = &unk_100374620;
  location = 0;
  objc_storeStrong(&location, &stru_10031FDB0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374618;

  return v2;
}

- (AKStrongDeviceIdentitySigner)initWithStrongDeviceIdentifying:(id)identifying
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifying);
  v3 = selfCopy;
  selfCopy = 0;
  v12.receiver = v3;
  v12.super_class = AKStrongDeviceIdentitySigner;
  selfCopy = [(AKStrongDeviceIdentitySigner *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_strongDeviceIdentifying, location[0]);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.authkit.AKStrongDeviceIdentitySigner", v10);
    signingQueue = selfCopy->_signingQueue;
    selfCopy->_signingQueue = v4;
    _objc_release(signingQueue);
    _objc_release(v10);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.authkit.baa.reporting", v11);
    reportingQueue = selfCopy->_reportingQueue;
    selfCopy->_reportingQueue = v6;
    _objc_release(reportingQueue);
    _objc_release(v11);
  }

  v9 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (id)_headersToSignFromRequestData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v26 = 0;
  headers = [location[0] headers];
  if ([headers count])
  {
    v3 = [headers mutableCopy];
    v4 = v26;
    v26 = v3;
    _objc_release(v4);
    v24 = +[NSMutableArray array];
    memset(__b, 0, sizeof(__b));
    obj = [v26 allKeys];
    v19 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
    if (v19)
    {
      v15 = *__b[2];
      v16 = 0;
      v17 = v19;
      while (1)
      {
        v14 = v16;
        if (*__b[2] != v15)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(__b[1] + 8 * v16);
        v12 = v24;
        lowercaseString = [v23 lowercaseString];
        [v12 addObject:?];
        _objc_release(lowercaseString);
        ++v16;
        if (v14 + 1 >= v17)
        {
          v16 = 0;
          v17 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
          if (!v17)
          {
            break;
          }
        }
      }
    }

    _objc_release(obj);
    v21 = [v24 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v10 = v26;
    v11 = [v21 componentsJoinedByString:@":"];
    [v10 setObject:? forKey:?];
    _objc_release(v11);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    v5 = +[NSMutableDictionary dictionary];
    v6 = v26;
    v26 = v5;
    _objc_release(v6);
  }

  v8 = +[AKBAATimeProvider sharedInstance];
  adjustedDeviceTime = [(AKBAATimeProvider *)v8 adjustedDeviceTime];
  _objc_release(v8);
  [v26 setObject:adjustedDeviceTime forKey:AKRequestSigningHeaderClientTimeKey];
  [v26 setObject:AKRequestSigningHeaderVersionValue forKey:AKRequestSigningHeaderVersionKey];
  v9 = _objc_retain(v26);
  objc_storeStrong(&adjustedDeviceTime, 0);
  objc_storeStrong(&headers, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (void)baaV1HeadersForRequestData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v5 = selfCopy;
  client = [location[0] client];
  name = [client name];
  requestURL = [location[0] requestURL];
  host = [requestURL host];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10004320C;
  v13 = &unk_10031FDD8;
  v14 = _objc_retain(location[0]);
  v16 = _objc_retain(v17);
  v15 = _objc_retain(selfCopy);
  [(AKStrongDeviceIdentitySigner *)v5 _shouldExcludeBAAForProcessName:name requestHostName:host completion:?];
  _objc_release(host);
  _objc_release(requestURL);
  _objc_release(name);
  _objc_release(client);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_baaV1HeadersForRequestData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v98 = 0;
  objc_storeStrong(&v98, completion);
  v97 = [(AKStrongDeviceIdentitySigner *)selfCopy _headersToSignFromRequestData:location[0]];
  _objc_release(0);
  v34 = selfCopy;
  signingDataHash = [location[0] signingDataHash];
  v96 = [AKStrongDeviceIdentitySigner _digestForSigningWithBody:v34 header:"_digestForSigningWithBody:header:"];
  _objc_release(signingDataHash);
  v95 = [(AKStrongDeviceIdentitySigner *)selfCopy _digestForSigningWithBody:0 header:v97];
  v31 = +[AKDevice currentDevice];
  isInternalBuild = [v31 isInternalBuild];
  _objc_release(v31);
  if (isInternalBuild)
  {
    v30 = [v96 base64EncodedStringWithOptions:0];
    [v97 setValue:? forKey:?];
    _objc_release(v30);
    v29 = [v95 base64EncodedStringWithOptions:0];
    [v97 setValue:? forKey:?];
    _objc_release(v29);
    v28 = +[AKConfiguration sharedConfiguration];
    v27 = [v28 configurationValueForKey:@"_AKConfigKeyVMType"];
    stringValue = [v27 stringValue];
    _objc_release(v27);
    _objc_release(v28);
    if (stringValue)
    {
      [v97 setValue:stringValue forKey:AKVMTypeHeaderKey];
    }

    v26 = +[AKBAATimeProvider sharedInstance];
    internalTimeInfo = [(AKBAATimeProvider *)v26 internalTimeInfo];
    _objc_release(v26);
    if (internalTimeInfo)
    {
      [v97 setObject:internalTimeInfo forKey:@"x-apple-debug-time-info"];
    }

    objc_storeStrong(&internalTimeInfo, 0);
    objc_storeStrong(&stringValue, 0);
  }

  v24 = +[AKDevice currentDevice];
  isVirtualMachine = [v24 isVirtualMachine];
  _objc_release(v24);
  if (isVirtualMachine)
  {
    [v97 setValue:@"2" forKey:@"x-apple-i-device-type"];
  }

  else
  {
    [v97 setValue:@"1" forKey:@"x-apple-i-device-type"];
  }

  v92 = _AKLogSystem();
  v91 = 2;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
  {
    log = v92;
    type = v91;
    sub_10001CEEC(v90);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Going in for BAA signing", v90, 2u);
  }

  objc_storeStrong(&v92, 0);
  v20 = +[AKDevice currentDevice];
  isVirtualMachine2 = [v20 isVirtualMachine];
  _objc_release(v20);
  if (isVirtualMachine2 & 1) != 0 || (v18 = +[AKFeatureManager sharedManager](AKFeatureManager, "sharedManager"), v19 = [v18 isPhysicalDeviceBAAValidationEnabled], _objc_release(v18), (v19))
  {
    [v97 setValue:@"1" forKey:AKRequestSigningHeaderFeatureHeadersKey];
  }

  v89 = 0uLL;
  v17 = _AKSignpostLogSystem();
  *&v88 = _AKSignpostCreate();
  *(&v88 + 1) = v4;
  _objc_release(v17);
  v87 = _AKSignpostLogSystem();
  v86 = 1;
  v85 = v88;
  if (v88 && v85 != -1 && os_signpost_enabled(v87))
  {
    v14 = v87;
    v15 = v86;
    spid = v85;
    sub_10001CEEC(v84);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, spid, "BAASigning", " enableTelemetry=YES ", v84, 2u);
  }

  objc_storeStrong(&v87, 0);
  v83 = _AKSignpostLogSystem();
  v82 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v103, v88);
    _os_log_impl(&_mh_execute_header, v83, v82, "BEGIN [%lld]: BAASigning  enableTelemetry=YES ", v103, 0xCu);
  }

  objc_storeStrong(&v83, 0);
  v89 = v88;
  v81 = 0;
  v75[0] = 0;
  v75[1] = v75;
  v76 = 838860800;
  v77 = 48;
  v78 = sub_100003774;
  v79 = sub_100011080;
  v80 = 0;
  v69[0] = 0;
  v69[1] = v69;
  v70 = 838860800;
  v71 = 48;
  v72 = sub_100003774;
  v73 = sub_100011080;
  v74 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v64 = 838860800;
  v65 = 48;
  v66 = sub_100003774;
  v67 = sub_100011080;
  v68 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v58 = 838860800;
  v59 = 48;
  v60 = sub_100003774;
  v61 = sub_100011080;
  v62 = 0;
  group = dispatch_group_create();
  dispatch_group_enter(group);
  v13 = selfCopy;
  v102[0] = v96;
  v102[1] = v95;
  v11 = [NSArray arrayWithObjects:v102 count:2];
  v12 = v81;
  v50 = _NSConcreteStackBlock;
  v51 = -1073741824;
  v52 = 0;
  v53 = sub_10004426C;
  v54 = &unk_10031FE00;
  v55[1] = v63;
  v55[2] = v75;
  v55[0] = _objc_retain(group);
  [(AKStrongDeviceIdentitySigner *)v13 _machineSignDataList:v11 useCacheOnly:v12 & 1 completion:&v50];
  _objc_release(v11);
  v9 = +[AKDevice currentDevice];
  isVirtualMachine3 = [v9 isVirtualMachine];
  _objc_release(v9);
  if (isVirtualMachine3)
  {
    dispatch_group_enter(group);
    v8 = selfCopy;
    v101[0] = v96;
    v101[1] = v95;
    v7 = [NSArray arrayWithObjects:v101 count:2];
    v44 = _NSConcreteStackBlock;
    v45 = -1073741824;
    v46 = 0;
    v47 = sub_10004431C;
    v48 = &unk_10031FE00;
    v49[1] = v57;
    v49[2] = v69;
    v49[0] = _objc_retain(group);
    [(AKStrongDeviceIdentitySigner *)v8 _hostSignDataList:v7 completion:&v44];
    _objc_release(v7);
    objc_storeStrong(v49, 0);
  }

  v6 = group;
  queue = selfCopy->_signingQueue;
  v36 = _NSConcreteStackBlock;
  v37 = -1073741824;
  v38 = 0;
  v39 = sub_1000443CC;
  v40 = &unk_10031FE28;
  v42[1] = v75;
  v42[2] = v69;
  v41 = _objc_retain(v97);
  v42[3] = v63;
  v42[4] = v57;
  v43 = v89;
  v42[0] = _objc_retain(v98);
  dispatch_group_notify(v6, queue, &v36);
  objc_storeStrong(v42, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(v55, 0);
  objc_storeStrong(&group, 0);
  _Block_object_dispose(v57, 8);
  objc_storeStrong(&v62, 0);
  _Block_object_dispose(v63, 8);
  objc_storeStrong(&v68, 0);
  _Block_object_dispose(v69, 8);
  objc_storeStrong(&v74, 0);
  _Block_object_dispose(v75, 8);
  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(&v96, 0);
  objc_storeStrong(&v97, 0);
  objc_storeStrong(&v98, 0);
  objc_storeStrong(location, 0);
}

- (void)_machineSignDataList:(id)list useCacheOnly:(BOOL)only completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, list);
  onlyCopy = only;
  v25 = 0;
  objc_storeStrong(&v25, completion);
  v19[0] = 0;
  v19[1] = v19;
  v20 = 838860800;
  v21 = 48;
  v22 = sub_100003774;
  v23 = sub_100011080;
  v24 = [AAFAnalyticsEvent ak_analyticsEventWithEventName:@"com.apple.authkit.baa.signing" error:0];
  v18 = +[NSMutableDictionary dictionary];
  v7 = selfCopy;
  v5 = location[0];
  v6 = onlyCopy;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000448F4;
  v14 = &unk_10031FE50;
  v17[1] = v19;
  v15 = _objc_retain(selfCopy);
  v16 = _objc_retain(v18);
  v17[0] = _objc_retain(v25);
  [(AKStrongDeviceIdentitySigner *)v7 signData:v5 useCacheOnly:v6 completion:&v10];
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  _Block_object_dispose(v19, 8);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)_overrideInternalBAACert:(id)cert
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cert);
  v6 = +[AKDevice currentDevice];
  isInternalBuild = [v6 isInternalBuild];
  _objc_release(v6);
  if (isInternalBuild)
  {
    v5 = +[AKConfiguration sharedConfiguration];
    v11 = [v5 configurationValueForKey:@"AKAltCertChainForBAA"];
    _objc_release(v5);
    if ([v11 length])
    {
      v10 = _AKLogSystem();
      v9 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        log = v10;
        type = v9;
        sub_10001CEEC(v8);
        _os_log_impl(&_mh_execute_header, log, type, "Setting debug attestation header with expired certs.", v8, 2u);
      }

      objc_storeStrong(&v10, 0);
      [location[0] setValue:v11 forKey:AKRequestSigningHeaderAttestationKey];
    }

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_hostSignDataList:(id)list completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, list);
  v58 = 0;
  objc_storeStrong(&v58, completion);
  if ([location[0] count] == 2)
  {
    v48[0] = 0;
    v48[1] = v48;
    v49 = 838860800;
    v50 = 48;
    v51 = sub_100003774;
    v52 = sub_100011080;
    v53 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v43 = 838860800;
    v44 = 48;
    v45 = sub_100003774;
    v46 = sub_100011080;
    v47 = 0;
    v41 = +[NSMutableDictionary dictionary];
    v40 = dispatch_group_create();
    v39 = [location[0] objectAtIndexedSubscript:0];
    v38 = [location[0] objectAtIndexedSubscript:1];
    dispatch_group_enter(v40);
    v11 = selfCopy;
    v9 = v38;
    v10 = AKRequestSigningHeaderHostAltSignatureKey;
    v31 = _NSConcreteStackBlock;
    v32 = -1073741824;
    v33 = 0;
    v34 = sub_1000457E8;
    v35 = &unk_10031FE78;
    v37[1] = v42;
    v36 = _objc_retain(v41);
    v37[0] = _objc_retain(v40);
    [(AKStrongDeviceIdentitySigner *)v11 _hostSignData:v9 signatureKey:v10 completion:&v31];
    if (![v38 isEqual:v39])
    {
      dispatch_group_enter(v40);
      v8 = selfCopy;
      v6 = v39;
      v7 = AKRequestSigningHeaderHostSignatureKey;
      v24 = _NSConcreteStackBlock;
      v25 = -1073741824;
      v26 = 0;
      v27 = sub_100045894;
      v28 = &unk_10031FE78;
      v30[1] = v48;
      v29 = _objc_retain(v41);
      v30[0] = _objc_retain(v40);
      [(AKStrongDeviceIdentitySigner *)v8 _hostSignData:v6 signatureKey:v7 completion:&v24];
      objc_storeStrong(v30, 0);
      objc_storeStrong(&v29, 0);
    }

    group = v40;
    queue = selfCopy->_signingQueue;
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_100045940;
    v19 = &unk_10031FEA0;
    v23[1] = v48;
    v23[2] = v42;
    v20 = _objc_retain(v41);
    v21 = _objc_retain(v38);
    v22 = _objc_retain(v39);
    v23[0] = _objc_retain(v58);
    dispatch_group_notify(group, queue, &v15);
    objc_storeStrong(v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(v37, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v41, 0);
    _Block_object_dispose(v42, 8);
    objc_storeStrong(&v47, 0);
    _Block_object_dispose(v48, 8);
    objc_storeStrong(&v53, 0);
    v54 = 0;
  }

  else
  {
    v57 = _AKLogSystem();
    v56 = 16;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      log = v57;
      type = v56;
      sub_10001CEEC(v55);
      _os_log_error_impl(&_mh_execute_header, log, type, "Not enough signing points for host signature. Bailing on host sign", v55, 2u);
    }

    objc_storeStrong(&v57, 0);
    (*(v58 + 2))(v58, 0);
    v54 = 1;
  }

  objc_storeStrong(&v58, 0);
  objc_storeStrong(location, 0);
}

- (void)_hostSignData:(id)data signatureKey:(id)key completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v39 = 0;
  objc_storeStrong(&v39, key);
  v38 = 0;
  objc_storeStrong(&v38, completion);
  v14 = +[AKDevice currentDevice];
  isVirtualMachine = [v14 isVirtualMachine];
  _objc_release(v14);
  if (isVirtualMachine)
  {
    v36 = _AKLogSystem();
    v35 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v43, v39);
      _os_log_debug_impl(&_mh_execute_header, v36, v35, "Going in for host BAA signing for key - %@", v43, 0xCu);
    }

    objc_storeStrong(&v36, 0);
    v34 = [AAFAnalyticsEvent ak_analyticsEventWithEventName:@"com.apple.authkit.baa.signing.host" error:0];
    v33 = 0uLL;
    v11 = _AKSignpostLogSystem();
    *&v32 = _AKSignpostCreate();
    *(&v32 + 1) = v5;
    _objc_release(v11);
    v31 = _AKSignpostLogSystem();
    v30 = 1;
    v29 = v32;
    if (v32 && v29 != -1 && os_signpost_enabled(v31))
    {
      v8 = v31;
      v9 = v30;
      spid = v29;
      sub_10001CEEC(v28);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, spid, "VMHostBAASigning", " enableTelemetry=YES ", v28, 2u);
    }

    objc_storeStrong(&v31, 0);
    v27 = _AKSignpostLogSystem();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      sub_100036FE8(v42, v32);
      _os_log_impl(&_mh_execute_header, v27, v26, "BEGIN [%lld]: VMHostBAASigning  enableTelemetry=YES ", v42, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    v33 = v32;
    strongDeviceIdentifying = [(AKStrongDeviceIdentitySigner *)selfCopy strongDeviceIdentifying];
    v6 = location[0];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_100045F2C;
    v20 = &unk_10031FEC8;
    v21 = _objc_retain(v34);
    v22 = _objc_retain(selfCopy);
    v23 = _objc_retain(v39);
    v25 = v33;
    v24 = _objc_retain(v38);
    [(AKStrongDeviceIdentifying *)strongDeviceIdentifying createHostSignatureForData:v6 completion:&v16];
    _objc_release(strongDeviceIdentifying);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v34, 0);
    v37 = 0;
  }

  else
  {
    (*(v38 + 2))(v38, 0);
    v37 = 1;
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

- (void)signData:(id)data useCacheOnly:(BOOL)only completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  onlyCopy = only;
  v15 = 0;
  objc_storeStrong(&v15, completion);
  if ([location[0] count])
  {
    strongDeviceIdentifying = [(AKStrongDeviceIdentitySigner *)selfCopy strongDeviceIdentifying];
    [(AKStrongDeviceIdentifying *)strongDeviceIdentifying createBAASignatureForDataFields:location[0] useCacheOnly:onlyCopy completion:v15];
    _objc_release(strongDeviceIdentifying);
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
      _os_log_error_impl(&_mh_execute_header, log, type, "Nothing to sign. Early return.", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    if (v15)
    {
      v6 = v15;
      v7 = [NSError errorWithDomain:AKGenericErrorDomain code:-17003 userInfo:?];
      (*(v6 + 2))(v6, 0, 0, 0);
      _objc_release(v7);
    }
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)attestationDataForOSVersionWithContext:(id)context attestationNonce:(id)nonce completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v9 = 0;
  objc_storeStrong(&v9, nonce);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  strongDeviceIdentifying = [(AKStrongDeviceIdentitySigner *)selfCopy strongDeviceIdentifying];
  [(AKStrongDeviceIdentifying *)strongDeviceIdentifying createOSAttestationDataWithContext:location[0] attestationNonce:v9 completion:v8];
  _objc_release(strongDeviceIdentifying);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)_digestForSigningWithBody:(id)body header:(id)header
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, body);
  v30 = 0;
  objc_storeStrong(&v30, header);
  if ([location[0] length] || objc_msgSend(v30, "count"))
  {
    v28 = +[NSMutableArray array];
    if (location[0])
    {
      aaf_toHexString = [location[0] aaf_toHexString];
      lowercaseString = [aaf_toHexString lowercaseString];
      _objc_release(aaf_toHexString);
      [v28 addObject:lowercaseString];
      objc_storeStrong(&lowercaseString, 0);
    }

    else
    {
      [v28 addObject:&stru_100330538];
    }

    v26 = [v30 mutableCopy];
    allKeys = [v26 allKeys];
    v13 = [allKeys sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v25 = [v13 mutableCopy];
    _objc_release(v13);
    _objc_release(allKeys);
    memset(__b, 0, sizeof(__b));
    v15 = _objc_retain(v25);
    v16 = [v15 countByEnumeratingWithState:__b objects:v33 count:16];
    if (v16)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v16;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(v15);
        }

        v24 = *(__b[1] + 8 * v11);
        lowercaseString2 = [v24 lowercaseString];
        v8 = [v26 objectForKeyedSubscript:v24];
        v7 = +[NSCharacterSet whitespaceCharacterSet];
        v21 = [v8 stringByTrimmingCharactersInSet:?];
        _objc_release(v7);
        _objc_release(v8);
        v20 = [NSString stringWithFormat:@"%@=%@", lowercaseString2, v21];
        [v28 addObject:v20];
        objc_storeStrong(&v20, 0);
        objc_storeStrong(&v21, 0);
        objc_storeStrong(&lowercaseString2, 0);
        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [v15 countByEnumeratingWithState:__b objects:v33 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    _objc_release(v15);
    v19 = [v28 componentsJoinedByString:@"|"];
    v6 = [v19 dataUsingEncoding:4];
    ak_SHA256Data = [v6 ak_SHA256Data];
    _objc_release(v6);
    v29 = 1;
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v28, 0);
  }

  else
  {
    ak_SHA256Data = 0;
    v29 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  v4 = ak_SHA256Data;

  return v4;
}

- (void)resetDeviceIdentityWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  strongDeviceIdentifying = [(AKStrongDeviceIdentitySigner *)selfCopy strongDeviceIdentifying];
  [(AKStrongDeviceIdentifying *)strongDeviceIdentifying resetDeviceIdentityWithCompletion:location[0]];
  _objc_release(strongDeviceIdentifying);
  v5 = +[AKDevice currentDevice];
  isInternalBuild = [v5 isInternalBuild];
  _objc_release(v5);
  if (isInternalBuild)
  {
    v3 = +[AKConfiguration sharedConfiguration];
    [v3 setConfigurationValue:0 forKey:@"AKAltCertChainForBAA"];
    _objc_release(v3);
  }

  objc_storeStrong(location, 0);
}

- (void)_shouldExcludeBAAForProcessName:(id)name requestHostName:(id)hostName completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v20 = 0;
  objc_storeStrong(&v20, hostName);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  if ([location[0] length] || objc_msgSend(v20, "length"))
  {
    v6 = selfCopy;
    v5 = location[0];
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_100046EF8;
    v13 = &unk_10031FEF0;
    v14 = _objc_retain(selfCopy);
    v15 = _objc_retain(v20);
    v16 = _objc_retain(location[0]);
    v17 = _objc_retain(v19);
    [(AKStrongDeviceIdentitySigner *)v6 _isProcessAllowed:v5 completion:&v9];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    v18 = 0;
  }

  else
  {
    if (v19)
    {
      (*(v19 + 2))(v19, 1);
    }

    v18 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleAllowListLogicForProcess:(BOOL)process requestHost:(id)host processName:(id)name completion:(id)completion
{
  selfCopy = self;
  v23 = a2;
  processCopy = process;
  location = 0;
  objc_storeStrong(&location, host);
  v20 = 0;
  objc_storeStrong(&v20, name);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  if (processCopy)
  {
    if ([location length])
    {
      v7 = selfCopy;
      v6 = location;
      v10 = _NSConcreteStackBlock;
      v11 = -1073741824;
      v12 = 0;
      v13 = sub_10004719C;
      v14 = &unk_10031FF18;
      v17 = _objc_retain(v19);
      v15 = _objc_retain(v20);
      v16 = _objc_retain(location);
      [(AKStrongDeviceIdentitySigner *)v7 _isURLHostVIPAllowed:v6 completion:&v10];
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v17, 0);
      v18 = 0;
    }

    else
    {
      if (v19)
      {
        (*(v19 + 2))(v19, 1);
      }

      v18 = 1;
    }
  }

  else
  {
    if (v19)
    {
      (*(v19 + 2))(v19, 1);
    }

    v18 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&location, 0);
}

- (void)_handleExclusionLogicForProcessName:(id)name requestHostName:(id)hostName completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v17 = 0;
  objc_storeStrong(&v17, hostName);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v8 = selfCopy;
  v7 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100047488;
  v12 = &unk_10031FF18;
  v15 = _objc_retain(v16);
  v13 = _objc_retain(selfCopy);
  v14 = _objc_retain(v17);
  [(AKStrongDeviceIdentitySigner *)v8 _isProcessExcluded:v7 completion:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_isProcessAllowed:(id)allowed completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, allowed);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  if ([location[0] length])
  {
    v5 = +[AKURLBag sharedBag];
    v4 = AKBAAOnlyAllowedProcessBagConfigKey;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1000477C8;
    v11 = &unk_10031FF40;
    v12 = _objc_retain(location[0]);
    v13 = _objc_retain(v15);
    [v5 configurationValueForKey:v4 fromCache:1 completion:&v7];
    _objc_release(v5);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    v14 = 0;
  }

  else
  {
    if (v15)
    {
      (*(v15 + 2))(v15, 0, 0);
    }

    v14 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_isURLHostVIPAllowed:(id)allowed completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, allowed);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  if ([location[0] length])
  {
    v5 = +[AKURLBag sharedBag];
    v4 = AKBAAOnlyAllowedVIPsBagConfigKey;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100047B14;
    v11 = &unk_10031FF68;
    v14 = _objc_retain(v16);
    v12 = _objc_retain(selfCopy);
    v13 = _objc_retain(location[0]);
    [v5 configurationValueForKey:v4 fromCache:1 completion:&v7];
    _objc_release(v5);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v14, 0);
    v15 = 0;
  }

  else
  {
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }

    v15 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_isProcessExcluded:(id)excluded completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, excluded);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  if ([location[0] length])
  {
    v5 = +[AKURLBag sharedBag];
    v4 = AKBAAExclusionProcessBagConfigKey;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100047EE0;
    v11 = &unk_10031FF90;
    v12 = _objc_retain(selfCopy);
    v13 = _objc_retain(location[0]);
    v14 = _objc_retain(v16);
    [v5 configurationValueForKey:v4 fromCache:1 completion:&v7];
    _objc_release(v5);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    v15 = 0;
  }

  else
  {
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }

    v15 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_isURLHostVIPExcluded:(id)excluded completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, excluded);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  if ([location[0] length])
  {
    v16 = _objc_retain(&off_100339710);
    v5 = +[AKURLBag sharedBag];
    v4 = AKBAAExclusionVIPsBagConfigKey;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1000483B8;
    v11 = &unk_10031FFB8;
    v12 = _objc_retain(v16);
    v13 = _objc_retain(selfCopy);
    v14 = _objc_retain(location[0]);
    v15 = _objc_retain(v18);
    [v5 configurationValueForKey:v4 fromCache:1 completion:&v7];
    _objc_release(v5);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v16, 0);
    v17 = 0;
  }

  else
  {
    if (v18)
    {
      (*(v18 + 2))(v18, 0);
    }

    v17 = 1;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_doesHostVIPMatch:(id)match vipList:(id)list
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, match);
  v15 = 0;
  objc_storeStrong(&v15, list);
  memset(__b, 0, sizeof(__b));
  v10 = _objc_retain(v15);
  v11 = [v10 countByEnumeratingWithState:__b objects:v18 count:16];
  if (v11)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v11;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(__b[1] + 8 * v7);
      if ([location[0] hasSuffix:v14])
      {
        break;
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [v10 countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }

    v17 = 1;
    v12 = 1;
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  _objc_release(v10);
  if (!v12)
  {
    v17 = 0;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v17 & 1;
}

- (id)_preExcludedProcesses
{
  v5 = &unk_100374630;
  location = 0;
  objc_storeStrong(&location, &stru_10031FFD8);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374628;

  return v2;
}

- (void)_reportBAASigningForEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v3 = +[AKURLBag sharedBag];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100048AC8;
  v8 = &unk_100320028;
  v9 = _objc_retain(selfCopy);
  v10 = _objc_retain(location[0]);
  [v3 configurationValueForKey:@"baa-sign-sampling" fromCache:1 completion:?];
  _objc_release(v3);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateAnalyticsEvent:(id)event withError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v20 = 0;
  objc_storeStrong(&v20, error);
  v14 = +[AKDevice currentDevice];
  isInternalBuild = [v14 isInternalBuild];
  _objc_release(v14);
  if (isInternalBuild)
  {
    ak_allUnderlyingErrors = [v20 ak_allUnderlyingErrors];
    v18 = +[NSMutableArray array];
    memset(__b, 0, sizeof(__b));
    v11 = _objc_retain(ak_allUnderlyingErrors);
    v12 = [v11 countByEnumeratingWithState:__b objects:v22 count:16];
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
          objc_enumerationMutation(v11);
        }

        v17 = *(__b[1] + 8 * v9);
        v5 = v18;
        localizedDescription = [v17 localizedDescription];
        [v5 addObject:?];
        _objc_release(localizedDescription);
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [v11 countByEnumeratingWithState:__b objects:v22 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    _objc_release(v11);
    v4 = [v18 componentsJoinedByString:@"<<"];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(v4);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&ak_allUnderlyingErrors, 0);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldPostAnalyticsWithSamplingRate:(int64_t)rate
{
  selfCopy = self;
  v11 = a2;
  rateCopy = rate;
  v7 = +[AKConfiguration sharedConfiguration];
  lastKnownIDMSEnvironment = [v7 lastKnownIDMSEnvironment];
  _objc_release(v7);
  location[1] = lastKnownIDMSEnvironment;
  if (lastKnownIDMSEnvironment)
  {
    location[0] = _AKLogSystem();
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v14, @"com.apple.authkit.baa.signing");
      _os_log_debug_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEBUG, "Reporting  %@ is not supported for non-prod environments", v14, 0xCu);
    }

    objc_storeStrong(location, 0);
    return 0;
  }

  else
  {
    v5 = +[AKDevice currentDevice];
    isInternalBuild = [v5 isInternalBuild];
    _objc_release(v5);
    if (isInternalBuild)
    {
      if (rateCopy - 2 > 0)
      {
        v4 = rateCopy - 2;
      }

      else
      {
        v4 = 0;
      }

      rateCopy = v4;
    }

    return !rateCopy || [(AKStrongDeviceIdentitySigner *)selfCopy _chanceInOptionsCountUsingTenExponent:rateCopy];
  }
}

- (BOOL)_chanceInOptionsCountUsingTenExponent:(int64_t)exponent
{
  if (exponent < 1)
  {
    return 0;
  }

  *__upper_bound = pow(10.0, exponent);
  return arc4random_uniform(__upper_bound[0]) == 1;
}

@end
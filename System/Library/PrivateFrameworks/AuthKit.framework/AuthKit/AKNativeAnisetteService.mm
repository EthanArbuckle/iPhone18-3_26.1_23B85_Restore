@interface AKNativeAnisetteService
- (AKNativeAnisetteService)init;
- (AKNativeAnisetteService)initWithClient:(id)client;
- (BOOL)_isProcessExemptedFromVMBAA;
- (id)_tq_anisetteDataForDSID:(unint64_t)d withError:(id *)error;
- (id)_tq_anisetteDataWithRoutingInfoForLastKnownDSIDWithError:(id *)error;
- (void)_addDeviceTokenToHeaders:(id)headers completion:(id)completion;
- (void)_addProvisioningBAAV1HeadersToRequest:(id)request completion:(id)completion;
- (void)_cleanUpCPIMBytes:(char *)bytes provisioningContext:(unsigned int)context;
- (void)_createProvisioningEndURLRequestWithCPIM:(id)m withPreviousTransactionID:(id)d completion:(id)completion;
- (void)_createProvisioningStartURLRequestWithPreviousTXID:(id)d completion:(id)completion;
- (void)_createSyncURLRequestWithMID:(id)d SRM:(id)m routingInfo:(unint64_t)info completion:(id)completion;
- (void)_endProvisioningWithPreviousTransactionId:(id)id cpimData:(id)data cpimBytes:(char *)bytes provisioningContext:(unsigned int)context completion:(id)completion;
- (void)_invokeTrafficRequest:(id)request;
- (void)_processEndProvisioningData:(id)data withResponse:(id)response error:(id)error previousTransactionId:(id)id cpimBytes:(char *)bytes provisioningContext:(unsigned int)context completion:(id)completion;
- (void)_processPendingRequests;
- (void)_processStartProvisioningData:(id)data withResponse:(id)response error:(id)error previousTransactionId:(id)id completion:(id)completion;
- (void)_processSyncAnisetteResponse:(id)response completion:(id)completion;
- (void)_shouldAddBAAV1HeadersWithCompletion:(id)completion;
- (void)_signAppropriateBAAForProvisioningRequest:(id)request urlKey:(id)key completion:(id)completion;
- (void)_signRequestWithProvisioningHeaders:(id)headers forUrlKey:(id)key;
- (void)_signWithBAAHeadersIfNeededForKey:(id)key withRequest:(id)request completion:(id)completion;
- (void)_startProvisioningWithPreviousTransactionId:(id)id completion:(id)completion;
- (void)_syncAnisetteWithMIDData:(id)data srmData:(id)srmData routingInfo:(unint64_t)info completion:(id)completion;
- (void)_tq_activateAndExecuteRequest:(id)request;
- (void)_tq_eraseAnisetteWithCompletion:(id)completion;
- (void)_tq_invokeAnisetteTrafficRequest:(id)request withCompletion:(id)completion;
- (void)_tq_invokeAttestationRequestWithTrafficClearance:(id)clearance completion:(id)completion;
- (void)_tq_legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion;
- (void)_tq_processEndProvisioningResponse:(id)response error:(id)error cpimBytes:(char *)bytes provisioningContext:(unsigned int)context completion:(id)completion;
- (void)_tq_processStartProvisioningResponse:(id)response error:(id)error completion:(id)completion;
- (void)_tq_provisionAnisetteWithCompletion:(id)completion;
- (void)_tq_syncAnisetteWithSIMData:(id)data completion:(id)completion;
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)fetchAttestationDataForRequestData:(id)data completion:(id)completion;
- (void)fetchPeerAttestationDataForRequest:(id)request completion:(id)completion;
- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)resetDeviceIdentityWithCompletion:(id)completion;
- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion;
@end

@implementation AKNativeAnisetteService

- (void)_processPendingRequests
{
  selfCopy = self;
  v9[1] = a2;
  v3 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  queue = [v3 trafficQueue];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100010AEC;
  v8 = &unk_10031F8B0;
  v9[0] = _objc_retain(selfCopy);
  dispatch_async(queue, &v4);
  _objc_release(queue);
  _objc_release(v3);
  objc_storeStrong(v9, 0);
}

- (AKNativeAnisetteService)init
{
  v4 = 0;
  v4 = [(AKNativeAnisetteService *)self initWithClient:?];
  v3 = _objc_retain(v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKNativeAnisetteService)initWithClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v3 = selfCopy;
  selfCopy = 0;
  v10.receiver = v3;
  v10.super_class = AKNativeAnisetteService;
  selfCopy = [(AKNativeAnisetteService *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_client, location[0]);
    v4 = +[AKMIDValidator sharedValidator];
    midValidator = selfCopy->_midValidator;
    selfCopy->_midValidator = v4;
    _objc_release(midValidator);
    v6 = +[AKStrongDeviceIdentitySigner sharedSigner];
    strongDeviceIdentitySigner = selfCopy->_strongDeviceIdentitySigner;
    selfCopy->_strongDeviceIdentitySigner = v6;
    _objc_release(strongDeviceIdentitySigner);
  }

  v9 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)fetchAttestationDataForRequestData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v18 = os_transaction_create();
  if (!location[0])
  {
    v4 = objc_opt_new();
    v5 = location[0];
    location[0] = v4;
    _objc_release(v5);
  }

  [location[0] setClient:selfCopy->_client];
  v7 = [AKSigningTrafficClearanceRequest alloc];
  v6 = location[0];
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_10005ADB0;
  v13 = &unk_100320738;
  v14 = _objc_retain(selfCopy);
  v15 = _objc_retain(v18);
  v16 = _objc_retain(v19);
  v17 = [(AKSigningTrafficClearanceRequest *)v7 initWithRequestData:v6 signingBlock:&v9];
  [(AKSigningTrafficClearanceRequest *)v17 setShouldProvisionIfNeccessary:1];
  [(AKNativeAnisetteService *)selfCopy _invokeTrafficRequest:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)_tq_invokeAttestationRequestWithTrafficClearance:(id)clearance completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, clearance);
  v85 = 0;
  objc_storeStrong(&v85, completion);
  v18 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  trafficQueue = [v18 trafficQueue];
  dispatch_assert_queue_V2(trafficQueue);
  _objc_release(trafficQueue);
  _objc_release(v18);
  v79[0] = 0;
  v79[1] = v79;
  v80 = 838860800;
  v81 = 48;
  v82 = sub_100003824;
  v83 = sub_1000110E0;
  v84 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v74 = 838860800;
  v75 = 48;
  v76 = sub_100003824;
  v77 = sub_1000110E0;
  v78 = 0;
  v72 = 0uLL;
  v15 = _AKSignpostLogSystem();
  *&v16 = _AKSignpostCreate();
  *(&v16 + 1) = v4;
  v71 = v16;
  _objc_release(v15);
  v70 = _AKSignpostLogSystem();
  v69 = 1;
  v68 = v16;
  if (v16 && v68 != -1 && os_signpost_enabled(v70))
  {
    log = v70;
    type = v69;
    spid = v68;
    sub_10001CEEC(v67);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, type, spid, "SignAndAttestation", " enableTelemetry=YES ", v67, 2u);
  }

  objc_storeStrong(&v70, 0);
  oslog = _AKSignpostLogSystem();
  v65 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v88, v71);
    _os_log_impl(&_mh_execute_header, oslog, v65, "BEGIN [%lld]: SignAndAttestation  enableTelemetry=YES ", v88, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v72 = v71;
  v59[0] = 0;
  v59[1] = v59;
  v60 = 838860800;
  v61 = 48;
  v62 = sub_100003824;
  v63 = sub_1000110E0;
  v64 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v54 = 838860800;
  v55 = 48;
  v56 = sub_100003824;
  v57 = sub_1000110E0;
  v58 = 0;
  group = dispatch_group_create();
  dispatch_group_enter(group);
  v11 = +[AKBAADeviceTokenController sharedTokenController];
  v46 = _NSConcreteStackBlock;
  v47 = -1073741824;
  v48 = 0;
  v49 = sub_10005B9F8;
  v50 = &unk_10031F8B0;
  v51 = _objc_retain(group);
  [(AKBAADeviceTokenController *)v11 refreshCertWithTokenFeatureWithCompletionHandler:&v46];
  _objc_release(v11);
  dispatch_group_enter(group);
  v10 = selfCopy;
  v9 = location[0];
  v40 = _NSConcreteStackBlock;
  v41 = -1073741824;
  v42 = 0;
  v43 = sub_10005BA2C;
  v44 = &unk_100320760;
  v45[1] = v59;
  v45[2] = v79;
  v45[0] = _objc_retain(group);
  [(AKNativeAnisetteService *)v10 _tq_invokeAnisetteTrafficRequest:v9 withCompletion:&v40];
  v39 = +[NSMutableDictionary dictionary];
  v38 = _objc_retain(selfCopy->_strongDeviceIdentitySigner);
  attestationRequestData = [location[0] attestationRequestData];
  dispatch_group_enter(group);
  v8 = selfCopy;
  v28 = _NSConcreteStackBlock;
  v29 = -1073741824;
  v30 = 0;
  v31 = sub_10005BBC0;
  v32 = &unk_1003207B0;
  v33 = _objc_retain(v38);
  v34 = _objc_retain(attestationRequestData);
  v36[1] = v53;
  v35 = _objc_retain(group);
  v36[2] = v73;
  v36[0] = _objc_retain(selfCopy);
  [(AKNativeAnisetteService *)v8 _shouldAddBAAV1HeadersWithCompletion:&v28];
  v7 = group;
  v6 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  queue = [v6 trafficQueue];
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_10005C0A4;
  v24 = &unk_1003207D8;
  v25 = _objc_retain(v39);
  v26[1] = v79;
  v26[2] = v73;
  v26[3] = v59;
  v26[4] = v53;
  v27 = v72;
  v26[0] = _objc_retain(v85);
  dispatch_group_notify(v7, queue, &v20);
  _objc_release(queue);
  _objc_release(v6);
  objc_storeStrong(v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v36, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&attestationRequestData, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(v45, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&group, 0);
  _Block_object_dispose(v53, 8);
  objc_storeStrong(&v58, 0);
  _Block_object_dispose(v59, 8);
  objc_storeStrong(&v64, 0);
  _Block_object_dispose(v73, 8);
  objc_storeStrong(&v78, 0);
  _Block_object_dispose(v79, 8);
  objc_storeStrong(&v84, 0);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(location, 0);
}

- (void)_addDeviceTokenToHeaders:(id)headers completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  v8 = +[AKDevice currentDevice];
  isInRecoveryPartition = [v8 isInRecoveryPartition];
  _objc_release(v8);
  if (isInRecoveryPartition)
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      log = v21;
      type = v20;
      sub_10001CEEC(v19);
      _os_log_impl(&_mh_execute_header, log, type, "In RecoveryOS. No device token. Returning", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    if (v22)
    {
      (*(v22 + 2))();
    }

    v18 = 1;
  }

  else
  {
    v17 = +[AKBAADeviceTokenController sharedTokenController];
    v4 = v17;
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_10005C680;
    v14 = &unk_100320800;
    v15 = _objc_retain(location[0]);
    v16 = _objc_retain(v22);
    [(AKBAADeviceTokenController *)v4 fetchBAADeviceTokenWithCompletionHandler:&v10];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isProcessExemptedFromVMBAA
{
  name = [(AKClient *)self->_client name];
  v7 = 0;
  v5 = 0;
  v4 = 1;
  if (![(NSString *)name hasPrefix:@"AKTester"])
  {
    v8 = +[NSProcessInfo processInfo];
    v7 = 1;
    processName = [(NSProcessInfo *)v8 processName];
    v5 = 1;
    v4 = [(NSString *)processName hasPrefix:@"AKTester"];
  }

  if (v5)
  {
    _objc_release(processName);
  }

  if (v7)
  {
    _objc_release(v8);
  }

  _objc_release(name);
  return v4 & 1;
}

- (void)_shouldAddBAAV1HeadersWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v15 = +[AKDevice currentDevice];
  isStrongDeviceIdentitySupported = [v15 isStrongDeviceIdentitySupported];
  _objc_release(v15);
  if (!isStrongDeviceIdentitySupported)
  {
    v35 = _AKTrafficLogSubsystem();
    v34 = 2;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      log = v35;
      type = v34;
      sub_10001CEEC(v33);
      _os_log_debug_impl(&_mh_execute_header, log, type, "DeviceIdentity is not supported. No BAA V1 headers.", v33, 2u);
    }

    objc_storeStrong(&v35, 0);
    (*(location[0] + 2))(location[0], 0);
    v32 = 1;
    goto LABEL_15;
  }

  v11 = +[AKDevice currentDevice];
  isVirtualMachine = [v11 isVirtualMachine];
  _objc_release(v11);
  if (isVirtualMachine)
  {
    if ([(AKNativeAnisetteService *)selfCopy _isProcessExemptedFromVMBAA])
    {
      (*(location[0] + 2))(location[0], 0);
      v32 = 1;
      goto LABEL_15;
    }

    v10 = +[AKURLBag sharedBag];
    v9 = AKURLBagKeyVMBAADisabled;
    v26 = _NSConcreteStackBlock;
    v27 = -1073741824;
    v28 = 0;
    v29 = sub_10005CF30;
    v30 = &unk_100320828;
    v31 = _objc_retain(location[0]);
    [v10 configurationValueForKey:v9 fromCache:1 completion:&v26];
    _objc_release(v10);
    objc_storeStrong(&v31, 0);
LABEL_14:
    v32 = 0;
    goto LABEL_15;
  }

  v7 = +[AKFeatureManager sharedManager];
  isPhysicalDeviceBAAEnabled = [v7 isPhysicalDeviceBAAEnabled];
  _objc_release(v7);
  if (isPhysicalDeviceBAAEnabled)
  {
    v4 = +[AKURLBag sharedBag];
    v3 = AKURLBagKeyDeviceBAADisabled;
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_10005D07C;
    v21 = &unk_100320828;
    v22 = _objc_retain(location[0]);
    [v4 configurationValueForKey:v3 fromCache:1 completion:&v17];
    _objc_release(v4);
    objc_storeStrong(&v22, 0);
    goto LABEL_14;
  }

  v25 = _AKTrafficLogSubsystem();
  v24 = 2;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v5 = v25;
    v6 = v24;
    sub_10001CEEC(v23);
    _os_log_debug_impl(&_mh_execute_header, v5, v6, "BAA feature is disabled.", v23, 2u);
  }

  objc_storeStrong(&v25, 0);
  (*(location[0] + 2))(location[0], 0);
  v32 = 1;
LABEL_15:
  objc_storeStrong(location, 0);
}

- (void)resetDeviceIdentityWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(AKStrongDeviceIdentitySigner *)selfCopy->_strongDeviceIdentitySigner resetDeviceIdentityWithCompletion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_invokeTrafficRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v13 = _AKTrafficLogSubsystem();
  v12 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v16, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v13, v12, "Evaluating traffic request for invocation: %@", v16, 0xCu);
  }

  objc_storeStrong(&v13, 0);
  v4 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  queue = [v4 trafficQueue];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10005D434;
  v9 = &unk_10031F078;
  v10 = _objc_retain(location[0]);
  v11 = _objc_retain(selfCopy);
  dispatch_async(queue, &v5);
  _objc_release(queue);
  _objc_release(v4);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_tq_activateAndExecuteRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v6 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  trafficQueue = [v6 trafficQueue];
  dispatch_assert_queue_V2(trafficQueue);
  _objc_release(trafficQueue);
  _objc_release(v6);
  requestQosClass = [location[0] requestQosClass];
  v19 = requestQosClass;
  v18 = 25;
  if (requestQosClass >= 0x19)
  {
    v4 = v19;
  }

  else
  {
    v4 = v18;
  }

  v17 = v4;
  v20 = v4;
  v16 = _AKTrafficLogSubsystem();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10005D934(v24, requestQosClass, v20, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v16, v15, "Executing signing request with QoS: original=%d, enforced=%d, request=%@", v24, 0x18u);
  }

  objc_storeStrong(&v16, 0);
  qos_class = v20;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10005D9A0;
  v11 = &unk_10031F078;
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(selfCopy);
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qos_class, 0, &v7);
  v14[2]();
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  selfCopy = self;
  v18 = a2;
  necessaryCopy = necessary;
  location = 0;
  objc_storeStrong(&location, completion);
  v15 = os_transaction_create();
  v5 = [AKSigningTrafficClearanceRequest alloc];
  client = selfCopy->_client;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10005DE0C;
  v10 = &unk_100320738;
  v11 = _objc_retain(selfCopy);
  v12 = _objc_retain(v15);
  v13 = _objc_retain(location);
  v14 = [(AKSigningTrafficClearanceRequest *)v5 initWithClient:client signingBlock:?];
  [(AKSigningTrafficClearanceRequest *)v14 setShouldProvisionIfNeccessary:necessaryCopy];
  [(AKNativeAnisetteService *)selfCopy _invokeTrafficRequest:v14];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
}

- (void)_tq_invokeAnisetteTrafficRequest:(id)request withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v42 = 0;
  objc_storeStrong(&v42, completion);
  v17 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  trafficQueue = [v17 trafficQueue];
  dispatch_assert_queue_V2(trafficQueue);
  _objc_release(trafficQueue);
  _objc_release(v17);
  v41 = 0;
  v39 = 0;
  v18 = [(AKNativeAnisetteService *)selfCopy _tq_anisetteDataWithRoutingInfoForLastKnownDSIDWithError:&v39];
  objc_storeStrong(&v41, v39);
  v40 = v18;
  if (!v18)
  {
    v38 = _AKTrafficLogSubsystem();
    v37 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v45, v41);
      _os_log_error_impl(&_mh_execute_header, v38, v37, "Failed to fetch anisette data, attempting a one shot immediate retry... Error: %@", v45, 0xCu);
    }

    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v41, 0);
    v36 = v41;
    v14 = [(AKNativeAnisetteService *)selfCopy _tq_anisetteDataWithRoutingInfoForLastKnownDSIDWithError:&v36];
    objc_storeStrong(&v41, v36);
    v4 = v40;
    v40 = v14;
    _objc_release(v4);
    if (v40)
    {
      v35 = _AKTrafficLogSubsystem();
      v34 = 2;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v12 = v35;
        v13 = v34;
        sub_10001CEEC(v33);
        _os_log_debug_impl(&_mh_execute_header, v12, v13, "Anisette fetch retry succeeded!", v33, 2u);
      }

      objc_storeStrong(&v35, 0);
    }
  }

  userInfo = [v41 userInfo];
  v32 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
  _objc_release(userInfo);
  if (v40 || ([v32 isAccountNotProvisioned] & 1) == 0)
  {
    [(AKMIDValidator *)selfCopy->_midValidator validateMID:v40 anisetteFetchError:v41];
    if (v42)
    {
      (*(v42 + 2))(v42, v40, v41);
    }
  }

  else if ([location[0] shouldProvisionIfNeccessary])
  {
    [(AKMIDValidator *)selfCopy->_midValidator validateMID:v40 anisetteFetchError:v41];
    v31 = _AKTrafficLogSubsystem();
    v30 = 2;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v9 = v31;
      v10 = v30;
      sub_10001CEEC(v29);
      _os_log_debug_impl(&_mh_execute_header, v9, v10, "Client requested that we attempt provisioning...", v29, 2u);
    }

    objc_storeStrong(&v31, 0);
    v7 = +[AKURLBagService sharedBagService];
    [v7 clearCache];
    _objc_release(v7);
    v8 = selfCopy;
    v22 = _NSConcreteStackBlock;
    v23 = -1073741824;
    v24 = 0;
    v25 = sub_10005E614;
    v26 = &unk_10031F838;
    v27 = _objc_retain(selfCopy);
    v28 = _objc_retain(v42);
    [(AKNativeAnisetteService *)v8 _tq_provisionAnisetteWithCompletion:&v22];
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v27, 0);
  }

  else
  {
    v21 = _AKTrafficLogSubsystem();
    v20 = 2;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v5 = v21;
      v6 = v20;
      sub_10001CEEC(v19);
      _os_log_debug_impl(&_mh_execute_header, v5, v6, "Skipping Anisette provisioning, per client request.", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    if (v42)
    {
      (*(v42 + 2))(v42, 0, v41);
    }
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v6 = [AKSigningTrafficClearanceRequest alloc];
  client = selfCopy->_client;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10005EC10;
  v11 = &unk_100320738;
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v16);
  v15 = [(AKSigningTrafficClearanceRequest *)v6 initWithClient:client signingBlock:?];
  [(AKNativeAnisetteService *)selfCopy _invokeTrafficRequest:v15];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_tq_legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v9 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  trafficQueue = [v9 trafficQueue];
  dispatch_assert_queue_V2(trafficQueue);
  _objc_release(trafficQueue);
  _objc_release(v9);
  v15 = [NSScanner scannerWithString:location[0]];
  v14 = 0;
  v13 = [v15 scanUnsignedLongLong:&v14];
  if (v13)
  {
    v12 = 0;
    v10 = 0;
    v4 = [(AKNativeAnisetteService *)selfCopy _tq_anisetteDataForDSID:v14 withError:&v10];
    objc_storeStrong(&v12, v10);
    v11 = v4;
    (*(v16 + 2))(v16, v4, v12);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v5 = v16;
    v6 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8003 userInfo:?];
    v5[2](v5, 0);
    _objc_release(v6);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchPeerAttestationDataForRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v7 = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v11, selfCopy, location[0]);
    _os_log_impl(&_mh_execute_header, v7, v6, "%@: Fetching peer attestation data for request (%@)", v11, 0x16u);
  }

  objc_storeStrong(&v7, 0);
  v5 = objc_alloc_init(AKAppleIDSigningController);
  [v5 setIsProxy:1];
  [v5 attestationDataForRequest:location[0] completion:v8];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)_tq_anisetteDataWithRoutingInfoForLastKnownDSIDWithError:(id *)error
{
  selfCopy = self;
  v17 = a2;
  errorCopy = error;
  v9 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  trafficQueue = [v9 trafficQueue];
  dispatch_assert_queue_V2(trafficQueue);
  _objc_release(trafficQueue);
  _objc_release(v9);
  v15 = +[AKActiveAnisetteDSIDFetcher activeAnisettDSIDFromLastKnownIDMSEnvironment];
  v14 = 0;
  v13 = [AKADIProxy getIDMSRoutingInfo:&v14 forDSID:v15];
  if (v13)
  {
    oslog = _AKTrafficLogSubsystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v7 = [NSNumber numberWithInt:v13];
      sub_1000194D4(v20, v7);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "ADIGetIDMSRouting failed! Error: %@", v20, 0xCu);
      _objc_release(v7);
    }

    objc_storeStrong(&oslog, 0);
    if (errorCopy)
    {
      v6 = [NSError ak_wrappedAnisetteError:-8025 underlyingADIErrorCode:v13];
      v3 = v6;
      *errorCopy = v6;
    }

    v19 = 0;
  }

  else
  {
    v10 = [(AKNativeAnisetteService *)selfCopy _tq_anisetteDataForDSID:v15 withError:errorCopy];
    [v10 setRoutingInfo:v14];
    v19 = _objc_retain(v10);
    objc_storeStrong(&v10, 0);
  }

  v4 = v19;

  return v4;
}

- (id)_tq_anisetteDataForDSID:(unint64_t)d withError:(id *)error
{
  selfCopy = self;
  v45 = a2;
  dCopy = d;
  errorCopy = error;
  v21 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  trafficQueue = [v21 trafficQueue];
  dispatch_assert_queue_V2(trafficQueue);
  _objc_release(trafficQueue);
  _objc_release(v21);
  location = _AKTrafficLogSubsystem();
  v41 = 2;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    log = location;
    type = v41;
    sub_10001CEEC(v40);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Looking for Anisette data...", v40, 2u);
  }

  objc_storeStrong(&location, 0);
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = [AKADIProxy requestOTPForDSID:dCopy outMID:&v39 outMIDSize:&v37 outOTP:&v38 outOTPSize:&v36];
  if (v35)
  {
    v34 = [NSError ak_wrappedAnisetteError:v35];
    if ([v34 isAccountNotProvisioned])
    {
      v33 = _AKTrafficLogSubsystem();
      v32 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v17 = [NSNumber numberWithUnsignedLongLong:dCopy];
        sub_1000194D4(v50, v17);
        _os_log_error_impl(&_mh_execute_header, v33, v32, "The DSID %@ is not provisioned for Anisette.", v50, 0xCu);
        _objc_release(v17);
      }

      objc_storeStrong(&v33, 0);
    }

    else
    {
      v31 = _AKTrafficLogSubsystem();
      v30 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v16 = [NSNumber numberWithInt:v35];
        sub_1000194D4(v49, v16);
        _os_log_error_impl(&_mh_execute_header, v31, v30, "ADIOTPRequest failed. Error: %@", v49, 0xCu);
        _objc_release(v16);
      }

      objc_storeStrong(&v31, 0);
    }

    if (errorCopy)
    {
      v15 = v34;
      v4 = v34;
      *errorCopy = v15;
    }

    v47 = 0;
    objc_storeStrong(&v34, 0);
  }

  else
  {
    v5 = [NSData alloc];
    v29 = [v5 initWithBytesNoCopy:v39 length:v37 freeWhenDone:0];
    v6 = [NSData alloc];
    v28 = [v6 initWithBytesNoCopy:v38 length:v36 freeWhenDone:0];
    v27 = [v29 base64EncodedStringWithOptions:?];
    v26 = [v28 base64EncodedStringWithOptions:0];
    oslog = _AKTrafficLogSubsystem();
    v24 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v10 = oslog;
      v11 = v24;
      v9 = geteuid();
      v14 = +[AKDevice currentDevice];
      localUserUUID = [v14 localUserUUID];
      ak_truncatedCopy = [localUserUUID ak_truncatedCopy];
      v23 = _objc_retain(ak_truncatedCopy);
      sub_10005FA18(v48, v27, v26, v9, v23);
      _os_log_debug_impl(&_mh_execute_header, v10, v11, "Anisette Info: mid - %@ otp - %@ euid - %d localUserUUID %@", v48, 0x26u);
      _objc_release(ak_truncatedCopy);
      _objc_release(localUserUUID);
      _objc_release(v14);
      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(&oslog, 0);
    if (v39)
    {
      [AKADIProxy dispose:v39];
    }

    if (v38)
    {
      [AKADIProxy dispose:v38];
    }

    v22 = objc_alloc_init(AKAnisetteData);
    [v22 setMachineID:v27];
    [v22 setOneTimePassword:v26];
    v47 = _objc_retain(v22);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  v7 = v47;

  return v7;
}

- (void)provisionAnisetteWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v4 = [AKSigningTrafficClearanceRequest alloc];
  client = selfCopy->_client;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10005FBE8;
  v9 = &unk_1003208F0;
  v10 = _objc_retain(selfCopy);
  v11 = _objc_retain(location[0]);
  v12 = [(AKSigningTrafficClearanceRequest *)v4 initWithClient:client signingBlock:?];
  [(AKNativeAnisetteService *)selfCopy _invokeTrafficRequest:v12];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_startProvisioningWithPreviousTransactionId:(id)id completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, id);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v6 = selfCopy;
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10005FF2C;
  v11 = &unk_100320940;
  v14 = _objc_retain(v15);
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(location[0]);
  [(AKNativeAnisetteService *)v6 _createProvisioningStartURLRequestWithPreviousTXID:v5 completion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_processStartProvisioningData:(id)data withResponse:(id)response error:(id)error previousTransactionId:(id)id completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v50 = 0;
  objc_storeStrong(&v50, response);
  v49 = 0;
  objc_storeStrong(&v49, error);
  v48 = 0;
  objc_storeStrong(&v48, id);
  v47 = 0;
  objc_storeStrong(&v47, completion);
  v46 = 0;
  if (v49)
  {
    v45 = _AKLogSystem();
    v44 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v56, v49);
      _os_log_error_impl(&_mh_execute_header, v45, v44, "Start provisioning request failed! Error: %@", v56, 0xCu);
    }

    objc_storeStrong(&v45, 0);
    if (v47)
    {
      (*(v47 + 2))(v47, 0, v49, 0);
    }

    v43 = 1;
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v42 = _AKLogSystem();
    v41 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v55, v50);
      _os_log_error_impl(&_mh_execute_header, v42, v41, "Unexpected response class! %@", v55, 0xCu);
    }

    objc_storeStrong(&v42, 0);
    if (v47)
    {
      v16 = v47;
      v17 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8008 userInfo:?];
      v16[2](v16, 0);
      _objc_release(v17);
    }

    v43 = 1;
    goto LABEL_34;
  }

  statusCode = [v50 statusCode];
  v39 = _AKLogSystem();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [NSNumber numberWithInteger:statusCode];
    sub_1000194D4(v54, v15);
    _os_log_impl(&_mh_execute_header, v39, v38, "Start provisioning response code: %@", v54, 0xCu);
    _objc_release(v15);
  }

  objc_storeStrong(&v39, 0);
  if (statusCode != 200 && location[0])
  {
    v7 = [NSString alloc];
    v37 = [v7 initWithData:location[0] encoding:4];
    v36 = _AKLogSystem();
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v53, v37);
      _os_log_impl(&_mh_execute_header, v36, v35, "Start provisioning response body: %@", v53, 0xCu);
    }

    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
  }

  if (location[0])
  {
    v8 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/x-plist"];
    v9 = v46;
    v46 = v8;
    _objc_release(v9);
  }

  if (statusCode != 436 || v48)
  {
    v11 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
    queue = [v11 trafficQueue];
    v22 = _NSConcreteStackBlock;
    v23 = -1073741824;
    v24 = 0;
    v25 = sub_100060B4C;
    v26 = &unk_1003200A8;
    v27 = _objc_retain(selfCopy);
    v28 = _objc_retain(v46);
    v29 = _objc_retain(v49);
    v30 = _objc_retain(v47);
    dispatch_async(queue, &v22);
    _objc_release(queue);
    _objc_release(v11);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v27, 0);
LABEL_33:
    v43 = 0;
    goto LABEL_34;
  }

  v14 = [v46 objectForKeyedSubscript:@"Response"];
  v34 = [v14 objectForKeyedSubscript:@"txid"];
  _objc_release(v14);
  if (!v34 || v48)
  {
    v43 = 0;
  }

  else
  {
    v33 = _AKLogSystem();
    v32 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v33;
      v13 = v32;
      sub_10001CEEC(v31);
      _os_log_impl(&_mh_execute_header, v12, v13, "Attempting provisioning again...", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    [(AKNativeAnisetteService *)selfCopy _startProvisioningWithPreviousTransactionId:v48 completion:v47];
    v43 = 1;
  }

  objc_storeStrong(&v34, 0);
  if (!v43)
  {
    goto LABEL_33;
  }

LABEL_34:
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
}

- (void)_tq_processStartProvisioningResponse:(id)response error:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v47 = 0;
  objc_storeStrong(&v47, error);
  v46 = 0;
  objc_storeStrong(&v46, completion);
  v23 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  trafficQueue = [v23 trafficQueue];
  dispatch_assert_queue_V2(trafficQueue);
  _objc_release(trafficQueue);
  _objc_release(v23);
  v45 = +[AKActiveAnisetteDSIDFetcher activeAnisettDSIDFromCurrentIDMSEnvironment];
  if (location[0])
  {
    v15 = [location[0] objectForKeyedSubscript:@"Response"];
    v40 = [v15 objectForKeyedSubscript:@"spim"];
    _objc_release(v15);
    if (v40)
    {
      v36 = [[NSData alloc] initWithBase64EncodedString:v40 options:0];
      v5 = v36;
      bytes = [v36 bytes];
      v34 = [v36 length];
      v33 = 0;
      v32 = 0;
      v31 = 0;
      v30 = 0;
      v33 = [AKADIProxy startProvisioningWithDSID:v45 SPIM:bytes SPIMLength:v34 outCPIM:&v32 outCPIMLength:&v31 outSession:&v30];
      if (!v33 && v32)
      {
        v27 = _AKLogSystem();
        v26 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v27;
          v7 = v26;
          sub_10001CEEC(v25);
          _os_log_impl(&_mh_execute_header, v6, v7, "ADIProvisioningStart succeeded!", v25, 2u);
        }

        objc_storeStrong(&v27, 0);
        v24 = [NSData dataWithBytes:v32 length:v31];
        if (v46)
        {
          (*(v46 + 2))(v46, 1, 0, v24, v30, v32);
        }

        objc_storeStrong(&v24, 0);
        v41 = 0;
      }

      else
      {
        v29 = _AKLogSystem();
        v28 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v10 = [NSNumber numberWithInt:v33];
          sub_1000194D4(v50, v10);
          _os_log_error_impl(&_mh_execute_header, v29, v28, "ADIProvisioningStart failed. Error: %@", v50, 0xCu);
          _objc_release(v10);
        }

        objc_storeStrong(&v29, 0);
        [(AKNativeAnisetteService *)selfCopy _cleanUpCPIMBytes:v32 provisioningContext:v30];
        if (v46)
        {
          v8 = v46;
          v9 = [NSError ak_wrappedAnisetteError:v33];
          v8[2](v8, 0);
          _objc_release(v9);
        }

        v41 = 1;
      }

      objc_storeStrong(&v36, 0);
    }

    else
    {
      v39 = _AKLogSystem();
      v38 = 16;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v13 = v39;
        v14 = v38;
        sub_10001CEEC(v37);
        _os_log_error_impl(&_mh_execute_header, v13, v14, "No SPIM!", v37, 2u);
      }

      objc_storeStrong(&v39, 0);
      v11 = v46;
      v12 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8008 userInfo:0];
      v11[2](v11, 0);
      _objc_release(v12);
      v41 = 1;
    }

    objc_storeStrong(&v40, 0);
  }

  else
  {
    v44 = _AKLogSystem();
    v43 = 16;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      log = v44;
      type = v43;
      sub_10001CEEC(v42);
      _os_log_error_impl(&_mh_execute_header, log, type, "No response body for start provisioning request!", v42, 2u);
    }

    objc_storeStrong(&v44, 0);
    if (v46)
    {
      v16 = v46;
      v17 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8007 userInfo:?];
      v16[2](v16, 0);
      _objc_release(v17);
    }

    v41 = 1;
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

- (void)_endProvisioningWithPreviousTransactionId:(id)id cpimData:(id)data cpimBytes:(char *)bytes provisioningContext:(unsigned int)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, id);
  v26 = 0;
  objc_storeStrong(&v26, data);
  bytesCopy = bytes;
  contextCopy = context;
  v23 = 0;
  objc_storeStrong(&v23, completion);
  v13 = selfCopy;
  v11 = v26;
  v12 = location[0];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100061404;
  v18 = &unk_100320990;
  v19 = _objc_retain(selfCopy);
  v21[1] = bytesCopy;
  v22 = contextCopy;
  v21[0] = _objc_retain(v23);
  v20 = _objc_retain(location[0]);
  [(AKNativeAnisetteService *)v13 _createProvisioningEndURLRequestWithCPIM:v11 withPreviousTransactionID:v12 completion:?];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)_processEndProvisioningData:(id)data withResponse:(id)response error:(id)error previousTransactionId:(id)id cpimBytes:(char *)bytes provisioningContext:(unsigned int)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v62 = 0;
  objc_storeStrong(&v62, response);
  v61 = 0;
  objc_storeStrong(&v61, error);
  v60 = 0;
  objc_storeStrong(&v60, id);
  bytesCopy = bytes;
  contextCopy = context;
  v57 = 0;
  objc_storeStrong(&v57, completion);
  v56 = 0;
  if (v61)
  {
    v55 = _AKLogSystem();
    v54 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v67, v61);
      _os_log_error_impl(&_mh_execute_header, v55, v54, "End provisioning request failed! Error: %@", v67, 0xCu);
    }

    objc_storeStrong(&v55, 0);
    if (v57)
    {
      (*(v57 + 2))(v57, 0, v61);
    }

    v53 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      statusCode = [v62 statusCode];
      if (statusCode != 200 && location[0])
      {
        v9 = [NSString alloc];
        v49 = [v9 initWithData:location[0] encoding:4];
        v48 = _AKLogSystem();
        v47 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v65, v49);
          _os_log_impl(&_mh_execute_header, v48, v47, "End provisioning response body: %@", v65, 0xCu);
        }

        objc_storeStrong(&v48, 0);
        objc_storeStrong(&v49, 0);
      }

      if (location[0])
      {
        v10 = [AAFSerialization dictionaryFromObject:location[0] ofType:@"application/x-plist"];
        v11 = v56;
        v56 = v10;
        _objc_release(v11);
      }

      if (statusCode != 436 || v60)
      {
        v13 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
        queue = [v13 trafficQueue];
        v25 = _NSConcreteStackBlock;
        v26 = -1073741824;
        v27 = 0;
        v28 = sub_100062184;
        v29 = &unk_1003209E0;
        v30 = _objc_retain(selfCopy);
        v31 = _objc_retain(v56);
        v32 = _objc_retain(v61);
        v33[1] = bytesCopy;
        v34 = contextCopy;
        v33[0] = _objc_retain(v57);
        dispatch_async(queue, &v25);
        _objc_release(queue);
        _objc_release(v13);
        objc_storeStrong(v33, 0);
        objc_storeStrong(&v32, 0);
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v30, 0);
      }

      else
      {
        v17 = [v56 objectForKeyedSubscript:@"Response"];
        v46 = [v17 objectForKeyedSubscript:@"txid"];
        _objc_release(v17);
        if (v46 && !v60)
        {
          v45 = _AKLogSystem();
          v44 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v45;
            v16 = v44;
            sub_10001CEEC(v43);
            _os_log_impl(&_mh_execute_header, v15, v16, "Attempting provisioning again...", v43, 2u);
          }

          objc_storeStrong(&v45, 0);
          v14 = selfCopy;
          v35 = _NSConcreteStackBlock;
          v36 = -1073741824;
          v37 = 0;
          v38 = sub_100062088;
          v39 = &unk_1003209B8;
          v40 = _objc_retain(selfCopy);
          v41 = _objc_retain(v60);
          v42 = _objc_retain(v57);
          [(AKNativeAnisetteService *)v14 _startProvisioningWithPreviousTransactionId:0 completion:&v35];
          objc_storeStrong(&v42, 0);
          objc_storeStrong(&v41, 0);
          objc_storeStrong(&v40, 0);
        }

        objc_storeStrong(&v46, 0);
      }

      v53 = 0;
    }

    else
    {
      v52 = _AKLogSystem();
      v51 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v66, v62);
        _os_log_error_impl(&_mh_execute_header, v52, v51, "Unexpected response class! %@", v66, 0xCu);
      }

      objc_storeStrong(&v52, 0);
      if (v57)
      {
        v18 = v57;
        v19 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8008 userInfo:0];
        v18[2](v18, 0);
        _objc_release(v19);
      }

      v53 = 1;
    }
  }

  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(location, 0);
}

- (void)_tq_processEndProvisioningResponse:(id)response error:(id)error cpimBytes:(char *)bytes provisioningContext:(unsigned int)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v76 = 0;
  objc_storeStrong(&v76, error);
  bytesCopy = bytes;
  contextCopy = context;
  v73 = 0;
  objc_storeStrong(&v73, completion);
  v39 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  trafficQueue = [v39 trafficQueue];
  dispatch_assert_queue_V2(trafficQueue);
  _objc_release(trafficQueue);
  _objc_release(v39);
  v72 = +[AKActiveAnisetteDSIDFetcher activeAnisettDSIDFromCurrentIDMSEnvironment];
  if (location[0])
  {
    v29 = [location[0] objectForKeyedSubscript:@"Response"];
    v67 = [v29 objectForKeyedSubscript:@"ptm"];
    _objc_release(v29);
    if (!v67)
    {
      v66 = _AKLogSystem();
      v65 = 16;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v27 = v66;
        v28 = v65;
        sub_10001CEEC(v64);
        _os_log_error_impl(&_mh_execute_header, v27, v28, "No PTM!", v64, 2u);
      }

      objc_storeStrong(&v66, 0);
    }

    v26 = [location[0] objectForKeyedSubscript:@"Response"];
    v63 = [v26 objectForKeyedSubscript:@"tk"];
    _objc_release(v26);
    if (!v63)
    {
      v62 = _AKLogSystem();
      v61 = 16;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v24 = v62;
        v25 = v61;
        sub_10001CEEC(v60);
        _os_log_error_impl(&_mh_execute_header, v24, v25, "No TK!", v60, 2u);
      }

      objc_storeStrong(&v62, 0);
    }

    v23 = [location[0] objectForKeyedSubscript:@"Response"];
    v59 = [v23 objectForKeyedSubscript:@"X-Apple-I-MD-RINFO"];
    _objc_release(v23);
    if (!v59)
    {
      v58 = _AKLogSystem();
      v57 = 16;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v21 = v58;
        v22 = v57;
        sub_10001CEEC(v56);
        _os_log_error_impl(&_mh_execute_header, v21, v22, "No routing info!", v56, 2u);
      }

      objc_storeStrong(&v58, 0);
    }

    if (v63 && v67 && v59)
    {
      integerValue = [v59 integerValue];
      v54 = [AKADIProxy setIDMSRoutingInfo:integerValue forDSID:v72];
      if (v54)
      {
        oslog = _AKLogSystem();
        v52 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v18 = [NSNumber numberWithInt:v54];
          sub_1000194D4(v80, v18);
          _os_log_error_impl(&_mh_execute_header, oslog, v52, "ADISetIDMSRouting failed, Error: %@", v80, 0xCu);
          _objc_release(v18);
        }

        objc_storeStrong(&oslog, 0);
        [(AKNativeAnisetteService *)selfCopy _cleanUpCPIMBytes:bytesCopy provisioningContext:contextCopy];
        v16 = v73;
        v17 = [NSError ak_wrappedAnisetteError:v54];
        v16[2](v16, 0);
        _objc_release(v17);
        v68 = 1;
      }

      else
      {
        v7 = [NSData alloc];
        v51 = [v7 initWithBase64EncodedString:v67 options:?];
        v8 = [NSData alloc];
        v50 = [v8 initWithBase64EncodedString:v63 options:0];
        v9 = v51;
        bytes = [v51 bytes];
        v48 = [v51 length];
        v10 = v50;
        bytes2 = [v50 bytes];
        v46 = [v50 length];
        v45 = [AKADIProxy endProvisioningWithSession:contextCopy PTM:bytes PTMLength:v48 TK:bytes2 TKLength:v46];
        if (v45)
        {
          v44 = _AKLogSystem();
          v43 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v15 = [NSNumber numberWithInt:v45];
            sub_1000194D4(v79, v15);
            _os_log_error_impl(&_mh_execute_header, v44, v43, "ADIProvisioningEnd failed. Error: %@", v79, 0xCu);
            _objc_release(v15);
          }

          objc_storeStrong(&v44, 0);
          [(AKNativeAnisetteService *)selfCopy _cleanUpCPIMBytes:bytesCopy provisioningContext:contextCopy];
          v13 = v73;
          v14 = [NSError ak_wrappedAnisetteError:v45];
          v13[2](v13, 0);
          _objc_release(v14);
          v68 = 1;
        }

        else
        {
          [(AKNativeAnisetteService *)selfCopy _cleanUpCPIMBytes:bytesCopy provisioningContext:contextCopy];
          v42 = _AKLogSystem();
          v41 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v42;
            v12 = v41;
            sub_10001CEEC(v40);
            _os_log_impl(&_mh_execute_header, v11, v12, "ADIProvisioningEnd succeeded!", v40, 2u);
          }

          objc_storeStrong(&v42, 0);
          (*(v73 + 2))(v73, 1, 0);
          v68 = 0;
        }

        objc_storeStrong(&v50, 0);
        objc_storeStrong(&v51, 0);
      }
    }

    else
    {
      [(AKNativeAnisetteService *)selfCopy _cleanUpCPIMBytes:bytesCopy provisioningContext:contextCopy];
      v19 = v73;
      v20 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8008 userInfo:0];
      v19[2](v19, 0);
      _objc_release(v20);
      v68 = 1;
    }

    objc_storeStrong(&v59, 0);
    objc_storeStrong(&v63, 0);
    objc_storeStrong(&v67, 0);
  }

  else
  {
    [(AKNativeAnisetteService *)selfCopy _cleanUpCPIMBytes:bytesCopy provisioningContext:contextCopy];
    v71 = _AKLogSystem();
    v70 = 16;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      log = v71;
      type = v70;
      sub_10001CEEC(v69);
      _os_log_error_impl(&_mh_execute_header, log, type, "No response body for end provisioning request", v69, 2u);
    }

    objc_storeStrong(&v71, 0);
    v30 = v73;
    v31 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8007 userInfo:0];
    v30[2](v30, 0);
    _objc_release(v31);
    v68 = 1;
  }

  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(location, 0);
}

- (void)_cleanUpCPIMBytes:(char *)bytes provisioningContext:(unsigned int)context
{
  selfCopy = self;
  v11 = a2;
  bytesCopy = bytes;
  contextCopy = context;
  if (bytes)
  {
    [AKADIProxy dispose:bytesCopy];
  }

  if (contextCopy)
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v5 = type;
      sub_10001CEEC(v6);
      _os_log_impl(&_mh_execute_header, log, v5, "Destroying provisioning context.", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [AKADIProxy destroyProvisioningSession:contextCopy];
  }
}

- (void)_tq_provisionAnisetteWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v32 = 0;
  v16 = 0;
  if (!+[AAFDeviceInfo isDeviceInDiagnosticMode])
  {
    v33 = +[AKDevice currentDevice];
    v32 = 1;
    v16 = 0;
    if (![v33 isVirtualMachine])
    {
      v16 = +[AKDevice didConfirmDeviceWasActivated]== 0;
    }
  }

  if (v32)
  {
    _objc_release(v33);
  }

  if (v16)
  {
    v31 = _AKTrafficLogSubsystem();
    v30 = 16;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      log = v31;
      type = v30;
      sub_10001CEEC(v29);
      _os_log_error_impl(&_mh_execute_header, log, type, "Device is not activated yet for provisioning.", v29, 2u);
    }

    objc_storeStrong(&v31, 0);
    v12 = location[0];
    v13 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8002 userInfo:0];
    v12[2](v12, 0);
    _objc_release(v13);
    v28 = 1;
  }

  else
  {
    v11 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
    trafficQueue = [v11 trafficQueue];
    dispatch_assert_queue_V2(trafficQueue);
    _objc_release(trafficQueue);
    _objc_release(v11);
    v27 = _AKLogSystem();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v27;
      v9 = v26;
      sub_10001CEEC(v25);
      _os_log_impl(&_mh_execute_header, v8, v9, "Kicking off Anisette provisioning....", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    v24 = +[AKActiveAnisetteDSIDFetcher activeAnisettDSIDFromCurrentIDMSEnvironment];
    v23 = [AKADIProxy isMachineProvisioned:v24];
    v22 = [NSError ak_wrappedAnisetteError:v23];
    if ([v22 isAccountNotProvisioned])
    {
      v3 = selfCopy;
      v17 = _objc_retain(selfCopy);
      v18 = _objc_retain(location[0]);
      [AKNativeAnisetteService _startProvisioningWithPreviousTransactionId:v3 completion:"_startProvisioningWithPreviousTransactionId:completion:"];
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v17, 0);
      v28 = 0;
    }

    else
    {
      v21 = _AKLogSystem();
      v20 = 16;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v6 = v21;
        v7 = v20;
        sub_10001CEEC(v19);
        _os_log_error_impl(&_mh_execute_header, v6, v7, "Anisette is already provisioned", v19, 2u);
      }

      objc_storeStrong(&v21, 0);
      v4 = location[0];
      v5 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8006 userInfo:0];
      v4[2](v4, 0);
      _objc_release(v5);
      v28 = 1;
    }

    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_signWithBAAHeadersIfNeededForKey:(id)key withRequest:(id)request completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v22 = 0;
  objc_storeStrong(&v22, request);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  v9 = +[AKURLBag sharedBag];
  v10 = [v9 isBaaEnabledForKey:location[0]];
  _objc_release(v9);
  if (v10)
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v24, location[0]);
      _os_log_impl(&_mh_execute_header, v20, v19, "Signing with BAA headers for urlKey: %@", v24, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    v18 = objc_alloc_init(AKAppleIDSigningController);
    v6 = v18;
    v5 = v22;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1000635C0;
    v15 = &unk_100320A58;
    v16 = _objc_retain(v22);
    v17 = _objc_retain(v21);
    [v6 signWithBAAHeaders:v5 completion:&v11];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v18, 0);
  }

  else if (v21)
  {
    (*(v21 + 2))(v21, 0, 0);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v6 = [AKSigningTrafficClearanceRequest alloc];
  client = selfCopy->_client;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100063A2C;
  v11 = &unk_100320738;
  v12 = _objc_retain(selfCopy);
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v16);
  v15 = [(AKSigningTrafficClearanceRequest *)v6 initWithClient:client signingBlock:?];
  [(AKNativeAnisetteService *)selfCopy _invokeTrafficRequest:v15];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_syncAnisetteWithMIDData:(id)data srmData:(id)srmData routingInfo:(unint64_t)info completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v21 = 0;
  objc_storeStrong(&v21, srmData);
  infoCopy = info;
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v12 = selfCopy;
  v9 = location[0];
  v10 = v21;
  v11 = infoCopy;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100063D98;
  v16 = &unk_100320AA8;
  v18 = _objc_retain(v19);
  v17 = _objc_retain(selfCopy);
  [(AKNativeAnisetteService *)v12 _createSyncURLRequestWithMID:v9 SRM:v10 routingInfo:v11 completion:?];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_processSyncAnisetteResponse:(id)response completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v53 = 0;
  objc_storeStrong(&v53, completion);
  v52 = +[AKActiveAnisetteDSIDFetcher activeAnisettDSIDFromCurrentIDMSEnvironment];
  if (location[0])
  {
    v18 = [location[0] objectForKeyedSubscript:@"Response"];
    v47 = [v18 objectForKeyedSubscript:@"Status"];
    _objc_release(v18);
    v46 = _AKLogSystem();
    v45 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v57, v47);
      _os_log_debug_impl(&_mh_execute_header, v46, v45, "Response status details: %@", v57, 0xCu);
    }

    objc_storeStrong(&v46, 0);
    v44 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [v47 objectForKeyedSubscript:AKErrorStatusCodeKey];
      if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v40 integerValue])
      {
        v39 = _AKLogSystem();
        v38 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v56, v40);
          _os_log_error_impl(&_mh_execute_header, v39, v38, "Server sync failed! Error Code: %@", v56, 0xCu);
        }

        objc_storeStrong(&v39, 0);
        v44 = 1;
      }

      else
      {
        v37 = _AKLogSystem();
        v36 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v37;
          v15 = v36;
          sub_10001CEEC(v35);
          _os_log_impl(&_mh_execute_header, v14, v15, "Server sync looks like it succeeded.", v35, 2u);
        }

        objc_storeStrong(&v37, 0);
      }

      objc_storeStrong(&v40, 0);
    }

    else
    {
      v43 = _AKLogSystem();
      v42 = 16;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v16 = v43;
        v17 = v42;
        sub_10001CEEC(v41);
        _os_log_error_impl(&_mh_execute_header, v16, v17, "Unexpected response format under Status key!", v41, 2u);
      }

      objc_storeStrong(&v43, 0);
    }

    if (v44)
    {
      v12 = v53;
      v13 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8011 userInfo:0];
      v12[2](v12, 0);
      _objc_release(v13);
      v48 = 1;
    }

    else
    {
      v11 = [location[0] objectForKeyedSubscript:@"Response"];
      v34 = [v11 objectForKeyedSubscript:@"X-Apple-I-MD-RINFO"];
      _objc_release(v11);
      if (!v34)
      {
        goto LABEL_30;
      }

      v33 = _AKLogSystem();
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v33;
        v10 = v32;
        sub_10001CEEC(v31);
        _os_log_impl(&_mh_execute_header, v9, v10, "We've been given new R-Info.", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
      integerValue = [v34 integerValue];
      v29 = [AKADIProxy setIDMSRoutingInfo:integerValue forDSID:v52];
      if (v29)
      {
        oslog = _AKLogSystem();
        v27 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v8 = [NSNumber numberWithInt:v29];
          sub_1000194D4(v55, v8);
          _os_log_error_impl(&_mh_execute_header, oslog, v27, "ADISetIDMSRouting failed! Error: %@", v55, 0xCu);
          _objc_release(v8);
        }

        objc_storeStrong(&oslog, 0);
        v6 = v53;
        v7 = [NSError ak_wrappedAnisetteError:v29];
        v6[2](v6, 0);
        _objc_release(v7);
        v48 = 1;
      }

      else
      {
LABEL_30:
        v26 = _AKLogSystem();
        v25 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v4 = v26;
          v5 = v25;
          sub_10001CEEC(v24);
          _os_log_impl(&_mh_execute_header, v4, v5, "Anisette sync is complete!", v24, 2u);
        }

        objc_storeStrong(&v26, 0);
        (*(v53 + 2))(v53, 1, 0);
        v48 = 0;
      }

      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&v47, 0);
  }

  else
  {
    v51 = _AKLogSystem();
    v50 = 16;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      log = v51;
      type = v50;
      sub_10001CEEC(v49);
      _os_log_error_impl(&_mh_execute_header, log, type, "No response body for sync request!", v49, 2u);
    }

    objc_storeStrong(&v51, 0);
    v19 = v53;
    v20 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8007 userInfo:0];
    v19[2](v19, 0);
    _objc_release(v20);
    v48 = 1;
  }

  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
}

- (void)_tq_syncAnisetteWithSIMData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v66 = 0;
  objc_storeStrong(&v66, completion);
  v26 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  trafficQueue = [v26 trafficQueue];
  dispatch_assert_queue_V2(trafficQueue);
  _objc_release(trafficQueue);
  _objc_release(v26);
  if (location[0] && [location[0] length])
  {
    v61 = _AKLogSystem();
    v60 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v61;
      v19 = v60;
      sub_10001CEEC(v59);
      _os_log_impl(&_mh_execute_header, v18, v19, "Resyncing Anisette provisioning data...", v59, 2u);
    }

    objc_storeStrong(&v61, 0);
    v58 = +[AKActiveAnisetteDSIDFetcher activeAnisettDSIDFromCurrentIDMSEnvironment];
    v57 = 0;
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v16 = v58;
    v15 = location[0];
    v4 = location[0];
    bytes = [v15 bytes];
    v53 = +[AKADIProxy synchronizeWithDSID:SIM:SIMLength:outMID:outMIDLength:outSRM:outSRMLength:](AKADIProxy, "synchronizeWithDSID:SIM:SIMLength:outMID:outMIDLength:outSRM:outSRMLength:", v16, bytes, [location[0] length], &v57, &v55, &v56, &v54);
    v45 = _NSConcreteStackBlock;
    v46 = -1073741824;
    v47 = 0;
    v48 = sub_1000654D4;
    v49 = &unk_100320AC8;
    v50 = v56;
    v51 = v57;
    v52 = objc_retainBlock(&v45);
    if (!v53 && v56 && v57)
    {
      oslog = _AKLogSystem();
      v41 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = oslog;
        v11 = v41;
        sub_10001CEEC(v40);
        _os_log_impl(&_mh_execute_header, v10, v11, "ADISynchronize succeeded!", v40, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v39 = [NSData dataWithBytes:v57 length:v55];
      v38 = [NSData dataWithBytes:v56 length:v54];
      v37 = 0;
      v36 = [AKADIProxy getIDMSRoutingInfo:&v37 forDSID:v58];
      if (v36)
      {
        v35 = _AKLogSystem();
        v34 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v9 = [NSNumber numberWithInt:v36];
          sub_1000194D4(v69, v9);
          _os_log_error_impl(&_mh_execute_header, v35, v34, "ADIGetIDMSRouting failed with error code: %@", v69, 0xCu);
          _objc_release(v9);
        }

        objc_storeStrong(&v35, 0);
      }

      v8 = selfCopy;
      v5 = v39;
      v6 = v38;
      v7 = v37;
      v27 = _NSConcreteStackBlock;
      v28 = -1073741824;
      v29 = 0;
      v30 = sub_1000655D0;
      v31 = &unk_1003208C8;
      v32 = _objc_retain(v52);
      v33 = _objc_retain(v66);
      [(AKNativeAnisetteService *)v8 _syncAnisetteWithMIDData:v5 srmData:v6 routingInfo:v7 completion:&v27];
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v39, 0);
      v62 = 0;
    }

    else
    {
      v44 = _AKLogSystem();
      v43 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v14 = [NSNumber numberWithInt:v53];
        sub_1000194D4(v70, v14);
        _os_log_error_impl(&_mh_execute_header, v44, v43, "ADISynchronize failed. Error: %@", v70, 0xCu);
        _objc_release(v14);
      }

      objc_storeStrong(&v44, 0);
      (*(v52 + 2))();
      v12 = v66;
      v13 = [NSError ak_wrappedAnisetteError:v53];
      v12[2](v12, 0);
      _objc_release(v13);
      v62 = 1;
    }

    objc_storeStrong(&v52, 0);
  }

  else
  {
    v65 = _AKLogSystem();
    v64 = 16;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      log = v65;
      type = v64;
      sub_10001CEEC(v63);
      _os_log_error_impl(&_mh_execute_header, log, type, "Client did not provide SIM data!", v63, 2u);
    }

    objc_storeStrong(&v65, 0);
    v20 = v66;
    v21 = [NSError errorWithDomain:AKAnisetteErrorDomain code:-8010 userInfo:0];
    v20[2](v20, 0);
    _objc_release(v21);
    v62 = 1;
  }

  objc_storeStrong(&v66, 0);
  objc_storeStrong(location, 0);
}

- (void)eraseAnisetteWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v4 = [AKSigningTrafficClearanceRequest alloc];
  client = selfCopy->_client;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000657CC;
  v9 = &unk_1003208F0;
  v10 = _objc_retain(selfCopy);
  v11 = _objc_retain(location[0]);
  v12 = [(AKSigningTrafficClearanceRequest *)v4 initWithClient:client signingBlock:?];
  [(AKNativeAnisetteService *)selfCopy _invokeTrafficRequest:v12];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_tq_eraseAnisetteWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v13 = +[AKNativeAnisetteServiceTrafficManager sharedSigningService];
  trafficQueue = [v13 trafficQueue];
  dispatch_assert_queue_V2(trafficQueue);
  _objc_release(trafficQueue);
  _objc_release(v13);
  v28 = _AKLogSystem();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    log = v28;
    type = v27;
    sub_10001CEEC(v26);
    _os_log_impl(&_mh_execute_header, log, type, "Erasing Anisette provisioning data...", v26, 2u);
  }

  objc_storeStrong(&v28, 0);
  v25 = +[AKActiveAnisetteDSIDFetcher activeAnisettDSIDFromCurrentIDMSEnvironment];
  v24 = [AKADIProxy eraseProvisioningForDSID:v25];
  if (v24)
  {
    v23 = _AKLogSystem();
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v9 = [NSNumber numberWithInt:v24];
      sub_1000194D4(v32, v9);
      _os_log_error_impl(&_mh_execute_header, v23, v22, "Erase failed! Error: %@", v32, 0xCu);
      _objc_release(v9);
    }

    objc_storeStrong(&v23, 0);
    v7 = location[0];
    v8 = [NSError ak_wrappedAnisetteError:v24];
    v7[2](v7, 0);
    _objc_release(v8);
    v21 = 1;
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v20;
      v6 = v19;
      sub_10001CEEC(v18);
      _os_log_impl(&_mh_execute_header, v5, v6, "Erasing Anisette data succeeded!", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    v17 = 0;
    midValidator = selfCopy->_midValidator;
    v15 = 0;
    v4 = [(AKMIDValidator *)midValidator resetKeychainCacheWithError:&v15];
    objc_storeStrong(&v17, v15);
    v16 = v4;
    if ((v4 & 1) == 0)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v31, v17);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to clear last knownMID with error (%@)", v31, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    (*(location[0] + 2))(location[0], 1);
    objc_storeStrong(&v17, 0);
    v21 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_createProvisioningStartURLRequestWithPreviousTXID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v6 = +[AKURLBag sharedBag];
  v5 = AKURLBagKeyStartProvisioning;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100065F5C;
  v11 = &unk_100320AF0;
  v14 = _objc_retain(v15);
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(selfCopy);
  [v6 urlForKey:v5 completion:?];
  _objc_release(v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_createProvisioningEndURLRequestWithCPIM:(id)m withPreviousTransactionID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, m);
  v18 = 0;
  objc_storeStrong(&v18, d);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v8 = +[AKURLBag sharedBag];
  v7 = AKURLBagKeyEndProvisioning;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000663DC;
  v12 = &unk_100320B18;
  v16 = _objc_retain(v17);
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v18);
  v15 = _objc_retain(selfCopy);
  [v8 urlForKey:v7 completion:?];
  _objc_release(v8);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_signAppropriateBAAForProvisioningRequest:(id)request urlKey:(id)key completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v18 = 0;
  objc_storeStrong(&v18, key);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  v7 = selfCopy;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000668B8;
  v12 = &unk_100320B68;
  v13 = _objc_retain(selfCopy);
  v14 = _objc_retain(location[0]);
  v16 = _objc_retain(v17);
  v15 = _objc_retain(v18);
  [(AKNativeAnisetteService *)v7 _shouldAddBAAV1HeadersWithCompletion:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_createSyncURLRequestWithMID:(id)d SRM:(id)m routingInfo:(unint64_t)info completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v22 = 0;
  objc_storeStrong(&v22, m);
  infoCopy = info;
  v20 = 0;
  objc_storeStrong(&v20, completion);
  v10 = +[AKURLBag sharedBag];
  v9 = AKURLBagKeySyncAnisette;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_100066DC4;
  v15 = &unk_100320B90;
  v19[0] = _objc_retain(v20);
  v16 = _objc_retain(selfCopy);
  v17 = _objc_retain(location[0]);
  v18 = _objc_retain(v22);
  v19[1] = infoCopy;
  [v10 urlForKey:v9 completion:?];
  _objc_release(v10);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)_signRequestWithProvisioningHeaders:(id)headers forUrlKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  v9 = 0;
  objc_storeStrong(&v9, key);
  [location[0] ak_addClientInfoHeader];
  [location[0] ak_addClientTimeHeader];
  [location[0] ak_addDeviceMLBHeader];
  [location[0] ak_addDeviceROMHeader];
  [location[0] ak_addDeviceSerialNumberHeader];
  [location[0] ak_addDeviceUDIDHeader];
  [location[0] ak_addLocalUserUUIDHashHeader];
  [location[0] ak_addInternalBuildHeader];
  [location[0] ak_addSeedBuildHeader];
  [location[0] ak_addEffectiveUserIdentifierHeader];
  if ((+[AKDevice hasUniqueDeviceIdentifier]& 1) != 0)
  {
    [location[0] ak_addProvisioningUDIDHeader];
  }

  fullName = [(AKClient *)selfCopy->_client fullName];
  v7 = [(NSString *)fullName length];
  _objc_release(fullName);
  if (v7)
  {
    v4 = location[0];
    fullName2 = [(AKClient *)selfCopy->_client fullName];
    [v4 ak_addClientApp:?];
    _objc_release(fullName2);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_addProvisioningBAAV1HeadersToRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v6 = +[AKDevice currentDevice];
  v17 = 0;
  v7 = 0;
  if (![v6 isVirtualMachine])
  {
    v18 = +[AKFeatureManager sharedManager];
    v17 = 1;
    v7 = [v18 isPhysicalDeviceBAAEnabled] == 0;
  }

  if (v17)
  {
    _objc_release(v18);
  }

  _objc_release(v6);
  if (v7)
  {
    if (v19)
    {
      (*(v19 + 2))(v19, 0);
    }

    v16 = 1;
  }

  else
  {
    v4 = selfCopy;
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100067560;
    v12 = &unk_10031FF18;
    v15 = _objc_retain(v19);
    v13 = _objc_retain(location[0]);
    v14 = _objc_retain(selfCopy);
    [(AKNativeAnisetteService *)v4 _shouldAddBAAV1HeadersWithCompletion:&v8];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

@end
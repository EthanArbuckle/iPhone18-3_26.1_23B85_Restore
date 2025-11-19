@interface DTOService
- (DTOService)initWithWorkQueue:(id)a3 notificationCenter:(id)a4 ui:(id)a5;
- (id)processor;
- (void)startServices;
@end

@implementation DTOService

- (id)processor
{
  v3 = [LACDTOServiceProcessor alloc];
  v4 = [LACDTOFailureProcessor alloc];
  workQueue = self->_workQueue;
  v6 = [[LACUserInterfacePresenter alloc] initWithReplyQueue:workQueue uiController:self->_uiController];
  v7 = [v4 initWithReplyQueue:workQueue ui:v6];
  v14[0] = v7;
  v8 = [(LACDTOSensorTrustService *)self->_sensorTrust evaluationProcessor];
  policyController = self->_policyController;
  emptyPasscodeProcessor = self->_emptyPasscodeProcessor;
  v14[1] = v8;
  v14[2] = emptyPasscodeProcessor;
  v14[3] = policyController;
  v11 = [NSArray arrayWithObjects:v14 count:4];
  v12 = [v3 initWithSubprocessors:v11];

  return v12;
}

- (DTOService)initWithWorkQueue:(id)a3 notificationCenter:(id)a4 ui:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v112.receiver = self;
  v112.super_class = DTOService;
  v12 = [(DTOService *)&v112 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, a3);
    objc_storeStrong(&v13->_uiController, a5);
    v14 = objc_alloc_init(DTOPolicyEvaluationIdentifierFactory);
    v15 = [[DTOKVStore alloc] initWithWorkQueue:v9];
    kvStore = v13->_kvStore;
    v13->_kvStore = v15;

    v86 = objc_alloc_init(LACDTORatchetSEPInterface);
    v17 = [LACDTORatchetHandler alloc];
    v18 = +[Daemon sharedInstance];
    v19 = [v17 initWithContextProvider:v18 sep:v86];

    v20 = [LACDTOKVStoreMigrationController alloc];
    v21 = v13->_kvStore;
    v22 = +[LACGlobalDomain sharedInstance];
    v23 = [v20 initWithKVStore:v21 defaults:v22 workQueue:v13->_workQueue];
    kvsMigrationController = v13->_kvsMigrationController;
    v13->_kvsMigrationController = v23;

    v25 = [LACPersistentStoreFactory makePersistentStoreWithSuiteName:0];
    persistentStore = v13->_persistentStore;
    v13->_persistentStore = v25;

    v27 = objc_alloc_init(DTODeviceInfoProvider);
    deviceInfo = v13->_deviceInfo;
    v13->_deviceInfo = v27;

    v29 = objc_alloc_init(LACDTOEventBus);
    eventBus = v13->_eventBus;
    v13->_eventBus = v29;

    v109[0] = _NSConcreteStackBlock;
    v109[1] = 3221225472;
    v89 = v10;
    v109[2] = sub_100004F84;
    v109[3] = &unk_100054DE8;
    v31 = v13;
    v110 = v31;
    v32 = v9;
    v111 = v32;
    v33 = sub_100004F84(v109);
    featureController = v31->_featureController;
    v31->_featureController = v33;

    v87 = v11;
    v88 = v9;
    v35 = v13->_kvStore;
    v36 = v31->_featureController;
    v37 = v13->_eventBus;
    v38 = +[LACFlags sharedInstance];
    v39 = [LACDTOLocationControllerFactory controllerWithStore:v35 featureController:v36 eventBus:v37 featureFlags:v38 workQueue:v32];
    locationProvider = v31->_locationProvider;
    v31->_locationProvider = v39;

    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_100005044;
    v106[3] = &unk_100054E38;
    v41 = v32;
    v107 = v41;
    v42 = v31;
    v108 = v42;
    v43 = sub_100005044(v106);
    lostMode = v42->_lostMode;
    v42->_lostMode = v43;

    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_1000051A0;
    v102[3] = &unk_100054E60;
    v45 = v19;
    v103 = v45;
    v46 = v41;
    v104 = v46;
    v47 = v42;
    v105 = v47;
    v48 = sub_1000051A0(v102);
    ratchetStateProvider = v47->_ratchetStateProvider;
    v47->_ratchetStateProvider = v48;

    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_100005208;
    v97[3] = &unk_100054E88;
    v50 = v47;
    v98 = v50;
    v99 = v45;
    v100 = v14;
    v51 = v46;
    v101 = v51;
    v84 = v14;
    v85 = v45;
    v52 = sub_100005208(v97);
    pendingEvaluationsController = v50->_pendingEvaluationsController;
    v50->_pendingEvaluationsController = v52;

    v54 = [LACDTOEnvironmentProviderFactory environmentProviderWithLocationProvider:v31->_locationProvider featureController:v31->_featureController ratchetStateProvider:v47->_ratchetStateProvider lostModeController:v42->_lostMode];
    environmentProvider = v50->_environmentProvider;
    v50->_environmentProvider = v54;

    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_100005274;
    v94[3] = &unk_100054EB0;
    v56 = v89;
    v95 = v56;
    v57 = v50;
    v96 = v57;
    v58 = sub_100005274(v94);
    v59 = v57[17];
    v57[17] = v58;

    v60 = [[LACDTOPolicyEvaluationController alloc] initWithEnvironment:v50->_environmentProvider evaluationIdentifierFactory:v84 device:v13->_deviceInfo];
    v61 = v57[1];
    v57[1] = v60;

    [v57[1] addObserver:v50->_pendingEvaluationsController];
    [v57[1] addObserver:v47->_ratchetStateProvider];
    [(LACDTOPendingPolicyEvaluationController *)v50->_pendingEvaluationsController addObserver:v31->_locationProvider];
    v62 = [[LAAnalyticsDTO alloc] initForStatusMonitoringWithEnvironment:v50->_environmentProvider workQueue:v51];
    v63 = v57[20];
    v57[20] = v62;

    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_1000052D0;
    v92[3] = &unk_100054ED8;
    v64 = v57;
    v93 = v64;
    v65 = sub_1000052D0(v92);
    v66 = v64[2];
    v64[2] = v65;

    v67 = [[LACDTOSensorTrustService alloc] initWithReplyQueue:v51 uiController:v13->_uiController store:v13->_kvStore featureStateProvider:v31->_featureController];
    v68 = v64[3];
    v64[3] = v67;

    v69 = [LACDTOLocationPrewarmController alloc];
    v70 = v31->_locationProvider;
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_100005338;
    v90[3] = &unk_100054F00;
    v71 = v64;
    v91 = v71;
    v72 = sub_100005338(v90);
    v73 = [v69 initWithLocationProvider:v70 strategy:v72 workQueue:v13->_workQueue];
    v74 = v71[9];
    v71[9] = v73;

    [v56 addObserver:v71[9]];
    v75 = [LACDTOServiceXPCHost alloc];
    v76 = v31->_featureController;
    v77 = v47->_ratchetStateProvider;
    v9 = v88;
    v78 = [v64[3] trustStateProvider];
    v79 = v75;
    v10 = v89;
    v80 = v76;
    v11 = v87;
    v81 = [v79 initWithFeatureController:v80 ratchetStateProvider:v77 trustStateProvider:v78 pendingEvaluationController:v50->_pendingEvaluationsController];
    v82 = v71[14];
    v71[14] = v81;
  }

  return v13;
}

- (void)startServices
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000549C;
  v4[3] = &unk_100054C68;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end
@interface HSProxCardCoordinator
- (BOOL)isConfiguringLastAccessoryOfSameCategory;
- (BOOL)isInSetupContext;
- (BOOL)requiresDismissalConfirmation;
- (BOOL)requiresDismissalConfirmation:(id)confirmation;
- (BOOL)requiresIdentifyButton;
- (BOOL)requiresIdentifyButton:(id)button;
- (BOOL)shouldShowCustomCommissioningProxCardWithPayload:(id)payload;
- (BOOL)stateMachineConfigurationActiveTupleIsTopTuple;
- (BOOL)stateMachineConfigurationIsLaunchedToSetupMultipleAccessories:(id)accessories;
- (BOOL)stateMachineConfigurationShouldJumpToDoneStep:(id)step;
- (BOOL)stateMachineConfigurationShouldSetupBridgedAccessories:(id)accessories;
- (BOOL)stateMachineConfigurationShouldSetupRouters:(id)routers;
- (BOOL)stateMachineConfigurationShouldSkipAccessoryUpdateStep:(id)step;
- (BOOL)stateMachineConfigurationShouldSkipBridgeAddedStep:(id)step;
- (BOOL)stateMachineConfigurationShouldSkipDetectedStep:(id)step;
- (BOOL)stateMachineConfigurationShouldSkipDoneStep:(id)step;
- (BOOL)stateMachineConfigurationShouldSkipHomeHubStep:(id)step;
- (BOOL)stateMachineConfigurationShouldSkipResumeSelectAccessoryStep:(id)step;
- (HMHome)home;
- (HSAccessoryTuple)nextUnconfiguredBridgedAccessory;
- (HSProxCardCoordinator)initWithHome:(id)home accessories:(id)accessories delegate:(id)delegate;
- (HSProxCardCoordinator)initWithHome:(id)home accessoryDescription:(id)description matterDeviceSetupRequest:(id)request setupSpecificAccessory:(BOOL)accessory entitlementContext:(id)context discoveredAccessory:(id)discoveredAccessory delegate:(id)delegate;
- (HSProxCardCoordinatorDelegate)delegate;
- (NSArray)allAccessories;
- (NSArray)allAccessoryTuples;
- (NSString)description;
- (id)_bridgedConfigurationOrdinalityString;
- (id)_configurationForAccessory:(id)accessory stateMachine:(id)machine;
- (id)_discoveredAccessoryOrSetupCodeDidUpdateWithPayload:(id)payload fromViewController:(id)controller;
- (id)_generateNextStep;
- (id)_generateNextStepWithActiveTuple:(id)tuple;
- (id)_tupleForAccessory:(id)accessory;
- (id)didReceiveDiscoveredAccessory:(id)accessory withPayload:(id)payload;
- (id)didReceiveSetupCode:(id)code withPayload:(id)payload fromViewController:(id)controller;
- (id)nextViewControllerWithTarget:(id)target;
- (id)showCustomCommissioningFlowAlertIfNecessaryForPayload:(id)payload onViewController:(id)controller;
- (int64_t)accessoryCommunicationProtocol;
- (int64_t)launchReason;
- (unint64_t)numberOfAccessoriesInSameCategory;
- (void)didReceiveAccessories:(id)accessories;
- (void)dismissProxCardFlowAfterExecuting:(id)executing;
- (void)home:(id)home didFailAccessorySetupWithError:(id)error;
- (void)notifyDelegateOfPairingFailureWithError:(id)error;
- (void)pairAccessory;
- (void)pairAccessoryToAppleHome;
- (void)pairAccessoryToPEA;
- (void)resetForRetry;
- (void)setSetupCode:(id)code;
- (void)setUpThermostatControllerFor:(id)for homeUUID:(id)d;
- (void)stateMachineConfiguration:(id)configuration didUpdateHome:(id)home;
- (void)stateMachineConfigurationIsReadyToPair:(id)pair;
- (void)updateAccessoriesPendingConfiguration:(id)configuration;
- (void)updateSetupAccessoryDescriptionWithPayload:(id)payload;
@end

@implementation HSProxCardCoordinator

- (HSProxCardCoordinator)initWithHome:(id)home accessoryDescription:(id)description matterDeviceSetupRequest:(id)request setupSpecificAccessory:(BOOL)accessory entitlementContext:(id)context discoveredAccessory:(id)discoveredAccessory delegate:(id)delegate
{
  homeCopy = home;
  descriptionCopy = description;
  requestCopy = request;
  contextCopy = context;
  discoveredAccessoryCopy = discoveredAccessory;
  delegateCopy = delegate;
  v54.receiver = self;
  v54.super_class = HSProxCardCoordinator;
  v19 = [(HSProxCardCoordinator *)&v54 init];
  v20 = v19;
  if (v19)
  {
    v51 = delegateCopy;
    objc_storeWeak(&v19->_delegate, delegateCopy);
    objc_storeStrong(&v20->_setupAccessoryDescription, description);
    objc_storeStrong(&v20->_matterDeviceSetupRequest, request);
    setupAccessoryPayload = [descriptionCopy setupAccessoryPayload];
    setupPayloadURL = [setupAccessoryPayload setupPayloadURL];
    absoluteString = [setupPayloadURL absoluteString];

    if ([absoluteString length])
    {
      v24 = [HMAccessorySetupCoordinator communicationProtocolForSetupPayloadURLString:absoluteString];
      integerValue = [v24 integerValue];

      v20->_accessoryCommunicationProtocol = integerValue;
    }

    v20->_setupSpecificAccessory = accessory;
    v26 = +[HSAccessoryPairingEventLogger sharedLogger];
    setupAccessoryPayload2 = [descriptionCopy setupAccessoryPayload];
    [v26 logTransportFlagsFromPayload:setupAccessoryPayload2];

    objc_storeStrong(&v20->_entitlementContext, context);
    suggestedRoomUniqueIdentifier = [descriptionCopy suggestedRoomUniqueIdentifier];
    suggestedRoomUUID = v20->_suggestedRoomUUID;
    v20->_suggestedRoomUUID = suggestedRoomUniqueIdentifier;

    v20->_pairingState = 0;
    objc_storeStrong(&v20->_discoveredAccessory, discoveredAccessory);
    if (!accessory)
    {
      v30 = objc_alloc_init(HFAccessoryBrowsingManager);
      accessoryBrowser = v20->_accessoryBrowser;
      v20->_accessoryBrowser = v30;

      [(HFAccessoryBrowsingManager *)v20->_accessoryBrowser startSearchingForNewAccessories];
    }

    isSetupInitiatedByOtherMatterEcosystem = [descriptionCopy isSetupInitiatedByOtherMatterEcosystem];
    v33 = &off_1000C4960;
    if (!isSetupInitiatedByOtherMatterEcosystem)
    {
      v33 = off_1000C4958;
    }

    v34 = objc_alloc_init(*v33);
    v35 = [objc_alloc(objc_msgSend(v34 "configurationObjectClass"))];
    [v35 setDelegate:v20];
    v36 = objc_alloc_init(HSAccessoryTuple);
    [(HSAccessoryTuple *)v36 setStateMachine:v34];
    [(HSAccessoryTuple *)v36 setConfiguration:v35];
    topAccessoryTuple = v20->_topAccessoryTuple;
    v20->_topAccessoryTuple = v36;
    v38 = v36;

    objc_storeStrong(&v20->_activeTuple, v20->_topAccessoryTuple);
    v39 = +[NAFuture futureWithNoResult];
    matterSetupPairingWindowReadyFuture = v20->_matterSetupPairingWindowReadyFuture;
    v20->_matterSetupPairingWindowReadyFuture = v39;

    v41 = +[HFHomeKitDispatcher sharedDispatcher];
    [v41 setOverrideHome:homeCopy];

    v42 = +[HFHomeKitDispatcher sharedDispatcher];
    [v42 addHomeObserver:v20];

    objc_opt_class();
    v43 = HFLogForCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription = [homeCopy hf_prettyDescription];
      hf_prettyDescription2 = [descriptionCopy hf_prettyDescription];
      [discoveredAccessoryCopy hf_prettyDescription];
      v50 = homeCopy;
      v46 = absoluteString;
      v48 = v47 = requestCopy;
      *buf = 138413058;
      v56 = hf_prettyDescription;
      v57 = 2112;
      v58 = hf_prettyDescription2;
      v59 = 2112;
      v60 = contextCopy;
      v61 = 2112;
      v62 = v48;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Initialized HSProxCardCoordinator with Home [%@] accessoryDescription [%@] entitlementContext [%@] discoveredAccessory [%@]", buf, 0x2Au);

      requestCopy = v47;
      absoluteString = v46;
      homeCopy = v50;
    }

    delegateCopy = v51;
  }

  return v20;
}

- (HSProxCardCoordinator)initWithHome:(id)home accessories:(id)accessories delegate:(id)delegate
{
  homeCopy = home;
  accessoriesCopy = accessories;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = HSProxCardCoordinator;
  v11 = [(HSProxCardCoordinator *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    if (accessoriesCopy)
    {
      v13 = accessoriesCopy;
    }

    else
    {
      v13 = &__NSArray0__struct;
    }

    v14 = [NSSet setWithArray:v13];
    [(HSProxCardCoordinator *)v12 didReceiveAccessories:v14];

    v15 = +[HFHomeKitDispatcher sharedDispatcher];
    [v15 setOverrideHome:homeCopy];

    v16 = +[HFHomeKitDispatcher sharedDispatcher];
    [v16 addHomeObserver:v12];

    objc_opt_class();
  }

  return v12;
}

- (HMHome)home
{
  topAccessoryTuple = [(HSProxCardCoordinator *)self topAccessoryTuple];
  configuration = [topAccessoryTuple configuration];
  home = [configuration home];

  return home;
}

- (int64_t)launchReason
{
  delegate = [(HSProxCardCoordinator *)self delegate];
  v4 = [delegate coordinatorGetLaunchReason:self];

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  setupAccessoryDescription = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  discoveredAccessory = [(HSProxCardCoordinator *)self discoveredAccessory];
  pairingState = [(HSProxCardCoordinator *)self pairingState];
  pairingFuture = [(HSProxCardCoordinator *)self pairingFuture];
  activeTuple = [(HSProxCardCoordinator *)self activeTuple];
  v10 = [NSString stringWithFormat:@"<%@ setupAccessoryDescription: %@ discoveredAccessory: %@ pairingState: %lu pairingFuture: %@ activeTuple: %@>", v4, setupAccessoryDescription, discoveredAccessory, pairingState, pairingFuture, activeTuple];

  return v10;
}

- (void)updateAccessoriesPendingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([(HSProxCardCoordinator *)self launchReason]!= 1)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000799FC();
    }

    goto LABEL_8;
  }

  if (![configurationCopy count])
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100079A7C();
    }

LABEL_8:

    goto LABEL_9;
  }

  [(HSProxCardCoordinator *)self didReceiveAccessories:configurationCopy];
  [(HSProxCardCoordinator *)self setUserDidSelectAccessories:1];
LABEL_9:
}

- (void)didReceiveAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  [(HSProxCardCoordinator *)self setPairingState:2];
  if ([(HSProxCardCoordinator *)self launchReason])
  {
    allObjects = [accessoriesCopy allObjects];
    topAccessoryTuple2 = [allObjects sortedArrayUsingComparator:&stru_1000C6FE0];

    if (_os_feature_enabled_impl() && ([(HSProxCardCoordinator *)self launchReason]== 4 || [(HSProxCardCoordinator *)self launchReason]== 5))
    {
      v7 = [HFUtilities sortedLockAccessoryArrayForSetup:accessoriesCopy];

      topAccessoryTuple2 = v7;
    }

    firstObject = [topAccessoryTuple2 firstObject];
    v9 = [(HSProxCardCoordinator *)self _tupleForAccessory:firstObject];
    [(HSProxCardCoordinator *)self setTopAccessoryTuple:v9];
    topAccessoryTuple = [(HSProxCardCoordinator *)self topAccessoryTuple];
    [(HSProxCardCoordinator *)self setActiveTuple:topAccessoryTuple];
  }

  else
  {
    firstObject = [accessoriesCopy na_firstObjectPassingTest:&stru_1000C7020];
    topAccessoryTuple2 = [(HSProxCardCoordinator *)self topAccessoryTuple];
    [topAccessoryTuple2 setAccessory:firstObject];
  }

  v11 = accessoriesCopy;
  v12 = v11;
  if (([firstObject hf_isNetworkRouter] & 1) == 0)
  {
    v13 = [NSSet na_setWithSafeObject:firstObject];
    v12 = [v11 na_setByRemovingObjectsFromSet:v13];
  }

  topAccessoryTuple3 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  accessory = [topAccessoryTuple3 accessory];
  hf_isSprinkler = [accessory hf_isSprinkler];

  if (hf_isSprinkler)
  {
    v17 = [v12 na_filter:&stru_1000C7040];
    v18 = [v12 na_setByRemovingObjectsFromSet:v17];

    v12 = v18;
  }

  allObjects2 = [v12 allObjects];
  v20 = [allObjects2 sortedArrayUsingComparator:&stru_1000C6FE0];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10003C238;
  v39[3] = &unk_1000C7088;
  v39[4] = self;
  v21 = [v20 na_map:v39];
  [(HSProxCardCoordinator *)self setBridgedAccessories:v21];

  bridgedAccessories = [(HSProxCardCoordinator *)self bridgedAccessories];
  v23 = [bridgedAccessories na_dictionaryByBucketingObjectsUsingKeyGenerator:&stru_1000C70C8];
  [(HSProxCardCoordinator *)self setBridgedAccessoryCategoryToArrayMap:v23];

  services = [firstObject services];
  LODWORD(v23) = [services na_any:&stru_1000C70E8];

  if (v23)
  {
    topAccessoryTuple4 = [(HSProxCardCoordinator *)self topAccessoryTuple];
    configuration = [topAccessoryTuple4 configuration];
    home = [configuration home];
    uniqueIdentifier = [home uniqueIdentifier];
    if (!uniqueIdentifier)
    {
LABEL_16:

      goto LABEL_17;
    }

    v29 = uniqueIdentifier;
    [(HSProxCardCoordinator *)self topAccessoryTuple];
    v30 = v38 = v11;
    configuration2 = [v30 configuration];
    [configuration2 home];
    v37 = topAccessoryTuple4;
    v32 = firstObject;
    v34 = v33 = v20;
    isAllowedToEnableAdaptiveTemperatureAutomations = [v34 isAllowedToEnableAdaptiveTemperatureAutomations];

    v20 = v33;
    firstObject = v32;

    v11 = v38;
    if (isAllowedToEnableAdaptiveTemperatureAutomations)
    {
      topAccessoryTuple4 = [(HSProxCardCoordinator *)self topAccessoryTuple];
      configuration = [topAccessoryTuple4 configuration];
      home = [configuration home];
      uniqueIdentifier2 = [home uniqueIdentifier];
      [(HSProxCardCoordinator *)self setUpThermostatControllerFor:firstObject homeUUID:uniqueIdentifier2];

      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)pairAccessory
{
  setupAccessoryDescription = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  isSetupInitiatedByOtherMatterEcosystem = [setupAccessoryDescription isSetupInitiatedByOtherMatterEcosystem];

  if (isSetupInitiatedByOtherMatterEcosystem)
  {

    [(HSProxCardCoordinator *)self pairAccessoryToPEA];
  }

  else
  {

    [(HSProxCardCoordinator *)self pairAccessoryToAppleHome];
  }
}

- (void)pairAccessoryToAppleHome
{
  setupAccessoryDescription = [(HSProxCardCoordinator *)self setupAccessoryDescription];

  if (!setupAccessoryDescription)
  {
    sub_100079AFC();
  }

  v5 = [HFSetupPairingContext alloc];
  setupAccessoryDescription2 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  entitlementContext = [(HSProxCardCoordinator *)self entitlementContext];
  v8 = [v5 initWithSetupAccessoryDescription:setupAccessoryDescription2 isTrustedOrigin:{objc_msgSend(entitlementContext, "isEntitledForHomeKitSPI")}];

  discoveredAccessory = [(HSProxCardCoordinator *)self discoveredAccessory];
  accessory = [discoveredAccessory accessory];
  knownToSystemCommissioner = [accessory knownToSystemCommissioner];

  if (knownToSystemCommissioner)
  {
    discoveredAccessory2 = 0;
  }

  else
  {
    discoveredAccessory2 = [(HSProxCardCoordinator *)self discoveredAccessory];
  }

  v13 = [[HSAccessoryPairingFuture alloc] initWithPairingContext:v8 discoveredAccessory:discoveredAccessory2];
  [(HSProxCardCoordinator *)self setPairingFuture:v13];

  pairingFuture = [(HSProxCardCoordinator *)self pairingFuture];
  delegate = [(HSProxCardCoordinator *)self delegate];
  [pairingFuture setPairingObserver:delegate];

  v16 = +[HSAccessoryPairingEventLogger sharedLogger];
  [v16 logPairingBegin];

  objc_initWeak(&location, self);
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromSelector(a2);
    *buf = 138413058;
    v28 = v18;
    v29 = 2112;
    v30 = v19;
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ pairing starting with context: %@ coordinator: %@", buf, 0x2Au);
  }

  pairingFuture2 = [(HSProxCardCoordinator *)self pairingFuture];
  home = [(HSProxCardCoordinator *)self home];
  v22 = [pairingFuture2 startPairingWithHome:home];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10003C678;
  v24[3] = &unk_1000C7110;
  objc_copyWeak(&v25, &location);
  v23 = [v22 addCompletionBlock:v24];
  objc_destroyWeak(&v25);

  objc_destroyWeak(&location);
}

- (void)pairAccessoryToPEA
{
  setupAccessoryDescription = [(HSProxCardCoordinator *)self setupAccessoryDescription];

  if (!setupAccessoryDescription)
  {
    sub_100079B6C();
  }

  v5 = [HFSetupPairingContext alloc];
  setupAccessoryDescription2 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  entitlementContext = [(HSProxCardCoordinator *)self entitlementContext];
  v8 = [v5 initWithSetupAccessoryDescription:setupAccessoryDescription2 isTrustedOrigin:{objc_msgSend(entitlementContext, "isEntitledForHomeKitSPI")}];

  objc_opt_class();
  topAccessoryTuple = [(HSProxCardCoordinator *)self topAccessoryTuple];
  configuration = [topAccessoryTuple configuration];
  if (configuration)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = configuration;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (!v12)
    {
      sub_100079BDC();
    }
  }

  else
  {
    v12 = 0;
  }

  [v12 setContext:v8];
  delegate = [(HSProxCardCoordinator *)self delegate];
  [v12 addPairingObserver:delegate];

  objc_initWeak(&location, self);
  stageCHIPAccessory = [v12 stageCHIPAccessory];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003CB64;
  v23[3] = &unk_1000C7138;
  v15 = v12;
  v24 = v15;
  objc_copyWeak(&v25, &location);
  v16 = [stageCHIPAccessory recover:v23];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003CE98;
  v19[3] = &unk_1000C7188;
  v17 = v15;
  v20 = v17;
  selfCopy = self;
  v22 = a2;
  v18 = [v16 addSuccessBlock:v19];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)notifyDelegateOfPairingFailureWithError:(id)error
{
  errorCopy = error;
  [(HSProxCardCoordinator *)self setPairingState:3];
  v4 = +[NSMutableDictionary dictionary];
  pairingFuture = [(HSProxCardCoordinator *)self pairingFuture];
  pairingStatusTitle = [pairingFuture pairingStatusTitle];
  [v4 setObject:pairingStatusTitle forKeyedSubscript:HFErrorUserInfoOptionTitleKey];

  pairingFuture2 = [(HSProxCardCoordinator *)self pairingFuture];
  pairingStatusDescription = [pairingFuture2 pairingStatusDescription];
  [v4 setObject:pairingStatusDescription forKeyedSubscript:HFErrorUserInfoOptionDescriptionKey];

  v9 = [v4 count];
  if (v9)
  {
    v10 = [v4 copy];
  }

  else
  {
    v10 = 0;
  }

  v11 = [errorCopy hf_errorWithOperationType:0 options:v10];
  topAccessoryTuple = [(HSProxCardCoordinator *)self topAccessoryTuple];
  configuration = [topAccessoryTuple configuration];
  [configuration setPairingError:v11];

  if (v9)
  {
  }

  delegate = [(HSProxCardCoordinator *)self delegate];
  topAccessoryTuple2 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  configuration2 = [topAccessoryTuple2 configuration];
  [delegate coordinator:self updatedConfiguration:configuration2];
}

- (id)_generateNextStep
{
  activeTuple = [(HSProxCardCoordinator *)self activeTuple];
  v4 = [(HSProxCardCoordinator *)self _generateNextStepWithActiveTuple:activeTuple];

  return v4;
}

- (id)_generateNextStepWithActiveTuple:(id)tuple
{
  tupleCopy = tuple;
  moveToNextStep = [tupleCopy moveToNextStep];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003D5FC;
  v13[3] = &unk_1000C71B0;
  v6 = tupleCopy;
  v14 = v6;
  selfCopy = self;
  v7 = [moveToNextStep flatMap:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003D6EC;
  v11[3] = &unk_1000C7200;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v7 flatMap:v11];

  return v9;
}

- (id)nextViewControllerWithTarget:(id)target
{
  targetCopy = target;
  activeTuple = [(HSProxCardCoordinator *)self activeTuple];
  currentStep = [activeTuple currentStep];

  objc_initWeak(&location, self);
  _generateNextStep = [(HSProxCardCoordinator *)self _generateNextStep];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003DD08;
  v20[3] = &unk_1000C7228;
  objc_copyWeak(v21, &location);
  v21[1] = currentStep;
  v8 = [_generateNextStep flatMap:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003E0F4;
  v18[3] = &unk_1000C7250;
  v18[4] = self;
  v9 = targetCopy;
  v19 = v9;
  v10 = [v8 flatMap:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003E2E8;
  v16[3] = &unk_1000C7250;
  v16[4] = self;
  v11 = v9;
  v17 = v11;
  v12 = [v10 flatMap:v16];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003E67C;
  v15[3] = &unk_1000C66B0;
  v15[4] = self;
  v13 = [v12 addFailureBlock:v15];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);

  return v12;
}

- (void)dismissProxCardFlowAfterExecuting:(id)executing
{
  executingCopy = executing;
  topAccessoryTuple = [(HSProxCardCoordinator *)self topAccessoryTuple];
  configuration = [topAccessoryTuple configuration];
  home = [configuration home];

  if ([home hf_currentUserIsOwner])
  {
    v6 = 1;
  }

  else if ([home hf_currentUserIsAdministrator])
  {
    v6 = 2;
  }

  else
  {
    if (!home)
    {
      goto LABEL_8;
    }

    v6 = 0;
  }

  v7 = +[HSAccessoryPairingEventLogger sharedLogger];
  [v7 logHUISUserType:v6];

LABEL_8:
  if (![(HSProxCardCoordinator *)self launchReason])
  {
    v8 = +[HSAccessoryPairingEventLogger sharedLogger];
    [v8 logIsUsingCHIPCommunicationProtocol:{-[HSProxCardCoordinator isUsingCHIPCommunicationProtocol](self, "isUsingCHIPCommunicationProtocol")}];
  }

  v9 = +[HSAccessoryPairingEventLogger sharedLogger];
  delegate = [(HSProxCardCoordinator *)self delegate];
  [v9 logCardCount:{objc_msgSend(delegate, "coordinatorGetNumberOfProxCards:", self)}];

  v11 = +[HSAccessoryPairingEventLogger sharedLogger];
  [v11 logHUISDismiss];

  v12 = +[NAFuture futureWithNoResult];
  if (-[HSProxCardCoordinator launchReason](self, "launchReason") && (-[HSProxCardCoordinator launchReason](self, "launchReason") != 1 || (-[HSProxCardCoordinator activeTuple](self, "activeTuple"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 currentStep], v13, v14 < 9)))
  {
    v20 = v12;
  }

  else
  {
    allAccessoryTuples = [(HSProxCardCoordinator *)self allAccessoryTuples];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10003ECC8;
    v45[3] = &unk_1000C72A0;
    v46 = home;
    v16 = [allAccessoryTuples na_map:v45];
    v17 = [NAFuture chainFutures:v16];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = +[NAFuture futureWithNoResult];
    }

    v20 = v19;
  }

  if (executingCopy)
  {
    v21 = executingCopy;
  }

  else
  {
    v21 = +[NAFuture futureWithNoResult];
  }

  v22 = v21;
  pairingFuture = [(HSProxCardCoordinator *)self pairingFuture];
  cancelPairing = [pairingFuture cancelPairing];
  v25 = cancelPairing;
  if (cancelPairing)
  {
    v26 = cancelPairing;
  }

  else
  {
    v26 = +[NAFuture futureWithNoResult];
  }

  v27 = v26;

  v28 = +[NAFuture futureWithNoResult];
  setupAccessoryDescription = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  isSetupInitiatedByOtherMatterEcosystem = [setupAccessoryDescription isSetupInitiatedByOtherMatterEcosystem];

  if (isSetupInitiatedByOtherMatterEcosystem)
  {
    objc_opt_class();
    topAccessoryTuple2 = [(HSProxCardCoordinator *)self topAccessoryTuple];
    configuration2 = [topAccessoryTuple2 configuration];
    if (configuration2)
    {
      if (objc_opt_isKindOfClass())
      {
        v33 = configuration2;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33;
      if (!v34)
      {
        sub_100079DA4();
      }
    }

    else
    {
      v34 = 0;
    }

    cancelStagingForCHIPPairing = [v34 cancelStagingForCHIPPairing];

    v28 = cancelStagingForCHIPPairing;
  }

  objc_initWeak(&location, self);
  v47[0] = v28;
  v47[1] = v20;
  v47[2] = v22;
  v47[3] = v27;
  v36 = [NSArray arrayWithObjects:v47 count:4];
  v37 = +[NAScheduler mainThreadScheduler];
  v38 = [NAFuture combineAllFutures:v36 ignoringErrors:1 scheduler:v37];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10003F0E4;
  v42[3] = &unk_1000C5AB0;
  objc_copyWeak(&v43, &location);
  v39 = [v38 addCompletionBlock:v42];

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

- (void)resetForRetry
{
  [(HSProxCardCoordinator *)self setPairingState:0];
  setupAccessoryDescription = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  isSetupInitiatedByOtherMatterEcosystem = [setupAccessoryDescription isSetupInitiatedByOtherMatterEcosystem];
  v5 = &off_1000C4960;
  if (!isSetupInitiatedByOtherMatterEcosystem)
  {
    v5 = off_1000C4958;
  }

  v6 = objc_alloc_init(*v5);

  v7 = objc_alloc([v6 configurationObjectClass]);
  home = [(HSProxCardCoordinator *)self home];
  v9 = [v7 initWithHome:home];

  [v9 setDelegate:self];
  v10 = objc_alloc_init(HSAccessoryTuple);
  [(HSAccessoryTuple *)v10 setStateMachine:v6];
  [(HSAccessoryTuple *)v10 setConfiguration:v9];
  [(HSProxCardCoordinator *)self setTopAccessoryTuple:v10];
  topAccessoryTuple = [(HSProxCardCoordinator *)self topAccessoryTuple];
  [(HSProxCardCoordinator *)self setActiveTuple:topAccessoryTuple];

  setupAccessoryDescription2 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  [setupAccessoryDescription2 updateRetry:1];

  setupAccessoryDescription3 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  [setupAccessoryDescription3 setCancellationReason:0];

  setupAccessoryDescription4 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  setupAccessoryPayload = [setupAccessoryDescription4 setupAccessoryPayload];
  setupCode = [setupAccessoryPayload setupCode];
  [(HSProxCardCoordinator *)self setSetupCode:setupCode];

  setupAccessoryDescription5 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  setupAccessoryPayload2 = [setupAccessoryDescription5 setupAccessoryPayload];
  -[HSProxCardCoordinator setAccessoryCommunicationProtocol:](self, "setAccessoryCommunicationProtocol:", [setupAccessoryPayload2 communicationProtocol]);

  if (![(HSProxCardCoordinator *)self setupSpecificAccessory])
  {
    v19 = objc_alloc_init(HFAccessoryBrowsingManager);
    accessoryBrowser = self->_accessoryBrowser;
    self->_accessoryBrowser = v19;

    [(HFAccessoryBrowsingManager *)self->_accessoryBrowser startSearchingForNewAccessories];
  }

  discoveredAccessory = [(HSProxCardCoordinator *)self discoveredAccessory];
  [discoveredAccessory updateStatus:1 error:0];

  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_100079ED8(self, v6, v22);
  }
}

- (void)home:(id)home didFailAccessorySetupWithError:(id)error
{
  homeCopy = home;
  errorCopy = error;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    hf_prettyDescription = [homeCopy hf_prettyDescription];
    v14 = 138412802;
    v15 = v12;
    v16 = 2112;
    v17 = hf_prettyDescription;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@ home:%@]", &v14, 0x20u);
  }

  if ([errorCopy hf_isHMErrorWithCode:23])
  {
    pairingFuture = HFLogForCategory();
    if (os_log_type_enabled(pairingFuture, OS_LOG_TYPE_ERROR))
    {
      sub_100079FF0();
    }
  }

  else
  {
    pairingFuture = [(HSProxCardCoordinator *)self pairingFuture];
    v10 = [pairingFuture cancelPairingWithError:errorCopy];
  }
}

- (HSAccessoryTuple)nextUnconfiguredBridgedAccessory
{
  bridgedAccessories = [(HSProxCardCoordinator *)self bridgedAccessories];
  v3 = [bridgedAccessories na_firstObjectPassingTest:&stru_1000C72E0];

  return v3;
}

- (id)_bridgedConfigurationOrdinalityString
{
  bridgedAccessories = [(HSProxCardCoordinator *)self bridgedAccessories];
  if ([bridgedAccessories count])
  {
    activeTuple = [(HSProxCardCoordinator *)self activeTuple];
    topAccessoryTuple = [(HSProxCardCoordinator *)self topAccessoryTuple];

    if (activeTuple == topAccessoryTuple)
    {
      v14 = 0;
      goto LABEL_11;
    }

    activeTuple2 = [(HSProxCardCoordinator *)self activeTuple];
    bridgedAccessories = [activeTuple2 accessoryCategoryOrPrimaryServiceType];

    setupAccessoryDescription = [(HSProxCardCoordinator *)self setupAccessoryDescription];
    setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
    matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];

    bridgedAccessoryCategoryToArrayMap = [(HSProxCardCoordinator *)self bridgedAccessoryCategoryToArrayMap];
    v11 = [bridgedAccessoryCategoryToArrayMap objectForKeyedSubscript:bridgedAccessories];

    if ([v11 count] < 2 || (-[HSProxCardCoordinator activeTuple](self, "activeTuple"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "indexOfObject:", v12), v12, v13 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v14 = 0;
    }

    else
    {
      v15 = HFLocalizedCategoryOrPrimaryServiceTypeString();
      v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v15, [v11 count], v13 + 1);
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_11:

  return v14;
}

- (id)_configurationForAccessory:(id)accessory stateMachine:(id)machine
{
  accessoryCopy = accessory;
  v7 = [objc_alloc(objc_msgSend(machine "configurationObjectClass"))];

  [v7 setDelegate:self];

  return v7;
}

- (id)_tupleForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = objc_alloc_init(HSAccessoryTuple);
  v6 = objc_alloc_init(HSSetupStateMachine);
  [(HSAccessoryTuple *)v5 setStateMachine:v6];

  stateMachine = [(HSAccessoryTuple *)v5 stateMachine];
  v8 = [(HSProxCardCoordinator *)self _configurationForAccessory:accessoryCopy stateMachine:stateMachine];

  [(HSAccessoryTuple *)v5 setConfiguration:v8];

  return v5;
}

- (NSArray)allAccessoryTuples
{
  topAccessoryTuple = [(HSProxCardCoordinator *)self topAccessoryTuple];

  if (topAccessoryTuple)
  {
    topAccessoryTuple2 = [(HSProxCardCoordinator *)self topAccessoryTuple];
    v9 = topAccessoryTuple2;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
    bridgedAccessories = [(HSProxCardCoordinator *)self bridgedAccessories];
    v7 = [v5 arrayByAddingObjectsFromArray:bridgedAccessories];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)allAccessories
{
  allAccessoryTuples = [(HSProxCardCoordinator *)self allAccessoryTuples];
  v3 = [allAccessoryTuples na_map:&stru_1000C7320];

  return v3;
}

- (BOOL)isConfiguringLastAccessoryOfSameCategory
{
  activeTuple = [(HSProxCardCoordinator *)self activeTuple];
  accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];

  bridgedAccessoryCategoryToArrayMap = [(HSProxCardCoordinator *)self bridgedAccessoryCategoryToArrayMap];
  v6 = [bridgedAccessoryCategoryToArrayMap objectForKeyedSubscript:accessoryCategoryOrPrimaryServiceType];

  activeTuple2 = [(HSProxCardCoordinator *)self activeTuple];
  accessory = [activeTuple2 accessory];
  lastObject = [v6 lastObject];
  accessory2 = [lastObject accessory];
  v11 = accessory == accessory2;

  return v11;
}

- (unint64_t)numberOfAccessoriesInSameCategory
{
  activeTuple = [(HSProxCardCoordinator *)self activeTuple];
  topAccessoryTuple = [(HSProxCardCoordinator *)self topAccessoryTuple];

  if (activeTuple == topAccessoryTuple)
  {
    return 1;
  }

  activeTuple2 = [(HSProxCardCoordinator *)self activeTuple];
  accessoryCategoryOrPrimaryServiceType = [activeTuple2 accessoryCategoryOrPrimaryServiceType];

  bridgedAccessoryCategoryToArrayMap = [(HSProxCardCoordinator *)self bridgedAccessoryCategoryToArrayMap];
  v8 = [bridgedAccessoryCategoryToArrayMap objectForKeyedSubscript:accessoryCategoryOrPrimaryServiceType];
  v9 = [v8 count];

  return v9;
}

- (void)stateMachineConfigurationIsReadyToPair:(id)pair
{
  pairCopy = pair;
  if (![(HSProxCardCoordinator *)self pairingState])
  {
    [(HSProxCardCoordinator *)self setPairingState:1];
    objc_initWeak(&location, self);
    matterSetupPairingWindowReadyFuture = [(HSProxCardCoordinator *)self matterSetupPairingWindowReadyFuture];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003FC48;
    v7[3] = &unk_1000C7348;
    objc_copyWeak(&v8, &location);
    v6 = [matterSetupPairingWindowReadyFuture addSuccessBlock:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)stateMachineConfiguration:(id)configuration didUpdateHome:(id)home
{
  homeCopy = home;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  [v5 setOverrideHome:homeCopy];
}

- (BOOL)stateMachineConfigurationIsLaunchedToSetupMultipleAccessories:(id)accessories
{
  bridgedAccessories = [(HSProxCardCoordinator *)self bridgedAccessories];
  if ([bridgedAccessories count])
  {
    bridgedAccessories2 = [(HSProxCardCoordinator *)self bridgedAccessories];
    if ([bridgedAccessories2 count] == 1)
    {
      bridgedAccessories3 = [(HSProxCardCoordinator *)self bridgedAccessories];
      firstObject = [bridgedAccessories3 firstObject];
      accessory = [firstObject accessory];
      v9 = [accessory hf_isNetworkRouter] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)stateMachineConfigurationActiveTupleIsTopTuple
{
  selfCopy = self;
  activeTuple = [(HSProxCardCoordinator *)self activeTuple];
  topAccessoryTuple = [(HSProxCardCoordinator *)selfCopy topAccessoryTuple];
  LOBYTE(selfCopy) = activeTuple == topAccessoryTuple;

  return selfCopy;
}

- (BOOL)stateMachineConfigurationShouldSkipDetectedStep:(id)step
{
  addedAccessory = [step addedAccessory];

  if (addedAccessory)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    discoveredAccessory = [(HSProxCardCoordinator *)self discoveredAccessory];
    if (discoveredAccessory)
    {
      discoveredAccessory2 = [(HSProxCardCoordinator *)self discoveredAccessory];
      accessory = [discoveredAccessory2 accessory];
      v5 = [accessory knownToSystemCommissioner] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)stateMachineConfigurationShouldSkipHomeHubStep:(id)step
{
  stepCopy = step;
  home = [stepCopy home];

  if (!home)
  {
    activeTuple = [(HSProxCardCoordinator *)self activeTuple];
    NSLog(@"No home for tuple %@", activeTuple);
  }

  v7 = ![(HSProxCardCoordinator *)self isUsingCHIPCommunicationProtocol];
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    home2 = [stepCopy home];
    if ([home2 hf_currentUserIsOwner])
    {
      v9 = +[HFHomeKitDispatcher sharedDispatcher];
      homeManager = [v9 homeManager];
      LOBYTE(v7) = [homeManager hasOptedToHH2] | v7;
    }
  }

  home3 = [stepCopy home];
  if ([home3 hf_currentUserIsOwner])
  {
    hf_hasResidentDeviceCapableOfSupportingMatterSharedAdmin = 1;
  }

  else
  {
    home4 = [stepCopy home];
    if ([home4 hf_currentUserIsAdministrator])
    {
      home5 = [stepCopy home];
      hf_hasResidentDeviceCapableOfSupportingMatterSharedAdmin = [home5 hf_hasResidentDeviceCapableOfSupportingMatterSharedAdmin];
    }

    else
    {
      hf_hasResidentDeviceCapableOfSupportingMatterSharedAdmin = 0;
    }
  }

  if (v7)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    home6 = [stepCopy home];
    v15 = [home6 hf_hasResidentDeviceCapableOfSupportingCHIP] & hf_hasResidentDeviceCapableOfSupportingMatterSharedAdmin;
  }

  return v15;
}

- (BOOL)stateMachineConfigurationShouldSkipAccessoryUpdateStep:(id)step
{
  stepCopy = step;
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    isUsingCHIPCommunicationProtocol = [(HSProxCardCoordinator *)self isUsingCHIPCommunicationProtocol];
    addedAccessory = [stepCopy addedAccessory];
    hf_hasNewValidSoftwareOrFirmwareUpdate = [addedAccessory hf_hasNewValidSoftwareOrFirmwareUpdate];
    home = [stepCopy home];
    hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

    v10 = isUsingCHIPCommunicationProtocol & hf_hasNewValidSoftwareOrFirmwareUpdate & hf_currentUserIsAdministrator;
    v11 = HFLogForCategory();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v20 = 136315650;
        v21 = "[HSProxCardCoordinator stateMachineConfigurationShouldSkipAccessoryUpdateStep:]";
        v22 = 1024;
        v23 = 1;
        v24 = 1024;
        v25 = 1;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Not skipping HSProxCardSetupUIStepAccessoryUpdate - isMatter: [%{BOOL}d], hasValidUpdate: [%{BOOL}d]", &v20, 0x18u);
      }
    }

    else if (v12)
    {
      v13 = hf_hasNewValidSoftwareOrFirmwareUpdate & 1;
      v14 = hf_currentUserIsAdministrator & 1;
      home2 = [stepCopy home];
      currentUser = [home2 currentUser];
      hf_prettyDescription = [currentUser hf_prettyDescription];
      v20 = 136316162;
      v21 = "[HSProxCardCoordinator stateMachineConfigurationShouldSkipAccessoryUpdateStep:]";
      v22 = 1024;
      v23 = isUsingCHIPCommunicationProtocol;
      v24 = 1024;
      v25 = v13;
      v26 = 1024;
      v27 = v14;
      v28 = 2112;
      v29 = hf_prettyDescription;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Skipping HSProxCardSetupUIStepAccessoryUpdate - isMatter: [%{BOOL}d], hasValidUpdate: [%{BOOL}d], isCurrentUserAdmin: %{BOOL}d for %@", &v20, 0x28u);
    }

    v18 = v10 ^ 1;
  }

  else
  {
    addedAccessory = HFLogForCategory();
    if (os_log_type_enabled(addedAccessory, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[HSProxCardCoordinator stateMachineConfigurationShouldSkipAccessoryUpdateStep:]";
      _os_log_impl(&_mh_execute_header, addedAccessory, OS_LOG_TYPE_DEFAULT, "%s Skipping HSProxCardSetupUIStepAccessoryUpdate due to runtime FF disabled: [HOME_ENABLE_MATTER_IPHONE_ONLY_PAIRING]", &v20, 0xCu);
    }

    v18 = 1;
  }

  return v18;
}

- (BOOL)stateMachineConfigurationShouldSkipResumeSelectAccessoryStep:(id)step
{
  stepCopy = step;
  if ([(HSProxCardCoordinator *)self userDidSelectAccessories])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = ![(HSProxCardCoordinator *)self stateMachineConfigurationIsLaunchedToSetupMultipleAccessories:stepCopy];
  }

  return v5;
}

- (BOOL)stateMachineConfigurationShouldSkipBridgeAddedStep:(id)step
{
  stepCopy = step;
  if ([(HSProxCardCoordinator *)self launchReason]== 1)
  {
    nextUnconfiguredBridgedAccessory = [(HSProxCardCoordinator *)self nextUnconfiguredBridgedAccessory];
    if (nextUnconfiguredBridgedAccessory)
    {
      nextUnconfiguredBridgedAccessory2 = [(HSProxCardCoordinator *)self nextUnconfiguredBridgedAccessory];
      activeTuple = [(HSProxCardCoordinator *)self activeTuple];
      v8 = [nextUnconfiguredBridgedAccessory2 isEqual:activeTuple];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  addedAccessory = [stepCopy addedAccessory];
  if (([addedAccessory isBridged] & 1) == 0 && (objc_msgSend(addedAccessory, "hf_isNetworkRouter") & 1) == 0)
  {
    hf_bridgedAccessories = [addedAccessory hf_bridgedAccessories];
    if ([addedAccessory hf_isSprinkler])
    {
      v11 = [hf_bridgedAccessories na_filter:&stru_1000C7368];

      hf_bridgedAccessories = v11;
    }

    v8 &= [hf_bridgedAccessories count] == 0;
  }

  return v8;
}

- (BOOL)stateMachineConfigurationShouldSkipDoneStep:(id)step
{
  stepCopy = step;
  topAccessoryTuple = [(HSProxCardCoordinator *)self topAccessoryTuple];
  configuration = [topAccessoryTuple configuration];

  if (configuration == stepCopy)
  {
    bridgedAccessories = [(HSProxCardCoordinator *)self bridgedAccessories];
    isConfiguringLastAccessoryOfSameCategory = bridgedAccessories == 0;
  }

  else
  {
    isConfiguringLastAccessoryOfSameCategory = [(HSProxCardCoordinator *)self isConfiguringLastAccessoryOfSameCategory];
  }

  return !isConfiguringLastAccessoryOfSameCategory;
}

- (BOOL)stateMachineConfigurationShouldSetupBridgedAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  topAccessoryTuple = [(HSProxCardCoordinator *)self topAccessoryTuple];
  configuration = [topAccessoryTuple configuration];

  if (configuration != accessoriesCopy)
  {
    return 0;
  }

  nextUnconfiguredBridgedAccessory = [(HSProxCardCoordinator *)self nextUnconfiguredBridgedAccessory];
  v7 = nextUnconfiguredBridgedAccessory != 0;

  return v7;
}

- (BOOL)stateMachineConfigurationShouldSetupRouters:(id)routers
{
  addedAccessory = [routers addedAccessory];
  if ([addedAccessory hf_isNetworkRouter])
  {
    isConfiguringLastAccessoryOfSameCategory = [(HSProxCardCoordinator *)self isConfiguringLastAccessoryOfSameCategory];
  }

  else
  {
    isConfiguringLastAccessoryOfSameCategory = 0;
  }

  return isConfiguringLastAccessoryOfSameCategory;
}

- (BOOL)stateMachineConfigurationShouldJumpToDoneStep:(id)step
{
  stepCopy = step;
  if ([(HSProxCardCoordinator *)self launchReason]== 1)
  {
    addedAccessory = [stepCopy addedAccessory];
    if (addedAccessory)
    {
      addedAccessory2 = [stepCopy addedAccessory];
      pendingConfigurationIdentifier = [addedAccessory2 pendingConfigurationIdentifier];
      v8 = [pendingConfigurationIdentifier length] == 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isInSetupContext
{
  launchReason = [(HSProxCardCoordinator *)self launchReason];

  return [HUHomeUIServiceLaunchUserInfo isInSetupContext:launchReason];
}

- (id)_discoveredAccessoryOrSetupCodeDidUpdateWithPayload:(id)payload fromViewController:(id)controller
{
  payloadCopy = payload;
  controllerCopy = controller;
  v8 = +[NAFuture futureWithNoResult];
  discoveredAccessory = [(HSProxCardCoordinator *)self discoveredAccessory];

  if (!discoveredAccessory)
  {
LABEL_9:
    v18 = v8;
    v8 = v18;
LABEL_24:
    v30 = v18;
    goto LABEL_25;
  }

  discoveredAccessory2 = [(HSProxCardCoordinator *)self discoveredAccessory];
  if ([discoveredAccessory2 requiresSetupCode])
  {
    setupCode = [(HSProxCardCoordinator *)self setupCode];
    v12 = [setupCode length] == 0;
  }

  else
  {
    v12 = 0;
  }

  topAccessoryTuple = [(HSProxCardCoordinator *)self topAccessoryTuple];
  configuration = [topAccessoryTuple configuration];
  v15 = [configuration isSetupInitiatedByOtherMatterEcosystem] & v12;

  if (v15 == 1)
  {
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      discoveredAccessory3 = [(HSProxCardCoordinator *)self discoveredAccessory];
      *buf = 136315394;
      v55 = "[HSProxCardCoordinator _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:fromViewController:]";
      v56 = 2112;
      v57 = discoveredAccessory3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s setup code required for third-party Matter pairing of discoveredAccessory %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  if (v12)
  {
LABEL_23:
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100041304;
    v43[3] = &unk_1000C5F60;
    v43[4] = self;
    v18 = [v8 flatMap:v43];
    goto LABEL_24;
  }

  v42 = +[NAFuture futureWithNoResult];
  setupCode2 = [(HSProxCardCoordinator *)self setupCode];
  v20 = setupCode2;
  v21 = &stru_1000C89F8;
  if (setupCode2)
  {
    v21 = setupCode2;
  }

  v22 = v21;

  if (![(HSProxCardCoordinator *)self isUsingCHIPCommunicationProtocol])
  {
    v31 = [[HMSetupAccessoryPayload alloc] initWithHAPSetupCode:v22];
    v32 = [NAFuture futureWithResult:v31];

LABEL_22:
    objc_initWeak(buf, self);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100041058;
    v44[3] = &unk_1000C7400;
    objc_copyWeak(&v46, buf);
    v38 = v22;
    v45 = v38;
    v39 = [v32 flatMap:v44];

    objc_destroyWeak(&v46);
    objc_destroyWeak(buf);

    v8 = v39;
    goto LABEL_23;
  }

  if (!payloadCopy)
  {
    discoveredAccessory4 = [(HSProxCardCoordinator *)self discoveredAccessory];
    [discoveredAccessory4 setRawSetupPayloadString:v22];

    objc_initWeak(&location, self);
    v34 = HFLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      discoveredAccessory5 = [(HSProxCardCoordinator *)self discoveredAccessory];
      *buf = 136315650;
      v55 = "[HSProxCardCoordinator _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:fromViewController:]";
      v56 = 2112;
      v57 = v22;
      v58 = 2112;
      v59 = discoveredAccessory5;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s calling createSetupAccessoryPayloadWithCHIPDecimalStringRepresentation:%@ for discoveredAccessory %@]", buf, 0x20u);
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100040DE8;
    v51[3] = &unk_1000C73B0;
    v36 = v22;
    v52 = v36;
    v37 = [NAFuture futureWithCompletionHandlerAdapterBlock:v51];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100040E7C;
    v47[3] = &unk_1000C73D8;
    objc_copyWeak(&v50, &location);
    v48 = v36;
    v49 = controllerCopy;
    v32 = [v37 flatMap:v47];

    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
    goto LABEL_22;
  }

  v23 = HFLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    setupAccessoryDescription = [(HSProxCardCoordinator *)self setupAccessoryDescription];
    discoveredAccessory6 = [(HSProxCardCoordinator *)self discoveredAccessory];
    setupCode3 = [(HSProxCardCoordinator *)self setupCode];
    *buf = 136316162;
    v55 = "[HSProxCardCoordinator _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:fromViewController:]";
    v56 = 2112;
    v57 = setupAccessoryDescription;
    v58 = 2112;
    v59 = payloadCopy;
    v60 = 2112;
    v61 = discoveredAccessory6;
    v62 = 2112;
    v63 = setupCode3;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Found existing payload for Matter Accessory - updating setupAccessoryDescription with payload - [ setupAccessoryDescription:%@, payload:%@, discoveredAccessory:%@, setupCode:%@ ]", buf, 0x34u);
  }

  setupAccessoryDescription2 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  [setupAccessoryDescription2 updateWithSetupAccessoryPayload:payloadCopy];

  topAccessoryTuple2 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  configuration2 = [topAccessoryTuple2 configuration];
  [configuration2 setIsReadyToPair:1];

  pairingFuture = [(HSProxCardCoordinator *)self pairingFuture];
  [pairingFuture updateSetupPayload:payloadCopy];

  v30 = +[NAFuture futureWithNoResult];

LABEL_25:

  return v30;
}

- (void)setSetupCode:(id)code
{
  hf_extractDecimalDigits = [code hf_extractDecimalDigits];
  v5 = 1;
  if ([hf_extractDecimalDigits length] == 8)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(HSProxCardCoordinator *)self setAccessoryCommunicationProtocol:v6];
  v7 = [hf_extractDecimalDigits length];
  v8 = 3;
  v9 = 2;
  if (v7 != 11)
  {
    v9 = 0;
  }

  if (v7 != 21)
  {
    v8 = v9;
  }

  if (v7 != 8)
  {
    v5 = v8;
  }

  v10 = +[HSAccessoryPairingEventLogger sharedLogger];
  [v10 logCodeInputMethod:v5];

  setupCode = self->_setupCode;
  self->_setupCode = hf_extractDecimalDigits;
}

- (int64_t)accessoryCommunicationProtocol
{
  result = self->_accessoryCommunicationProtocol;
  if (!result)
  {
    setupAccessoryDescription = [(HSProxCardCoordinator *)self setupAccessoryDescription];
    setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
    self->_accessoryCommunicationProtocol = [setupAccessoryPayload communicationProtocol];

    return self->_accessoryCommunicationProtocol;
  }

  return result;
}

- (id)didReceiveDiscoveredAccessory:(id)accessory withPayload:(id)payload
{
  accessoryCopy = accessory;
  payloadCopy = payload;
  objc_storeStrong(&self->_discoveredAccessory, accessory);
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    setupCode = [(HSProxCardCoordinator *)self setupCode];
    accessory = [accessoryCopy accessory];
    knownToSystemCommissioner = [accessory knownToSystemCommissioner];
    [(HSProxCardCoordinator *)self setupAccessoryDescription];
    v15 = v44 = self;
    *buf = 138413314;
    v54 = v11;
    v55 = 2112;
    v56 = accessoryCopy;
    v57 = 2112;
    v58 = setupCode;
    v59 = 1024;
    v60 = knownToSystemCommissioner;
    v61 = 1024;
    isSetupInitiatedByOtherMatterEcosystem = [v15 isSetupInitiatedByOtherMatterEcosystem];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ discoveredAccessory %@ setupCode %@ knownToSystemCommissioner %d isSetupInitiatedByOtherMatterEcosystem %d", buf, 0x2Cu);

    self = v44;
  }

  if (!accessoryCopy)
  {
    v34 = +[NAFuture futureWithNoResult];
LABEL_16:
    v35 = v34;
    goto LABEL_25;
  }

  setupAccessoryDescription = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  discoveredAccessory = [(HSProxCardCoordinator *)self discoveredAccessory];
  category = [discoveredAccessory category];
  [setupAccessoryDescription updateAccessoryCategory:category];

  setupAccessoryDescription2 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  discoveredAccessory2 = [(HSProxCardCoordinator *)self discoveredAccessory];
  name = [discoveredAccessory2 name];
  [setupAccessoryDescription2 updateAccessoryName:name];

  accessory2 = [accessoryCopy accessory];
  LOBYTE(discoveredAccessory2) = [accessory2 knownToSystemCommissioner];

  if ((discoveredAccessory2 & 1) == 0)
  {
    v34 = [(HSProxCardCoordinator *)self _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:payloadCopy fromViewController:0];
    goto LABEL_16;
  }

  accessory3 = [accessoryCopy accessory];
  deviceIdentifier = [accessory3 deviceIdentifier];
  commissioningID = [accessory3 commissioningID];
  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = NSStringFromSelector(a2);
    *buf = 138412802;
    v54 = v26;
    v55 = 2112;
    v56 = deviceIdentifier;
    v57 = 2112;
    v58 = commissioningID;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ discovered Matter accessory is known to system commissioner with identifier %@ uuid %@", buf, 0x20u);
  }

  [(HSProxCardCoordinator *)self setAccessoryCommunicationProtocol:2];
  setupAccessoryDescription3 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  isSetupInitiatedByOtherMatterEcosystem2 = [setupAccessoryDescription3 isSetupInitiatedByOtherMatterEcosystem];

  if (isSetupInitiatedByOtherMatterEcosystem2)
  {
    objc_opt_class();
    selfCopy = self;
    activeTuple = [(HSProxCardCoordinator *)self activeTuple];
    configuration = [activeTuple configuration];
    if (configuration)
    {
      if (objc_opt_isKindOfClass())
      {
        v32 = configuration;
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;
      if (!v33)
      {
        sub_100079DA4();
      }
    }

    else
    {
      v33 = 0;
    }

    [v33 adoptExistingStagedCHIPPairingWithIdentifier:deviceIdentifier uuid:commissioningID];
    v41 = HFLogForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = NSStringFromSelector(a2);
      *buf = 138412290;
      v54 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%@ set pairing identifier on setup configuration; will skip staging", buf, 0xCu);
    }

    v35 = [(HSProxCardCoordinator *)selfCopy _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:payloadCopy fromViewController:0];
  }

  else
  {
    v36 = HFLogForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = NSStringFromSelector(a2);
      *buf = 138412546;
      v54 = v37;
      v55 = 2112;
      v56 = deviceIdentifier;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@ calling createCHIPSetupPayloadStringForStagedPairingWithIdentifier:%@", buf, 0x16u);
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100041AC4;
    v51[3] = &unk_1000C73B0;
    v52 = deviceIdentifier;
    v38 = [NAFuture futureWithCompletionHandlerAdapterBlock:v51];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100041B58;
    v47[3] = &unk_1000C7450;
    v50 = a2;
    v48 = accessoryCopy;
    selfCopy2 = self;
    v39 = [v38 flatMap:v47];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000420C8;
    v46[3] = &unk_1000C7470;
    v46[4] = a2;
    v40 = [v39 recover:v46];
    [(HSProxCardCoordinator *)self setMatterSetupPairingWindowReadyFuture:v40];

    v35 = +[NAFuture futureWithNoResult];

    v33 = v52;
  }

LABEL_25:

  return v35;
}

- (id)didReceiveSetupCode:(id)code withPayload:(id)payload fromViewController:(id)controller
{
  codeCopy = code;
  payloadCopy = payload;
  controllerCopy = controller;
  [(HSProxCardCoordinator *)self setSetupCode:codeCopy];
  setupCode = [(HSProxCardCoordinator *)self setupCode];
  discoveredAccessory = [(HSProxCardCoordinator *)self discoveredAccessory];

  if (discoveredAccessory)
  {
    discoveredAccessory2 = [(HSProxCardCoordinator *)self discoveredAccessory];
    rawSetupPayloadString = [discoveredAccessory2 rawSetupPayloadString];

    if ([rawSetupPayloadString length])
    {
      v16 = [HMAccessorySetupCoordinator communicationProtocolForSetupPayloadURLString:rawSetupPayloadString];
      integerValue = [v16 integerValue];

      [(HSProxCardCoordinator *)self setAccessoryCommunicationProtocol:integerValue];
    }
  }

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = NSStringFromSelector(a2);
    accessoryCommunicationProtocol = [(HSProxCardCoordinator *)self accessoryCommunicationProtocol];
    discoveredAccessory3 = [(HSProxCardCoordinator *)self discoveredAccessory];
    *buf = 138413314;
    v30 = v19;
    v31 = 2112;
    v32 = codeCopy;
    v33 = 2112;
    v34 = setupCode;
    v35 = 2048;
    v36 = accessoryCommunicationProtocol;
    v37 = 2112;
    v38 = discoveredAccessory3;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ receivedSetupCode %@ setupCode %@ accessoryCommunicationProtocol %ld discoveredAccessory %@", buf, 0x34u);
  }

  if (setupCode)
  {
    v22 = [(HSProxCardCoordinator *)self _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:payloadCopy fromViewController:controllerCopy];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100042414;
    v25[3] = &unk_1000C74E8;
    v25[4] = self;
    v28 = a2;
    v26 = setupCode;
    v27 = controllerCopy;
    v23 = [v22 flatMap:v25];
  }

  else
  {
    v23 = +[NAFuture futureWithNoResult];
  }

  return v23;
}

- (void)updateSetupAccessoryDescriptionWithPayload:(id)payload
{
  payloadCopy = payload;
  setupAccessoryDescription = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  [setupAccessoryDescription updateWithSetupAccessoryPayload:payloadCopy];

  setupPayloadURL = [payloadCopy setupPayloadURL];

  absoluteString = [setupPayloadURL absoluteString];
  v8 = [HMAccessorySetupCoordinator communicationProtocolForSetupPayloadURLString:absoluteString];
  integerValue = [v8 integerValue];

  [(HSProxCardCoordinator *)self setAccessoryCommunicationProtocol:integerValue];
}

- (id)showCustomCommissioningFlowAlertIfNecessaryForPayload:(id)payload onViewController:(id)controller
{
  payloadCopy = payload;
  controllerCopy = controller;
  if (-[HSProxCardCoordinator shouldShowCustomCommissioningProxCardWithPayload:](self, "shouldShowCustomCommissioningProxCardWithPayload:", payloadCopy) || -[HSProxCardCoordinator didShowCustomCommissioningFlowAlertIfNecessary](self, "didShowCustomCommissioningFlowAlertIfNecessary") || (-[HSProxCardCoordinator setDidShowCustomCommissioningFlowAlertIfNecessary:](self, "setDidShowCustomCommissioningFlowAlertIfNecessary:", 1), ([payloadCopy requiresMatterCustomCommissioningFlow] & 1) == 0))
  {
    v8 = [NAFuture futureWithResult:payloadCopy];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100042E10;
    v10[3] = &unk_1000C5F38;
    v11 = payloadCopy;
    v12 = controllerCopy;
    v8 = [NAFuture futureWithBlock:v10];
  }

  return v8;
}

- (BOOL)shouldShowCustomCommissioningProxCardWithPayload:(id)payload
{
  payloadCopy = payload;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    discoveredAccessory = [(HSProxCardCoordinator *)self discoveredAccessory];
    accessory = [discoveredAccessory accessory];
    matterDeviceTypeID = [accessory matterDeviceTypeID];
    matterDeviceTypeID2 = [payloadCopy matterDeviceTypeID];
    discoveredAccessory2 = [(HSProxCardCoordinator *)self discoveredAccessory];
    accessory2 = [discoveredAccessory2 accessory];
    v20 = 138413314;
    v21 = v7;
    v22 = 2112;
    v23 = matterDeviceTypeID;
    v24 = 2112;
    v25 = matterDeviceTypeID2;
    v26 = 2112;
    v27 = accessory2;
    v28 = 2112;
    v29 = payloadCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: accessory.matterDeviceTypeID: %@ payload.matterDeviceTypeID: %@ accessory: %@ payload: %@", &v20, 0x34u);
  }

  discoveredAccessory3 = [(HSProxCardCoordinator *)self discoveredAccessory];
  accessory3 = [discoveredAccessory3 accessory];
  matterDeviceTypeID3 = [accessory3 matterDeviceTypeID];
  v17 = [NSNumber numberWithInt:116];
  if ([matterDeviceTypeID3 isEqual:v17] && !-[HSProxCardCoordinator didShowCustomCommissioningFlowAlertIfNecessary](self, "didShowCustomCommissioningFlowAlertIfNecessary"))
  {
    requiresMatterCustomCommissioningFlow = [payloadCopy requiresMatterCustomCommissioningFlow];
  }

  else
  {
    requiresMatterCustomCommissioningFlow = 0;
  }

  return requiresMatterCustomCommissioningFlow;
}

- (HSProxCardCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)requiresDismissalConfirmation
{
  selfCopy = self;
  activeTuple = [(HSProxCardCoordinator *)self activeTuple];
  LOBYTE(selfCopy) = [(HSProxCardCoordinator *)selfCopy requiresDismissalConfirmation:activeTuple];

  return selfCopy;
}

- (BOOL)requiresDismissalConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  stateMachine = [confirmationCopy stateMachine];
  currentStep = [confirmationCopy currentStep];
  configuration = [confirmationCopy configuration];

  LOBYTE(self) = [stateMachine stepRequiresDismissalConfirmation:currentStep withCoordinator:self configuration:configuration];
  return self;
}

- (BOOL)requiresIdentifyButton
{
  selfCopy = self;
  activeTuple = [(HSProxCardCoordinator *)self activeTuple];
  LOBYTE(selfCopy) = [(HSProxCardCoordinator *)selfCopy requiresIdentifyButton:activeTuple];

  return selfCopy;
}

- (BOOL)requiresIdentifyButton:(id)button
{
  buttonCopy = button;
  accessory = [buttonCopy accessory];
  if ([accessory hf_isIdentifiable])
  {
    stateMachine = [buttonCopy stateMachine];
    currentStep = [buttonCopy currentStep];
    configuration = [buttonCopy configuration];
    v9 = [stateMachine stepRequiresIdentifyButton:currentStep withCoordinator:self configuration:configuration];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setUpThermostatControllerFor:(id)for homeUUID:(id)d
{
  v6 = sub_1000694A0(&qword_1000E6578, &qword_1000930A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_1000694A0(&qword_1000E6650, &qword_100093288);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v23 - v15;
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  }

  else
  {
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_100073FA4(v16, v14, &qword_1000E6650, &qword_100093288);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = for;
  sub_100075C50(v14, v21 + v20);
  forCopy = for;
  sub_1000755A4(0, 0, v9, &unk_1000932A0, v21);

  sub_10007400C(v16, &qword_1000E6650, &qword_100093288);
}

@end
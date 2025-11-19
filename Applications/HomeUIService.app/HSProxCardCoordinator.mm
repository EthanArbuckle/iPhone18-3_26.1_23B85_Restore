@interface HSProxCardCoordinator
- (BOOL)isConfiguringLastAccessoryOfSameCategory;
- (BOOL)isInSetupContext;
- (BOOL)requiresDismissalConfirmation;
- (BOOL)requiresDismissalConfirmation:(id)a3;
- (BOOL)requiresIdentifyButton;
- (BOOL)requiresIdentifyButton:(id)a3;
- (BOOL)shouldShowCustomCommissioningProxCardWithPayload:(id)a3;
- (BOOL)stateMachineConfigurationActiveTupleIsTopTuple;
- (BOOL)stateMachineConfigurationIsLaunchedToSetupMultipleAccessories:(id)a3;
- (BOOL)stateMachineConfigurationShouldJumpToDoneStep:(id)a3;
- (BOOL)stateMachineConfigurationShouldSetupBridgedAccessories:(id)a3;
- (BOOL)stateMachineConfigurationShouldSetupRouters:(id)a3;
- (BOOL)stateMachineConfigurationShouldSkipAccessoryUpdateStep:(id)a3;
- (BOOL)stateMachineConfigurationShouldSkipBridgeAddedStep:(id)a3;
- (BOOL)stateMachineConfigurationShouldSkipDetectedStep:(id)a3;
- (BOOL)stateMachineConfigurationShouldSkipDoneStep:(id)a3;
- (BOOL)stateMachineConfigurationShouldSkipHomeHubStep:(id)a3;
- (BOOL)stateMachineConfigurationShouldSkipResumeSelectAccessoryStep:(id)a3;
- (HMHome)home;
- (HSAccessoryTuple)nextUnconfiguredBridgedAccessory;
- (HSProxCardCoordinator)initWithHome:(id)a3 accessories:(id)a4 delegate:(id)a5;
- (HSProxCardCoordinator)initWithHome:(id)a3 accessoryDescription:(id)a4 matterDeviceSetupRequest:(id)a5 setupSpecificAccessory:(BOOL)a6 entitlementContext:(id)a7 discoveredAccessory:(id)a8 delegate:(id)a9;
- (HSProxCardCoordinatorDelegate)delegate;
- (NSArray)allAccessories;
- (NSArray)allAccessoryTuples;
- (NSString)description;
- (id)_bridgedConfigurationOrdinalityString;
- (id)_configurationForAccessory:(id)a3 stateMachine:(id)a4;
- (id)_discoveredAccessoryOrSetupCodeDidUpdateWithPayload:(id)a3 fromViewController:(id)a4;
- (id)_generateNextStep;
- (id)_generateNextStepWithActiveTuple:(id)a3;
- (id)_tupleForAccessory:(id)a3;
- (id)didReceiveDiscoveredAccessory:(id)a3 withPayload:(id)a4;
- (id)didReceiveSetupCode:(id)a3 withPayload:(id)a4 fromViewController:(id)a5;
- (id)nextViewControllerWithTarget:(id)a3;
- (id)showCustomCommissioningFlowAlertIfNecessaryForPayload:(id)a3 onViewController:(id)a4;
- (int64_t)accessoryCommunicationProtocol;
- (int64_t)launchReason;
- (unint64_t)numberOfAccessoriesInSameCategory;
- (void)didReceiveAccessories:(id)a3;
- (void)dismissProxCardFlowAfterExecuting:(id)a3;
- (void)home:(id)a3 didFailAccessorySetupWithError:(id)a4;
- (void)notifyDelegateOfPairingFailureWithError:(id)a3;
- (void)pairAccessory;
- (void)pairAccessoryToAppleHome;
- (void)pairAccessoryToPEA;
- (void)resetForRetry;
- (void)setSetupCode:(id)a3;
- (void)setUpThermostatControllerFor:(id)a3 homeUUID:(id)a4;
- (void)stateMachineConfiguration:(id)a3 didUpdateHome:(id)a4;
- (void)stateMachineConfigurationIsReadyToPair:(id)a3;
- (void)updateAccessoriesPendingConfiguration:(id)a3;
- (void)updateSetupAccessoryDescriptionWithPayload:(id)a3;
@end

@implementation HSProxCardCoordinator

- (HSProxCardCoordinator)initWithHome:(id)a3 accessoryDescription:(id)a4 matterDeviceSetupRequest:(id)a5 setupSpecificAccessory:(BOOL)a6 entitlementContext:(id)a7 discoveredAccessory:(id)a8 delegate:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v53 = a7;
  v52 = a8;
  v18 = a9;
  v54.receiver = self;
  v54.super_class = HSProxCardCoordinator;
  v19 = [(HSProxCardCoordinator *)&v54 init];
  v20 = v19;
  if (v19)
  {
    v51 = v18;
    objc_storeWeak(&v19->_delegate, v18);
    objc_storeStrong(&v20->_setupAccessoryDescription, a4);
    objc_storeStrong(&v20->_matterDeviceSetupRequest, a5);
    v21 = [v16 setupAccessoryPayload];
    v22 = [v21 setupPayloadURL];
    v23 = [v22 absoluteString];

    if ([v23 length])
    {
      v24 = [HMAccessorySetupCoordinator communicationProtocolForSetupPayloadURLString:v23];
      v25 = [v24 integerValue];

      v20->_accessoryCommunicationProtocol = v25;
    }

    v20->_setupSpecificAccessory = a6;
    v26 = +[HSAccessoryPairingEventLogger sharedLogger];
    v27 = [v16 setupAccessoryPayload];
    [v26 logTransportFlagsFromPayload:v27];

    objc_storeStrong(&v20->_entitlementContext, a7);
    v28 = [v16 suggestedRoomUniqueIdentifier];
    suggestedRoomUUID = v20->_suggestedRoomUUID;
    v20->_suggestedRoomUUID = v28;

    v20->_pairingState = 0;
    objc_storeStrong(&v20->_discoveredAccessory, a8);
    if (!a6)
    {
      v30 = objc_alloc_init(HFAccessoryBrowsingManager);
      accessoryBrowser = v20->_accessoryBrowser;
      v20->_accessoryBrowser = v30;

      [(HFAccessoryBrowsingManager *)v20->_accessoryBrowser startSearchingForNewAccessories];
    }

    v32 = [v16 isSetupInitiatedByOtherMatterEcosystem];
    v33 = &off_1000C4960;
    if (!v32)
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
    [v41 setOverrideHome:v15];

    v42 = +[HFHomeKitDispatcher sharedDispatcher];
    [v42 addHomeObserver:v20];

    objc_opt_class();
    v43 = HFLogForCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v15 hf_prettyDescription];
      v45 = [v16 hf_prettyDescription];
      [v52 hf_prettyDescription];
      v50 = v15;
      v46 = v23;
      v48 = v47 = v17;
      *buf = 138413058;
      v56 = v44;
      v57 = 2112;
      v58 = v45;
      v59 = 2112;
      v60 = v53;
      v61 = 2112;
      v62 = v48;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Initialized HSProxCardCoordinator with Home [%@] accessoryDescription [%@] entitlementContext [%@] discoveredAccessory [%@]", buf, 0x2Au);

      v17 = v47;
      v23 = v46;
      v15 = v50;
    }

    v18 = v51;
  }

  return v20;
}

- (HSProxCardCoordinator)initWithHome:(id)a3 accessories:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HSProxCardCoordinator;
  v11 = [(HSProxCardCoordinator *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v10);
    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &__NSArray0__struct;
    }

    v14 = [NSSet setWithArray:v13];
    [(HSProxCardCoordinator *)v12 didReceiveAccessories:v14];

    v15 = +[HFHomeKitDispatcher sharedDispatcher];
    [v15 setOverrideHome:v8];

    v16 = +[HFHomeKitDispatcher sharedDispatcher];
    [v16 addHomeObserver:v12];

    objc_opt_class();
  }

  return v12;
}

- (HMHome)home
{
  v2 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  v3 = [v2 configuration];
  v4 = [v3 home];

  return v4;
}

- (int64_t)launchReason
{
  v3 = [(HSProxCardCoordinator *)self delegate];
  v4 = [v3 coordinatorGetLaunchReason:self];

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  v6 = [(HSProxCardCoordinator *)self discoveredAccessory];
  v7 = [(HSProxCardCoordinator *)self pairingState];
  v8 = [(HSProxCardCoordinator *)self pairingFuture];
  v9 = [(HSProxCardCoordinator *)self activeTuple];
  v10 = [NSString stringWithFormat:@"<%@ setupAccessoryDescription: %@ discoveredAccessory: %@ pairingState: %lu pairingFuture: %@ activeTuple: %@>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (void)updateAccessoriesPendingConfiguration:(id)a3
{
  v4 = a3;
  if ([(HSProxCardCoordinator *)self launchReason]!= 1)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000799FC();
    }

    goto LABEL_8;
  }

  if (![v4 count])
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100079A7C();
    }

LABEL_8:

    goto LABEL_9;
  }

  [(HSProxCardCoordinator *)self didReceiveAccessories:v4];
  [(HSProxCardCoordinator *)self setUserDidSelectAccessories:1];
LABEL_9:
}

- (void)didReceiveAccessories:(id)a3
{
  v4 = a3;
  [(HSProxCardCoordinator *)self setPairingState:2];
  if ([(HSProxCardCoordinator *)self launchReason])
  {
    v5 = [v4 allObjects];
    v6 = [v5 sortedArrayUsingComparator:&stru_1000C6FE0];

    if (_os_feature_enabled_impl() && ([(HSProxCardCoordinator *)self launchReason]== 4 || [(HSProxCardCoordinator *)self launchReason]== 5))
    {
      v7 = [HFUtilities sortedLockAccessoryArrayForSetup:v4];

      v6 = v7;
    }

    v8 = [v6 firstObject];
    v9 = [(HSProxCardCoordinator *)self _tupleForAccessory:v8];
    [(HSProxCardCoordinator *)self setTopAccessoryTuple:v9];
    v10 = [(HSProxCardCoordinator *)self topAccessoryTuple];
    [(HSProxCardCoordinator *)self setActiveTuple:v10];
  }

  else
  {
    v8 = [v4 na_firstObjectPassingTest:&stru_1000C7020];
    v6 = [(HSProxCardCoordinator *)self topAccessoryTuple];
    [v6 setAccessory:v8];
  }

  v11 = v4;
  v12 = v11;
  if (([v8 hf_isNetworkRouter] & 1) == 0)
  {
    v13 = [NSSet na_setWithSafeObject:v8];
    v12 = [v11 na_setByRemovingObjectsFromSet:v13];
  }

  v14 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  v15 = [v14 accessory];
  v16 = [v15 hf_isSprinkler];

  if (v16)
  {
    v17 = [v12 na_filter:&stru_1000C7040];
    v18 = [v12 na_setByRemovingObjectsFromSet:v17];

    v12 = v18;
  }

  v19 = [v12 allObjects];
  v20 = [v19 sortedArrayUsingComparator:&stru_1000C6FE0];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10003C238;
  v39[3] = &unk_1000C7088;
  v39[4] = self;
  v21 = [v20 na_map:v39];
  [(HSProxCardCoordinator *)self setBridgedAccessories:v21];

  v22 = [(HSProxCardCoordinator *)self bridgedAccessories];
  v23 = [v22 na_dictionaryByBucketingObjectsUsingKeyGenerator:&stru_1000C70C8];
  [(HSProxCardCoordinator *)self setBridgedAccessoryCategoryToArrayMap:v23];

  v24 = [v8 services];
  LODWORD(v23) = [v24 na_any:&stru_1000C70E8];

  if (v23)
  {
    v25 = [(HSProxCardCoordinator *)self topAccessoryTuple];
    v26 = [v25 configuration];
    v27 = [v26 home];
    v28 = [v27 uniqueIdentifier];
    if (!v28)
    {
LABEL_16:

      goto LABEL_17;
    }

    v29 = v28;
    [(HSProxCardCoordinator *)self topAccessoryTuple];
    v30 = v38 = v11;
    v31 = [v30 configuration];
    [v31 home];
    v37 = v25;
    v32 = v8;
    v34 = v33 = v20;
    v36 = [v34 isAllowedToEnableAdaptiveTemperatureAutomations];

    v20 = v33;
    v8 = v32;

    v11 = v38;
    if (v36)
    {
      v25 = [(HSProxCardCoordinator *)self topAccessoryTuple];
      v26 = [v25 configuration];
      v27 = [v26 home];
      v35 = [v27 uniqueIdentifier];
      [(HSProxCardCoordinator *)self setUpThermostatControllerFor:v8 homeUUID:v35];

      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)pairAccessory
{
  v3 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  v4 = [v3 isSetupInitiatedByOtherMatterEcosystem];

  if (v4)
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
  v4 = [(HSProxCardCoordinator *)self setupAccessoryDescription];

  if (!v4)
  {
    sub_100079AFC();
  }

  v5 = [HFSetupPairingContext alloc];
  v6 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  v7 = [(HSProxCardCoordinator *)self entitlementContext];
  v8 = [v5 initWithSetupAccessoryDescription:v6 isTrustedOrigin:{objc_msgSend(v7, "isEntitledForHomeKitSPI")}];

  v9 = [(HSProxCardCoordinator *)self discoveredAccessory];
  v10 = [v9 accessory];
  v11 = [v10 knownToSystemCommissioner];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(HSProxCardCoordinator *)self discoveredAccessory];
  }

  v13 = [[HSAccessoryPairingFuture alloc] initWithPairingContext:v8 discoveredAccessory:v12];
  [(HSProxCardCoordinator *)self setPairingFuture:v13];

  v14 = [(HSProxCardCoordinator *)self pairingFuture];
  v15 = [(HSProxCardCoordinator *)self delegate];
  [v14 setPairingObserver:v15];

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
    v34 = self;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ pairing starting with context: %@ coordinator: %@", buf, 0x2Au);
  }

  v20 = [(HSProxCardCoordinator *)self pairingFuture];
  v21 = [(HSProxCardCoordinator *)self home];
  v22 = [v20 startPairingWithHome:v21];

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
  v4 = [(HSProxCardCoordinator *)self setupAccessoryDescription];

  if (!v4)
  {
    sub_100079B6C();
  }

  v5 = [HFSetupPairingContext alloc];
  v6 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  v7 = [(HSProxCardCoordinator *)self entitlementContext];
  v8 = [v5 initWithSetupAccessoryDescription:v6 isTrustedOrigin:{objc_msgSend(v7, "isEntitledForHomeKitSPI")}];

  objc_opt_class();
  v9 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  v10 = [v9 configuration];
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
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
  v13 = [(HSProxCardCoordinator *)self delegate];
  [v12 addPairingObserver:v13];

  objc_initWeak(&location, self);
  v14 = [v12 stageCHIPAccessory];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003CB64;
  v23[3] = &unk_1000C7138;
  v15 = v12;
  v24 = v15;
  objc_copyWeak(&v25, &location);
  v16 = [v14 recover:v23];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003CE98;
  v19[3] = &unk_1000C7188;
  v17 = v15;
  v20 = v17;
  v21 = self;
  v22 = a2;
  v18 = [v16 addSuccessBlock:v19];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)notifyDelegateOfPairingFailureWithError:(id)a3
{
  v17 = a3;
  [(HSProxCardCoordinator *)self setPairingState:3];
  v4 = +[NSMutableDictionary dictionary];
  v5 = [(HSProxCardCoordinator *)self pairingFuture];
  v6 = [v5 pairingStatusTitle];
  [v4 setObject:v6 forKeyedSubscript:HFErrorUserInfoOptionTitleKey];

  v7 = [(HSProxCardCoordinator *)self pairingFuture];
  v8 = [v7 pairingStatusDescription];
  [v4 setObject:v8 forKeyedSubscript:HFErrorUserInfoOptionDescriptionKey];

  v9 = [v4 count];
  if (v9)
  {
    v10 = [v4 copy];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v17 hf_errorWithOperationType:0 options:v10];
  v12 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  v13 = [v12 configuration];
  [v13 setPairingError:v11];

  if (v9)
  {
  }

  v14 = [(HSProxCardCoordinator *)self delegate];
  v15 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  v16 = [v15 configuration];
  [v14 coordinator:self updatedConfiguration:v16];
}

- (id)_generateNextStep
{
  v3 = [(HSProxCardCoordinator *)self activeTuple];
  v4 = [(HSProxCardCoordinator *)self _generateNextStepWithActiveTuple:v3];

  return v4;
}

- (id)_generateNextStepWithActiveTuple:(id)a3
{
  v4 = a3;
  v5 = [v4 moveToNextStep];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003D5FC;
  v13[3] = &unk_1000C71B0;
  v6 = v4;
  v14 = v6;
  v15 = self;
  v7 = [v5 flatMap:v13];
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

- (id)nextViewControllerWithTarget:(id)a3
{
  v4 = a3;
  v5 = [(HSProxCardCoordinator *)self activeTuple];
  v6 = [v5 currentStep];

  objc_initWeak(&location, self);
  v7 = [(HSProxCardCoordinator *)self _generateNextStep];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003DD08;
  v20[3] = &unk_1000C7228;
  objc_copyWeak(v21, &location);
  v21[1] = v6;
  v8 = [v7 flatMap:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003E0F4;
  v18[3] = &unk_1000C7250;
  v18[4] = self;
  v9 = v4;
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

- (void)dismissProxCardFlowAfterExecuting:(id)a3
{
  v40 = a3;
  v4 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  v5 = [v4 configuration];
  v41 = [v5 home];

  if ([v41 hf_currentUserIsOwner])
  {
    v6 = 1;
  }

  else if ([v41 hf_currentUserIsAdministrator])
  {
    v6 = 2;
  }

  else
  {
    if (!v41)
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
  v10 = [(HSProxCardCoordinator *)self delegate];
  [v9 logCardCount:{objc_msgSend(v10, "coordinatorGetNumberOfProxCards:", self)}];

  v11 = +[HSAccessoryPairingEventLogger sharedLogger];
  [v11 logHUISDismiss];

  v12 = +[NAFuture futureWithNoResult];
  if (-[HSProxCardCoordinator launchReason](self, "launchReason") && (-[HSProxCardCoordinator launchReason](self, "launchReason") != 1 || (-[HSProxCardCoordinator activeTuple](self, "activeTuple"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 currentStep], v13, v14 < 9)))
  {
    v20 = v12;
  }

  else
  {
    v15 = [(HSProxCardCoordinator *)self allAccessoryTuples];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10003ECC8;
    v45[3] = &unk_1000C72A0;
    v46 = v41;
    v16 = [v15 na_map:v45];
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

  if (v40)
  {
    v21 = v40;
  }

  else
  {
    v21 = +[NAFuture futureWithNoResult];
  }

  v22 = v21;
  v23 = [(HSProxCardCoordinator *)self pairingFuture];
  v24 = [v23 cancelPairing];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = +[NAFuture futureWithNoResult];
  }

  v27 = v26;

  v28 = +[NAFuture futureWithNoResult];
  v29 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  v30 = [v29 isSetupInitiatedByOtherMatterEcosystem];

  if (v30)
  {
    objc_opt_class();
    v31 = [(HSProxCardCoordinator *)self topAccessoryTuple];
    v32 = [v31 configuration];
    if (v32)
    {
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
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

    v35 = [v34 cancelStagingForCHIPPairing];

    v28 = v35;
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
  v3 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  v4 = [v3 isSetupInitiatedByOtherMatterEcosystem];
  v5 = &off_1000C4960;
  if (!v4)
  {
    v5 = off_1000C4958;
  }

  v6 = objc_alloc_init(*v5);

  v7 = objc_alloc([v6 configurationObjectClass]);
  v8 = [(HSProxCardCoordinator *)self home];
  v9 = [v7 initWithHome:v8];

  [v9 setDelegate:self];
  v10 = objc_alloc_init(HSAccessoryTuple);
  [(HSAccessoryTuple *)v10 setStateMachine:v6];
  [(HSAccessoryTuple *)v10 setConfiguration:v9];
  [(HSProxCardCoordinator *)self setTopAccessoryTuple:v10];
  v11 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  [(HSProxCardCoordinator *)self setActiveTuple:v11];

  v12 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  [v12 updateRetry:1];

  v13 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  [v13 setCancellationReason:0];

  v14 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  v15 = [v14 setupAccessoryPayload];
  v16 = [v15 setupCode];
  [(HSProxCardCoordinator *)self setSetupCode:v16];

  v17 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  v18 = [v17 setupAccessoryPayload];
  -[HSProxCardCoordinator setAccessoryCommunicationProtocol:](self, "setAccessoryCommunicationProtocol:", [v18 communicationProtocol]);

  if (![(HSProxCardCoordinator *)self setupSpecificAccessory])
  {
    v19 = objc_alloc_init(HFAccessoryBrowsingManager);
    accessoryBrowser = self->_accessoryBrowser;
    self->_accessoryBrowser = v19;

    [(HFAccessoryBrowsingManager *)self->_accessoryBrowser startSearchingForNewAccessories];
  }

  v21 = [(HSProxCardCoordinator *)self discoveredAccessory];
  [v21 updateStatus:1 error:0];

  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_100079ED8(self, v6, v22);
  }
}

- (void)home:(id)a3 didFailAccessorySetupWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v6 hf_prettyDescription];
    v14 = 138412802;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    v18 = 2112;
    v19 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@ home:%@]", &v14, 0x20u);
  }

  if ([v7 hf_isHMErrorWithCode:23])
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100079FF0();
    }
  }

  else
  {
    v9 = [(HSProxCardCoordinator *)self pairingFuture];
    v10 = [v9 cancelPairingWithError:v7];
  }
}

- (HSAccessoryTuple)nextUnconfiguredBridgedAccessory
{
  v2 = [(HSProxCardCoordinator *)self bridgedAccessories];
  v3 = [v2 na_firstObjectPassingTest:&stru_1000C72E0];

  return v3;
}

- (id)_bridgedConfigurationOrdinalityString
{
  v3 = [(HSProxCardCoordinator *)self bridgedAccessories];
  if ([v3 count])
  {
    v4 = [(HSProxCardCoordinator *)self activeTuple];
    v5 = [(HSProxCardCoordinator *)self topAccessoryTuple];

    if (v4 == v5)
    {
      v14 = 0;
      goto LABEL_11;
    }

    v6 = [(HSProxCardCoordinator *)self activeTuple];
    v3 = [v6 accessoryCategoryOrPrimaryServiceType];

    v7 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
    v8 = [v7 setupAccessoryPayload];
    v9 = [v8 matterDeviceTypeID];

    v10 = [(HSProxCardCoordinator *)self bridgedAccessoryCategoryToArrayMap];
    v11 = [v10 objectForKeyedSubscript:v3];

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

- (id)_configurationForAccessory:(id)a3 stateMachine:(id)a4
{
  v6 = a3;
  v7 = [objc_alloc(objc_msgSend(a4 "configurationObjectClass"))];

  [v7 setDelegate:self];

  return v7;
}

- (id)_tupleForAccessory:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HSAccessoryTuple);
  v6 = objc_alloc_init(HSSetupStateMachine);
  [(HSAccessoryTuple *)v5 setStateMachine:v6];

  v7 = [(HSAccessoryTuple *)v5 stateMachine];
  v8 = [(HSProxCardCoordinator *)self _configurationForAccessory:v4 stateMachine:v7];

  [(HSAccessoryTuple *)v5 setConfiguration:v8];

  return v5;
}

- (NSArray)allAccessoryTuples
{
  v3 = [(HSProxCardCoordinator *)self topAccessoryTuple];

  if (v3)
  {
    v4 = [(HSProxCardCoordinator *)self topAccessoryTuple];
    v9 = v4;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
    v6 = [(HSProxCardCoordinator *)self bridgedAccessories];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)allAccessories
{
  v2 = [(HSProxCardCoordinator *)self allAccessoryTuples];
  v3 = [v2 na_map:&stru_1000C7320];

  return v3;
}

- (BOOL)isConfiguringLastAccessoryOfSameCategory
{
  v3 = [(HSProxCardCoordinator *)self activeTuple];
  v4 = [v3 accessoryCategoryOrPrimaryServiceType];

  v5 = [(HSProxCardCoordinator *)self bridgedAccessoryCategoryToArrayMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [(HSProxCardCoordinator *)self activeTuple];
  v8 = [v7 accessory];
  v9 = [v6 lastObject];
  v10 = [v9 accessory];
  v11 = v8 == v10;

  return v11;
}

- (unint64_t)numberOfAccessoriesInSameCategory
{
  v3 = [(HSProxCardCoordinator *)self activeTuple];
  v4 = [(HSProxCardCoordinator *)self topAccessoryTuple];

  if (v3 == v4)
  {
    return 1;
  }

  v5 = [(HSProxCardCoordinator *)self activeTuple];
  v6 = [v5 accessoryCategoryOrPrimaryServiceType];

  v7 = [(HSProxCardCoordinator *)self bridgedAccessoryCategoryToArrayMap];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v8 count];

  return v9;
}

- (void)stateMachineConfigurationIsReadyToPair:(id)a3
{
  v4 = a3;
  if (![(HSProxCardCoordinator *)self pairingState])
  {
    [(HSProxCardCoordinator *)self setPairingState:1];
    objc_initWeak(&location, self);
    v5 = [(HSProxCardCoordinator *)self matterSetupPairingWindowReadyFuture];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003FC48;
    v7[3] = &unk_1000C7348;
    objc_copyWeak(&v8, &location);
    v6 = [v5 addSuccessBlock:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)stateMachineConfiguration:(id)a3 didUpdateHome:(id)a4
{
  v4 = a4;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  [v5 setOverrideHome:v4];
}

- (BOOL)stateMachineConfigurationIsLaunchedToSetupMultipleAccessories:(id)a3
{
  v4 = [(HSProxCardCoordinator *)self bridgedAccessories];
  if ([v4 count])
  {
    v5 = [(HSProxCardCoordinator *)self bridgedAccessories];
    if ([v5 count] == 1)
    {
      v6 = [(HSProxCardCoordinator *)self bridgedAccessories];
      v7 = [v6 firstObject];
      v8 = [v7 accessory];
      v9 = [v8 hf_isNetworkRouter] ^ 1;
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
  v2 = self;
  v3 = [(HSProxCardCoordinator *)self activeTuple];
  v4 = [(HSProxCardCoordinator *)v2 topAccessoryTuple];
  LOBYTE(v2) = v3 == v4;

  return v2;
}

- (BOOL)stateMachineConfigurationShouldSkipDetectedStep:(id)a3
{
  v4 = [a3 addedAccessory];

  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(HSProxCardCoordinator *)self discoveredAccessory];
    if (v6)
    {
      v7 = [(HSProxCardCoordinator *)self discoveredAccessory];
      v8 = [v7 accessory];
      v5 = [v8 knownToSystemCommissioner] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)stateMachineConfigurationShouldSkipHomeHubStep:(id)a3
{
  v4 = a3;
  v5 = [v4 home];

  if (!v5)
  {
    v6 = [(HSProxCardCoordinator *)self activeTuple];
    NSLog(@"No home for tuple %@", v6);
  }

  v7 = ![(HSProxCardCoordinator *)self isUsingCHIPCommunicationProtocol];
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v8 = [v4 home];
    if ([v8 hf_currentUserIsOwner])
    {
      v9 = +[HFHomeKitDispatcher sharedDispatcher];
      v10 = [v9 homeManager];
      LOBYTE(v7) = [v10 hasOptedToHH2] | v7;
    }
  }

  v11 = [v4 home];
  if ([v11 hf_currentUserIsOwner])
  {
    v12 = 1;
  }

  else
  {
    v13 = [v4 home];
    if ([v13 hf_currentUserIsAdministrator])
    {
      v14 = [v4 home];
      v12 = [v14 hf_hasResidentDeviceCapableOfSupportingMatterSharedAdmin];
    }

    else
    {
      v12 = 0;
    }
  }

  if (v7)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v16 = [v4 home];
    v15 = [v16 hf_hasResidentDeviceCapableOfSupportingCHIP] & v12;
  }

  return v15;
}

- (BOOL)stateMachineConfigurationShouldSkipAccessoryUpdateStep:(id)a3
{
  v4 = a3;
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v5 = [(HSProxCardCoordinator *)self isUsingCHIPCommunicationProtocol];
    v6 = [v4 addedAccessory];
    v7 = [v6 hf_hasNewValidSoftwareOrFirmwareUpdate];
    v8 = [v4 home];
    v9 = [v8 hf_currentUserIsAdministrator];

    v10 = v5 & v7 & v9;
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
      v13 = v7 & 1;
      v14 = v9 & 1;
      v15 = [v4 home];
      v16 = [v15 currentUser];
      v17 = [v16 hf_prettyDescription];
      v20 = 136316162;
      v21 = "[HSProxCardCoordinator stateMachineConfigurationShouldSkipAccessoryUpdateStep:]";
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v13;
      v26 = 1024;
      v27 = v14;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Skipping HSProxCardSetupUIStepAccessoryUpdate - isMatter: [%{BOOL}d], hasValidUpdate: [%{BOOL}d], isCurrentUserAdmin: %{BOOL}d for %@", &v20, 0x28u);
    }

    v18 = v10 ^ 1;
  }

  else
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[HSProxCardCoordinator stateMachineConfigurationShouldSkipAccessoryUpdateStep:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Skipping HSProxCardSetupUIStepAccessoryUpdate due to runtime FF disabled: [HOME_ENABLE_MATTER_IPHONE_ONLY_PAIRING]", &v20, 0xCu);
    }

    v18 = 1;
  }

  return v18;
}

- (BOOL)stateMachineConfigurationShouldSkipResumeSelectAccessoryStep:(id)a3
{
  v4 = a3;
  if ([(HSProxCardCoordinator *)self userDidSelectAccessories])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = ![(HSProxCardCoordinator *)self stateMachineConfigurationIsLaunchedToSetupMultipleAccessories:v4];
  }

  return v5;
}

- (BOOL)stateMachineConfigurationShouldSkipBridgeAddedStep:(id)a3
{
  v4 = a3;
  if ([(HSProxCardCoordinator *)self launchReason]== 1)
  {
    v5 = [(HSProxCardCoordinator *)self nextUnconfiguredBridgedAccessory];
    if (v5)
    {
      v6 = [(HSProxCardCoordinator *)self nextUnconfiguredBridgedAccessory];
      v7 = [(HSProxCardCoordinator *)self activeTuple];
      v8 = [v6 isEqual:v7];
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

  v9 = [v4 addedAccessory];
  if (([v9 isBridged] & 1) == 0 && (objc_msgSend(v9, "hf_isNetworkRouter") & 1) == 0)
  {
    v10 = [v9 hf_bridgedAccessories];
    if ([v9 hf_isSprinkler])
    {
      v11 = [v10 na_filter:&stru_1000C7368];

      v10 = v11;
    }

    v8 &= [v10 count] == 0;
  }

  return v8;
}

- (BOOL)stateMachineConfigurationShouldSkipDoneStep:(id)a3
{
  v4 = a3;
  v5 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  v6 = [v5 configuration];

  if (v6 == v4)
  {
    v8 = [(HSProxCardCoordinator *)self bridgedAccessories];
    v7 = v8 == 0;
  }

  else
  {
    v7 = [(HSProxCardCoordinator *)self isConfiguringLastAccessoryOfSameCategory];
  }

  return !v7;
}

- (BOOL)stateMachineConfigurationShouldSetupBridgedAccessories:(id)a3
{
  v4 = a3;
  v5 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  v6 = [v5 configuration];

  if (v6 != v4)
  {
    return 0;
  }

  v8 = [(HSProxCardCoordinator *)self nextUnconfiguredBridgedAccessory];
  v7 = v8 != 0;

  return v7;
}

- (BOOL)stateMachineConfigurationShouldSetupRouters:(id)a3
{
  v4 = [a3 addedAccessory];
  if ([v4 hf_isNetworkRouter])
  {
    v5 = [(HSProxCardCoordinator *)self isConfiguringLastAccessoryOfSameCategory];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)stateMachineConfigurationShouldJumpToDoneStep:(id)a3
{
  v4 = a3;
  if ([(HSProxCardCoordinator *)self launchReason]== 1)
  {
    v5 = [v4 addedAccessory];
    if (v5)
    {
      v6 = [v4 addedAccessory];
      v7 = [v6 pendingConfigurationIdentifier];
      v8 = [v7 length] == 0;
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
  v2 = [(HSProxCardCoordinator *)self launchReason];

  return [HUHomeUIServiceLaunchUserInfo isInSetupContext:v2];
}

- (id)_discoveredAccessoryOrSetupCodeDidUpdateWithPayload:(id)a3 fromViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NAFuture futureWithNoResult];
  v9 = [(HSProxCardCoordinator *)self discoveredAccessory];

  if (!v9)
  {
LABEL_9:
    v18 = v8;
    v8 = v18;
LABEL_24:
    v30 = v18;
    goto LABEL_25;
  }

  v10 = [(HSProxCardCoordinator *)self discoveredAccessory];
  if ([v10 requiresSetupCode])
  {
    v11 = [(HSProxCardCoordinator *)self setupCode];
    v12 = [v11 length] == 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  v14 = [v13 configuration];
  v15 = [v14 isSetupInitiatedByOtherMatterEcosystem] & v12;

  if (v15 == 1)
  {
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(HSProxCardCoordinator *)self discoveredAccessory];
      *buf = 136315394;
      v55 = "[HSProxCardCoordinator _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:fromViewController:]";
      v56 = 2112;
      v57 = v17;
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
  v19 = [(HSProxCardCoordinator *)self setupCode];
  v20 = v19;
  v21 = &stru_1000C89F8;
  if (v19)
  {
    v21 = v19;
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

  if (!v6)
  {
    v33 = [(HSProxCardCoordinator *)self discoveredAccessory];
    [v33 setRawSetupPayloadString:v22];

    objc_initWeak(&location, self);
    v34 = HFLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(HSProxCardCoordinator *)self discoveredAccessory];
      *buf = 136315650;
      v55 = "[HSProxCardCoordinator _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:fromViewController:]";
      v56 = 2112;
      v57 = v22;
      v58 = 2112;
      v59 = v35;
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
    v49 = v7;
    v32 = [v37 flatMap:v47];

    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
    goto LABEL_22;
  }

  v23 = HFLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v41 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
    v24 = [(HSProxCardCoordinator *)self discoveredAccessory];
    v25 = [(HSProxCardCoordinator *)self setupCode];
    *buf = 136316162;
    v55 = "[HSProxCardCoordinator _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:fromViewController:]";
    v56 = 2112;
    v57 = v41;
    v58 = 2112;
    v59 = v6;
    v60 = 2112;
    v61 = v24;
    v62 = 2112;
    v63 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Found existing payload for Matter Accessory - updating setupAccessoryDescription with payload - [ setupAccessoryDescription:%@, payload:%@, discoveredAccessory:%@, setupCode:%@ ]", buf, 0x34u);
  }

  v26 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  [v26 updateWithSetupAccessoryPayload:v6];

  v27 = [(HSProxCardCoordinator *)self topAccessoryTuple];
  v28 = [v27 configuration];
  [v28 setIsReadyToPair:1];

  v29 = [(HSProxCardCoordinator *)self pairingFuture];
  [v29 updateSetupPayload:v6];

  v30 = +[NAFuture futureWithNoResult];

LABEL_25:

  return v30;
}

- (void)setSetupCode:(id)a3
{
  v4 = [a3 hf_extractDecimalDigits];
  v5 = 1;
  if ([v4 length] == 8)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(HSProxCardCoordinator *)self setAccessoryCommunicationProtocol:v6];
  v7 = [v4 length];
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
  self->_setupCode = v4;
}

- (int64_t)accessoryCommunicationProtocol
{
  result = self->_accessoryCommunicationProtocol;
  if (!result)
  {
    v4 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
    v5 = [v4 setupAccessoryPayload];
    self->_accessoryCommunicationProtocol = [v5 communicationProtocol];

    return self->_accessoryCommunicationProtocol;
  }

  return result;
}

- (id)didReceiveDiscoveredAccessory:(id)a3 withPayload:(id)a4
{
  v8 = a3;
  v9 = a4;
  objc_storeStrong(&self->_discoveredAccessory, a3);
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v12 = [(HSProxCardCoordinator *)self setupCode];
    v13 = [v8 accessory];
    v14 = [v13 knownToSystemCommissioner];
    [(HSProxCardCoordinator *)self setupAccessoryDescription];
    v15 = v44 = self;
    *buf = 138413314;
    v54 = v11;
    v55 = 2112;
    v56 = v8;
    v57 = 2112;
    v58 = v12;
    v59 = 1024;
    v60 = v14;
    v61 = 1024;
    v62 = [v15 isSetupInitiatedByOtherMatterEcosystem];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ discoveredAccessory %@ setupCode %@ knownToSystemCommissioner %d isSetupInitiatedByOtherMatterEcosystem %d", buf, 0x2Cu);

    self = v44;
  }

  if (!v8)
  {
    v34 = +[NAFuture futureWithNoResult];
LABEL_16:
    v35 = v34;
    goto LABEL_25;
  }

  v16 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  v17 = [(HSProxCardCoordinator *)self discoveredAccessory];
  v18 = [v17 category];
  [v16 updateAccessoryCategory:v18];

  v19 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  v20 = [(HSProxCardCoordinator *)self discoveredAccessory];
  v21 = [v20 name];
  [v19 updateAccessoryName:v21];

  v22 = [v8 accessory];
  LOBYTE(v20) = [v22 knownToSystemCommissioner];

  if ((v20 & 1) == 0)
  {
    v34 = [(HSProxCardCoordinator *)self _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:v9 fromViewController:0];
    goto LABEL_16;
  }

  v23 = [v8 accessory];
  v24 = [v23 deviceIdentifier];
  v45 = [v23 commissioningID];
  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = NSStringFromSelector(a2);
    *buf = 138412802;
    v54 = v26;
    v55 = 2112;
    v56 = v24;
    v57 = 2112;
    v58 = v45;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ discovered Matter accessory is known to system commissioner with identifier %@ uuid %@", buf, 0x20u);
  }

  [(HSProxCardCoordinator *)self setAccessoryCommunicationProtocol:2];
  v27 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  v28 = [v27 isSetupInitiatedByOtherMatterEcosystem];

  if (v28)
  {
    objc_opt_class();
    v29 = self;
    v30 = [(HSProxCardCoordinator *)self activeTuple];
    v31 = [v30 configuration];
    if (v31)
    {
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
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

    [v33 adoptExistingStagedCHIPPairingWithIdentifier:v24 uuid:v45];
    v41 = HFLogForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = NSStringFromSelector(a2);
      *buf = 138412290;
      v54 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%@ set pairing identifier on setup configuration; will skip staging", buf, 0xCu);
    }

    v35 = [(HSProxCardCoordinator *)v29 _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:v9 fromViewController:0];
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
      v56 = v24;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@ calling createCHIPSetupPayloadStringForStagedPairingWithIdentifier:%@", buf, 0x16u);
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100041AC4;
    v51[3] = &unk_1000C73B0;
    v52 = v24;
    v38 = [NAFuture futureWithCompletionHandlerAdapterBlock:v51];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100041B58;
    v47[3] = &unk_1000C7450;
    v50 = a2;
    v48 = v8;
    v49 = self;
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

- (id)didReceiveSetupCode:(id)a3 withPayload:(id)a4 fromViewController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(HSProxCardCoordinator *)self setSetupCode:v9];
  v12 = [(HSProxCardCoordinator *)self setupCode];
  v13 = [(HSProxCardCoordinator *)self discoveredAccessory];

  if (v13)
  {
    v14 = [(HSProxCardCoordinator *)self discoveredAccessory];
    v15 = [v14 rawSetupPayloadString];

    if ([v15 length])
    {
      v16 = [HMAccessorySetupCoordinator communicationProtocolForSetupPayloadURLString:v15];
      v17 = [v16 integerValue];

      [(HSProxCardCoordinator *)self setAccessoryCommunicationProtocol:v17];
    }
  }

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = NSStringFromSelector(a2);
    v20 = [(HSProxCardCoordinator *)self accessoryCommunicationProtocol];
    v21 = [(HSProxCardCoordinator *)self discoveredAccessory];
    *buf = 138413314;
    v30 = v19;
    v31 = 2112;
    v32 = v9;
    v33 = 2112;
    v34 = v12;
    v35 = 2048;
    v36 = v20;
    v37 = 2112;
    v38 = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ receivedSetupCode %@ setupCode %@ accessoryCommunicationProtocol %ld discoveredAccessory %@", buf, 0x34u);
  }

  if (v12)
  {
    v22 = [(HSProxCardCoordinator *)self _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:v10 fromViewController:v11];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100042414;
    v25[3] = &unk_1000C74E8;
    v25[4] = self;
    v28 = a2;
    v26 = v12;
    v27 = v11;
    v23 = [v22 flatMap:v25];
  }

  else
  {
    v23 = +[NAFuture futureWithNoResult];
  }

  return v23;
}

- (void)updateSetupAccessoryDescriptionWithPayload:(id)a3
{
  v4 = a3;
  v5 = [(HSProxCardCoordinator *)self setupAccessoryDescription];
  [v5 updateWithSetupAccessoryPayload:v4];

  v6 = [v4 setupPayloadURL];

  v7 = [v6 absoluteString];
  v8 = [HMAccessorySetupCoordinator communicationProtocolForSetupPayloadURLString:v7];
  v9 = [v8 integerValue];

  [(HSProxCardCoordinator *)self setAccessoryCommunicationProtocol:v9];
}

- (id)showCustomCommissioningFlowAlertIfNecessaryForPayload:(id)a3 onViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[HSProxCardCoordinator shouldShowCustomCommissioningProxCardWithPayload:](self, "shouldShowCustomCommissioningProxCardWithPayload:", v6) || -[HSProxCardCoordinator didShowCustomCommissioningFlowAlertIfNecessary](self, "didShowCustomCommissioningFlowAlertIfNecessary") || (-[HSProxCardCoordinator setDidShowCustomCommissioningFlowAlertIfNecessary:](self, "setDidShowCustomCommissioningFlowAlertIfNecessary:", 1), ([v6 requiresMatterCustomCommissioningFlow] & 1) == 0))
  {
    v8 = [NAFuture futureWithResult:v6];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100042E10;
    v10[3] = &unk_1000C5F38;
    v11 = v6;
    v12 = v7;
    v8 = [NAFuture futureWithBlock:v10];
  }

  return v8;
}

- (BOOL)shouldShowCustomCommissioningProxCardWithPayload:(id)a3
{
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [(HSProxCardCoordinator *)self discoveredAccessory];
    v9 = [v8 accessory];
    v10 = [v9 matterDeviceTypeID];
    v11 = [v5 matterDeviceTypeID];
    v12 = [(HSProxCardCoordinator *)self discoveredAccessory];
    v13 = [v12 accessory];
    v20 = 138413314;
    v21 = v7;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: accessory.matterDeviceTypeID: %@ payload.matterDeviceTypeID: %@ accessory: %@ payload: %@", &v20, 0x34u);
  }

  v14 = [(HSProxCardCoordinator *)self discoveredAccessory];
  v15 = [v14 accessory];
  v16 = [v15 matterDeviceTypeID];
  v17 = [NSNumber numberWithInt:116];
  if ([v16 isEqual:v17] && !-[HSProxCardCoordinator didShowCustomCommissioningFlowAlertIfNecessary](self, "didShowCustomCommissioningFlowAlertIfNecessary"))
  {
    v18 = [v5 requiresMatterCustomCommissioningFlow];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (HSProxCardCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)requiresDismissalConfirmation
{
  v2 = self;
  v3 = [(HSProxCardCoordinator *)self activeTuple];
  LOBYTE(v2) = [(HSProxCardCoordinator *)v2 requiresDismissalConfirmation:v3];

  return v2;
}

- (BOOL)requiresDismissalConfirmation:(id)a3
{
  v4 = a3;
  v5 = [v4 stateMachine];
  v6 = [v4 currentStep];
  v7 = [v4 configuration];

  LOBYTE(self) = [v5 stepRequiresDismissalConfirmation:v6 withCoordinator:self configuration:v7];
  return self;
}

- (BOOL)requiresIdentifyButton
{
  v2 = self;
  v3 = [(HSProxCardCoordinator *)self activeTuple];
  LOBYTE(v2) = [(HSProxCardCoordinator *)v2 requiresIdentifyButton:v3];

  return v2;
}

- (BOOL)requiresIdentifyButton:(id)a3
{
  v4 = a3;
  v5 = [v4 accessory];
  if ([v5 hf_isIdentifiable])
  {
    v6 = [v4 stateMachine];
    v7 = [v4 currentStep];
    v8 = [v4 configuration];
    v9 = [v6 stepRequiresIdentifyButton:v7 withCoordinator:self configuration:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setUpThermostatControllerFor:(id)a3 homeUUID:(id)a4
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
  if (a4)
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
  v21[4] = a3;
  sub_100075C50(v14, v21 + v20);
  v22 = a3;
  sub_1000755A4(0, 0, v9, &unk_1000932A0, v21);

  sub_10007400C(v16, &qword_1000E6650, &qword_100093288);
}

@end
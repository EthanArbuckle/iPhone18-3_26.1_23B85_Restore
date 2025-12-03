@interface HSSetupStateMachineCHIPPartnerConfiguration
- (HFSetupAccessoryResult)setupResult;
- (HFSetupPairingContext)context;
- (HSMatterEcosystem)targetEcosystem;
- (id)cancelStagingForCHIPPairing;
- (id)pairStagedCHIPAccessoryToPartnerAppHome;
- (id)pairedAccessories;
- (id)roomName;
- (id)stageCHIPAccessory;
- (id)updateUserGivenAccessoryName:(id)name;
- (void)_updateAccessoryNameWithCHIPPairingIdentifier:(id)identifier;
- (void)_updateStatusTextAndNotifyDelegate:(BOOL)delegate;
- (void)addPairingObserver:(id)observer;
- (void)adoptExistingStagedCHIPPairingWithIdentifier:(id)identifier uuid:(id)uuid;
- (void)didReceiveCommissioneeInfo:(id)info forStagingRequestUUID:(id)d;
- (void)didReceiveDeviceCredential:(id)credential forStagingRequestUUID:(id)d;
- (void)didReceiveThreadScanResults:(id)results forStagingRequestUUID:(id)d;
- (void)didReceiveWiFiScanResults:(id)results forStagingRequestUUID:(id)d;
- (void)didUpdateProgress:(int64_t)progress forStagingRequestUUID:(id)d;
- (void)removePairingObserver:(id)observer;
- (void)setDelegate:(id)delegate;
- (void)setPhase:(unint64_t)phase;
- (void)setSetupResult:(id)result;
@end

@implementation HSSetupStateMachineCHIPPartnerConfiguration

- (void)adoptExistingStagedCHIPPairingWithIdentifier:(id)identifier uuid:(id)uuid
{
  uuidCopy = uuid;
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setStagedCHIPPairingIdentifier:identifier];
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setChipDevicePairingUUID:uuidCopy];

  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setChipDevicePairingIsNew:0];
}

- (HFSetupAccessoryResult)setupResult
{
  setupDescription = [(HSSetupStateMachineConfiguration *)self setupDescription];
  setupAccessoryPayload = [setupDescription setupAccessoryPayload];

  if (setupAccessoryPayload)
  {
    v4 = [[HFSetupAccessoryResult alloc] initWithPayload:setupAccessoryPayload];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSetupResult:(id)result
{
  resultCopy = result;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = resultCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received setup result: %@", &v16, 0xCu);
  }

  if ([(HSSetupStateMachineCHIPPartnerConfiguration *)self phase])
  {
    sub_100078060(self, a2);
  }

  setupResult = self->_setupResult;
  self->_setupResult = resultCopy;
  v8 = resultCopy;

  v9 = [HFDiscoveredAccessory alloc];
  v10 = +[NSUUID UUID];
  setupPayload = [(HFSetupAccessoryResult *)v8 setupPayload];
  accessoryName = [setupPayload accessoryName];
  setupPayload2 = [(HFSetupAccessoryResult *)v8 setupPayload];

  category = [setupPayload2 category];
  v15 = [v9 initWithAccessoryUUID:v10 accessoryName:accessoryName accessoryCategory:category];
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setDiscoveredAccessoryToPair:v15];
}

- (void)setDelegate:(id)delegate
{
  v10.receiver = self;
  v10.super_class = HSSetupStateMachineCHIPPartnerConfiguration;
  [(HSSetupStateMachineConfiguration *)&v10 setDelegate:delegate];
  matterDeviceSetupRequest = [(HSSetupStateMachineConfiguration *)self matterDeviceSetupRequest];
  topology = [matterDeviceSetupRequest topology];

  if (!topology)
  {
    NSLog(@"Initialized a CHIPPartnerConfig w/o a partner topology, this shouldn't be possible");
  }

  homes = [topology homes];
  v7 = [homes count];

  if (v7 == 1)
  {
    homes2 = [topology homes];
    firstObject = [homes2 firstObject];
    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setSelectedPartnerHome:firstObject];
  }
}

- (id)roomName
{
  selectedPartnerRoom = [(HSSetupStateMachineCHIPPartnerConfiguration *)self selectedPartnerRoom];
  name = [selectedPartnerRoom name];

  return name;
}

- (HSMatterEcosystem)targetEcosystem
{
  targetEcosystem = self->_targetEcosystem;
  if (!targetEcosystem)
  {
    setupDescription = [(HSSetupStateMachineConfiguration *)self setupDescription];
    appBundleURL = [setupDescription appBundleURL];

    if (!appBundleURL)
    {
      NSLog(@"%s Failed to create target ecosystem because the bundle URL of the partner app is missing", "[HSSetupStateMachineCHIPPartnerConfiguration targetEcosystem]");
    }

    v6 = [HSMatterEcosystem ecosystemForContainingAppBundleURL:appBundleURL];
    if (!v6)
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000780FC();
      }
    }

    v8 = self->_targetEcosystem;
    self->_targetEcosystem = v6;

    targetEcosystem = self->_targetEcosystem;
  }

  return targetEcosystem;
}

- (id)updateUserGivenAccessoryName:(id)name
{
  [(HSSetupStateMachineConfiguration *)self setUserGivenAccessoryName:name];

  return +[NAFuture futureWithNoResult];
}

- (id)stageCHIPAccessory
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v3 homeManager];

  accessorySetupCoordinator = [homeManager accessorySetupCoordinator];
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setPhase:2];
  stagedCHIPPairingIdentifier = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagedCHIPPairingIdentifier];

  if (stagedCHIPPairingIdentifier)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      stagedCHIPPairingIdentifier2 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagedCHIPPairingIdentifier];
      *buf = 136315394;
      v24 = "[HSSetupStateMachineCHIPPartnerConfiguration stageCHIPAccessory]";
      v25 = 2112;
      v26 = stagedCHIPPairingIdentifier2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s CHIP accessory is known to system commissioner with identifier %@ - skipping staging", buf, 0x16u);
    }

    stagedCHIPPairingIdentifier3 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagedCHIPPairingIdentifier];
    v10 = [NAFuture futureWithResult:stagedCHIPPairingIdentifier3];
  }

  else
  {
    setupDescription = [(HSSetupStateMachineConfiguration *)self setupDescription];
    stagedCHIPPairingIdentifier3 = [setupDescription setupAccessoryPayload];

    matterDeviceSetupRequest = [(HSSetupStateMachineConfiguration *)self matterDeviceSetupRequest];
    shouldScanNetworks = [matterDeviceSetupRequest shouldScanNetworks];

    if (stagedCHIPPairingIdentifier3)
    {
      objc_initWeak(buf, self);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10001E2E8;
      v17[3] = &unk_1000C6270;
      stagedCHIPPairingIdentifier3 = stagedCHIPPairingIdentifier3;
      v18 = stagedCHIPPairingIdentifier3;
      v22 = shouldScanNetworks;
      v19 = accessorySetupCoordinator;
      selfCopy = self;
      objc_copyWeak(&v21, buf);
      v10 = [NAFuture futureWithBlock:v17];
      objc_destroyWeak(&v21);

      objc_destroyWeak(buf);
    }

    else
    {
      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100078178();
      }

      v15 = [NSError hf_errorWithCode:33];
      v10 = [NAFuture futureWithError:v15];
    }
  }

  return v10;
}

- (id)pairStagedCHIPAccessoryToPartnerAppHome
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v3 homeManager];

  accessorySetupCoordinator = [homeManager accessorySetupCoordinator];
  if (![(HSSetupStateMachineCHIPPartnerConfiguration *)self phase])
  {
    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setPhase:2];
  }

  targetEcosystem = [(HSSetupStateMachineCHIPPartnerConfiguration *)self targetEcosystem];

  if (targetEcosystem)
  {
    stagedCHIPPairingIdentifier = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagedCHIPPairingIdentifier];
    delegate = [(HSSetupStateMachineConfiguration *)self delegate];
    v9 = [delegate stateMachineConfigurationGetSetupCode:self];

    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      targetEcosystem2 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self targetEcosystem];
      *buf = 136315906;
      v29 = "[HSSetupStateMachineCHIPPartnerConfiguration pairStagedCHIPAccessoryToPartnerAppHome]";
      v30 = 2112;
      v31 = stagedCHIPPairingIdentifier;
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = targetEcosystem2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s pairingIdentifier %@, setupCode %@, ecosystem %@. Unless this is an accessory previously paired to system commissioner, it will fail to pair to to partner app because it doesn't have a staged identifier", buf, 0x2Au);
    }

    if (stagedCHIPPairingIdentifier)
    {
      v12 = HFLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = "[HSSetupStateMachineCHIPPartnerConfiguration pairStagedCHIPAccessoryToPartnerAppHome]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Creating CHIP setup payload with pairingIdentifier", buf, 0xCu);
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10001EBFC;
      v25[3] = &unk_1000C6298;
      v26 = accessorySetupCoordinator;
      v27 = stagedCHIPPairingIdentifier;
      v13 = [NAFuture futureWithCompletionHandlerAdapterBlock:v25];
    }

    else
    {
      v16 = HFLogForCategory();
      v17 = v16;
      if (v9)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v29 = "[HSSetupStateMachineCHIPPartnerConfiguration pairStagedCHIPAccessoryToPartnerAppHome]";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Using setup code as payload string", buf, 0xCu);
        }

        v13 = [NAFuture futureWithResult:v9];
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100078274();
        }

        v18 = [NSError hf_errorWithCode:33];
        v13 = [NAFuture futureWithError:v18];
      }
    }

    selectedPartnerHome = [(HSSetupStateMachineCHIPPartnerConfiguration *)self selectedPartnerHome];
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "[HSSetupStateMachineCHIPPartnerConfiguration pairStagedCHIPAccessoryToPartnerAppHome]";
      v30 = 2112;
      v31 = selectedPartnerHome;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s selectedPartnerHome %@", buf, 0x16u);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001EC0C;
    v23[3] = &unk_1000C6328;
    v23[4] = self;
    v24 = selectedPartnerHome;
    v21 = selectedPartnerHome;
    v15 = [v13 flatMap:v23];
  }

  else
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000782F4();
    }

    stagedCHIPPairingIdentifier = [NSError hf_errorWithCode:30];
    v15 = [NAFuture futureWithError:stagedCHIPPairingIdentifier];
  }

  return v15;
}

- (void)_updateAccessoryNameWithCHIPPairingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(MTSSystemCommissionerPairingManager);
  [(HSSetupStateMachineConfiguration *)self setPairingManager:v5];

  objc_initWeak(&location, self);
  pairingManager = [(HSSetupStateMachineConfiguration *)self pairingManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001F040;
  v8[3] = &unk_1000C6378;
  v8[4] = self;
  v7 = identifierCopy;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [pairingManager fetchPairingsWithCompletionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)cancelStagingForCHIPPairing
{
  stagedCHIPPairingIdentifier = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagedCHIPPairingIdentifier];

  if (stagedCHIPPairingIdentifier)
  {
    v4 = HFLogForCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      v6 = +[NAFuture futureWithNoResult];
      goto LABEL_6;
    }

    *buf = 136315138;
    v23 = "[HSSetupStateMachineCHIPPartnerConfiguration cancelStagingForCHIPPairing]";
    v5 = "%s did not cancel staging - the accessory is already staged.";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
    goto LABEL_5;
  }

  stagingRequestUUID = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];

  if (!stagingRequestUUID)
  {
    v4 = HFLogForCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v23 = "[HSSetupStateMachineCHIPPartnerConfiguration cancelStagingForCHIPPairing]";
    v5 = "%s did not cancel staging as there is no stagingRequestUUID";
    goto LABEL_4;
  }

  addedAccessory = [(HSSetupStateMachineConfiguration *)self addedAccessory];

  if (addedAccessory)
  {
    v4 = HFLogForCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v23 = "[HSSetupStateMachineCHIPPartnerConfiguration cancelStagingForCHIPPairing]";
    v5 = "%s Accessory was already paired to Apple Home, no need to cancel staging.  Noop";
    goto LABEL_4;
  }

  v10 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v10 homeManager];

  accessorySetupCoordinator = [homeManager accessorySetupCoordinator];
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001F5E4;
  v19[3] = &unk_1000C63A0;
  v13 = v20 = accessorySetupCoordinator;
  v21 = v13;
  v14 = accessorySetupCoordinator;
  v6 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001F5F4;
  v17[3] = &unk_1000C5658;
  v18 = v13;
  v15 = v13;
  v16 = [v6 addCompletionBlock:v17];

LABEL_6:

  return v6;
}

- (void)didReceiveDeviceCredential:(id)credential forStagingRequestUUID:(id)d
{
  credentialCopy = credential;
  dCopy = d;
  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v8 homeManager];

  accessorySetupCoordinator = [homeManager accessorySetupCoordinator];
  stagingRequestUUID = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
  if (stagingRequestUUID)
  {
    v12 = stagingRequestUUID;
    stagingRequestUUID2 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
    v14 = [stagingRequestUUID2 hmf_isEqualToUUID:dCopy];

    if ((v14 & 1) == 0)
    {
      NSLog(@"%s received stagingRequestUUID that does not match", "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveDeviceCredential:forStagingRequestUUID:]");
    }
  }

  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setStagingRequestUUID:dCopy];
  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveDeviceCredential:forStagingRequestUUID:]";
    v27 = 2112;
    v28 = credentialCopy;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Received and validating device credential: %@ staging request UUID: %@", buf, 0x20u);
  }

  targetEcosystem = [(HSSetupStateMachineCHIPPartnerConfiguration *)self targetEcosystem];
  extensionMessenger = [targetEcosystem extensionMessenger];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001F91C;
  v21[3] = &unk_1000C63C8;
  v22 = credentialCopy;
  v23 = accessorySetupCoordinator;
  v24 = dCopy;
  v18 = dCopy;
  v19 = accessorySetupCoordinator;
  v20 = credentialCopy;
  [extensionMessenger validateDeviceCredential:v20 completionHandler:v21];
}

- (void)didReceiveThreadScanResults:(id)results forStagingRequestUUID:(id)d
{
  resultsCopy = results;
  dCopy = d;
  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v8 homeManager];

  accessorySetupCoordinator = [homeManager accessorySetupCoordinator];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveThreadScanResults:forStagingRequestUUID:]";
    v21 = 2112;
    v22 = resultsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Selecting Thread network from scan results: %@", buf, 0x16u);
  }

  targetEcosystem = [(HSSetupStateMachineCHIPPartnerConfiguration *)self targetEcosystem];
  extensionMessenger = [targetEcosystem extensionMessenger];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001FBEC;
  v16[3] = &unk_1000C63F0;
  v17 = accessorySetupCoordinator;
  v18 = dCopy;
  v14 = dCopy;
  v15 = accessorySetupCoordinator;
  [extensionMessenger selectThreadNetworkFromScanResults:resultsCopy completionHandler:v16];
}

- (void)didReceiveWiFiScanResults:(id)results forStagingRequestUUID:(id)d
{
  resultsCopy = results;
  dCopy = d;
  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v8 homeManager];

  accessorySetupCoordinator = [homeManager accessorySetupCoordinator];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveWiFiScanResults:forStagingRequestUUID:]";
    v21 = 2112;
    v22 = resultsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Selecting WiFi network from scan results: %@", buf, 0x16u);
  }

  targetEcosystem = [(HSSetupStateMachineCHIPPartnerConfiguration *)self targetEcosystem];
  extensionMessenger = [targetEcosystem extensionMessenger];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001FEC0;
  v16[3] = &unk_1000C6418;
  v17 = accessorySetupCoordinator;
  v18 = dCopy;
  v14 = dCopy;
  v15 = accessorySetupCoordinator;
  [extensionMessenger selectWiFiNetworkFromScanResults:resultsCopy completionHandler:v16];
}

- (void)didUpdateProgress:(int64_t)progress forStagingRequestUUID:(id)d
{
  dCopy = d;
  stagingRequestUUID = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
  if (stagingRequestUUID)
  {
    v8 = stagingRequestUUID;
    stagingRequestUUID2 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
    v10 = [stagingRequestUUID2 hmf_isEqualToUUID:dCopy];

    if ((v10 & 1) == 0)
    {
      NSLog(@"%s received stagingRequestUUID that does not match", "[HSSetupStateMachineCHIPPartnerConfiguration didUpdateProgress:forStagingRequestUUID:]");
    }
  }

  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setStagingRequestUUID:dCopy];
  context2 = HFLogForCategory();
  v12 = os_log_type_enabled(context2, OS_LOG_TYPE_DEFAULT);
  if (progress == 51)
  {
    if (v12)
    {
      v13 = HMSetupAccessoryProgressAsString();
      *buf = 136315394;
      v21 = "[HSSetupStateMachineCHIPPartnerConfiguration didUpdateProgress:forStagingRequestUUID:]";
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, context2, OS_LOG_TYPE_DEFAULT, "%s ignoring progress update: %@ in favor of didReceiveCommissioneeInfo:... callback", buf, 0x16u);
    }
  }

  else
  {
    if (v12)
    {
      v14 = HMSetupAccessoryProgressAsString();
      *buf = 136315394;
      v21 = "[HSSetupStateMachineCHIPPartnerConfiguration didUpdateProgress:forStagingRequestUUID:]";
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, context2, OS_LOG_TYPE_DEFAULT, "%s received progress update: %@", buf, 0x16u);
    }

    setupDescription = [(HSSetupStateMachineConfiguration *)self setupDescription];
    context = [(HSSetupStateMachineCHIPPartnerConfiguration *)self context];
    [context setSetupAccessoryDescription:setupDescription];

    phase = [(HSSetupStateMachineCHIPPartnerConfiguration *)self phase];
    context2 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self context];
    discoveredAccessoryToPair = [(HSSetupStateMachineCHIPPartnerConfiguration *)self discoveredAccessoryToPair];
    setupResult = [(HSSetupStateMachineCHIPPartnerConfiguration *)self setupResult];
    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setPhase:[HFSetupPairingControllerUtilities processThirdPartyAccessorySetupProgressChange:progress currentPhase:phase context:context2 discoveredAccessory:discoveredAccessoryToPair setupResult:setupResult callerClass:objc_opt_class()]];
  }
}

- (void)didReceiveCommissioneeInfo:(id)info forStagingRequestUUID:(id)d
{
  dCopy = d;
  infoCopy = info;
  stagingRequestUUID = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
  if (stagingRequestUUID)
  {
    v9 = stagingRequestUUID;
    stagingRequestUUID2 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
    v11 = [stagingRequestUUID2 hmf_isEqualToUUID:dCopy];

    if ((v11 & 1) == 0)
    {
      NSLog(@"%s received stagingRequestUUID that does not match", "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveCommissioneeInfo:forStagingRequestUUID:]");
    }
  }

  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setStagingRequestUUID:dCopy];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveCommissioneeInfo:forStagingRequestUUID:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s received commissionee info", buf, 0xCu);
  }

  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setMatterCommissioneeInfo:infoCopy];
  phase = [(HSSetupStateMachineCHIPPartnerConfiguration *)self phase];
  context = [(HSSetupStateMachineCHIPPartnerConfiguration *)self context];
  discoveredAccessoryToPair = [(HSSetupStateMachineCHIPPartnerConfiguration *)self discoveredAccessoryToPair];
  setupResult = [(HSSetupStateMachineCHIPPartnerConfiguration *)self setupResult];
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setPhase:[HFSetupPairingControllerUtilities processThirdPartyAccessorySetupProgressChange:51 currentPhase:phase context:context discoveredAccessory:discoveredAccessoryToPair setupResult:setupResult callerClass:objc_opt_class()]];
}

- (void)addPairingObserver:(id)observer
{
  observerCopy = observer;
  pairingObservers = [(HSSetupStateMachineCHIPPartnerConfiguration *)self pairingObservers];

  if (!pairingObservers)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setPairingObservers:v6];
  }

  pairingObservers2 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self pairingObservers];
  [pairingObservers2 addObject:observerCopy];
}

- (id)pairedAccessories
{
  v2 = objc_opt_new();

  return v2;
}

- (void)removePairingObserver:(id)observer
{
  observerCopy = observer;
  pairingObservers = [(HSSetupStateMachineCHIPPartnerConfiguration *)self pairingObservers];
  [pairingObservers removeObject:observerCopy];
}

- (void)setPhase:(unint64_t)phase
{
  if (self->_phase != phase)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:self->_phase];
      v7 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:phase];
      *buf = 136315650;
      v25 = "[HSSetupStateMachineCHIPPartnerConfiguration setPhase:]";
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s old phase: %@ new phase: %@", buf, 0x20u);
    }

    accessoryNotFoundSoftTimeoutTimer = [(HSSetupStateMachineCHIPPartnerConfiguration *)self accessoryNotFoundSoftTimeoutTimer];
    [accessoryNotFoundSoftTimeoutTimer invalidate];

    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setAccessoryNotFoundSoftTimeoutTimer:0];
    accessoryNotFoundFatalTimeoutTimer = [(HSSetupStateMachineCHIPPartnerConfiguration *)self accessoryNotFoundFatalTimeoutTimer];
    [accessoryNotFoundFatalTimeoutTimer invalidate];

    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setAccessoryNotFoundFatalTimeoutTimer:0];
    if (phase == 2)
    {
      objc_initWeak(buf, self);
      +[HFSetupPairingControllerUtilities accessoryDiscoverySoftTimeout];
      v11 = v10;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100020898;
      v22[3] = &unk_1000C6440;
      objc_copyWeak(&v23, buf);
      v12 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v22 block:v11];
      [(HSSetupStateMachineCHIPPartnerConfiguration *)self setAccessoryNotFoundSoftTimeoutTimer:v12];

      +[HFSetupPairingControllerUtilities accessoryDiscoveryFatalTimeout];
      v14 = v13;
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100020958;
      v20 = &unk_1000C6440;
      objc_copyWeak(&v21, buf);
      v15 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v17 block:v14];
      [(HSSetupStateMachineCHIPPartnerConfiguration *)self setAccessoryNotFoundFatalTimeoutTimer:v15, v17, v18, v19, v20];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    self->_phase = phase;
    v16 = +[NSDate date];
    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setPhaseStartDate:v16];

    if (phase != 9)
    {
      [(HSSetupStateMachineCHIPPartnerConfiguration *)self _updateStatusTextAndNotifyDelegate:1];
    }
  }
}

- (void)_updateStatusTextAndNotifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v29 = 0;
  v30 = 0;
  phase = self->_phase;
  phaseStartDate = [(HSSetupStateMachineCHIPPartnerConfiguration *)self phaseStartDate];
  discoveredAccessoryToPair = [(HSSetupStateMachineCHIPPartnerConfiguration *)self discoveredAccessoryToPair];
  setupResult = [(HSSetupStateMachineCHIPPartnerConfiguration *)self setupResult];
  context = [(HSSetupStateMachineCHIPPartnerConfiguration *)self context];
  pairingError = [(HSSetupStateMachineConfiguration *)self pairingError];
  [HFSetupPairingControllerUtilities getStatusTitle:&v30 statusDescription:&v29 forPairingPhase:phase phaseStartDate:phaseStartDate discoveredAccessory:discoveredAccessoryToPair setupResult:setupResult context:context setupError:pairingError];
  v11 = v30;
  v12 = v29;

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v11;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating status title: %@ description: %@", buf, 0x16u);
  }

  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setStatusTitle:v11];
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setStatusDescription:v12];
  if (delegateCopy)
  {
    v23 = v12;
    v24 = v11;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    pairingObservers = [(HSSetupStateMachineCHIPPartnerConfiguration *)self pairingObservers];
    v15 = [pairingObservers countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(pairingObservers);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v20 = self->_phase;
            statusTitle = [(HSSetupStateMachineCHIPPartnerConfiguration *)self statusTitle];
            statusDescription = [(HSSetupStateMachineCHIPPartnerConfiguration *)self statusDescription];
            [v19 pairingController:self didTransitionToPhase:v20 statusTitle:statusTitle statusDescription:statusDescription];
          }
        }

        v16 = [pairingObservers countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v16);
    }

    v12 = v23;
    v11 = v24;
  }
}

- (HFSetupPairingContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end
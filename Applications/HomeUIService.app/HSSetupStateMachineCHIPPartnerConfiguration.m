@interface HSSetupStateMachineCHIPPartnerConfiguration
- (HFSetupAccessoryResult)setupResult;
- (HFSetupPairingContext)context;
- (HSMatterEcosystem)targetEcosystem;
- (id)cancelStagingForCHIPPairing;
- (id)pairStagedCHIPAccessoryToPartnerAppHome;
- (id)pairedAccessories;
- (id)roomName;
- (id)stageCHIPAccessory;
- (id)updateUserGivenAccessoryName:(id)a3;
- (void)_updateAccessoryNameWithCHIPPairingIdentifier:(id)a3;
- (void)_updateStatusTextAndNotifyDelegate:(BOOL)a3;
- (void)addPairingObserver:(id)a3;
- (void)adoptExistingStagedCHIPPairingWithIdentifier:(id)a3 uuid:(id)a4;
- (void)didReceiveCommissioneeInfo:(id)a3 forStagingRequestUUID:(id)a4;
- (void)didReceiveDeviceCredential:(id)a3 forStagingRequestUUID:(id)a4;
- (void)didReceiveThreadScanResults:(id)a3 forStagingRequestUUID:(id)a4;
- (void)didReceiveWiFiScanResults:(id)a3 forStagingRequestUUID:(id)a4;
- (void)didUpdateProgress:(int64_t)a3 forStagingRequestUUID:(id)a4;
- (void)removePairingObserver:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPhase:(unint64_t)a3;
- (void)setSetupResult:(id)a3;
@end

@implementation HSSetupStateMachineCHIPPartnerConfiguration

- (void)adoptExistingStagedCHIPPairingWithIdentifier:(id)a3 uuid:(id)a4
{
  v6 = a4;
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setStagedCHIPPairingIdentifier:a3];
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setChipDevicePairingUUID:v6];

  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setChipDevicePairingIsNew:0];
}

- (HFSetupAccessoryResult)setupResult
{
  v2 = [(HSSetupStateMachineConfiguration *)self setupDescription];
  v3 = [v2 setupAccessoryPayload];

  if (v3)
  {
    v4 = [[HFSetupAccessoryResult alloc] initWithPayload:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSetupResult:(id)a3
{
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received setup result: %@", &v16, 0xCu);
  }

  if ([(HSSetupStateMachineCHIPPartnerConfiguration *)self phase])
  {
    sub_100078060(self, a2);
  }

  setupResult = self->_setupResult;
  self->_setupResult = v5;
  v8 = v5;

  v9 = [HFDiscoveredAccessory alloc];
  v10 = +[NSUUID UUID];
  v11 = [(HFSetupAccessoryResult *)v8 setupPayload];
  v12 = [v11 accessoryName];
  v13 = [(HFSetupAccessoryResult *)v8 setupPayload];

  v14 = [v13 category];
  v15 = [v9 initWithAccessoryUUID:v10 accessoryName:v12 accessoryCategory:v14];
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setDiscoveredAccessoryToPair:v15];
}

- (void)setDelegate:(id)a3
{
  v10.receiver = self;
  v10.super_class = HSSetupStateMachineCHIPPartnerConfiguration;
  [(HSSetupStateMachineConfiguration *)&v10 setDelegate:a3];
  v4 = [(HSSetupStateMachineConfiguration *)self matterDeviceSetupRequest];
  v5 = [v4 topology];

  if (!v5)
  {
    NSLog(@"Initialized a CHIPPartnerConfig w/o a partner topology, this shouldn't be possible");
  }

  v6 = [v5 homes];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [v5 homes];
    v9 = [v8 firstObject];
    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setSelectedPartnerHome:v9];
  }
}

- (id)roomName
{
  v2 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self selectedPartnerRoom];
  v3 = [v2 name];

  return v3;
}

- (HSMatterEcosystem)targetEcosystem
{
  targetEcosystem = self->_targetEcosystem;
  if (!targetEcosystem)
  {
    v4 = [(HSSetupStateMachineConfiguration *)self setupDescription];
    v5 = [v4 appBundleURL];

    if (!v5)
    {
      NSLog(@"%s Failed to create target ecosystem because the bundle URL of the partner app is missing", "[HSSetupStateMachineCHIPPartnerConfiguration targetEcosystem]");
    }

    v6 = [HSMatterEcosystem ecosystemForContainingAppBundleURL:v5];
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

- (id)updateUserGivenAccessoryName:(id)a3
{
  [(HSSetupStateMachineConfiguration *)self setUserGivenAccessoryName:a3];

  return +[NAFuture futureWithNoResult];
}

- (id)stageCHIPAccessory
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeManager];

  v5 = [v4 accessorySetupCoordinator];
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setPhase:2];
  v6 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagedCHIPPairingIdentifier];

  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagedCHIPPairingIdentifier];
      *buf = 136315394;
      v24 = "[HSSetupStateMachineCHIPPartnerConfiguration stageCHIPAccessory]";
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s CHIP accessory is known to system commissioner with identifier %@ - skipping staging", buf, 0x16u);
    }

    v9 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagedCHIPPairingIdentifier];
    v10 = [NAFuture futureWithResult:v9];
  }

  else
  {
    v11 = [(HSSetupStateMachineConfiguration *)self setupDescription];
    v9 = [v11 setupAccessoryPayload];

    v12 = [(HSSetupStateMachineConfiguration *)self matterDeviceSetupRequest];
    v13 = [v12 shouldScanNetworks];

    if (v9)
    {
      objc_initWeak(buf, self);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10001E2E8;
      v17[3] = &unk_1000C6270;
      v9 = v9;
      v18 = v9;
      v22 = v13;
      v19 = v5;
      v20 = self;
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
  v4 = [v3 homeManager];

  v5 = [v4 accessorySetupCoordinator];
  if (![(HSSetupStateMachineCHIPPartnerConfiguration *)self phase])
  {
    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setPhase:2];
  }

  v6 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self targetEcosystem];

  if (v6)
  {
    v7 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagedCHIPPairingIdentifier];
    v8 = [(HSSetupStateMachineConfiguration *)self delegate];
    v9 = [v8 stateMachineConfigurationGetSetupCode:self];

    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self targetEcosystem];
      *buf = 136315906;
      v29 = "[HSSetupStateMachineCHIPPartnerConfiguration pairStagedCHIPAccessoryToPartnerAppHome]";
      v30 = 2112;
      v31 = v7;
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s pairingIdentifier %@, setupCode %@, ecosystem %@. Unless this is an accessory previously paired to system commissioner, it will fail to pair to to partner app because it doesn't have a staged identifier", buf, 0x2Au);
    }

    if (v7)
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
      v26 = v5;
      v27 = v7;
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

    v19 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self selectedPartnerHome];
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "[HSSetupStateMachineCHIPPartnerConfiguration pairStagedCHIPAccessoryToPartnerAppHome]";
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s selectedPartnerHome %@", buf, 0x16u);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001EC0C;
    v23[3] = &unk_1000C6328;
    v23[4] = self;
    v24 = v19;
    v21 = v19;
    v15 = [v13 flatMap:v23];
  }

  else
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000782F4();
    }

    v7 = [NSError hf_errorWithCode:30];
    v15 = [NAFuture futureWithError:v7];
  }

  return v15;
}

- (void)_updateAccessoryNameWithCHIPPairingIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MTSSystemCommissionerPairingManager);
  [(HSSetupStateMachineConfiguration *)self setPairingManager:v5];

  objc_initWeak(&location, self);
  v6 = [(HSSetupStateMachineConfiguration *)self pairingManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001F040;
  v8[3] = &unk_1000C6378;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [v6 fetchPairingsWithCompletionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)cancelStagingForCHIPPairing
{
  v3 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagedCHIPPairingIdentifier];

  if (v3)
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

  v8 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];

  if (!v8)
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

  v9 = [(HSSetupStateMachineConfiguration *)self addedAccessory];

  if (v9)
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
  v11 = [v10 homeManager];

  v12 = [v11 accessorySetupCoordinator];
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001F5E4;
  v19[3] = &unk_1000C63A0;
  v13 = v20 = v12;
  v21 = v13;
  v14 = v12;
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

- (void)didReceiveDeviceCredential:(id)a3 forStagingRequestUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  v9 = [v8 homeManager];

  v10 = [v9 accessorySetupCoordinator];
  v11 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
  if (v11)
  {
    v12 = v11;
    v13 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
    v14 = [v13 hmf_isEqualToUUID:v7];

    if ((v14 & 1) == 0)
    {
      NSLog(@"%s received stagingRequestUUID that does not match", "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveDeviceCredential:forStagingRequestUUID:]");
    }
  }

  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setStagingRequestUUID:v7];
  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveDeviceCredential:forStagingRequestUUID:]";
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Received and validating device credential: %@ staging request UUID: %@", buf, 0x20u);
  }

  v16 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self targetEcosystem];
  v17 = [v16 extensionMessenger];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001F91C;
  v21[3] = &unk_1000C63C8;
  v22 = v6;
  v23 = v10;
  v24 = v7;
  v18 = v7;
  v19 = v10;
  v20 = v6;
  [v17 validateDeviceCredential:v20 completionHandler:v21];
}

- (void)didReceiveThreadScanResults:(id)a3 forStagingRequestUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  v9 = [v8 homeManager];

  v10 = [v9 accessorySetupCoordinator];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveThreadScanResults:forStagingRequestUUID:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Selecting Thread network from scan results: %@", buf, 0x16u);
  }

  v12 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self targetEcosystem];
  v13 = [v12 extensionMessenger];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001FBEC;
  v16[3] = &unk_1000C63F0;
  v17 = v10;
  v18 = v7;
  v14 = v7;
  v15 = v10;
  [v13 selectThreadNetworkFromScanResults:v6 completionHandler:v16];
}

- (void)didReceiveWiFiScanResults:(id)a3 forStagingRequestUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  v9 = [v8 homeManager];

  v10 = [v9 accessorySetupCoordinator];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveWiFiScanResults:forStagingRequestUUID:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Selecting WiFi network from scan results: %@", buf, 0x16u);
  }

  v12 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self targetEcosystem];
  v13 = [v12 extensionMessenger];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001FEC0;
  v16[3] = &unk_1000C6418;
  v17 = v10;
  v18 = v7;
  v14 = v7;
  v15 = v10;
  [v13 selectWiFiNetworkFromScanResults:v6 completionHandler:v16];
}

- (void)didUpdateProgress:(int64_t)a3 forStagingRequestUUID:(id)a4
{
  v6 = a4;
  v7 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
  if (v7)
  {
    v8 = v7;
    v9 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
    v10 = [v9 hmf_isEqualToUUID:v6];

    if ((v10 & 1) == 0)
    {
      NSLog(@"%s received stagingRequestUUID that does not match", "[HSSetupStateMachineCHIPPartnerConfiguration didUpdateProgress:forStagingRequestUUID:]");
    }
  }

  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setStagingRequestUUID:v6];
  v11 = HFLogForCategory();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (a3 == 51)
  {
    if (v12)
    {
      v13 = HMSetupAccessoryProgressAsString();
      *buf = 136315394;
      v21 = "[HSSetupStateMachineCHIPPartnerConfiguration didUpdateProgress:forStagingRequestUUID:]";
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s ignoring progress update: %@ in favor of didReceiveCommissioneeInfo:... callback", buf, 0x16u);
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
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s received progress update: %@", buf, 0x16u);
    }

    v15 = [(HSSetupStateMachineConfiguration *)self setupDescription];
    v16 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self context];
    [v16 setSetupAccessoryDescription:v15];

    v17 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self phase];
    v11 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self context];
    v18 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self discoveredAccessoryToPair];
    v19 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self setupResult];
    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setPhase:[HFSetupPairingControllerUtilities processThirdPartyAccessorySetupProgressChange:a3 currentPhase:v17 context:v11 discoveredAccessory:v18 setupResult:v19 callerClass:objc_opt_class()]];
  }
}

- (void)didReceiveCommissioneeInfo:(id)a3 forStagingRequestUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
  if (v8)
  {
    v9 = v8;
    v10 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self stagingRequestUUID];
    v11 = [v10 hmf_isEqualToUUID:v6];

    if ((v11 & 1) == 0)
    {
      NSLog(@"%s received stagingRequestUUID that does not match", "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveCommissioneeInfo:forStagingRequestUUID:]");
    }
  }

  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setStagingRequestUUID:v6];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveCommissioneeInfo:forStagingRequestUUID:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s received commissionee info", buf, 0xCu);
  }

  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setMatterCommissioneeInfo:v7];
  v13 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self phase];
  v14 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self context];
  v15 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self discoveredAccessoryToPair];
  v16 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self setupResult];
  [(HSSetupStateMachineCHIPPartnerConfiguration *)self setPhase:[HFSetupPairingControllerUtilities processThirdPartyAccessorySetupProgressChange:51 currentPhase:v13 context:v14 discoveredAccessory:v15 setupResult:v16 callerClass:objc_opt_class()]];
}

- (void)addPairingObserver:(id)a3
{
  v4 = a3;
  v5 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self pairingObservers];

  if (!v5)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setPairingObservers:v6];
  }

  v7 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self pairingObservers];
  [v7 addObject:v4];
}

- (id)pairedAccessories
{
  v2 = objc_opt_new();

  return v2;
}

- (void)removePairingObserver:(id)a3
{
  v4 = a3;
  v5 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self pairingObservers];
  [v5 removeObject:v4];
}

- (void)setPhase:(unint64_t)a3
{
  if (self->_phase != a3)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:self->_phase];
      v7 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:a3];
      *buf = 136315650;
      v25 = "[HSSetupStateMachineCHIPPartnerConfiguration setPhase:]";
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s old phase: %@ new phase: %@", buf, 0x20u);
    }

    v8 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self accessoryNotFoundSoftTimeoutTimer];
    [v8 invalidate];

    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setAccessoryNotFoundSoftTimeoutTimer:0];
    v9 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self accessoryNotFoundFatalTimeoutTimer];
    [v9 invalidate];

    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setAccessoryNotFoundFatalTimeoutTimer:0];
    if (a3 == 2)
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

    self->_phase = a3;
    v16 = +[NSDate date];
    [(HSSetupStateMachineCHIPPartnerConfiguration *)self setPhaseStartDate:v16];

    if (a3 != 9)
    {
      [(HSSetupStateMachineCHIPPartnerConfiguration *)self _updateStatusTextAndNotifyDelegate:1];
    }
  }
}

- (void)_updateStatusTextAndNotifyDelegate:(BOOL)a3
{
  v3 = a3;
  v29 = 0;
  v30 = 0;
  phase = self->_phase;
  v6 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self phaseStartDate];
  v7 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self discoveredAccessoryToPair];
  v8 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self setupResult];
  v9 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self context];
  v10 = [(HSSetupStateMachineConfiguration *)self pairingError];
  [HFSetupPairingControllerUtilities getStatusTitle:&v30 statusDescription:&v29 forPairingPhase:phase phaseStartDate:v6 discoveredAccessory:v7 setupResult:v8 context:v9 setupError:v10];
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
  if (v3)
  {
    v23 = v12;
    v24 = v11;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self pairingObservers];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v20 = self->_phase;
            v21 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self statusTitle];
            v22 = [(HSSetupStateMachineCHIPPartnerConfiguration *)self statusDescription];
            [v19 pairingController:self didTransitionToPhase:v20 statusTitle:v21 statusDescription:v22];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
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
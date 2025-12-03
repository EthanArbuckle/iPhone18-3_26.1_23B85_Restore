@interface HSSetupStateMachineConfiguration
+ (id)configureService:(id)service withName:(id)name;
+ (id)configureServices:(id)services withNames:(id)names;
+ (id)disableServices:(id)services;
+ (id)enableServices:(id)services;
+ (id)writeConfigurationState:(int64_t)state toService:(id)service;
+ (id)writeVisibilityState:(id)state toInputSourceService:(id)service;
- (BOOL)chipDevicePairingIsNew;
- (BOOL)isSetupInitiatedByOtherMatterEcosystem;
- (BOOL)requiresOwnerToPair;
- (BOOL)supportsRichConfiguration;
- (HFAccessoryItem)addedAccessoryItem;
- (HMAccessoryCategory)category;
- (HMCameraProfile)cameraProfile;
- (HMSetupAccessoryDescription)setupDescription;
- (HSSetupStateMachineConfiguration)initWithAccessory:(id)accessory;
- (HSSetupStateMachineConfiguration)initWithError:(id)error;
- (HSSetupStateMachineConfiguration)initWithHome:(id)home;
- (HSSetupStateMachineConfigurationDelegate)delegate;
- (MTRCommissioneeInfo)matterCommissioneeInfo;
- (MTSDeviceSetupRequest)matterDeviceSetupRequest;
- (NSUUID)chipDevicePairingUUID;
- (id)configureAccessoryDateAdded;
- (id)configureAccessoryName;
- (id)configureAccessoryWithName:(id)name;
- (id)configureRoom;
- (id)updateUserGivenAccessoryName:(id)name;
- (id)validateName:(id)name;
- (id)validateNames:(id)names;
- (void)setHome:(id)home;
- (void)setIsReadyToPair:(BOOL)pair;
- (void)setIsShareSiriAnalyticsEnabled:(BOOL)enabled;
- (void)setPairingError:(id)error;
@end

@implementation HSSetupStateMachineConfiguration

- (BOOL)requiresOwnerToPair
{
  category = [(HSSetupStateMachineConfiguration *)self category];
  categoryType = [category categoryType];
  if ([categoryType isEqualToString:HMAccessoryCategoryTypeSpeaker])
  {
    v5 = 1;
  }

  else
  {
    category2 = [(HSSetupStateMachineConfiguration *)self category];
    categoryType2 = [category2 categoryType];
    v5 = [categoryType2 isEqualToString:HMAccessoryCategoryTypeAirPort];
  }

  return v5;
}

- (void)setIsReadyToPair:(BOOL)pair
{
  self->_isReadyToPair = pair;
  if (!pair)
  {
    return;
  }

  setupDescription = [(HSSetupStateMachineConfiguration *)self setupDescription];
  isSetupInitiatedByOtherMatterEcosystem = [setupDescription isSetupInitiatedByOtherMatterEcosystem];

  if (isSetupInitiatedByOtherMatterEcosystem)
  {
    goto LABEL_3;
  }

  home = [(HSSetupStateMachineConfiguration *)self home];

  if (!home)
  {
    return;
  }

  if ([(HSSetupStateMachineConfiguration *)self requiresOwnerToPair])
  {
    home2 = [(HSSetupStateMachineConfiguration *)self home];
    hf_currentUserIsOwner = [home2 hf_currentUserIsOwner];

    if ((hf_currentUserIsOwner & 1) == 0)
    {
      delegate = HULocalizedString();
      home3 = [(HSSetupStateMachineConfiguration *)self home];
      name = [home3 name];
      v14 = HULocalizedStringWithFormat();
      v15 = [NSError hf_errorWithCode:61 title:delegate description:v14, name];
      [(HSSetupStateMachineConfiguration *)self setPairingError:v15];

      goto LABEL_11;
    }
  }

  home4 = [(HSSetupStateMachineConfiguration *)self home];
  hf_currentUserIsAdministrator = [home4 hf_currentUserIsAdministrator];

  if ((hf_currentUserIsAdministrator & 1) == 0)
  {
    delegate = HULocalizedString();
    home3 = HULocalizedString();
    v12 = [NSError hf_errorWithCode:61 title:delegate description:home3];
    [(HSSetupStateMachineConfiguration *)self setPairingError:v12];

LABEL_11:
    goto LABEL_12;
  }

LABEL_3:
  delegate = [(HSSetupStateMachineConfiguration *)self delegate];
  [delegate stateMachineConfigurationIsReadyToPair:self];
LABEL_12:
}

- (void)setPairingError:(id)error
{
  errorCopy = error;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[HSSetupStateMachineConfiguration setPairingError:]";
    v9 = 2112;
    v10 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s *** Setting pairingError *** = %@", &v7, 0x16u);
  }

  pairingError = self->_pairingError;
  self->_pairingError = errorCopy;
}

- (id)updateUserGivenAccessoryName:(id)name
{
  nameCopy = name;
  v5 = [(HSSetupStateMachineConfiguration *)self validateName:nameCopy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001D234;
  v9[3] = &unk_1000C6220;
  v9[4] = self;
  v10 = nameCopy;
  v6 = nameCopy;
  v7 = [v5 flatMap:v9];

  return v7;
}

- (void)setHome:(id)home
{
  homeCopy = home;
  p_home = &self->_home;
  if (self->_home != homeCopy)
  {
    v8 = homeCopy;
    objc_storeStrong(p_home, home);
    delegate = [(HSSetupStateMachineConfiguration *)self delegate];
    [delegate stateMachineConfiguration:self didUpdateHome:v8];
  }

  _objc_release_x2(p_home);
}

- (HSSetupStateMachineConfiguration)initWithHome:(id)home
{
  homeCopy = home;
  v9.receiver = self;
  v9.super_class = HSSetupStateMachineConfiguration;
  v6 = [(HSSetupStateMachineConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v7->_isReadyToPair = 0;
  }

  return v7;
}

- (HSSetupStateMachineConfiguration)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v12.receiver = self;
  v12.super_class = HSSetupStateMachineConfiguration;
  v6 = [(HSSetupStateMachineConfiguration *)&v12 init];
  if (v6)
  {
    home = [accessoryCopy home];
    home = v6->_home;
    v6->_home = home;

    objc_storeStrong(&v6->_addedAccessory, accessory);
    name = [accessoryCopy name];
    userGivenAccessoryName = v6->_userGivenAccessoryName;
    v6->_userGivenAccessoryName = name;
  }

  return v6;
}

- (HSSetupStateMachineConfiguration)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = HSSetupStateMachineConfiguration;
  v6 = [(HSSetupStateMachineConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pairingError, error);
  }

  return v7;
}

- (HMSetupAccessoryDescription)setupDescription
{
  delegate = [(HSSetupStateMachineConfiguration *)self delegate];
  v4 = [delegate stateMachineConfigurationGetSetupAccessoryDescription:self];

  return v4;
}

- (MTSDeviceSetupRequest)matterDeviceSetupRequest
{
  delegate = [(HSSetupStateMachineConfiguration *)self delegate];
  v4 = [delegate stateMachineConfigurationGetMatterDeviceSetupRequest:self];

  return v4;
}

- (HMAccessoryCategory)category
{
  addedAccessory = [(HSSetupStateMachineConfiguration *)self addedAccessory];
  category = [addedAccessory category];
  v5 = category;
  if (category)
  {
    category2 = category;
  }

  else
  {
    setupDescription = [(HSSetupStateMachineConfiguration *)self setupDescription];
    category2 = [setupDescription category];
  }

  return category2;
}

- (HFAccessoryItem)addedAccessoryItem
{
  v3 = [HFAccessoryItem alloc];
  addedAccessory = [(HSSetupStateMachineConfiguration *)self addedAccessory];
  v5 = objc_alloc_init(HFNullValueSource);
  v6 = [v3 initWithAccessory:addedAccessory valueSource:v5];

  return v6;
}

- (void)setIsShareSiriAnalyticsEnabled:(BOOL)enabled
{
  if (self->_isShareSiriAnalyticsEnabled != enabled)
  {
    enabledCopy = enabled;
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[HSSetupStateMachineConfiguration setIsShareSiriAnalyticsEnabled:]";
      v8 = 1024;
      v9 = enabledCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s *** Setting the value for  isShareSiriAnalyticsEnabled *** = %{BOOL}d", &v6, 0x12u);
    }

    self->_isShareSiriAnalyticsEnabled = enabledCopy;
  }
}

- (MTRCommissioneeInfo)matterCommissioneeInfo
{
  setupDescription = [(HSSetupStateMachineConfiguration *)self setupDescription];
  matterCommissioneeInfo = [setupDescription matterCommissioneeInfo];

  return matterCommissioneeInfo;
}

- (NSUUID)chipDevicePairingUUID
{
  setupDescription = [(HSSetupStateMachineConfiguration *)self setupDescription];
  matterSystemCommissionerPairingUUID = [setupDescription matterSystemCommissionerPairingUUID];

  return matterSystemCommissionerPairingUUID;
}

- (BOOL)chipDevicePairingIsNew
{
  setupDescription = [(HSSetupStateMachineConfiguration *)self setupDescription];
  matterSystemCommissionerPairingIsNew = [setupDescription matterSystemCommissionerPairingIsNew];

  return matterSystemCommissionerPairingIsNew;
}

- (HMCameraProfile)cameraProfile
{
  addedAccessory = [(HSSetupStateMachineConfiguration *)self addedAccessory];
  cameraProfiles = [addedAccessory cameraProfiles];
  firstObject = [cameraProfiles firstObject];

  return firstObject;
}

- (BOOL)supportsRichConfiguration
{
  cameraProfile = [(HSSetupStateMachineConfiguration *)self cameraProfile];
  userSettings = [cameraProfile userSettings];

  if (userSettings)
  {
    supportedFeatures = [userSettings supportedFeatures];
    supportedFeatures2 = [userSettings supportedFeatures];
    v6 = supportedFeatures2 & (supportedFeatures >> 1) & ([userSettings supportedFeatures] >> 2) & 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (HSSetupStateMachineConfigurationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)validateName:(id)name
{
  nameCopy = name;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v5 homeManager];

  [(HSSetupStateMachineConfiguration *)self home];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002AE00;
  v12[3] = &unk_1000C6990;
  v13 = homeManager;
  v15 = v14 = nameCopy;
  v7 = v15;
  v8 = nameCopy;
  v9 = homeManager;
  v10 = [NAFuture futureWithBlock:v12];

  return v10;
}

- (id)validateNames:(id)names
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B1F8;
  v7[3] = &unk_1000C69B8;
  v7[4] = self;
  v3 = [names na_map:v7];
  v4 = +[NAScheduler mainThreadScheduler];
  v5 = [NAFuture combineAllFutures:v3 ignoringErrors:0 scheduler:v4];

  return v5;
}

- (id)configureRoom
{
  if ([(HSSetupStateMachineConfiguration *)self isSetupInitiatedByOtherMatterEcosystem]&& ([(HSSetupStateMachineConfiguration *)self addedAccessory], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    commitItem = +[NAFuture futureWithNoResult];
  }

  else
  {
    addedAccessory = [(HSSetupStateMachineConfiguration *)self addedAccessory];
    if (!addedAccessory)
    {
      sub_100078BDC(a2, self);
    }

    home = [(HSSetupStateMachineConfiguration *)self home];
    if (!home)
    {
      sub_100078C50(a2, self);
    }

    roomName = [(HSSetupStateMachineConfiguration *)self roomName];
    if (roomName)
    {
      rooms = [home rooms];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10002B4CC;
      v21[3] = &unk_1000C69E0;
      v9 = roomName;
      v22 = v9;
      v10 = [rooms na_firstObjectPassingTest:v21];

      if (v10)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10002B510;
        v17[3] = &unk_1000C62C0;
        v18 = home;
        v19 = addedAccessory;
        v20 = v10;
        commitItem = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v17];

        v12 = v18;
      }

      else
      {
        v12 = [[HFRoomBuilder alloc] initWithHome:home];
        [v12 setName:v9];
        [v12 addAccessory:addedAccessory];
        commitItem = [v12 commitItem];
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10002B524;
      v15[3] = &unk_1000C5658;
      v16 = v9;
      v13 = [commitItem addCompletionBlock:v15];
    }

    else
    {
      commitItem = +[NAFuture futureWithNoResult];
    }
  }

  return commitItem;
}

- (id)configureAccessoryName
{
  userGivenAccessoryName = [(HSSetupStateMachineConfiguration *)self userGivenAccessoryName];
  if (userGivenAccessoryName)
  {
    if ([(HSSetupStateMachineConfiguration *)self isSetupInitiatedByOtherMatterEcosystem]&& ([(HSSetupStateMachineConfiguration *)self addedAccessory], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
    {
      v8 = objc_opt_class();
      selfCopy = self;
      if (selfCopy)
      {
        if (objc_opt_isKindOfClass())
        {
          v10 = selfCopy;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        if (!v11)
        {
          sub_1000774F0(selfCopy, v8);
        }
      }

      else
      {
        v11 = 0;
      }

      targetEcosystem = [(HSSetupStateMachineConfiguration *)v11 targetEcosystem];
      v13 = targetEcosystem;
      if (targetEcosystem)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10002B86C;
        v17[3] = &unk_1000C63A0;
        v18 = targetEcosystem;
        v19 = v11;
        v6 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v17];

        v14 = v18;
      }

      else
      {
        v15 = HFLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100078D3C();
        }

        v14 = [NSError hmfErrorWithCode:8];
        v6 = [NAFuture futureWithError:v14];
      }
    }

    else
    {
      userGivenAccessoryName2 = [(HSSetupStateMachineConfiguration *)self userGivenAccessoryName];
      v6 = [(HSSetupStateMachineConfiguration *)self configureAccessoryWithName:userGivenAccessoryName2];
    }
  }

  else
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100078D7C();
    }

    v6 = +[NAFuture futureWithNoResult];
  }

  return v6;
}

- (id)configureAccessoryWithName:(id)name
{
  nameCopy = name;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    addedAccessory = [(HSSetupStateMachineConfiguration *)self addedAccessory];
    home = [(HSSetupStateMachineConfiguration *)self home];
    userGivenAccessoryName = [(HSSetupStateMachineConfiguration *)self userGivenAccessoryName];
    *buf = 138412802;
    v56 = addedAccessory;
    v57 = 2112;
    v58 = home;
    v59 = 2112;
    v60 = userGivenAccessoryName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to configure %@ in %@, with userGivenAccessoryName %@", buf, 0x20u);
  }

  v9 = objc_opt_new();
  addedAccessory2 = [(HSSetupStateMachineConfiguration *)self addedAccessory];
  name = [addedAccessory2 name];
  v12 = [nameCopy isEqualToString:name];

  if ((v12 & 1) == 0)
  {
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10002BE9C;
    v52[3] = &unk_1000C63A0;
    v13 = addedAccessory2;
    v53 = v13;
    v14 = nameCopy;
    v54 = v14;
    v15 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v52];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10002BF74;
    v49[3] = &unk_1000C65D0;
    v50 = v14;
    v51 = v13;
    v16 = [v15 addCompletionBlock:v49];
    [v9 addObject:v15];
  }

  hf_primaryService = [addedAccessory2 hf_primaryService];
  serviceType = [hf_primaryService serviceType];
  v19 = [serviceType isEqualToString:HMServiceTypeTelevision];

  if (!v19)
  {
    if (![addedAccessory2 hf_isSingleServiceLikeAccessory])
    {
      goto LABEL_14;
    }

    hf_visibleServices = [addedAccessory2 hf_visibleServices];
    anyObject = [hf_visibleServices anyObject];
    if (anyObject)
    {
      hf_primaryService2 = anyObject;
    }

    else
    {
      hf_primaryService2 = [addedAccessory2 hf_primaryService];

      if (hf_primaryService2)
      {
        goto LABEL_12;
      }

      NSLog(@"Attempted to name a single service accessory without a visible service");
      hf_visibleServices = HFLogForCategory();
      if (os_log_type_enabled(hf_visibleServices, OS_LOG_TYPE_ERROR))
      {
        sub_100078DBC();
      }

      hf_primaryService2 = 0;
    }

LABEL_12:
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10002C1A8;
    v40[3] = &unk_1000C62C0;
    v41 = hf_primaryService2;
    v27 = nameCopy;
    v42 = v27;
    v28 = addedAccessory2;
    v43 = v28;
    v23 = hf_primaryService2;
    v29 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v40];
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_10002C27C;
    v37 = &unk_1000C65D0;
    v38 = v27;
    v39 = v28;
    v30 = [v29 addCompletionBlock:&v34];
    [v9 addObject:{v29, v34, v35, v36, v37}];

    goto LABEL_13;
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10002C058;
  v46[3] = &unk_1000C63A0;
  v47 = addedAccessory2;
  v20 = nameCopy;
  v48 = v20;
  v21 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v46];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10002C0C8;
  v44[3] = &unk_1000C5658;
  v45 = v20;
  v22 = [v21 addCompletionBlock:v44];
  [v9 addObject:v21];

  v23 = v47;
LABEL_13:

LABEL_14:
  v31 = +[NAScheduler mainThreadScheduler];
  v32 = [NAFuture combineAllFutures:v9 ignoringErrors:1 scheduler:v31];

  return v32;
}

- (id)configureAccessoryDateAdded
{
  addedAccessory = [(HSSetupStateMachineConfiguration *)self addedAccessory];
  v4 = addedAccessory;
  if (!addedAccessory)
  {
LABEL_6:
    v9 = +[NAFuture futureWithNoResult];
    goto LABEL_8;
  }

  hf_dateAdded = [addedAccessory hf_dateAdded];

  if (hf_dateAdded)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      addedAccessory2 = [(HSSetupStateMachineConfiguration *)self addedAccessory];
      hf_dateAdded2 = [v4 hf_dateAdded];
      *buf = 138412546;
      v14 = addedAccessory2;
      v15 = 2112;
      v16 = hf_dateAdded2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not updating date added for %@ because it is already set to %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002C50C;
  v11[3] = &unk_1000C6030;
  v12 = v4;
  v9 = [NAFuture lazyFutureWithBlock:v11];

LABEL_8:

  return v9;
}

+ (id)configureService:(id)service withName:(id)name
{
  serviceCopy = service;
  nameCopy = name;
  defaultName = [serviceCopy defaultName];
  v8 = [nameCopy isEqualToString:defaultName];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002C894;
    v11[3] = &unk_1000C63A0;
    v12 = serviceCopy;
    v13 = nameCopy;
    v9 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v11];
  }

  return v9;
}

+ (id)configureServices:(id)services withNames:(id)names
{
  servicesCopy = services;
  namesCopy = names;
  v7 = [servicesCopy count];
  if (v7 == [namesCopy count])
  {
    v8 = objc_opt_new();
    if ([servicesCopy count])
    {
      v9 = 0;
      do
      {
        v10 = [servicesCopy objectAtIndexedSubscript:v9];
        v11 = [namesCopy objectAtIndexedSubscript:v9];
        v12 = [HSSetupStateMachineConfiguration configureService:v10 withName:v11];
        [v8 na_safeAddObject:v12];

        ++v9;
      }

      while (v9 < [servicesCopy count]);
    }

    v13 = +[NAScheduler mainThreadScheduler];
    v14 = [NAFuture combineAllFutures:v8 ignoringErrors:1 scheduler:v13];
  }

  else
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100078FE4(servicesCopy, namesCopy, v15);
    }

    NSLog(@"%s passed different count services [%ld] and names [%ld]", "+[HSSetupStateMachineConfiguration(Helpers) configureServices:withNames:]", [servicesCopy count], objc_msgSend(namesCopy, "count"));
    v14 = +[NAFuture futureWithNoResult];
  }

  return v14;
}

+ (id)enableServices:(id)services
{
  v3 = [services na_map:&stru_1000C6A20];
  allObjects = [v3 allObjects];
  v5 = +[NAScheduler mainThreadScheduler];
  v6 = [NAFuture combineAllFutures:allObjects ignoringErrors:1 scheduler:v5];

  return v6;
}

+ (id)disableServices:(id)services
{
  v3 = [services na_map:&stru_1000C6A40];
  allObjects = [v3 allObjects];
  v5 = +[NAScheduler mainThreadScheduler];
  v6 = [NAFuture combineAllFutures:allObjects ignoringErrors:1 scheduler:v5];

  return v6;
}

+ (id)writeVisibilityState:(id)state toInputSourceService:(id)service
{
  stateCopy = state;
  serviceCopy = service;
  v8 = HMServiceTypeInputSource;
  v9 = [serviceCopy hf_characteristicEqualToType:HMCharacteristicTypeTargetVisibilityState forServiceType:HMServiceTypeInputSource];
  if (v9)
  {
    v10 = [serviceCopy hf_characteristicEqualToType:HMCharacteristicTypeCurrentVisibilityState forServiceType:v8];
    value = [v10 value];
    v12 = value;
    if (value && [value isEqualToNumber:stateCopy])
    {
      v13 = +[NAFuture futureWithNoResult];
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10002CFF4;
      v21[3] = &unk_1000C63A0;
      v22 = v9;
      v14 = stateCopy;
      v23 = v14;
      v13 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v21];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10002D004;
      v18[3] = &unk_1000C6A68;
      v19 = v14;
      selfCopy = self;
      v15 = [v13 addCompletionBlock:v18];
    }
  }

  else
  {
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000790A4();
    }

    v13 = +[NAFuture futureWithNoResult];
  }

  return v13;
}

+ (id)writeConfigurationState:(int64_t)state toService:(id)service
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D1AC;
  v8[3] = &unk_1000C6A90;
  serviceCopy = service;
  stateCopy = state;
  v5 = serviceCopy;
  v6 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v8];

  return v6;
}

- (BOOL)isSetupInitiatedByOtherMatterEcosystem
{
  setupDescription = [(HSSetupStateMachineConfiguration *)self setupDescription];
  isSetupInitiatedByOtherMatterEcosystem = [setupDescription isSetupInitiatedByOtherMatterEcosystem];

  return isSetupInitiatedByOtherMatterEcosystem;
}

@end
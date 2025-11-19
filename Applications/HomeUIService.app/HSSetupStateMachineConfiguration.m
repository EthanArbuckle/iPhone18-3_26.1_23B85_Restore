@interface HSSetupStateMachineConfiguration
+ (id)configureService:(id)a3 withName:(id)a4;
+ (id)configureServices:(id)a3 withNames:(id)a4;
+ (id)disableServices:(id)a3;
+ (id)enableServices:(id)a3;
+ (id)writeConfigurationState:(int64_t)a3 toService:(id)a4;
+ (id)writeVisibilityState:(id)a3 toInputSourceService:(id)a4;
- (BOOL)chipDevicePairingIsNew;
- (BOOL)isSetupInitiatedByOtherMatterEcosystem;
- (BOOL)requiresOwnerToPair;
- (BOOL)supportsRichConfiguration;
- (HFAccessoryItem)addedAccessoryItem;
- (HMAccessoryCategory)category;
- (HMCameraProfile)cameraProfile;
- (HMSetupAccessoryDescription)setupDescription;
- (HSSetupStateMachineConfiguration)initWithAccessory:(id)a3;
- (HSSetupStateMachineConfiguration)initWithError:(id)a3;
- (HSSetupStateMachineConfiguration)initWithHome:(id)a3;
- (HSSetupStateMachineConfigurationDelegate)delegate;
- (MTRCommissioneeInfo)matterCommissioneeInfo;
- (MTSDeviceSetupRequest)matterDeviceSetupRequest;
- (NSUUID)chipDevicePairingUUID;
- (id)configureAccessoryDateAdded;
- (id)configureAccessoryName;
- (id)configureAccessoryWithName:(id)a3;
- (id)configureRoom;
- (id)updateUserGivenAccessoryName:(id)a3;
- (id)validateName:(id)a3;
- (id)validateNames:(id)a3;
- (void)setHome:(id)a3;
- (void)setIsReadyToPair:(BOOL)a3;
- (void)setIsShareSiriAnalyticsEnabled:(BOOL)a3;
- (void)setPairingError:(id)a3;
@end

@implementation HSSetupStateMachineConfiguration

- (BOOL)requiresOwnerToPair
{
  v3 = [(HSSetupStateMachineConfiguration *)self category];
  v4 = [v3 categoryType];
  if ([v4 isEqualToString:HMAccessoryCategoryTypeSpeaker])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(HSSetupStateMachineConfiguration *)self category];
    v7 = [v6 categoryType];
    v5 = [v7 isEqualToString:HMAccessoryCategoryTypeAirPort];
  }

  return v5;
}

- (void)setIsReadyToPair:(BOOL)a3
{
  self->_isReadyToPair = a3;
  if (!a3)
  {
    return;
  }

  v4 = [(HSSetupStateMachineConfiguration *)self setupDescription];
  v5 = [v4 isSetupInitiatedByOtherMatterEcosystem];

  if (v5)
  {
    goto LABEL_3;
  }

  v6 = [(HSSetupStateMachineConfiguration *)self home];

  if (!v6)
  {
    return;
  }

  if ([(HSSetupStateMachineConfiguration *)self requiresOwnerToPair])
  {
    v7 = [(HSSetupStateMachineConfiguration *)self home];
    v8 = [v7 hf_currentUserIsOwner];

    if ((v8 & 1) == 0)
    {
      v16 = HULocalizedString();
      v11 = [(HSSetupStateMachineConfiguration *)self home];
      v13 = [v11 name];
      v14 = HULocalizedStringWithFormat();
      v15 = [NSError hf_errorWithCode:61 title:v16 description:v14, v13];
      [(HSSetupStateMachineConfiguration *)self setPairingError:v15];

      goto LABEL_11;
    }
  }

  v9 = [(HSSetupStateMachineConfiguration *)self home];
  v10 = [v9 hf_currentUserIsAdministrator];

  if ((v10 & 1) == 0)
  {
    v16 = HULocalizedString();
    v11 = HULocalizedString();
    v12 = [NSError hf_errorWithCode:61 title:v16 description:v11];
    [(HSSetupStateMachineConfiguration *)self setPairingError:v12];

LABEL_11:
    goto LABEL_12;
  }

LABEL_3:
  v16 = [(HSSetupStateMachineConfiguration *)self delegate];
  [v16 stateMachineConfigurationIsReadyToPair:self];
LABEL_12:
}

- (void)setPairingError:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[HSSetupStateMachineConfiguration setPairingError:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s *** Setting pairingError *** = %@", &v7, 0x16u);
  }

  pairingError = self->_pairingError;
  self->_pairingError = v4;
}

- (id)updateUserGivenAccessoryName:(id)a3
{
  v4 = a3;
  v5 = [(HSSetupStateMachineConfiguration *)self validateName:v4];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001D234;
  v9[3] = &unk_1000C6220;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 flatMap:v9];

  return v7;
}

- (void)setHome:(id)a3
{
  v5 = a3;
  p_home = &self->_home;
  if (self->_home != v5)
  {
    v8 = v5;
    objc_storeStrong(p_home, a3);
    v7 = [(HSSetupStateMachineConfiguration *)self delegate];
    [v7 stateMachineConfiguration:self didUpdateHome:v8];
  }

  _objc_release_x2(p_home);
}

- (HSSetupStateMachineConfiguration)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HSSetupStateMachineConfiguration;
  v6 = [(HSSetupStateMachineConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v7->_isReadyToPair = 0;
  }

  return v7;
}

- (HSSetupStateMachineConfiguration)initWithAccessory:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HSSetupStateMachineConfiguration;
  v6 = [(HSSetupStateMachineConfiguration *)&v12 init];
  if (v6)
  {
    v7 = [v5 home];
    home = v6->_home;
    v6->_home = v7;

    objc_storeStrong(&v6->_addedAccessory, a3);
    v9 = [v5 name];
    userGivenAccessoryName = v6->_userGivenAccessoryName;
    v6->_userGivenAccessoryName = v9;
  }

  return v6;
}

- (HSSetupStateMachineConfiguration)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HSSetupStateMachineConfiguration;
  v6 = [(HSSetupStateMachineConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pairingError, a3);
  }

  return v7;
}

- (HMSetupAccessoryDescription)setupDescription
{
  v3 = [(HSSetupStateMachineConfiguration *)self delegate];
  v4 = [v3 stateMachineConfigurationGetSetupAccessoryDescription:self];

  return v4;
}

- (MTSDeviceSetupRequest)matterDeviceSetupRequest
{
  v3 = [(HSSetupStateMachineConfiguration *)self delegate];
  v4 = [v3 stateMachineConfigurationGetMatterDeviceSetupRequest:self];

  return v4;
}

- (HMAccessoryCategory)category
{
  v3 = [(HSSetupStateMachineConfiguration *)self addedAccessory];
  v4 = [v3 category];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(HSSetupStateMachineConfiguration *)self setupDescription];
    v6 = [v7 category];
  }

  return v6;
}

- (HFAccessoryItem)addedAccessoryItem
{
  v3 = [HFAccessoryItem alloc];
  v4 = [(HSSetupStateMachineConfiguration *)self addedAccessory];
  v5 = objc_alloc_init(HFNullValueSource);
  v6 = [v3 initWithAccessory:v4 valueSource:v5];

  return v6;
}

- (void)setIsShareSiriAnalyticsEnabled:(BOOL)a3
{
  if (self->_isShareSiriAnalyticsEnabled != a3)
  {
    v3 = a3;
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[HSSetupStateMachineConfiguration setIsShareSiriAnalyticsEnabled:]";
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s *** Setting the value for  isShareSiriAnalyticsEnabled *** = %{BOOL}d", &v6, 0x12u);
    }

    self->_isShareSiriAnalyticsEnabled = v3;
  }
}

- (MTRCommissioneeInfo)matterCommissioneeInfo
{
  v2 = [(HSSetupStateMachineConfiguration *)self setupDescription];
  v3 = [v2 matterCommissioneeInfo];

  return v3;
}

- (NSUUID)chipDevicePairingUUID
{
  v2 = [(HSSetupStateMachineConfiguration *)self setupDescription];
  v3 = [v2 matterSystemCommissionerPairingUUID];

  return v3;
}

- (BOOL)chipDevicePairingIsNew
{
  v2 = [(HSSetupStateMachineConfiguration *)self setupDescription];
  v3 = [v2 matterSystemCommissionerPairingIsNew];

  return v3;
}

- (HMCameraProfile)cameraProfile
{
  v2 = [(HSSetupStateMachineConfiguration *)self addedAccessory];
  v3 = [v2 cameraProfiles];
  v4 = [v3 firstObject];

  return v4;
}

- (BOOL)supportsRichConfiguration
{
  v2 = [(HSSetupStateMachineConfiguration *)self cameraProfile];
  v3 = [v2 userSettings];

  if (v3)
  {
    v4 = [v3 supportedFeatures];
    v5 = [v3 supportedFeatures];
    v6 = v5 & (v4 >> 1) & ([v3 supportedFeatures] >> 2) & 1;
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

- (id)validateName:(id)a3
{
  v4 = a3;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 homeManager];

  [(HSSetupStateMachineConfiguration *)self home];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002AE00;
  v12[3] = &unk_1000C6990;
  v13 = v6;
  v15 = v14 = v4;
  v7 = v15;
  v8 = v4;
  v9 = v6;
  v10 = [NAFuture futureWithBlock:v12];

  return v10;
}

- (id)validateNames:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B1F8;
  v7[3] = &unk_1000C69B8;
  v7[4] = self;
  v3 = [a3 na_map:v7];
  v4 = +[NAScheduler mainThreadScheduler];
  v5 = [NAFuture combineAllFutures:v3 ignoringErrors:0 scheduler:v4];

  return v5;
}

- (id)configureRoom
{
  if ([(HSSetupStateMachineConfiguration *)self isSetupInitiatedByOtherMatterEcosystem]&& ([(HSSetupStateMachineConfiguration *)self addedAccessory], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v11 = +[NAFuture futureWithNoResult];
  }

  else
  {
    v5 = [(HSSetupStateMachineConfiguration *)self addedAccessory];
    if (!v5)
    {
      sub_100078BDC(a2, self);
    }

    v6 = [(HSSetupStateMachineConfiguration *)self home];
    if (!v6)
    {
      sub_100078C50(a2, self);
    }

    v7 = [(HSSetupStateMachineConfiguration *)self roomName];
    if (v7)
    {
      v8 = [v6 rooms];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10002B4CC;
      v21[3] = &unk_1000C69E0;
      v9 = v7;
      v22 = v9;
      v10 = [v8 na_firstObjectPassingTest:v21];

      if (v10)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10002B510;
        v17[3] = &unk_1000C62C0;
        v18 = v6;
        v19 = v5;
        v20 = v10;
        v11 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v17];

        v12 = v18;
      }

      else
      {
        v12 = [[HFRoomBuilder alloc] initWithHome:v6];
        [v12 setName:v9];
        [v12 addAccessory:v5];
        v11 = [v12 commitItem];
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10002B524;
      v15[3] = &unk_1000C5658;
      v16 = v9;
      v13 = [v11 addCompletionBlock:v15];
    }

    else
    {
      v11 = +[NAFuture futureWithNoResult];
    }
  }

  return v11;
}

- (id)configureAccessoryName
{
  v3 = [(HSSetupStateMachineConfiguration *)self userGivenAccessoryName];
  if (v3)
  {
    if ([(HSSetupStateMachineConfiguration *)self isSetupInitiatedByOtherMatterEcosystem]&& ([(HSSetupStateMachineConfiguration *)self addedAccessory], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
    {
      v8 = objc_opt_class();
      v9 = self;
      if (v9)
      {
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        if (!v11)
        {
          sub_1000774F0(v9, v8);
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = [(HSSetupStateMachineConfiguration *)v11 targetEcosystem];
      v13 = v12;
      if (v12)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10002B86C;
        v17[3] = &unk_1000C63A0;
        v18 = v12;
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
      v5 = [(HSSetupStateMachineConfiguration *)self userGivenAccessoryName];
      v6 = [(HSSetupStateMachineConfiguration *)self configureAccessoryWithName:v5];
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

- (id)configureAccessoryWithName:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HSSetupStateMachineConfiguration *)self addedAccessory];
    v7 = [(HSSetupStateMachineConfiguration *)self home];
    v8 = [(HSSetupStateMachineConfiguration *)self userGivenAccessoryName];
    *buf = 138412802;
    v56 = v6;
    v57 = 2112;
    v58 = v7;
    v59 = 2112;
    v60 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to configure %@ in %@, with userGivenAccessoryName %@", buf, 0x20u);
  }

  v9 = objc_opt_new();
  v10 = [(HSSetupStateMachineConfiguration *)self addedAccessory];
  v11 = [v10 name];
  v12 = [v4 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10002BE9C;
    v52[3] = &unk_1000C63A0;
    v13 = v10;
    v53 = v13;
    v14 = v4;
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

  v17 = [v10 hf_primaryService];
  v18 = [v17 serviceType];
  v19 = [v18 isEqualToString:HMServiceTypeTelevision];

  if (!v19)
  {
    if (![v10 hf_isSingleServiceLikeAccessory])
    {
      goto LABEL_14;
    }

    v24 = [v10 hf_visibleServices];
    v25 = [v24 anyObject];
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = [v10 hf_primaryService];

      if (v26)
      {
        goto LABEL_12;
      }

      NSLog(@"Attempted to name a single service accessory without a visible service");
      v24 = HFLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100078DBC();
      }

      v26 = 0;
    }

LABEL_12:
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10002C1A8;
    v40[3] = &unk_1000C62C0;
    v41 = v26;
    v27 = v4;
    v42 = v27;
    v28 = v10;
    v43 = v28;
    v23 = v26;
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
  v47 = v10;
  v20 = v4;
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
  v3 = [(HSSetupStateMachineConfiguration *)self addedAccessory];
  v4 = v3;
  if (!v3)
  {
LABEL_6:
    v9 = +[NAFuture futureWithNoResult];
    goto LABEL_8;
  }

  v5 = [v3 hf_dateAdded];

  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(HSSetupStateMachineConfiguration *)self addedAccessory];
      v8 = [v4 hf_dateAdded];
      *buf = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
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

+ (id)configureService:(id)a3 withName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 defaultName];
  v8 = [v6 isEqualToString:v7];

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
    v12 = v5;
    v13 = v6;
    v9 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v11];
  }

  return v9;
}

+ (id)configureServices:(id)a3 withNames:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    v8 = objc_opt_new();
    if ([v5 count])
    {
      v9 = 0;
      do
      {
        v10 = [v5 objectAtIndexedSubscript:v9];
        v11 = [v6 objectAtIndexedSubscript:v9];
        v12 = [HSSetupStateMachineConfiguration configureService:v10 withName:v11];
        [v8 na_safeAddObject:v12];

        ++v9;
      }

      while (v9 < [v5 count]);
    }

    v13 = +[NAScheduler mainThreadScheduler];
    v14 = [NAFuture combineAllFutures:v8 ignoringErrors:1 scheduler:v13];
  }

  else
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100078FE4(v5, v6, v15);
    }

    NSLog(@"%s passed different count services [%ld] and names [%ld]", "+[HSSetupStateMachineConfiguration(Helpers) configureServices:withNames:]", [v5 count], objc_msgSend(v6, "count"));
    v14 = +[NAFuture futureWithNoResult];
  }

  return v14;
}

+ (id)enableServices:(id)a3
{
  v3 = [a3 na_map:&stru_1000C6A20];
  v4 = [v3 allObjects];
  v5 = +[NAScheduler mainThreadScheduler];
  v6 = [NAFuture combineAllFutures:v4 ignoringErrors:1 scheduler:v5];

  return v6;
}

+ (id)disableServices:(id)a3
{
  v3 = [a3 na_map:&stru_1000C6A40];
  v4 = [v3 allObjects];
  v5 = +[NAScheduler mainThreadScheduler];
  v6 = [NAFuture combineAllFutures:v4 ignoringErrors:1 scheduler:v5];

  return v6;
}

+ (id)writeVisibilityState:(id)a3 toInputSourceService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HMServiceTypeInputSource;
  v9 = [v7 hf_characteristicEqualToType:HMCharacteristicTypeTargetVisibilityState forServiceType:HMServiceTypeInputSource];
  if (v9)
  {
    v10 = [v7 hf_characteristicEqualToType:HMCharacteristicTypeCurrentVisibilityState forServiceType:v8];
    v11 = [v10 value];
    v12 = v11;
    if (v11 && [v11 isEqualToNumber:v6])
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
      v14 = v6;
      v23 = v14;
      v13 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v21];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10002D004;
      v18[3] = &unk_1000C6A68;
      v19 = v14;
      v20 = a1;
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

+ (id)writeConfigurationState:(int64_t)a3 toService:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D1AC;
  v8[3] = &unk_1000C6A90;
  v9 = a4;
  v10 = a3;
  v5 = v9;
  v6 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v8];

  return v6;
}

- (BOOL)isSetupInitiatedByOtherMatterEcosystem
{
  v2 = [(HSSetupStateMachineConfiguration *)self setupDescription];
  v3 = [v2 isSetupInitiatedByOtherMatterEcosystem];

  return v3;
}

@end
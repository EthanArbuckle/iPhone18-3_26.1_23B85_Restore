@interface HMAccessorySettingsDataSource
+ (id)defaultLanguageValue;
+ (id)logCategory;
- (HMAccessorySettingsDataSource)initWithContext:(id)context localizationManager:(id)manager messengerFactory:(id)factory subscriptionProvider:(id)provider lastEventStoreReadHandle:(id)handle eventRouterXPCClient:(id)client metricsDispatcher:(id)dispatcher;
- (HMAccessorySettingsDataSourceDataSource)dataSource;
- (HMAccessorySettingsDataSourceDelegate)delegate;
- (HMAccessorySettingsMessengerFactory)messengerFactory;
- (id)accessoryUUIDForIdentifier:(void *)identifier homeIdentifier:;
- (id)dataSourceHomeWithHomeIdentifier:(void *)identifier;
- (id)defaultSettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths;
- (id)homeUUIDForIdentifier:(void *)identifier;
- (id)localizedTitleForKeyPath:(id)path;
- (id)mediaSystemUUIDForIdentifier:(void *)identifier homeIdentifier:;
- (id)topicsForHomeUUID:(void *)d accessoryUUID:(void *)iD keyPaths:;
- (void)_didReceiveEvent:(void *)event topic:;
- (void)_logModifiedAccessorySetting:(void *)setting error:;
- (void)dealloc;
- (void)didReceiveCachedEvent:(id)event topic:(id)topic source:(id)source;
- (void)didReceiveEvent:(id)event topic:(id)topic;
- (void)fetchAccessorySettingsWithAccessoryIdentifier:(id)identifier keyPaths:(id)paths completionHandler:(id)handler;
- (void)fetchAccessorySettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths completionHandler:(id)handler;
- (void)fetchCachedAccessorySettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths completionHandler:(id)handler;
- (void)notifyDelegateDidReceiveSettingsUpdatesForAccessoryWithIdentifier:(void *)identifier settings:;
- (void)resetSubscriptions;
- (void)setDelegate:(id)delegate;
- (void)subscribeToAccessorySettingsWithAccessoryIdentifier:(id)identifier keyPaths:(id)paths options:(unint64_t)options completionHandler:(id)handler;
- (void)subscribeToAccessorySettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths options:(unint64_t)options completionHandler:(id)handler;
- (void)subscribeToMediaSystemSettingsWithHomeIdentifier:(id)identifier mediaSystemIdentifier:(id)systemIdentifier keyPaths:(id)paths options:(unint64_t)options completionHandler:(id)handler;
- (void)unsubscribeToAccessorySettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths completionHandler:(id)handler;
- (void)unsubscribeToMediaSystemSettingsWithHomeIdentifier:(id)identifier mediaSystemIdentifier:(id)systemIdentifier keyPaths:(id)paths completionHandler:(id)handler;
@end

@implementation HMAccessorySettingsDataSource

- (void)subscribeToAccessorySettingsWithAccessoryIdentifier:(id)identifier keyPaths:(id)paths options:(unint64_t)options completionHandler:(id)handler
{
  identifierCopy = identifier;
  pathsCopy = paths;
  handlerCopy = handler;
  context = [(HMAccessorySettingsDataSource *)self context];
  delegateCaller = [context delegateCaller];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __132__HMAccessorySettingsDataSource_Deprecated__subscribeToAccessorySettingsWithAccessoryIdentifier_keyPaths_options_completionHandler___block_invoke;
  v18[3] = &unk_1E754A090;
  v18[4] = self;
  v19 = identifierCopy;
  v21 = handlerCopy;
  optionsCopy = options;
  v20 = pathsCopy;
  v15 = handlerCopy;
  v16 = pathsCopy;
  v17 = identifierCopy;
  [delegateCaller invokeBlock:v18];
}

void __132__HMAccessorySettingsDataSource_Deprecated__subscribeToAccessorySettingsWithAccessoryIdentifier_keyPaths_options_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = HMAccessorySettingsDataSourceSubscribeOptionsAsString(*(a1 + 64));
    v11 = 138544130;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Deprecated API: Subscribing to accessory settings with accessory identifier: %@ key paths: %@ options: %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
  (*(*(a1 + 56) + 16))();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchAccessorySettingsWithAccessoryIdentifier:(id)identifier keyPaths:(id)paths completionHandler:(id)handler
{
  identifierCopy = identifier;
  pathsCopy = paths;
  handlerCopy = handler;
  context = [(HMAccessorySettingsDataSource *)self context];
  delegateCaller = [context delegateCaller];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __118__HMAccessorySettingsDataSource_Deprecated__fetchAccessorySettingsWithAccessoryIdentifier_keyPaths_completionHandler___block_invoke;
  v16[3] = &unk_1E754D208;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = pathsCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = pathsCopy;
  v15 = identifierCopy;
  [delegateCaller invokeBlock:v16];
}

void __118__HMAccessorySettingsDataSource_Deprecated__fetchAccessorySettingsWithAccessoryIdentifier_keyPaths_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Deprecated API: Fetching accessory settings with accessory identifier: %@ key paths: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:23];
  (*(*(a1 + 56) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

- (HMAccessorySettingsMessengerFactory)messengerFactory
{
  WeakRetained = objc_loadWeakRetained(&self->_messengerFactory);

  return WeakRetained;
}

- (HMAccessorySettingsDataSourceDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    delegate = [(HMAccessorySettingsDataSource *)selfCopy delegate];
    *buf = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = delegate;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating. delegate:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v9.receiver = selfCopy;
  v9.super_class = HMAccessorySettingsDataSource;
  [(HMAccessorySettingsDataSource *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (id)defaultSettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths
{
  v50 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  pathsCopy = paths;
  v11 = [(HMAccessorySettingsDataSource *)self dataSourceHomeWithHomeIdentifier:identifierCopy];
  v12 = v11;
  if (v11)
  {
    supportedSiriEndPointVersion = [v11 supportedSiriEndPointVersion];
    if (supportedSiriEndPointVersion)
    {
      v14 = [objc_alloc(MEMORY[0x1E69A2A78]) initWithMajorVersion:7 minorVersion:2 updateVersion:0];
      if ([supportedSiriEndPointVersion isAtLeastVersion:v14])
      {
        array = [MEMORY[0x1E695DF70] array];
        if ([pathsCopy containsObject:@"root.siri.allowHeySiri"])
        {
          v16 = [[HMBooleanSetting alloc] initWithKeyPath:@"root.siri.allowHeySiri" readOnly:1 BOOLValue:0];
          [array addObject:v16];
        }

        if ([pathsCopy containsObject:@"root.siri.siriEnabled"])
        {
          v17 = [[HMBooleanSetting alloc] initWithKeyPath:@"root.siri.siriEnabled" readOnly:1 BOOLValue:0];
          [array addObject:v17];
        }

        if ([pathsCopy containsObject:@"root.airPlay.airPlayEnabled"])
        {
          v18 = [[HMBooleanSetting alloc] initWithKeyPath:@"root.airPlay.airPlayEnabled" readOnly:1 BOOLValue:0];
          [array addObject:v18];
        }

        if ([pathsCopy containsObject:@"root.siri.lightWhenUsingSiri"])
        {
          v19 = [[HMBooleanSetting alloc] initWithKeyPath:@"root.siri.lightWhenUsingSiri" readOnly:1 BOOLValue:1];
          [array addObject:v19];
        }

        if ([pathsCopy containsObject:@"root.siri.tapToAccess"])
        {
          v20 = [[HMBooleanSetting alloc] initWithKeyPath:@"root.siri.tapToAccess" readOnly:1 BOOLValue:1];
          [array addObject:v20];
        }

        if ([pathsCopy containsObject:@"root.siri.soundAlert"])
        {
          v21 = [[HMBooleanSetting alloc] initWithKeyPath:@"root.siri.soundAlert" readOnly:1 BOOLValue:1];
          [array addObject:v21];
        }

        if ([pathsCopy containsObject:@"root.siri.language"])
        {
          v22 = +[HMAccessorySettingsDataSource defaultLanguageValue];
          v23 = [[HMLanguageSetting alloc] initWithKeyPath:@"root.siri.language" readOnly:1 languageValue:v22];
          [array addObject:v23];
        }

        if ([pathsCopy containsObject:@"root.locationServices.enabled"])
        {
          v24 = [[HMBooleanSetting alloc] initWithKeyPath:@"root.locationServices.enabled" readOnly:1 BOOLValue:1];
          [array addObject:v24];
        }

        v25 = [v12 accessoryWithUniqueIdentifier:accessoryIdentifierCopy];
        if ([pathsCopy containsObject:@"root.music.allowExplicitContent"] && (objc_msgSend(v25, "supportsUserMediaSettings") & 1) == 0)
        {
          v26 = [[HMBooleanSetting alloc] initWithKeyPath:@"root.music.allowExplicitContent" readOnly:1 BOOLValue:0];
          [array addObject:v26];
        }

        if ([pathsCopy containsObject:@"root.announce.enabled"])
        {
          v27 = [[HMBooleanSetting alloc] initWithKeyPath:@"root.announce.enabled" readOnly:1 BOOLValue:0];
          [array addObject:v27];
        }

        if ([pathsCopy containsObject:@"root.general.analytics.shareSiriAnalytics"])
        {
          v28 = [[HMBooleanSetting alloc] initWithKeyPath:@"root.general.analytics.shareSiriAnalytics" readOnly:1 BOOLValue:0];
          [array addObject:v28];
        }

        v29 = [array copy];
      }

      else
      {
        v38 = objc_autoreleasePoolPush();
        selfCopy = self;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          v44 = 138543874;
          v45 = v41;
          v46 = 2112;
          v47 = supportedSiriEndPointVersion;
          v48 = 2112;
          v49 = v12;
          _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to get default settings due to unsupported siri endpoint version: %@ for home: %@", &v44, 0x20u);
        }

        objc_autoreleasePoolPop(v38);
        v29 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        v44 = 138543618;
        v45 = v37;
        v46 = 2112;
        v47 = v12;
        _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to get default settings due to unknown supported siri endpoint version for home: %@", &v44, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v29 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v44 = 138543618;
      v45 = v33;
      v46 = 2112;
      v47 = identifierCopy;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to get default settings due to unknown home with identifier: %@", &v44, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v29 = MEMORY[0x1E695E0F0];
  }

  v42 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)dataSourceHomeWithHomeIdentifier:(void *)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (identifier)
  {
    dataSource = [identifier dataSource];
    v5 = dataSource;
    if (dataSource)
    {
      v6 = [dataSource accessorySettingsDataSource:identifier homeWithHomeIdentifier:v3];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      identifierCopy = identifier;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source accessory UUID due to no data source", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)didReceiveCachedEvent:(id)event topic:(id)topic source:(id)source
{
  v24 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  topicCopy = topic;
  sourceCopy = source;
  if (self)
  {
    Property = objc_getProperty(self, v10, 56, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v16;
    v20 = 2112;
    v21 = eventCopy;
    v22 = 2112;
    v23 = topicCopy;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Received cached event: %@, topic: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  [(HMAccessorySettingsDataSource *)selfCopy _didReceiveEvent:eventCopy topic:topicCopy];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_didReceiveEvent:(void *)event topic:
{
  v55[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  eventCopy = event;
  if (self)
  {
    Property = objc_getProperty(self, v6, 56, 1);
    dispatch_assert_queue_V2(Property);
    v44 = 0;
    v45 = 0;
    v43 = 0;
    v9 = HMImmutableSettingChangeEventComponentsFromTopic(eventCopy, &v45, &v44, &v43);
    v10 = v45;
    v11 = v44;
    v12 = v43;
    v13 = v12;
    if (v9)
    {
      v14 = v10;
      v15 = v11;
      *buf = 0;
      v39 = v5;
      v16 = [HMImmutableSettingChangeEvent decodeSettingFromEvent:v5 error:buf];
      v17 = *buf;
      [(HMAccessorySettingsDataSource *)self _logModifiedAccessorySetting:v16 error:v17];
      if (v16)
      {
        v37 = eventCopy;
        dataSource = [self dataSource];
        v46 = 0;
        v47 = 0;
        v19 = [dataSource accessorySettingsDataSource:self transformHomeUUID:v14 accessoryUUID:v15 toClientHomeIdentifier:&v47 clientAccessoryIdentifier:&v46];
        v20 = v47;
        v21 = v46;

        if (v19)
        {
          v55[0] = v16;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
          [(HMAccessorySettingsDataSource *)self notifyDelegateDidReceiveSettingsUpdatesForAccessoryWithIdentifier:v21 settings:v22];
        }

        eventCopy = v37;
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }
    }

    else
    {
      v41 = v11;
      v42 = v10;
      v40 = v12;
      v23 = HMImmutableSettingChangeEventComponentsFromMediaSystemTopic(eventCopy, &v42, &v41, &v40);
      v14 = v42;

      v15 = v41;
      v24 = v40;

      if (!v23)
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138544130;
          *&buf[4] = v35;
          v49 = 2112;
          v50 = v5;
          v51 = 2112;
          v52 = v14;
          v53 = 2112;
          v54 = v15;
          _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Received unknown event: %@ home: %@ target: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v32);
        v13 = v24;
        goto LABEL_20;
      }

      v14 = v14;
      v15 = v15;
      *buf = 0;
      v39 = v5;
      v25 = [HMImmutableSettingChangeEvent decodeSettingFromEvent:v5 error:buf];
      v26 = *buf;
      [(HMAccessorySettingsDataSource *)self _logModifiedAccessorySetting:v25 error:v26];
      if (v25)
      {
        v38 = eventCopy;
        dataSource2 = [self dataSource];
        v46 = 0;
        v47 = 0;
        v28 = [dataSource2 accessorySettingsDataSource:self transformHomeUUID:v14 mediaSystemUUID:v15 toClientHomeIdentifier:&v47 clientMediaSystemIdentifier:&v46];
        v29 = v47;
        v30 = v46;

        if (v28)
        {
          v55[0] = v25;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
          [(HMAccessorySettingsDataSource *)self notifyDelegateDidReceiveSettingsUpdatesForAccessoryWithIdentifier:v30 settings:v31];
        }

        eventCopy = v38;
      }

      else
      {
        v30 = 0;
        v29 = 0;
      }

      v13 = v24;
    }

    v5 = v39;
LABEL_20:
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)_logModifiedAccessorySetting:(void *)setting error:
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  settingCopy = setting;
  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      v15 = MEMORY[0x1E696AD98];
      languageValues = [v9 languageValues];
      v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(languageValues, "count")}];
      delegate = [selfCopy delegate];
      v20 = 138544130;
      v21 = v14;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = settingCopy;
      v26 = 2112;
      v27 = delegate;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Modified language list (count):%@, error:%@, delegate:%@", &v20, 0x2Au);

LABEL_9:
    }
  }

  else if (v13)
  {
    v14 = HMFGetLogIdentifier();
    languageValues = [selfCopy delegate];
    v20 = 138544130;
    v21 = v14;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = settingCopy;
    v26 = 2112;
    v27 = languageValues;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Modified setting:%@, error:%@, delegate:%@", &v20, 0x2Au);
    goto LABEL_9;
  }

  objc_autoreleasePoolPop(v10);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateDidReceiveSettingsUpdatesForAccessoryWithIdentifier:(void *)identifier settings:
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  identifierCopy = identifier;
  delegate = [self delegate];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(identifierCopy, "count")}];
    *buf = 138544130;
    v25 = v11;
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = delegate;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did receive settings updates for accessory with identifier: %@ settings count: %@ delegate: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  context = [selfCopy context];
  delegateCaller = [context delegateCaller];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __108__HMAccessorySettingsDataSource_notifyDelegateDidReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke;
  v19[3] = &unk_1E754DE30;
  v20 = delegate;
  v21 = selfCopy;
  v15 = v5;
  v22 = v15;
  v16 = identifierCopy;
  v23 = v16;
  v17 = delegate;
  [delegateCaller invokeBlock:v19];

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __108__HMAccessorySettingsDataSource_notifyDelegateDidReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 accessorySettingsDataSource:v5 didReceiveSettingsUpdatesForAccessoryWithIdentifier:v6 settings:v7];
  }

  return result;
}

- (void)didReceiveEvent:(id)event topic:(id)topic
{
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  topicCopy = topic;
  if (self)
  {
    Property = objc_getProperty(self, v7, 56, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v13;
    v17 = 2112;
    v18 = eventCopy;
    v19 = 2112;
    v20 = topicCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Received live event: %@, topic: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  [(HMAccessorySettingsDataSource *)selfCopy _didReceiveEvent:eventCopy topic:topicCopy];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeToMediaSystemSettingsWithHomeIdentifier:(id)identifier mediaSystemIdentifier:(id)systemIdentifier keyPaths:(id)paths completionHandler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  systemIdentifierCopy = systemIdentifier;
  pathsCopy = paths;
  handlerCopy = handler;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544130;
    v44 = v17;
    v45 = 2112;
    v46 = identifierCopy;
    v47 = 2112;
    v48 = systemIdentifierCopy;
    v49 = 2112;
    v50 = pathsCopy;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing to media system settings with home identifier: %@ media system identifier: %@ key paths: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [(HMAccessorySettingsDataSource *)selfCopy homeUUIDForIdentifier:identifierCopy];
  if (v18)
  {
    v19 = [(HMAccessorySettingsDataSource *)selfCopy mediaSystemUUIDForIdentifier:systemIdentifierCopy homeIdentifier:identifierCopy];
    if (v19)
    {
      v20 = v19;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __133__HMAccessorySettingsDataSource_unsubscribeToMediaSystemSettingsWithHomeIdentifier_mediaSystemIdentifier_keyPaths_completionHandler___block_invoke;
      v40[3] = &unk_1E754A350;
      v41 = v18;
      v21 = v20;
      v42 = v21;
      v23 = [pathsCopy na_map:v40];
      if (selfCopy)
      {
        Property = objc_getProperty(selfCopy, v22, 40, 1);
      }

      else
      {
        Property = 0;
      }

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __133__HMAccessorySettingsDataSource_unsubscribeToMediaSystemSettingsWithHomeIdentifier_mediaSystemIdentifier_keyPaths_completionHandler___block_invoke_2;
      v38[3] = &unk_1E754D870;
      v38[4] = selfCopy;
      v39 = handlerCopy;
      [Property unregisterConsumer:selfCopy topicFilters:v23 completion:v38];

      context2 = v41;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v34;
        v45 = 2112;
        v46 = systemIdentifierCopy;
        _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to unsubscribe media system settings from cache due to unknown media system identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      context = [(HMAccessorySettingsDataSource *)v32 context];
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:context2];

      v21 = 0;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v29;
      v45 = 2112;
      v46 = identifierCopy;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to unsubscribe media system settings from cache due to unknown home identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    context2 = [(HMAccessorySettingsDataSource *)v27 context];
    delegateCaller2 = [context2 delegateCaller];
    [delegateCaller2 callCompletion:handlerCopy error:v21];
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (id)homeUUIDForIdentifier:(void *)identifier
{
  if (identifier)
  {
    v2 = [(HMAccessorySettingsDataSource *)identifier dataSourceHomeWithHomeIdentifier:a2];
    v3 = v2;
    if (v2)
    {
      uuid = [v2 uuid];
    }

    else
    {
      uuid = 0;
    }
  }

  else
  {
    uuid = 0;
  }

  return uuid;
}

- (id)mediaSystemUUIDForIdentifier:(void *)identifier homeIdentifier:
{
  v5 = a2;
  if (self)
  {
    v6 = [(HMAccessorySettingsDataSource *)self dataSourceHomeWithHomeIdentifier:identifier];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 mediaSystemWithUniqueIdentifier:v5];
      v9 = v8;
      if (v8)
      {
        self = [v8 uuid];
      }

      else
      {
        self = 0;
      }
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

void __133__HMAccessorySettingsDataSource_unsubscribeToMediaSystemSettingsWithHomeIdentifier_mediaSystemIdentifier_keyPaths_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Unsubscribe topics with result: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  v9 = [v8 delegateCaller];
  [v9 callCompletion:*(a1 + 40) error:v3];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToMediaSystemSettingsWithHomeIdentifier:(id)identifier mediaSystemIdentifier:(id)systemIdentifier keyPaths:(id)paths options:(unint64_t)options completionHandler:(id)handler
{
  v58 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  systemIdentifierCopy = systemIdentifier;
  pathsCopy = paths;
  handlerCopy = handler;
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = HMAccessorySettingsDataSourceSubscribeOptionsAsString(options);
    *buf = 138544386;
    v49 = v19;
    v50 = 2112;
    v51 = identifierCopy;
    v52 = 2112;
    v53 = systemIdentifierCopy;
    v54 = 2112;
    v55 = pathsCopy;
    v56 = 2112;
    v57 = v20;
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Subscribing to media system settings with home identifier: %@ accessory identifier: %@ key paths: %@ options: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = [(HMAccessorySettingsDataSource *)selfCopy homeUUIDForIdentifier:identifierCopy];
  if (v21)
  {
    v22 = [(HMAccessorySettingsDataSource *)selfCopy mediaSystemUUIDForIdentifier:systemIdentifierCopy homeIdentifier:identifierCopy];
    if (v22)
    {
      v23 = v22;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __139__HMAccessorySettingsDataSource_subscribeToMediaSystemSettingsWithHomeIdentifier_mediaSystemIdentifier_keyPaths_options_completionHandler___block_invoke;
      v45[3] = &unk_1E754A350;
      v46 = v21;
      v24 = v23;
      v47 = v24;
      v26 = [pathsCopy na_map:v45];
      if (selfCopy)
      {
        Property = objc_getProperty(selfCopy, v25, 40, 1);
      }

      else
      {
        Property = 0;
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __139__HMAccessorySettingsDataSource_subscribeToMediaSystemSettingsWithHomeIdentifier_mediaSystemIdentifier_keyPaths_options_completionHandler___block_invoke_2;
      v42[3] = &unk_1E754A418;
      v42[4] = selfCopy;
      v28 = v24;
      v43 = v28;
      v44 = handlerCopy;
      [Property registerConsumer:selfCopy topicFilters:v26 completion:v42];

      context2 = v46;
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v38;
        v50 = 2112;
        v51 = systemIdentifierCopy;
        _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to subscribe to media system settings due to unknown accessory identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      context = [(HMAccessorySettingsDataSource *)v36 context];
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:context2];

      v28 = 0;
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v33;
      v50 = 2112;
      v51 = identifierCopy;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to subscribe to media system settings due to unknown home identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    context2 = [(HMAccessorySettingsDataSource *)v31 context];
    delegateCaller2 = [context2 delegateCaller];
    [delegateCaller2 callCompletion:handlerCopy error:v28];
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __139__HMAccessorySettingsDataSource_subscribeToMediaSystemSettingsWithHomeIdentifier_mediaSystemIdentifier_keyPaths_options_completionHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v11;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Subscribe changed topics with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v12;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Subscribe changed topics, received cached events %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if ([v5 count])
    {
      v14 = a1[4];
      if (v14)
      {
        Property = objc_getProperty(v14, v13, 56, 1);
      }

      else
      {
        Property = 0;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __139__HMAccessorySettingsDataSource_subscribeToMediaSystemSettingsWithHomeIdentifier_mediaSystemIdentifier_keyPaths_options_completionHandler___block_invoke_54;
      block[3] = &unk_1E754E5E8;
      v16 = a1[5];
      v17 = a1[4];
      v27 = v16;
      v28 = v17;
      v29 = v5;
      dispatch_async(Property, block);
    }
  }

  v18 = [a1[4] context];
  v19 = [v18 delegateCaller];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __139__HMAccessorySettingsDataSource_subscribeToMediaSystemSettingsWithHomeIdentifier_mediaSystemIdentifier_keyPaths_options_completionHandler___block_invoke_59;
  v23[3] = &unk_1E754E458;
  v20 = a1[6];
  v24 = v6;
  v25 = v20;
  v21 = v6;
  [v19 invokeBlock:v23];

  v22 = *MEMORY[0x1E69E9840];
}

void __139__HMAccessorySettingsDataSource_subscribeToMediaSystemSettingsWithHomeIdentifier_mediaSystemIdentifier_keyPaths_options_completionHandler___block_invoke_54(uint64_t a1)
{
  v2 = [*(a1 + 32) UUIDString];
  v3 = [@"Home.mediaSystemSettings.cachedEvent." stringByAppendingString:v2];

  v4 = [*(a1 + 40) dataSource];
  [v4 startBatchNotificationsForDataSource:*(a1 + 40) reason:v3];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __139__HMAccessorySettingsDataSource_subscribeToMediaSystemSettingsWithHomeIdentifier_mediaSystemIdentifier_keyPaths_options_completionHandler___block_invoke_2_58;
  v16[3] = &unk_1E754A3F0;
  v5 = *(a1 + 48);
  v16[4] = *(a1 + 40);
  [v5 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v16];
  v7 = *(a1 + 40);
  if (v7)
  {
    Property = objc_getProperty(v7, v6, 56, 1);
    v9 = *(a1 + 40);
  }

  else
  {
    v9 = 0;
    Property = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __139__HMAccessorySettingsDataSource_subscribeToMediaSystemSettingsWithHomeIdentifier_mediaSystemIdentifier_keyPaths_options_completionHandler___block_invoke_3;
  v12[3] = &unk_1E754E5E8;
  v13 = v4;
  v14 = v9;
  v15 = v3;
  v10 = v3;
  v11 = v4;
  dispatch_async(Property, v12);
}

- (id)localizedTitleForKeyPath:(id)path
{
  if (self)
  {
    selfCopy = self;
    uppercaseString = [path uppercaseString];
    v5 = [uppercaseString mutableCopy];

    [v5 replaceOccurrencesOfString:@"." withString:@"_" options:1 range:{0, objc_msgSend(v5, "length")}];
    [v5 appendString:@"_LOCALIZATION_KEY"];
    v6 = [v5 copy];

    self = objc_getProperty(selfCopy, v7, 32, 1);
  }

  else
  {
    v6 = 0;
  }

  v8 = [(HMAccessorySettingsDataSource *)self getLocalizedString:v6];

  return v8;
}

- (void)resetSubscriptions
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Unsubscribe from all subscriptions", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v7, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__HMAccessorySettingsDataSource_resetSubscriptions__block_invoke;
  v10[3] = &unk_1E754E148;
  v10[4] = selfCopy;
  [Property unregisterConsumer:selfCopy completion:v10];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeToAccessorySettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths completionHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  pathsCopy = paths;
  handlerCopy = handler;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544130;
    v39 = v17;
    v40 = 2112;
    v41 = identifierCopy;
    v42 = 2112;
    v43 = accessoryIdentifierCopy;
    v44 = 2112;
    v45 = pathsCopy;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing to accessory settings from cache with home identifier: %@ accessory identifier: %@ key paths: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [(HMAccessorySettingsDataSource *)selfCopy homeUUIDForIdentifier:identifierCopy];
  if (v18)
  {
    v19 = [(HMAccessorySettingsDataSource *)selfCopy accessoryUUIDForIdentifier:accessoryIdentifierCopy homeIdentifier:identifierCopy];
    if (v19)
    {
      v20 = v19;
      context2 = [(HMAccessorySettingsDataSource *)selfCopy topicsForHomeUUID:v18 accessoryUUID:v19 keyPaths:pathsCopy];
      if (selfCopy)
      {
        Property = objc_getProperty(selfCopy, v21, 40, 1);
      }

      else
      {
        Property = 0;
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __129__HMAccessorySettingsDataSource_unsubscribeToAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke;
      v36[3] = &unk_1E754D870;
      v36[4] = selfCopy;
      v37 = handlerCopy;
      [Property unregisterConsumer:selfCopy topicFilters:context2 completion:v36];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v32;
        v40 = 2112;
        v41 = accessoryIdentifierCopy;
        _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch accessory settings from cache due to unknown accessory identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      context = [(HMAccessorySettingsDataSource *)v30 context];
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:context2];

      v20 = 0;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v27;
      v40 = 2112;
      v41 = identifierCopy;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch accessory settings from cache due to unknown home identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    context2 = [(HMAccessorySettingsDataSource *)v25 context];
    delegateCaller2 = [context2 delegateCaller];
    [delegateCaller2 callCompletion:handlerCopy error:v20];
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (id)accessoryUUIDForIdentifier:(void *)identifier homeIdentifier:
{
  v5 = a2;
  if (self)
  {
    v6 = [(HMAccessorySettingsDataSource *)self dataSourceHomeWithHomeIdentifier:identifier];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 accessoryWithUniqueIdentifier:v5];
      v9 = v8;
      if (v8)
      {
        self = [v8 uuid];
      }

      else
      {
        self = 0;
      }
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (id)topicsForHomeUUID:(void *)d accessoryUUID:(void *)iD keyPaths:
{
  v7 = a2;
  dCopy = d;
  if (self)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__HMAccessorySettingsDataSource_topicsForHomeUUID_accessoryUUID_keyPaths___block_invoke;
    v11[3] = &unk_1E754A350;
    v12 = v7;
    v13 = dCopy;
    v9 = [iD na_map:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __129__HMAccessorySettingsDataSource_unsubscribeToAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Unsubscribe topics with result: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  v9 = [v8 delegateCaller];
  [v9 callCompletion:*(a1 + 40) error:v3];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToAccessorySettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths options:(unint64_t)options completionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  pathsCopy = paths;
  handlerCopy = handler;
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(pathsCopy, "count")}];
    v20 = HMAccessorySettingsDataSourceSubscribeOptionsAsString(options);
    *buf = 138544386;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2112;
    v57 = accessoryIdentifierCopy;
    *v58 = 2112;
    *&v58[2] = v19;
    *&v58[10] = 2112;
    *&v58[12] = v20;
    _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Subscribing to accessory settings from cache with home identifier: %@ accessory identifier: %@ # key paths: %@ options: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v15);
  v21 = [(HMAccessorySettingsDataSource *)selfCopy homeUUIDForIdentifier:identifierCopy];
  if (v21)
  {
    v22 = [(HMAccessorySettingsDataSource *)selfCopy accessoryUUIDForIdentifier:accessoryIdentifierCopy homeIdentifier:identifierCopy];
    if (v22)
    {
      v23 = v22;
      v54 = accessoryIdentifierCopy;
      v24 = v21;
      v25 = v23;
      v53 = pathsCopy;
      v26 = pathsCopy;
      v27 = handlerCopy;
      v28 = v27;
      if (selfCopy)
      {
        v52 = v27;
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v33 = HMAccessorySettingsDataSourceSubscribeOptionsAsString(options);
          *buf = 138544386;
          *&buf[4] = v32;
          *&buf[12] = 2112;
          *&buf[14] = v24;
          *&buf[22] = 2112;
          v57 = v25;
          *v58 = 2112;
          *&v58[2] = v26;
          *&v58[10] = 2112;
          *&v58[12] = v33;
          _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_INFO, "%{public}@Subscribing to accessory settings with home uuid: %@ accessory uuid: %@ key paths: %@ options: %@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v29);
        v34 = [(HMAccessorySettingsDataSource *)v30 topicsForHomeUUID:v24 accessoryUUID:v25 keyPaths:v26];
        Property = objc_getProperty(v30, v35, 40, 1);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __131__HMAccessorySettingsDataSource_subscribeToAccessorySettingsOnDaemonWithHomeUUID_accessoryUUID_keyPaths_options_completionHandler___block_invoke;
        v57 = &unk_1E754A418;
        *v58 = v30;
        *&v58[8] = v25;
        v28 = v52;
        *&v58[16] = v52;
        [Property registerConsumer:v30 topicFilters:v34 completion:buf];
      }

      pathsCopy = v53;
      accessoryIdentifierCopy = v54;
      v37 = handlerCopy;
    }

    else
    {
      v44 = objc_autoreleasePoolPush();
      v45 = selfCopy;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v47;
        *&buf[12] = 2112;
        *&buf[14] = accessoryIdentifierCopy;
        _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch accessory settings from cache due to unknown accessory identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v44);
      v48 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      context = [(HMAccessorySettingsDataSource *)v45 context];
      delegateCaller = [context delegateCaller];
      v37 = handlerCopy;
      [delegateCaller callCompletion:handlerCopy error:v48];

      v25 = 0;
    }
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = selfCopy;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v41;
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch accessory settings from cache due to unknown home identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v25 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    context2 = [(HMAccessorySettingsDataSource *)v39 context];
    delegateCaller2 = [context2 delegateCaller];
    v37 = handlerCopy;
    [delegateCaller2 callCompletion:handlerCopy error:v25];
  }

  v51 = *MEMORY[0x1E69E9840];
}

void __131__HMAccessorySettingsDataSource_subscribeToAccessorySettingsOnDaemonWithHomeUUID_accessoryUUID_keyPaths_options_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v11;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Subscribe changed topics with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v12;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Subscribe changed topics, received cached events %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if ([v5 count])
    {
      v14 = a1[4];
      if (v14)
      {
        Property = objc_getProperty(v14, v13, 56, 1);
      }

      else
      {
        Property = 0;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __131__HMAccessorySettingsDataSource_subscribeToAccessorySettingsOnDaemonWithHomeUUID_accessoryUUID_keyPaths_options_completionHandler___block_invoke_37;
      block[3] = &unk_1E754E5E8;
      v16 = a1[5];
      v17 = a1[4];
      v27 = v16;
      v28 = v17;
      v29 = v5;
      dispatch_async(Property, block);
    }
  }

  v18 = [a1[4] context];
  v19 = [v18 delegateCaller];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __131__HMAccessorySettingsDataSource_subscribeToAccessorySettingsOnDaemonWithHomeUUID_accessoryUUID_keyPaths_options_completionHandler___block_invoke_42;
  v23[3] = &unk_1E754E458;
  v20 = a1[6];
  v24 = v6;
  v25 = v20;
  v21 = v6;
  [v19 invokeBlock:v23];

  v22 = *MEMORY[0x1E69E9840];
}

void __131__HMAccessorySettingsDataSource_subscribeToAccessorySettingsOnDaemonWithHomeUUID_accessoryUUID_keyPaths_options_completionHandler___block_invoke_37(uint64_t a1)
{
  v2 = [*(a1 + 32) UUIDString];
  v3 = [@"Home.accessorySettings.cachedEvent." stringByAppendingString:v2];

  v4 = [*(a1 + 40) dataSource];
  [v4 startBatchNotificationsForDataSource:*(a1 + 40) reason:v3];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __131__HMAccessorySettingsDataSource_subscribeToAccessorySettingsOnDaemonWithHomeUUID_accessoryUUID_keyPaths_options_completionHandler___block_invoke_2;
  v16[3] = &unk_1E754A3F0;
  v5 = *(a1 + 48);
  v16[4] = *(a1 + 40);
  [v5 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v16];
  v7 = *(a1 + 40);
  if (v7)
  {
    Property = objc_getProperty(v7, v6, 56, 1);
    v9 = *(a1 + 40);
  }

  else
  {
    v9 = 0;
    Property = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __131__HMAccessorySettingsDataSource_subscribeToAccessorySettingsOnDaemonWithHomeUUID_accessoryUUID_keyPaths_options_completionHandler___block_invoke_3;
  v12[3] = &unk_1E754E5E8;
  v13 = v4;
  v14 = v9;
  v15 = v3;
  v10 = v3;
  v11 = v4;
  dispatch_async(Property, v12);
}

- (void)fetchCachedAccessorySettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths completionHandler:(id)handler
{
  v57 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  pathsCopy = paths;
  handlerCopy = handler;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544130;
    v50 = v17;
    v51 = 2112;
    v52 = identifierCopy;
    v53 = 2112;
    v54 = accessoryIdentifierCopy;
    v55 = 2112;
    v56 = pathsCopy;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Fetching only cached accessory settings with home identifier: %@ accessory identifier: %@ key paths: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [(HMAccessorySettingsDataSource *)selfCopy homeUUIDForIdentifier:identifierCopy];
  if (v18)
  {
    v19 = [(HMAccessorySettingsDataSource *)selfCopy accessoryUUIDForIdentifier:accessoryIdentifierCopy homeIdentifier:identifierCopy];
    if (v19)
    {
      objc_initWeak(buf, selfCopy);
      if (selfCopy)
      {
        Property = objc_getProperty(selfCopy, v20, 56, 1);
      }

      else
      {
        Property = 0;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __127__HMAccessorySettingsDataSource_fetchCachedAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke_2;
      block[3] = &unk_1E754A3C8;
      v22 = Property;
      objc_copyWeak(&v44, buf);
      v38 = v18;
      v23 = v19;
      v39 = v23;
      v40 = pathsCopy;
      v41 = identifierCopy;
      v42 = accessoryIdentifierCopy;
      v43 = handlerCopy;
      dispatch_async(v22, block);

      objc_destroyWeak(&v44);
      objc_destroyWeak(buf);
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v50 = v33;
        v51 = 2112;
        v52 = accessoryIdentifierCopy;
        _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch cached accessory settings due to unknown accessory identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      context = [(HMAccessorySettingsDataSource *)v31 context];
      delegateCaller = [context delegateCaller];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __127__HMAccessorySettingsDataSource_fetchCachedAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke_30;
      v45[3] = &unk_1E754E430;
      v46 = handlerCopy;
      [delegateCaller invokeBlock:v45];

      v23 = 0;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v27;
      v51 = 2112;
      v52 = identifierCopy;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch cached accessory settings due to unknown home identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    context2 = [(HMAccessorySettingsDataSource *)v25 context];
    delegateCaller2 = [context2 delegateCaller];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __127__HMAccessorySettingsDataSource_fetchCachedAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke;
    v47[3] = &unk_1E754E430;
    v48 = handlerCopy;
    [delegateCaller2 invokeBlock:v47];

    v23 = v48;
  }

  v36 = *MEMORY[0x1E69E9840];
}

void __127__HMAccessorySettingsDataSource_fetchCachedAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  (*(v1 + 16))(v1, v2, MEMORY[0x1E695E0F0]);
}

void __127__HMAccessorySettingsDataSource_fetchCachedAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke_30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  (*(v1 + 16))(v1, v2, MEMORY[0x1E695E0F0]);
}

void __127__HMAccessorySettingsDataSource_fetchCachedAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v74 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = objc_getProperty(WeakRetained, v3, 56, 1);
  }

  dispatch_assert_queue_V2(WeakRetained);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 32);
  v8 = v5;
  v9 = v6;
  if (v4)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v4;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138544130;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      v66 = v8;
      *v67 = 2112;
      *&v67[2] = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Reading accessory settings from cache for home uuid: %@ accessory uuid: %@ key paths: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [(HMAccessorySettingsDataSource *)v11 topicsForHomeUUID:v7 accessoryUUID:v8 keyPaths:v9];
    v16 = [objc_getProperty(v11 v15];
    if ([v16 count])
    {
      v17 = [MEMORY[0x1E695DF70] array];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __98__HMAccessorySettingsDataSource_readAccessorySettingsFromCacheForHomeUUID_accessoryUUID_keyPaths___block_invoke;
      v66 = &unk_1E754A3F0;
      *v67 = v17;
      v18 = v17;
      [v16 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:buf];
      v19 = [v18 copy];
    }

    else
    {
      v20 = v1;
      v21 = objc_autoreleasePoolPush();
      v22 = v11;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v24 = v52 = v21;
        *buf = 138543874;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        *&buf[22] = 2112;
        v66 = v8;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Found no events in cache for home uuid: %@ accessory uuid: %@", buf, 0x20u);

        v21 = v52;
      }

      objc_autoreleasePoolPop(v21);
      v19 = MEMORY[0x1E695E0F0];
      v1 = v20;
    }
  }

  else
  {
    v19 = 0;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = v4;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v52 = v26;
    v29 = *(v1 + 56);
    v30 = *(v1 + 64);
    v31 = *(v1 + 48);
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(v1 + 48), "count")}];
    *buf = 138544898;
    *&buf[4] = v28;
    *&buf[12] = 2112;
    *&buf[14] = v29;
    *&buf[22] = 2112;
    v66 = v30;
    v26 = v52;
    *v67 = 2112;
    *&v67[2] = v31;
    v68 = 2112;
    v69 = v32;
    v70 = 2112;
    v71 = v33;
    v72 = 2112;
    v73 = v19;
    _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Returning cached accessory settings from event store with home identifier: %@ accessory identifier: %@ expected key paths: %@ found (%@/%@) settings: %@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v25);
  v34 = [MEMORY[0x1E695DFA8] setWithArray:*(v1 + 48)];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v35 = v19;
  v36 = [v35 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v61;
    do
    {
      v39 = 0;
      do
      {
        if (*v61 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v60 + 1) + 8 * v39) keyPath];
        [v34 removeObject:v40];

        ++v39;
      }

      while (v37 != v39);
      v37 = [v35 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v37);
  }

  if ([v34 count])
  {
    v41 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    v42 = [MEMORY[0x1E695DF90] dictionary];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __127__HMAccessorySettingsDataSource_fetchCachedAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke_34;
    v57[3] = &unk_1E754A3A0;
    v58 = v42;
    v59 = v41;
    v43 = v41;
    v44 = v42;
    [v34 na_each:v57];
    v45 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52 userInfo:v44];
  }

  else
  {
    v45 = 0;
  }

  v46 = [v26 context];
  v47 = [v46 delegateCaller];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __127__HMAccessorySettingsDataSource_fetchCachedAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke_2_36;
  v53[3] = &unk_1E754E0F8;
  v48 = *(v1 + 72);
  v55 = v35;
  v56 = v48;
  v54 = v45;
  v49 = v35;
  v50 = v45;
  [v47 invokeBlock:v53];

  v51 = *MEMORY[0x1E69E9840];
}

void __98__HMAccessorySettingsDataSource_readAccessorySettingsFromCacheForHomeUUID_accessoryUUID_keyPaths___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v4 = [HMImmutableSettingChangeEvent decodeSettingFromEvent:a3 error:&v7];
  v5 = v7;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (void)fetchAccessorySettingsWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPaths:(id)paths completionHandler:(id)handler
{
  v52 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  pathsCopy = paths;
  handlerCopy = handler;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138544130;
    v45 = v16;
    v46 = 2112;
    v47 = identifierCopy;
    v48 = 2112;
    v49 = accessoryIdentifierCopy;
    v50 = 2112;
    v51 = pathsCopy;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Fetching accessory settings with home identifier: %@ accessory identifier: %@ key paths: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [(HMAccessorySettingsDataSource *)selfCopy dataSourceHomeWithHomeIdentifier:identifierCopy];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 accessoryWithUniqueIdentifier:accessoryIdentifierCopy];
    if (v19)
    {
      uuid = [v18 uuid];
      uuid2 = [v19 uuid];
      v22 = uuid;
      if (selfCopy)
      {
        os_unfair_lock_lock_with_options();
        messenger = selfCopy->_messenger;
        if (!messenger)
        {
          messengerFactory = [(HMAccessorySettingsDataSource *)selfCopy messengerFactory];
          v25 = [messengerFactory createAccessorySettingsMessengerWithHomeUUID:v22];
          v26 = selfCopy->_messenger;
          selfCopy->_messenger = v25;

          messenger = selfCopy->_messenger;
        }

        context2 = messenger;
        os_unfair_lock_unlock(&selfCopy->_lock);
      }

      else
      {
        context2 = 0;
      }

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __121__HMAccessorySettingsDataSource_fetchAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke;
      v40[3] = &unk_1E754A378;
      v40[4] = selfCopy;
      v41 = v22;
      v42 = uuid2;
      v43 = handlerCopy;
      delegateCaller = uuid2;
      context = v22;
      [(HMAccessorySettingsMessenger *)context2 sendFetchAccessorySettingsRequestWithAccessoryUUID:delegateCaller keyPaths:pathsCopy completionHandler:v40];
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = selfCopy;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v37;
        v46 = 2112;
        v47 = accessoryIdentifierCopy;
        _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch accessory settings due to unknown accessory identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      context = [(HMAccessorySettingsDataSource *)v35 context];
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:context2 obj:MEMORY[0x1E695E0F0]];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v33;
      v46 = 2112;
      v47 = identifierCopy;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch accessory settings due to unknown home identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    context2 = [(HMAccessorySettingsDataSource *)v31 context];
    context = [(HMAccessorySettingsMessenger *)context2 delegateCaller];
    [context callCompletion:handlerCopy error:v19 obj:MEMORY[0x1E695E0F0]];
  }

  v38 = *MEMORY[0x1E69E9840];
}

void __121__HMAccessorySettingsDataSource_fetchAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (v8)
  {
    Property = objc_getProperty(v8, v6, 56, 1);
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
    Property = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __121__HMAccessorySettingsDataSource_fetchAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke_2;
  v13[3] = &unk_1E754D8C0;
  v14 = v5;
  v15 = v10;
  v16 = v7;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v11 = v7;
  v12 = v5;
  dispatch_async(Property, v13);
}

void __121__HMAccessorySettingsDataSource_fetchAccessorySettingsWithHomeIdentifier_accessoryIdentifier_keyPaths_completionHandler___block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    *buf = 138543874;
    v39 = v7;
    v40 = 2112;
    v41 = v8;
    v42 = 2112;
    v43 = v9;
    v10 = "%{public}@Fetch accessory settings completed with settings: %@ error: %@";
    v11 = v6;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v14 = *(a1 + 48);
    *buf = 138543618;
    v39 = v7;
    v40 = 2112;
    v41 = v14;
    v10 = "%{public}@Fetch accessory settings completed with settings: %@";
    v11 = v6;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
  }

  _os_log_impl(&dword_19BB39000, v11, v12, v10, buf, v13);

LABEL_7:
  objc_autoreleasePoolPop(v3);
  if ([*(a1 + 48) count])
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = *(a1 + 48);
    v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          v21 = [v20 keyPath];
          v22 = HMImmutableSettingChangeEventTopicFromComponentsHH2(*(a1 + 56), *(a1 + 64), v21);
          v23 = [HMImmutableSettingChangeEvent alloc];
          v24 = [*(a1 + 64) UUIDString];
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v25 = [(HMImmutableSettingChangeEvent *)v23 initWithSetting:v20 eventSource:v24 eventTimestamp:?];

          v26 = [objc_alloc(MEMORY[0x1E69A45E8]) initWithEvent:v25 topic:v22];
          [v15 addObject:v26];
        }

        v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }

    if (v15)
    {
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v27, 72, 1);
      }

      [Property processReceivedOutOfBandCachedEvents:v15];
    }
  }

  v29 = [*(a1 + 40) context];
  v30 = [v29 delegateCaller];
  [v30 callCompletion:*(a1 + 72) error:*(a1 + 32) obj:*(a1 + 48)];

  v31 = *MEMORY[0x1E69E9840];
}

- (HMAccessorySettingsDataSourceDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessorySettingsDataSource)initWithContext:(id)context localizationManager:(id)manager messengerFactory:(id)factory subscriptionProvider:(id)provider lastEventStoreReadHandle:(id)handle eventRouterXPCClient:(id)client metricsDispatcher:(id)dispatcher
{
  contextCopy = context;
  managerCopy = manager;
  factoryCopy = factory;
  providerCopy = provider;
  handleCopy = handle;
  obj = client;
  clientCopy = client;
  dispatcherCopy = dispatcher;
  if (!managerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!contextCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!factoryCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v20 = dispatcherCopy;
  if (!dispatcherCopy)
  {
LABEL_11:
    v26 = _HMFPreconditionFailure();
    return +[(HMAccessorySettingsDataSource *)v26];
  }

  v32.receiver = self;
  v32.super_class = HMAccessorySettingsDataSource;
  v21 = [(HMAccessorySettingsDataSource *)&v32 init];
  v22 = v21;
  if (v21)
  {
    v21->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v21->_context, context);
    queue = [contextCopy queue];
    workQueue = v22->_workQueue;
    v22->_workQueue = queue;

    objc_storeStrong(&v22->_localizationManager, manager);
    objc_storeWeak(&v22->_messengerFactory, factoryCopy);
    objc_storeStrong(&v22->_eventSubscriptionProvider, provider);
    objc_storeStrong(&v22->_lastEventStoreReadHandle, handle);
    objc_storeStrong(&v22->_eventRouterXPCClient, obj);
    objc_storeStrong(&v22->_metricsDispatcher, dispatcher);
  }

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t45 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t45, &__block_literal_global_32767);
  }

  v3 = logCategory__hmf_once_v46;

  return v3;
}

uint64_t __44__HMAccessorySettingsDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v46;
  logCategory__hmf_once_v46 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)defaultLanguageValue
{
  v2 = [[HMSettingLanguageValue alloc] initWithInputLanguageCode:@"en-US" outputVoiceLanguageCode:@"en-US" outputVoiceGenderCode:@"f" voiceName:0];
  v3 = [HMFObjectCacheHMSettingLanguageValue cachedInstanceForLanguageSettingValue:v2];

  return v3;
}

@end
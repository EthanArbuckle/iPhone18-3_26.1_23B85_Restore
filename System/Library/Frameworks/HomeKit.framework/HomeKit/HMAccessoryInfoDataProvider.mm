@interface HMAccessoryInfoDataProvider
+ (id)logCategory;
- (HMAccessoryInfoDataProvider)initWithEventStoreReadHandle:(id)handle subscriptionProvider:(id)provider;
- (HMAccessoryInfoDataProviderDataSource)dataSource;
- (HMAccessoryInfoDataProviderDelegate)delegate;
- (id)accessoryUUIDForIdentifier:(id)identifier homeIdentifier:(id)homeIdentifier;
- (id)dataSourceHomeWithHomeIdentifier:(id)identifier;
- (id)homeUUIDForIdentifier:(id)identifier;
- (void)configureWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier accessoryInfoOptions:(unint64_t)options dataProviderDelegate:(id)delegate completionHandler:(id)handler;
- (void)didReceiveEvent:(id)event topic:(id)topic logMessage:(id)message;
- (void)notifyDelegateDidReceiveAccountInfoUpdatesForAccessoryWithIdentifier:(id)identifier accountInfo:(id)info;
- (void)notifyDelegateDidReceiveAccountInfoUpdatesForAccessoryWithIdentifier:(id)identifier primaryUserInfo:(id)info;
- (void)notifyDelegateDidReceiveWifiNetworkInfoUpdatesForAccessoryWithIdentifier:(id)identifier wifiNetworkInfo:(id)info;
- (void)notifyOfCachedEvents:(id)events;
- (void)notifyOfEventStoreLastEventForTopic:(id)topic;
- (void)notifyOfEventStoreLastEventsForTopics:(id)topics;
- (void)subscribeToAccessoryInfoWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier accessoryInfoOptions:(unint64_t)options completionHandler:(id)handler;
- (void)unsubscribeToAccessoryInfoWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier accessoryInfoOptions:(unint64_t)options completionHandler:(id)handler;
@end

@implementation HMAccessoryInfoDataProvider

- (HMAccessoryInfoDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMAccessoryInfoDataProviderDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)dataSourceHomeWithHomeIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dataSource = [(HMAccessoryInfoDataProvider *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource accessoryInfoDataProvider:self homeWithHomeIdentifier:identifierCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source home UUID due to no data source", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)notifyDelegateDidReceiveAccountInfoUpdatesForAccessoryWithIdentifier:(id)identifier primaryUserInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  infoCopy = info;
  delegate = [(HMAccessoryInfoDataProvider *)self delegate];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138544130;
    v15 = v12;
    v16 = 2112;
    v17 = identifierCopy;
    v18 = 2112;
    v19 = infoCopy;
    v20 = 2112;
    v21 = delegate;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did receive primaryUserInfo updates for accessory with identifier: %@ primaryUser: %@ delegate: %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  if (objc_opt_respondsToSelector())
  {
    [delegate accessoryInfoDataProvider:selfCopy didReceiveUpdatesForAccessoryWithIdentifier:identifierCopy primaryUserInfo:infoCopy];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateDidReceiveAccountInfoUpdatesForAccessoryWithIdentifier:(id)identifier accountInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  infoCopy = info;
  delegate = [(HMAccessoryInfoDataProvider *)self delegate];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138544130;
    v15 = v12;
    v16 = 2112;
    v17 = identifierCopy;
    v18 = 2112;
    v19 = infoCopy;
    v20 = 2112;
    v21 = delegate;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did receive account info updates for accessory with identifier: %@ accountInfo: %@ delegate: %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  if (objc_opt_respondsToSelector())
  {
    [delegate accessoryInfoDataProvider:selfCopy didReceiveUpdatesForAccessoryWithIdentifier:identifierCopy accountInfo:infoCopy];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateDidReceiveWifiNetworkInfoUpdatesForAccessoryWithIdentifier:(id)identifier wifiNetworkInfo:(id)info
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  infoCopy = info;
  delegate = [(HMAccessoryInfoDataProvider *)self delegate];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    sSID = [infoCopy SSID];
    v15 = 138544386;
    v16 = v12;
    v17 = 2112;
    v18 = identifierCopy;
    v19 = 2112;
    v20 = infoCopy;
    v21 = 2112;
    v22 = sSID;
    v23 = 2112;
    v24 = delegate;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Notifying client of did receive wifi network info updates for accessory with identifier: %@ wifi: %@ WiFi SSID: %@ delegate: %@", &v15, 0x34u);
  }

  objc_autoreleasePoolPop(v9);
  if (objc_opt_respondsToSelector())
  {
    [delegate accessoryInfoDataProvider:selfCopy didReceiveUpdatesForAccessoryWithIdentifier:identifierCopy wifiNetworkInfo:infoCopy];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveEvent:(id)event topic:(id)topic logMessage:(id)message
{
  v88 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  topicCopy = topic;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138544130;
    v81 = v14;
    v82 = 2112;
    v83 = eventCopy;
    v84 = 2112;
    v85 = topicCopy;
    v86 = 2112;
    v87 = messageCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Received event: %@, topic: %@ %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [HMEventTopicHelper decodeTopic:topicCopy];
  asAccessoryTopic = [v15 asAccessoryTopic];

  if (asAccessoryTopic)
  {
    dataSource = [(HMAccessoryInfoDataProvider *)selfCopy dataSource];
    if ([asAccessoryTopic accessoryEventTopicSuffixID] == 504)
    {
      v18 = [HMAccessoryInfoWifiInfo alloc];
      encodedData = [(HMAccessoryInfoAccount *)eventCopy encodedData];
      v20 = [(HMAccessoryInfoWifiInfo *)v18 initWithProtoData:encodedData];

      if (v20)
      {
        v72 = eventCopy;
        hmfWifiNetworkInfo = [(HMAccessoryInfoWifiInfo *)v20 hmfWifiNetworkInfo];
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v25 = v69 = dataSource;
          [(HMAccessoryInfoDataProvider *)v23 delegate];
          v27 = v26 = messageCopy;
          *buf = 138544130;
          v81 = v25;
          v82 = 2112;
          v83 = hmfWifiNetworkInfo;
          v84 = 2112;
          v85 = 0;
          v86 = 2112;
          v87 = v27;
          _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Modified setting:%@, error:%@, delegate:%@", buf, 0x2Au);

          messageCopy = v26;
          dataSource = v69;
        }

        objc_autoreleasePoolPop(v22);
        if (hmfWifiNetworkInfo)
        {
          v68 = topicCopy;
          v70 = messageCopy;
          homeUUID = [asAccessoryTopic homeUUID];
          accessoryUUID = [asAccessoryTopic accessoryUUID];
          v30 = dataSource;
          v31 = accessoryUUID;
          v78 = 0;
          v79 = 0;
          v32 = v30;
          v33 = [v30 accessoryInfoDataProvider:v23 transformHomeUUID:homeUUID accessoryUUID:accessoryUUID toClientHomeIdentifier:&v79 clientAccessoryIdentifier:&v78];
          v34 = v79;
          v35 = v78;

          if (v33)
          {
            [(HMAccessoryInfoDataProvider *)v23 notifyDelegateDidReceiveWifiNetworkInfoUpdatesForAccessoryWithIdentifier:v35 wifiNetworkInfo:hmfWifiNetworkInfo];
          }

          dataSource = v32;
          topicCopy = v68;
          messageCopy = v70;
        }

        else
        {
          v34 = 0;
          v35 = 0;
        }

        eventCopy = v72;
        goto LABEL_41;
      }

      v43 = objc_autoreleasePoolPush();
      v62 = selfCopy;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v63 = HMFGetLogIdentifier();
        *buf = 138543362;
        v81 = v63;
        _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_ERROR, "%{public}@Received event cannot be decoded to wifi network info object", buf, 0xCu);
      }

      goto LABEL_40;
    }

    if ([asAccessoryTopic accessoryEventTopicSuffixID] == 510)
    {
      v71 = messageCopy;
      v40 = [HMAccessoryInfoAccount alloc];
      v73 = eventCopy;
      encodedData2 = [(HMAccessoryInfoAccount *)eventCopy encodedData];
      v42 = [(HMAccessoryInfoAccount *)v40 initWithProtoData:encodedData2];

      v43 = objc_autoreleasePoolPush();
      v44 = selfCopy;
      v45 = HMFGetOSLogHandle();
      v46 = v45;
      if (v42)
      {
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543618;
          v81 = v47;
          v82 = 2112;
          v83 = v42;
          _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_INFO, "%{public}@Received event for account info: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
        homeUUID2 = [asAccessoryTopic homeUUID];
        accessoryUUID2 = [asAccessoryTopic accessoryUUID];
        v76 = 0;
        v77 = 0;
        v50 = dataSource;
        v51 = [dataSource accessoryInfoDataProvider:v44 transformHomeUUID:homeUUID2 accessoryUUID:accessoryUUID2 toClientHomeIdentifier:&v77 clientAccessoryIdentifier:&v76];
        v52 = v77;
        v53 = v76;

        if (v51)
        {
          [(HMAccessoryInfoDataProvider *)v44 notifyDelegateDidReceiveAccountInfoUpdatesForAccessoryWithIdentifier:v53 accountInfo:v42];
        }

LABEL_27:

        messageCopy = v71;
        eventCopy = v73;
        dataSource = v50;
LABEL_41:

        goto LABEL_42;
      }

      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      v65 = HMFGetLogIdentifier();
      *buf = 138543362;
      v81 = v65;
      v66 = "%{public}@Received event cannot be decoded to accountInfo object";
    }

    else
    {
      if ([asAccessoryTopic accessoryEventTopicSuffixID] != 503)
      {
        v43 = objc_autoreleasePoolPush();
        selfCopy = selfCopy;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v64 = HMFGetLogIdentifier();
          *buf = 138543618;
          v81 = v64;
          v82 = 2112;
          v83 = topicCopy;
          _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_ERROR, "%{public}@Received event with unknown topic: %@", buf, 0x16u);
        }

        goto LABEL_40;
      }

      v71 = messageCopy;
      v54 = [HMAccessoryInfoPrimaryUser alloc];
      v73 = eventCopy;
      encodedData3 = [(HMAccessoryInfoAccount *)eventCopy encodedData];
      v42 = [(HMAccessoryInfoPrimaryUser *)v54 initWithProtoData:encodedData3];

      v43 = objc_autoreleasePoolPush();
      v56 = selfCopy;
      v57 = HMFGetOSLogHandle();
      v46 = v57;
      if (v42)
      {
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = HMFGetLogIdentifier();
          *buf = 138543618;
          v81 = v58;
          v82 = 2112;
          v83 = v42;
          _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_INFO, "%{public}@Received event for primaryUserInfo: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
        homeUUID3 = [asAccessoryTopic homeUUID];
        accessoryUUID3 = [asAccessoryTopic accessoryUUID];
        v74 = 0;
        v75 = 0;
        v50 = dataSource;
        v61 = [dataSource accessoryInfoDataProvider:v56 transformHomeUUID:homeUUID3 accessoryUUID:accessoryUUID3 toClientHomeIdentifier:&v75 clientAccessoryIdentifier:&v74];
        v52 = v75;
        v53 = v74;

        if (v61)
        {
          [(HMAccessoryInfoDataProvider *)v56 notifyDelegateDidReceiveAccountInfoUpdatesForAccessoryWithIdentifier:v53 primaryUserInfo:v42];
        }

        goto LABEL_27;
      }

      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
LABEL_39:
        messageCopy = v71;
        eventCopy = v73;
LABEL_40:

        objc_autoreleasePoolPop(v43);
        goto LABEL_41;
      }

      v65 = HMFGetLogIdentifier();
      *buf = 138543362;
      v81 = v65;
      v66 = "%{public}@Received event cannot be decoded to primaryUserInfo object";
    }

    _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_ERROR, v66, buf, 0xCu);

    goto LABEL_39;
  }

  v36 = objc_autoreleasePoolPush();
  v37 = selfCopy;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543618;
    v81 = v39;
    v82 = 2112;
    v83 = topicCopy;
    _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse topic: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
LABEL_42:

  v67 = *MEMORY[0x1E69E9840];
}

- (void)configureWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier accessoryInfoOptions:(unint64_t)options dataProviderDelegate:(id)delegate completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  delegateCopy = delegate;
  handlerCopy = handler;
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = HMAccessoryInfoOptionsAsString(options);
    v22 = 138544130;
    v23 = v19;
    v24 = 2112;
    v25 = identifierCopy;
    v26 = 2112;
    v27 = accessoryIdentifierCopy;
    v28 = 2112;
    v29 = v20;
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Configuring accessoryInfoDataProvider with home identifier: %@ accessory identifier: %@ options: %@", &v22, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  [(HMAccessoryInfoDataProvider *)selfCopy setDelegate:delegateCopy];
  [(HMAccessoryInfoDataProvider *)selfCopy subscribeToAccessoryInfoWithHomeIdentifier:identifierCopy accessoryIdentifier:accessoryIdentifierCopy accessoryInfoOptions:options completionHandler:handlerCopy];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeToAccessoryInfoWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier accessoryInfoOptions:(unint64_t)options completionHandler:(id)handler
{
  optionsCopy = options;
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  handlerCopy = handler;
  v13 = [(HMAccessoryInfoDataProvider *)self homeUUIDForIdentifier:identifierCopy];
  if (v13)
  {
    v14 = [(HMAccessoryInfoDataProvider *)self accessoryUUIDForIdentifier:accessoryIdentifierCopy homeIdentifier:identifierCopy];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v19 = v34 = accessoryIdentifierCopy;
        v20 = HMAccessoryInfoOptionsAsString(optionsCopy);
        *buf = 138544130;
        v38 = v19;
        v39 = 2112;
        v40 = v13;
        v41 = 2112;
        v42 = v14;
        v43 = 2112;
        v44 = v20;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing to accessory info with home uuid: %@ accessory uuid: %@ options: %@", buf, 0x2Au);

        accessoryIdentifierCopy = v34;
      }

      objc_autoreleasePoolPop(v15);
      v21 = HMAccessoryInfoEventTopicsFromOption(optionsCopy, v13, v14);
      if ([v21 hmf_isEmpty])
      {
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v38 = v25;
          _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Topics array is empty", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        v26 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        handlerCopy[2](handlerCopy, v26);
      }

      else
      {
        eventSubscriptionProvider = [(HMAccessoryInfoDataProvider *)selfCopy eventSubscriptionProvider];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __135__HMAccessoryInfoDataProvider_unsubscribeToAccessoryInfoWithHomeIdentifier_accessoryIdentifier_accessoryInfoOptions_completionHandler___block_invoke;
        v35[3] = &unk_1E754D870;
        v35[4] = selfCopy;
        v36 = handlerCopy;
        [eventSubscriptionProvider unregisterConsumer:selfCopy topicFilters:v21 completion:v35];
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v31;
        v39 = 2112;
        v40 = accessoryIdentifierCopy;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Failed to unsubscribe to accessory info due to unknown accessory identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      handlerCopy[2](handlerCopy, v21);
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v30;
      v39 = 2112;
      v40 = identifierCopy;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Failed to unsubscribe to accessory info due to unknown home identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    handlerCopy[2](handlerCopy, v14);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __135__HMAccessoryInfoDataProvider_unsubscribeToAccessoryInfoWithHomeIdentifier_accessoryIdentifier_accessoryInfoOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Unsubscribe topics with result: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)notifyOfEventStoreLastEventForTopic:(id)topic
{
  topicCopy = topic;
  eventStoreReadHandle = [(HMAccessoryInfoDataProvider *)self eventStoreReadHandle];
  v5 = [eventStoreReadHandle lastEventForTopic:topicCopy];

  if (v5)
  {
    [(HMAccessoryInfoDataProvider *)self didReceiveEvent:v5 topic:topicCopy logMessage:@"last event store"];
  }
}

- (void)notifyOfEventStoreLastEventsForTopics:(id)topics
{
  topicsCopy = topics;
  eventStoreReadHandle = [(HMAccessoryInfoDataProvider *)self eventStoreReadHandle];
  if (eventStoreReadHandle)
  {
    v6 = eventStoreReadHandle;
    v7 = [topicsCopy count];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __69__HMAccessoryInfoDataProvider_notifyOfEventStoreLastEventsForTopics___block_invoke;
      v8[3] = &unk_1E7548FB0;
      v8[4] = self;
      [topicsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
    }
  }
}

- (void)notifyOfCachedEvents:(id)events
{
  if (events)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __52__HMAccessoryInfoDataProvider_notifyOfCachedEvents___block_invoke;
    v3[3] = &unk_1E754A3F0;
    v3[4] = self;
    [events hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v3];
  }
}

- (void)subscribeToAccessoryInfoWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier accessoryInfoOptions:(unint64_t)options completionHandler:(id)handler
{
  optionsCopy = options;
  v56 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  handlerCopy = handler;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = HMAccessoryInfoOptionsAsString(optionsCopy);
    *buf = 138544130;
    v49 = v16;
    v50 = 2112;
    v51 = identifierCopy;
    v52 = 2112;
    v53 = accessoryIdentifierCopy;
    v54 = 2112;
    v55 = v17;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Subscribing to accessory info with home identifier: %@ accessory identifier: %@ options: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  v18 = [(HMAccessoryInfoDataProvider *)selfCopy homeUUIDForIdentifier:identifierCopy];
  if (v18)
  {
    v19 = [(HMAccessoryInfoDataProvider *)selfCopy accessoryUUIDForIdentifier:accessoryIdentifierCopy homeIdentifier:identifierCopy];
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    v23 = v22;
    if (v19)
    {
      v42 = accessoryIdentifierCopy;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = HMAccessoryInfoOptionsAsString(optionsCopy);
        *buf = 138544130;
        v49 = v24;
        v50 = 2112;
        v51 = v18;
        v52 = 2112;
        v53 = v19;
        v54 = 2112;
        v55 = v25;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Subscribing to accessory info with home uuid: %@ accessory uuid: %@ options: %@", buf, 0x2Au);

        accessoryIdentifierCopy = v42;
      }

      objc_autoreleasePoolPop(v20);
      v26 = HMAccessoryInfoEventTopicsFromOption(optionsCopy, v18, v19);
      if ([v26 hmf_isEmpty])
      {
        v27 = objc_autoreleasePoolPush();
        v28 = v21;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543362;
          v49 = v30;
          _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Topics array is empty", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
        v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        handlerCopy[2](handlerCopy, v31);
      }

      else
      {
        dataSource = [(HMAccessoryInfoDataProvider *)v21 dataSource];
        uUIDString = [v19 UUIDString];
        v31 = [@"Home.accessoryInfo.lastEvent." stringByAppendingString:uUIDString];

        [dataSource startBatchNotificationsForDataProvider:v21 reason:v31];
        [(HMAccessoryInfoDataProvider *)v21 notifyOfEventStoreLastEventsForTopics:v26];
        [dataSource endBatchNotificationsForDataProvider:v21 reason:v31];
        eventSubscriptionProvider = [(HMAccessoryInfoDataProvider *)v21 eventSubscriptionProvider];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __133__HMAccessoryInfoDataProvider_subscribeToAccessoryInfoWithHomeIdentifier_accessoryIdentifier_accessoryInfoOptions_completionHandler___block_invoke;
        v43[3] = &unk_1E7548F88;
        v43[4] = v21;
        v44 = v26;
        v45 = v19;
        v46 = dataSource;
        v47 = handlerCopy;
        v40 = dataSource;
        [eventSubscriptionProvider registerConsumer:v21 topicFilters:v44 completion:v43];

        accessoryIdentifierCopy = v42;
      }
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v36;
        v50 = 2112;
        v51 = accessoryIdentifierCopy;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to subscribe to accessory info due to unknown accessory identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v26 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      handlerCopy[2](handlerCopy, v26);
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v35;
      v50 = 2112;
      v51 = identifierCopy;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to subscribe to accessory info due to unknown home identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    handlerCopy[2](handlerCopy, v19);
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __133__HMAccessoryInfoDataProvider_subscribeToAccessoryInfoWithHomeIdentifier_accessoryIdentifier_accessoryInfoOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 40);
    v23 = 138543874;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v6;
    v13 = "%{public}@Error subscribing topics %@ with error: %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v17 = *(a1 + 40);
    v23 = 138543618;
    v24 = v11;
    v25 = 2112;
    v26 = v17;
    v13 = "%{public}@Successfully subscribed to topics: %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 22;
  }

  _os_log_impl(&dword_19BB39000, v14, v15, v13, &v23, v16);

LABEL_7:
  objc_autoreleasePoolPop(v7);
  if ([v5 count])
  {
    v20 = [*(a1 + 48) UUIDString];
    v21 = [@"Home.accessoryInfo.cached." stringByAppendingString:v20];

    [*(a1 + 56) startBatchNotificationsForDataProvider:*(a1 + 32) reason:v21];
    [*(a1 + 32) notifyOfCachedEvents:v5];
    [*(a1 + 56) endBatchNotificationsForDataProvider:*(a1 + 32) reason:v21];
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v6, v18, v19);

  v22 = *MEMORY[0x1E69E9840];
}

- (id)accessoryUUIDForIdentifier:(id)identifier homeIdentifier:(id)homeIdentifier
{
  identifierCopy = identifier;
  v7 = [(HMAccessoryInfoDataProvider *)self dataSourceHomeWithHomeIdentifier:homeIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 accessoryWithUniqueIdentifier:identifierCopy];
    v10 = v9;
    if (v9)
    {
      uuid = [v9 uuid];
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

- (id)homeUUIDForIdentifier:(id)identifier
{
  v3 = [(HMAccessoryInfoDataProvider *)self dataSourceHomeWithHomeIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    uuid = [v3 uuid];
  }

  else
  {
    uuid = 0;
  }

  return uuid;
}

- (HMAccessoryInfoDataProvider)initWithEventStoreReadHandle:(id)handle subscriptionProvider:(id)provider
{
  handleCopy = handle;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = HMAccessoryInfoDataProvider;
  v9 = [(HMAccessoryInfoDataProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStoreReadHandle, handle);
    objc_storeStrong(&v10->_eventSubscriptionProvider, provider);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26, &__block_literal_global_26384);
  }

  v3 = logCategory__hmf_once_v27;

  return v3;
}

uint64_t __42__HMAccessoryInfoDataProvider_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v27;
  logCategory__hmf_once_v27 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end
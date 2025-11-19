@interface HMAccessoryInfoDataProvider
+ (id)logCategory;
- (HMAccessoryInfoDataProvider)initWithEventStoreReadHandle:(id)a3 subscriptionProvider:(id)a4;
- (HMAccessoryInfoDataProviderDataSource)dataSource;
- (HMAccessoryInfoDataProviderDelegate)delegate;
- (id)accessoryUUIDForIdentifier:(id)a3 homeIdentifier:(id)a4;
- (id)dataSourceHomeWithHomeIdentifier:(id)a3;
- (id)homeUUIDForIdentifier:(id)a3;
- (void)configureWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 accessoryInfoOptions:(unint64_t)a5 dataProviderDelegate:(id)a6 completionHandler:(id)a7;
- (void)didReceiveEvent:(id)a3 topic:(id)a4 logMessage:(id)a5;
- (void)notifyDelegateDidReceiveAccountInfoUpdatesForAccessoryWithIdentifier:(id)a3 accountInfo:(id)a4;
- (void)notifyDelegateDidReceiveAccountInfoUpdatesForAccessoryWithIdentifier:(id)a3 primaryUserInfo:(id)a4;
- (void)notifyDelegateDidReceiveWifiNetworkInfoUpdatesForAccessoryWithIdentifier:(id)a3 wifiNetworkInfo:(id)a4;
- (void)notifyOfCachedEvents:(id)a3;
- (void)notifyOfEventStoreLastEventForTopic:(id)a3;
- (void)notifyOfEventStoreLastEventsForTopics:(id)a3;
- (void)subscribeToAccessoryInfoWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 accessoryInfoOptions:(unint64_t)a5 completionHandler:(id)a6;
- (void)unsubscribeToAccessoryInfoWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 accessoryInfoOptions:(unint64_t)a5 completionHandler:(id)a6;
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

- (id)dataSourceHomeWithHomeIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessoryInfoDataProvider *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 accessoryInfoDataProvider:self homeWithHomeIdentifier:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
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

- (void)notifyDelegateDidReceiveAccountInfoUpdatesForAccessoryWithIdentifier:(id)a3 primaryUserInfo:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessoryInfoDataProvider *)self delegate];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138544130;
    v15 = v12;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did receive primaryUserInfo updates for accessory with identifier: %@ primaryUser: %@ delegate: %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  if (objc_opt_respondsToSelector())
  {
    [v8 accessoryInfoDataProvider:v10 didReceiveUpdatesForAccessoryWithIdentifier:v6 primaryUserInfo:v7];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateDidReceiveAccountInfoUpdatesForAccessoryWithIdentifier:(id)a3 accountInfo:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessoryInfoDataProvider *)self delegate];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138544130;
    v15 = v12;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did receive account info updates for accessory with identifier: %@ accountInfo: %@ delegate: %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  if (objc_opt_respondsToSelector())
  {
    [v8 accessoryInfoDataProvider:v10 didReceiveUpdatesForAccessoryWithIdentifier:v6 accountInfo:v7];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateDidReceiveWifiNetworkInfoUpdatesForAccessoryWithIdentifier:(id)a3 wifiNetworkInfo:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessoryInfoDataProvider *)self delegate];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 SSID];
    v15 = 138544386;
    v16 = v12;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Notifying client of did receive wifi network info updates for accessory with identifier: %@ wifi: %@ WiFi SSID: %@ delegate: %@", &v15, 0x34u);
  }

  objc_autoreleasePoolPop(v9);
  if (objc_opt_respondsToSelector())
  {
    [v8 accessoryInfoDataProvider:v10 didReceiveUpdatesForAccessoryWithIdentifier:v6 wifiNetworkInfo:v7];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveEvent:(id)a3 topic:(id)a4 logMessage:(id)a5
{
  v88 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138544130;
    v81 = v14;
    v82 = 2112;
    v83 = v8;
    v84 = 2112;
    v85 = v9;
    v86 = 2112;
    v87 = v10;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Received event: %@, topic: %@ %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [HMEventTopicHelper decodeTopic:v9];
  v16 = [v15 asAccessoryTopic];

  if (v16)
  {
    v17 = [(HMAccessoryInfoDataProvider *)v12 dataSource];
    if ([v16 accessoryEventTopicSuffixID] == 504)
    {
      v18 = [HMAccessoryInfoWifiInfo alloc];
      v19 = [(HMAccessoryInfoAccount *)v8 encodedData];
      v20 = [(HMAccessoryInfoWifiInfo *)v18 initWithProtoData:v19];

      if (v20)
      {
        v72 = v8;
        v21 = [(HMAccessoryInfoWifiInfo *)v20 hmfWifiNetworkInfo];
        v22 = objc_autoreleasePoolPush();
        v23 = v12;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v25 = v69 = v17;
          [(HMAccessoryInfoDataProvider *)v23 delegate];
          v27 = v26 = v10;
          *buf = 138544130;
          v81 = v25;
          v82 = 2112;
          v83 = v21;
          v84 = 2112;
          v85 = 0;
          v86 = 2112;
          v87 = v27;
          _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Modified setting:%@, error:%@, delegate:%@", buf, 0x2Au);

          v10 = v26;
          v17 = v69;
        }

        objc_autoreleasePoolPop(v22);
        if (v21)
        {
          v68 = v9;
          v70 = v10;
          v28 = [v16 homeUUID];
          v29 = [v16 accessoryUUID];
          v30 = v17;
          v31 = v29;
          v78 = 0;
          v79 = 0;
          v32 = v30;
          v33 = [v30 accessoryInfoDataProvider:v23 transformHomeUUID:v28 accessoryUUID:v29 toClientHomeIdentifier:&v79 clientAccessoryIdentifier:&v78];
          v34 = v79;
          v35 = v78;

          if (v33)
          {
            [(HMAccessoryInfoDataProvider *)v23 notifyDelegateDidReceiveWifiNetworkInfoUpdatesForAccessoryWithIdentifier:v35 wifiNetworkInfo:v21];
          }

          v17 = v32;
          v9 = v68;
          v10 = v70;
        }

        else
        {
          v34 = 0;
          v35 = 0;
        }

        v8 = v72;
        goto LABEL_41;
      }

      v43 = objc_autoreleasePoolPush();
      v62 = v12;
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

    if ([v16 accessoryEventTopicSuffixID] == 510)
    {
      v71 = v10;
      v40 = [HMAccessoryInfoAccount alloc];
      v73 = v8;
      v41 = [(HMAccessoryInfoAccount *)v8 encodedData];
      v42 = [(HMAccessoryInfoAccount *)v40 initWithProtoData:v41];

      v43 = objc_autoreleasePoolPush();
      v44 = v12;
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
        v48 = [v16 homeUUID];
        v49 = [v16 accessoryUUID];
        v76 = 0;
        v77 = 0;
        v50 = v17;
        v51 = [v17 accessoryInfoDataProvider:v44 transformHomeUUID:v48 accessoryUUID:v49 toClientHomeIdentifier:&v77 clientAccessoryIdentifier:&v76];
        v52 = v77;
        v53 = v76;

        if (v51)
        {
          [(HMAccessoryInfoDataProvider *)v44 notifyDelegateDidReceiveAccountInfoUpdatesForAccessoryWithIdentifier:v53 accountInfo:v42];
        }

LABEL_27:

        v10 = v71;
        v8 = v73;
        v17 = v50;
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
      if ([v16 accessoryEventTopicSuffixID] != 503)
      {
        v43 = objc_autoreleasePoolPush();
        v12 = v12;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v64 = HMFGetLogIdentifier();
          *buf = 138543618;
          v81 = v64;
          v82 = 2112;
          v83 = v9;
          _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_ERROR, "%{public}@Received event with unknown topic: %@", buf, 0x16u);
        }

        goto LABEL_40;
      }

      v71 = v10;
      v54 = [HMAccessoryInfoPrimaryUser alloc];
      v73 = v8;
      v55 = [(HMAccessoryInfoAccount *)v8 encodedData];
      v42 = [(HMAccessoryInfoPrimaryUser *)v54 initWithProtoData:v55];

      v43 = objc_autoreleasePoolPush();
      v56 = v12;
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
        v59 = [v16 homeUUID];
        v60 = [v16 accessoryUUID];
        v74 = 0;
        v75 = 0;
        v50 = v17;
        v61 = [v17 accessoryInfoDataProvider:v56 transformHomeUUID:v59 accessoryUUID:v60 toClientHomeIdentifier:&v75 clientAccessoryIdentifier:&v74];
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
        v10 = v71;
        v8 = v73;
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
  v37 = v12;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543618;
    v81 = v39;
    v82 = 2112;
    v83 = v9;
    _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse topic: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
LABEL_42:

  v67 = *MEMORY[0x1E69E9840];
}

- (void)configureWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 accessoryInfoOptions:(unint64_t)a5 dataProviderDelegate:(id)a6 completionHandler:(id)a7
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = HMAccessoryInfoOptionsAsString(a5);
    v22 = 138544130;
    v23 = v19;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v20;
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Configuring accessoryInfoDataProvider with home identifier: %@ accessory identifier: %@ options: %@", &v22, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  [(HMAccessoryInfoDataProvider *)v17 setDelegate:v14];
  [(HMAccessoryInfoDataProvider *)v17 subscribeToAccessoryInfoWithHomeIdentifier:v12 accessoryIdentifier:v13 accessoryInfoOptions:a5 completionHandler:v15];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeToAccessoryInfoWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 accessoryInfoOptions:(unint64_t)a5 completionHandler:(id)a6
{
  v7 = a5;
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(HMAccessoryInfoDataProvider *)self homeUUIDForIdentifier:v10];
  if (v13)
  {
    v14 = [(HMAccessoryInfoDataProvider *)self accessoryUUIDForIdentifier:v11 homeIdentifier:v10];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v19 = v34 = v11;
        v20 = HMAccessoryInfoOptionsAsString(v7);
        *buf = 138544130;
        v38 = v19;
        v39 = 2112;
        v40 = v13;
        v41 = 2112;
        v42 = v14;
        v43 = 2112;
        v44 = v20;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing to accessory info with home uuid: %@ accessory uuid: %@ options: %@", buf, 0x2Au);

        v11 = v34;
      }

      objc_autoreleasePoolPop(v15);
      v21 = HMAccessoryInfoEventTopicsFromOption(v7, v13, v14);
      if ([v21 hmf_isEmpty])
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v16;
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
        v12[2](v12, v26);
      }

      else
      {
        v32 = [(HMAccessoryInfoDataProvider *)v16 eventSubscriptionProvider];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __135__HMAccessoryInfoDataProvider_unsubscribeToAccessoryInfoWithHomeIdentifier_accessoryIdentifier_accessoryInfoOptions_completionHandler___block_invoke;
        v35[3] = &unk_1E754D870;
        v35[4] = v16;
        v36 = v12;
        [v32 unregisterConsumer:v16 topicFilters:v21 completion:v35];
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
        v40 = v11;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Failed to unsubscribe to accessory info due to unknown accessory identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      v12[2](v12, v21);
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v30;
      v39 = 2112;
      v40 = v10;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Failed to unsubscribe to accessory info due to unknown home identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    v12[2](v12, v14);
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

- (void)notifyOfEventStoreLastEventForTopic:(id)a3
{
  v6 = a3;
  v4 = [(HMAccessoryInfoDataProvider *)self eventStoreReadHandle];
  v5 = [v4 lastEventForTopic:v6];

  if (v5)
  {
    [(HMAccessoryInfoDataProvider *)self didReceiveEvent:v5 topic:v6 logMessage:@"last event store"];
  }
}

- (void)notifyOfEventStoreLastEventsForTopics:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessoryInfoDataProvider *)self eventStoreReadHandle];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 count];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __69__HMAccessoryInfoDataProvider_notifyOfEventStoreLastEventsForTopics___block_invoke;
      v8[3] = &unk_1E7548FB0;
      v8[4] = self;
      [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
    }
  }
}

- (void)notifyOfCachedEvents:(id)a3
{
  if (a3)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __52__HMAccessoryInfoDataProvider_notifyOfCachedEvents___block_invoke;
    v3[3] = &unk_1E754A3F0;
    v3[4] = self;
    [a3 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v3];
  }
}

- (void)subscribeToAccessoryInfoWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 accessoryInfoOptions:(unint64_t)a5 completionHandler:(id)a6
{
  v7 = a5;
  v56 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = HMAccessoryInfoOptionsAsString(v7);
    *buf = 138544130;
    v49 = v16;
    v50 = 2112;
    v51 = v10;
    v52 = 2112;
    v53 = v11;
    v54 = 2112;
    v55 = v17;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Subscribing to accessory info with home identifier: %@ accessory identifier: %@ options: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  v18 = [(HMAccessoryInfoDataProvider *)v14 homeUUIDForIdentifier:v10];
  if (v18)
  {
    v19 = [(HMAccessoryInfoDataProvider *)v14 accessoryUUIDForIdentifier:v11 homeIdentifier:v10];
    v20 = objc_autoreleasePoolPush();
    v21 = v14;
    v22 = HMFGetOSLogHandle();
    v23 = v22;
    if (v19)
    {
      v42 = v11;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = HMAccessoryInfoOptionsAsString(v7);
        *buf = 138544130;
        v49 = v24;
        v50 = 2112;
        v51 = v18;
        v52 = 2112;
        v53 = v19;
        v54 = 2112;
        v55 = v25;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Subscribing to accessory info with home uuid: %@ accessory uuid: %@ options: %@", buf, 0x2Au);

        v11 = v42;
      }

      objc_autoreleasePoolPop(v20);
      v26 = HMAccessoryInfoEventTopicsFromOption(v7, v18, v19);
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
        v12[2](v12, v31);
      }

      else
      {
        v37 = [(HMAccessoryInfoDataProvider *)v21 dataSource];
        v38 = [v19 UUIDString];
        v31 = [@"Home.accessoryInfo.lastEvent." stringByAppendingString:v38];

        [v37 startBatchNotificationsForDataProvider:v21 reason:v31];
        [(HMAccessoryInfoDataProvider *)v21 notifyOfEventStoreLastEventsForTopics:v26];
        [v37 endBatchNotificationsForDataProvider:v21 reason:v31];
        v39 = [(HMAccessoryInfoDataProvider *)v21 eventSubscriptionProvider];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __133__HMAccessoryInfoDataProvider_subscribeToAccessoryInfoWithHomeIdentifier_accessoryIdentifier_accessoryInfoOptions_completionHandler___block_invoke;
        v43[3] = &unk_1E7548F88;
        v43[4] = v21;
        v44 = v26;
        v45 = v19;
        v46 = v37;
        v47 = v12;
        v40 = v37;
        [v39 registerConsumer:v21 topicFilters:v44 completion:v43];

        v11 = v42;
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
        v51 = v11;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to subscribe to accessory info due to unknown accessory identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v26 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      v12[2](v12, v26);
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = v14;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v35;
      v50 = 2112;
      v51 = v10;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to subscribe to accessory info due to unknown home identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    v12[2](v12, v19);
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

- (id)accessoryUUIDForIdentifier:(id)a3 homeIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(HMAccessoryInfoDataProvider *)self dataSourceHomeWithHomeIdentifier:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 accessoryWithUniqueIdentifier:v6];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 uuid];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)homeUUIDForIdentifier:(id)a3
{
  v3 = [(HMAccessoryInfoDataProvider *)self dataSourceHomeWithHomeIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uuid];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HMAccessoryInfoDataProvider)initWithEventStoreReadHandle:(id)a3 subscriptionProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMAccessoryInfoDataProvider;
  v9 = [(HMAccessoryInfoDataProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStoreReadHandle, a3);
    objc_storeStrong(&v10->_eventSubscriptionProvider, a4);
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
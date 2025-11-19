@interface HMAccessorySoftwareUpdateControllerV2
+ (id)accessoryUUIDsForAccessoryIdentifiers:(id)a3 home:(id)a4;
+ (id)logCategory;
+ (id)softwareUpdateFromSoftwareUpdateV2:(id)a3;
+ (id)topicFiltersForAccessoryIdentifiers:(id)a3 home:(id)a4;
- (HMAccessorySoftwareUpdateControllerV2)initWithContext:(id)a3 home:(id)a4 subscriptionProvider:(id)a5 documentationManager:(id)a6;
- (HMAccessorySoftwareUpdateControllerV2Delegate)delegate;
- (HMHome)home;
- (id)messageDestinationForAccessory:(id)a3;
- (id)softwareUpdateForAccessory:(id)a3 withDescriptor:(id)a4;
- (id)softwareUpdateProgressForAccessory:(id)a3 withProgress:(id)a4;
- (void)applySoftwareUpdate:(id)a3 accessory:(id)a4 completion:(id)a5;
- (void)didReceiveCachedEvent:(id)a3 topic:(id)a4 source:(id)a5;
- (void)didReceiveEvent:(id)a3 topic:(id)a4;
- (void)fetchDocumentationFromMetadata:(id)a3 completion:(id)a4;
- (void)handleDidReceiveDescriptorEvent:(id)a3 forAccessory:(id)a4;
- (void)handleDidReceiveEvent:(id)a3 topic:(id)a4;
- (void)handleDidReceiveProgressEvent:(id)a3 forAccessory:(id)a4;
- (void)scanForSoftwareUpdateOnAccessories:(id)a3 withOptions:(unint64_t)a4 completion:(id)a5;
- (void)subscribe:(id)a3 completion:(id)a4;
- (void)unsubscribe:(id)a3;
@end

@implementation HMAccessorySoftwareUpdateControllerV2

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMAccessorySoftwareUpdateControllerV2Delegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didReceiveCachedEvent:(id)a3 topic:(id)a4 source:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138544130;
    v17 = v14;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Did receive cached event: %@, topic: %@, source: %@", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  [(HMAccessorySoftwareUpdateControllerV2 *)v12 handleDidReceiveEvent:v8 topic:v9];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveEvent:(id)a3 topic:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Did receive event: %@, topic: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMAccessorySoftwareUpdateControllerV2 *)v9 handleDidReceiveEvent:v6 topic:v7];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)messageDestinationForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySoftwareUpdateControllerV2 *)self home];
  v6 = [v5 accessoryWithUUID:v4];

  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  v8 = [v6 messageTargetUUID];
  v9 = [v7 initWithTarget:v8];

  return v9;
}

- (id)softwareUpdateForAccessory:(id)a3 withDescriptor:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating HMSoftwareUpdateV2 for accessory: %@, descriptor: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  v12 = [HMSoftwareUpdateV2 softwareUpdateFromDescriptor:v7];
  v13 = [(HMAccessorySoftwareUpdateControllerV2 *)v9 softwareUpdateByAccessory];
  [v13 setObject:v12 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&v9->_lock);
  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)softwareUpdateProgressForAccessory:(id)a3 withProgress:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v26 = 138543874;
    v27 = v11;
    v28 = 2112;
    v29 = v6;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating HMSoftwareUpdateV2 for accessory: %@, progress: %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  v12 = [(HMAccessorySoftwareUpdateControllerV2 *)v9 softwareUpdateByAccessory];
  v13 = [v12 objectForKeyedSubscript:v6];

  if (v13)
  {
    v14 = [HMSoftwareUpdateProgressV2 alloc];
    [v7 percentageComplete];
    v16 = v15;
    [v7 estimatedTimeRemaining];
    v18 = v17;
    LODWORD(v17) = v16;
    v19 = [(HMSoftwareUpdateProgressV2 *)v14 initWithPercentageComplete:v17 estimatedTimeRemaining:v18];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v9;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Attempted to update progress without existing software update for accessory: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  os_unfair_lock_unlock(&v9->_lock);
  v24 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)handleDidReceiveProgressEvent:(id)a3 forAccessory:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessorySoftwareUpdateControllerV2 *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v14;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling did receive progress event", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [HMSoftwareUpdateProgress progressFromEvent:v6];
    if (v15)
    {
      v16 = [(HMAccessorySoftwareUpdateControllerV2 *)v11 home];
      v17 = [v16 accessoryWithUUID:v7];
      v18 = [v17 uniqueIdentifier];

      if (v18)
      {
        v19 = [(HMAccessorySoftwareUpdateControllerV2 *)v11 softwareUpdateProgressForAccessory:v7 withProgress:v15];
        if (v19)
        {
          v20 = objc_autoreleasePoolPush();
          v21 = v11;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = HMFGetLogIdentifier();
            *buf = 138543874;
            v42 = v23;
            v43 = 2112;
            v44 = v18;
            v45 = 2112;
            v46 = v19;
            _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Telling delegate that accessory did receive software update progress. Accessory: %@, progress:\n%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v20);
          v24 = [(HMAccessorySoftwareUpdateControllerV2 *)v21 context];
          v25 = [v24 delegateCaller];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __84__HMAccessorySoftwareUpdateControllerV2_handleDidReceiveProgressEvent_forAccessory___block_invoke;
          v38[3] = &unk_1E754E5E8;
          v38[4] = v21;
          v39 = v18;
          v40 = v19;
          [v25 invokeBlock:v38];
        }
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = v11;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v36;
          v43 = 2112;
          v44 = v7;
          _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with uuid: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v11;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v32;
        v43 = 2112;
        v44 = v6;
        _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse progress from event: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
    }
  }

  else
  {
    if (v13)
    {
      v26 = HMFGetLogIdentifier();
      v27 = NSStringFromSelector(sel_softwareUpdateController_accessory_didUpdateProgress_);
      v28 = [(HMAccessorySoftwareUpdateControllerV2 *)v11 delegate];
      *buf = 138543874;
      v42 = v26;
      v43 = 2112;
      v44 = v27;
      v45 = 2112;
      v46 = v28;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Delegate does not respond to %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __84__HMAccessorySoftwareUpdateControllerV2_handleDidReceiveProgressEvent_forAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 softwareUpdateController:*(a1 + 32) accessory:*(a1 + 40) didUpdateProgress:*(a1 + 48)];
}

- (void)handleDidReceiveDescriptorEvent:(id)a3 forAccessory:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v11;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling did receive descriptor event", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMSoftwareUpdateDescriptor descriptorFromEvent:v6];
  if (v12)
  {
    v13 = [(HMAccessorySoftwareUpdateControllerV2 *)v9 home];
    v14 = [v13 accessoryWithUUID:v7];
    v15 = [v14 uniqueIdentifier];

    if (v15)
    {
      v16 = [(HMAccessorySoftwareUpdateControllerV2 *)v9 softwareUpdateForAccessory:v7 withDescriptor:v12];
      v17 = objc_autoreleasePoolPush();
      v18 = v9;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v20;
        v38 = 2112;
        v39 = v15;
        v40 = 2112;
        v41 = v16;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Telling delegate that accessory did receive software update. Accessory: %@, update:\n%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [(HMAccessorySoftwareUpdateControllerV2 *)v18 context];
      v22 = [v21 delegateCaller];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __86__HMAccessorySoftwareUpdateControllerV2_handleDidReceiveDescriptorEvent_forAccessory___block_invoke;
      v33[3] = &unk_1E754E5E8;
      v33[4] = v18;
      v34 = v15;
      v35 = v16;
      v23 = v16;
      [v22 invokeBlock:v33];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v9;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v31;
        v38 = 2112;
        v39 = v7;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with uuid: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v9;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v27;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse descriptor from event: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __86__HMAccessorySoftwareUpdateControllerV2_handleDidReceiveDescriptorEvent_forAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 softwareUpdateController:*(a1 + 32) accessory:*(a1 + 40) didReceiveUpdate:*(a1 + 48)];
}

- (void)handleDidReceiveEvent:(id)a3 topic:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v11;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling did receive event", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMEventTopicHelper decodeTopic:v7];
  v13 = [v12 asAccessoryTopic];

  if (v13)
  {
    if ([v13 accessoryEventTopicSuffixID] == 506)
    {
      v14 = [v13 accessoryUUID];
      [(HMAccessorySoftwareUpdateControllerV2 *)v9 handleDidReceiveDescriptorEvent:v6 forAccessory:v14];
LABEL_8:

      goto LABEL_9;
    }

    if ([v13 accessoryEventTopicSuffixID] == 507)
    {
      v14 = [v13 accessoryUUID];
      [(HMAccessorySoftwareUpdateControllerV2 *)v9 handleDidReceiveProgressEvent:v6 forAccessory:v14];
      goto LABEL_8;
    }
  }

LABEL_9:

  v15 = *MEMORY[0x1E69E9840];
}

void __101__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateRepeatedlyOnAccessory_andInstallUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v20 = 138544130;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v5;
      v14 = "%{public}@SRAISU: Failed to initiate scanning for updates repeatedly on accessory with identifier: %@ UUID: %@ error: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v20, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v20 = 138544130;
    v21 = v11;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = 0;
    v14 = "%{public}@SRAISU: Successfully started scanning for updates repeatedly on accessory with identifier: %@ UUID: %@ error: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribe:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v8;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from accessories with identifiers: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([v4 hmf_isEmpty])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v6;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from all topics", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMAccessorySoftwareUpdateControllerV2 *)v10 subscriptionProvider];
    [v13 unregisterConsumer:v10 completion:0];
  }

  else
  {
    v14 = objc_opt_class();
    v15 = [(HMAccessorySoftwareUpdateControllerV2 *)v6 home];
    v13 = [v14 topicFiltersForAccessoryIdentifiers:v4 home:v15];

    v16 = objc_autoreleasePoolPush();
    v17 = v6;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from topicFilters: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [(HMAccessorySoftwareUpdateControllerV2 *)v17 subscriptionProvider];
    [v20 unregisterConsumer:v17 topicFilters:v13 completion:0];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)fetchDocumentationFromMetadata:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMAccessorySoftwareUpdateControllerV2 *)self documentationManager];
  [v8 documentationForMetadata:v7 completion:v6];
}

- (void)applySoftwareUpdate:(id)a3 accessory:(id)a4 completion:(id)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v53 = v14;
    v54 = 2112;
    v55 = v8;
    v56 = 2112;
    v57 = v9;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Applying software update: %@ on accessory with identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [v8 version];

  if (v15)
  {
    v16 = [objc_opt_class() softwareUpdateFromSoftwareUpdateV2:v8];
    v17 = [(HMAccessorySoftwareUpdateControllerV2 *)v12 home];
    v18 = [v17 accessoryWithUniqueIdentifier:v9];
    v19 = [v18 uuid];

    if (v19)
    {
      v50 = @"update";
      v20 = encodeRootObject(v16);
      v51 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];

      v22 = MEMORY[0x1E69A2A10];
      v23 = [(HMAccessorySoftwareUpdateControllerV2 *)v12 messageDestinationForAccessory:v19];
      v24 = [v22 messageWithName:@"HMSU.su" destination:v23 payload:v21];

      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke_2;
      v43 = &unk_1E754DE00;
      v44 = v12;
      v45 = v10;
      [v24 setResponseHandler:&v40];
      v25 = [(HMAccessorySoftwareUpdateControllerV2 *)v12 context:v40];
      v26 = [v25 messageDispatcher];
      [v26 sendMessage:v24];
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v12;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v36;
        v54 = 2112;
        v55 = v9;
        _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory for uniqueIdentifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v37 = [(HMAccessorySoftwareUpdateControllerV2 *)v34 context];
      v38 = [v37 delegateCaller];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke_50;
      v46[3] = &unk_1E754E430;
      v47 = v10;
      [v38 invokeBlock:v46];

      v21 = v47;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v12;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v30;
      v54 = 2112;
      v55 = v8;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot apply software update with no version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [(HMAccessorySoftwareUpdateControllerV2 *)v28 context];
    v32 = [v31 delegateCaller];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke;
    v48[3] = &unk_1E754E430;
    v49 = v10;
    [v32 invokeBlock:v48];

    v16 = v49;
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  (*(v1 + 16))(v1, v2);
}

void __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke_50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  (*(v1 + 16))(v1, v2);
}

void __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = v5;
      v12 = "%{public}@Failed to start software update with error: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, buf, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v11;
    v12 = "%{public}@Successfully started software update";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 32) context];
  v17 = [v16 delegateCaller];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke_51;
  v21[3] = &unk_1E754E458;
  v18 = *(a1 + 40);
  v22 = v5;
  v23 = v18;
  v19 = v5;
  [v17 invokeBlock:v21];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)scanForSoftwareUpdateOnAccessories:(id)a3 withOptions:(unint64_t)a4 completion:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v32 = v13;
    v33 = 2112;
    v34 = v8;
    v35 = 2048;
    v36 = a4;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Scanning for software update on accessories: %@ with options: %lu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = objc_opt_class();
  v15 = [(HMAccessorySoftwareUpdateControllerV2 *)v11 home];
  v16 = [v14 accessoryUUIDsForAccessoryIdentifiers:v8 home:v15];
  v17 = [v16 na_map:&__block_literal_global_33];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_2;
  v30[3] = &unk_1E7547278;
  v30[4] = v11;
  v30[5] = a4;
  v18 = [v17 na_map:v30];
  v19 = MEMORY[0x1E69B3780];
  v20 = MEMORY[0x1E69B3790];
  v21 = [(HMAccessorySoftwareUpdateControllerV2 *)v11 context];
  v22 = [v21 queue];
  v23 = [v20 schedulerWithDispatchQueue:v22];
  v24 = [v19 combineAllFutures:v18 scheduler:v23];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_42;
  v28[3] = &unk_1E75472C0;
  v28[4] = v11;
  v29 = v9;
  v25 = v9;
  v26 = [v24 addCompletionBlock:v28];

  v27 = *MEMORY[0x1E69E9840];
}

id __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69A2A10];
  v20 = @"HMAccessorySoftwareUpdateControllerV2MessageKeyScanOptions";
  v4 = MEMORY[0x1E696AD98];
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v4 numberWithUnsignedInteger:v5];
  v21[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v9 = [v3 messageWithName:@"HMAccessorySoftwareUpdateControllerV2ScanMessage" destination:v6 payload:v8];

  v10 = objc_alloc_init(MEMORY[0x1E69B3780]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_3;
  v18[3] = &unk_1E754E570;
  v18[4] = *(a1 + 32);
  v11 = v10;
  v19 = v11;
  [v9 setResponseHandler:v18];
  v12 = [*(a1 + 32) context];
  v13 = [v12 messageDispatcher];
  [v13 sendMessage:v9];

  v14 = v19;
  v15 = v11;

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

void __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_42(uint64_t a1, void *a2)
{
  v3 = [a2 na_any:&__block_literal_global_46];
  v4 = [*(a1 + 32) context];
  v5 = [v4 delegateCaller];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_3_47;
  v7[3] = &unk_1E7548108;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v9 = v3;
  v8 = v6;
  [v5 invokeBlock:v7];
}

uint64_t __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_3_47(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    v7 = HMFBooleanToString();
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling completion with didFindUpdate: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v10;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Received response for HMAccessorySoftwareUpdateControllerV2ScanMessage", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Scan message failed with error: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) finishWithResult:MEMORY[0x1E695E110]];
  }

  else
  {
    v15 = [v6 hmf_numberForKey:@"HMAccessorySoftwareUpdateControllerV2MessageKeyScanDidFindUpdate"];
    v16 = v15;
    if (!v15)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v20;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Message did not contain required key in response: HMAccessorySoftwareUpdateControllerV2MessageKeyScanDidFindUpdate", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v16 = MEMORY[0x1E695E110];
    }

    [*(a1 + 40) finishWithResult:v16];
  }

  v21 = *MEMORY[0x1E69E9840];
}

id __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69A2A00];
  v3 = a2;
  v4 = [[v2 alloc] initWithTarget:v3];

  return v4;
}

- (void)subscribe:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Subscribing to accessories with identifiers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMAccessorySoftwareUpdateControllerV2 *)v9 home];
  if (v12)
  {
    v13 = [objc_opt_class() topicFiltersForAccessoryIdentifiers:v6 home:v12];
    v14 = objc_autoreleasePoolPush();
    v15 = v9;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v17;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Subscribing to topicFilters: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [(HMAccessorySoftwareUpdateControllerV2 *)v15 subscriptionProvider];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke;
    v24[3] = &unk_1E754A418;
    v24[4] = v15;
    v26 = v7;
    v25 = v12;
    [v18 registerConsumer:v15 topicFilters:v13 completion:v24];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v9;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v22;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot subscribe for updates on nil home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error: %@, ", v6];
  }

  else
  {
    v7 = &stru_1F0E92498;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v30 = v11;
    v31 = 2112;
    v32 = v7;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Subscribed with %@cachedEvents: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [a1[4] context];
  v13 = [v12 delegateCaller];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke_20;
  v26[3] = &unk_1E754E458;
  v28 = a1[6];
  v14 = v6;
  v27 = v14;
  [v13 invokeBlock:v26];

  if ([v5 count])
  {
    v15 = [a1[5] uuid];
    v16 = [v15 UUIDString];
    v17 = [@"Home.su." stringByAppendingString:v16];

    v18 = [a1[5] homeManager];
    [v18 notifyDelegateOfBatchNotificationsStartWithReason:v17];
    v19 = objc_autoreleasePoolPush();
    v20 = [v5 na_filter:&__block_literal_global_9380];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke_3;
    v25[3] = &unk_1E7547230;
    v25[4] = a1[4];
    [v20 na_each:v25];

    objc_autoreleasePoolPop(v19);
    v21 = objc_autoreleasePoolPush();
    v22 = [v5 na_filter:&__block_literal_global_29];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke_5;
    v24[3] = &unk_1E7547230;
    v24[4] = a1[4];
    [v22 na_each:v24];

    objc_autoreleasePoolPop(v21);
    [v18 notifyDelegateOfBatchNotificationsEndWithReason:v17];
  }

  v23 = *MEMORY[0x1E69E9840];
}

BOOL __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [HMEventTopicHelper decodeTopic:a2];
  v3 = [v2 asAccessoryTopic];

  v4 = [v3 accessoryEventTopicSuffixID] == 507;
  return v4;
}

BOOL __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [HMEventTopicHelper decodeTopic:a2];
  v3 = [v2 asAccessoryTopic];

  v4 = [v3 accessoryEventTopicSuffixID] == 506;
  return v4;
}

- (HMAccessorySoftwareUpdateControllerV2)initWithContext:(id)a3 home:(id)a4 subscriptionProvider:(id)a5 documentationManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = HMAccessorySoftwareUpdateControllerV2;
  v15 = [(HMAccessorySoftwareUpdateControllerV2 *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, a3);
    objc_storeStrong(&v16->_subscriptionProvider, a5);
    objc_storeWeak(&v16->_home, v12);
    objc_storeStrong(&v16->_documentationManager, a6);
    v17 = [MEMORY[0x1E695DF90] dictionary];
    softwareUpdateByAccessory = v16->_softwareUpdateByAccessory;
    v16->_softwareUpdateByAccessory = v17;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t40 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t40, &__block_literal_global_64);
  }

  v3 = logCategory__hmf_once_v41;

  return v3;
}

uint64_t __52__HMAccessorySoftwareUpdateControllerV2_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v41 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)softwareUpdateFromSoftwareUpdateV2:(id)a3
{
  v3 = a3;
  v4 = [HMSoftwareUpdate alloc];
  v5 = [v3 version];
  v6 = [v3 downloadSize];
  v7 = [v3 documentationMetadata];

  v8 = [(HMSoftwareUpdate *)v4 initWithVersion:v5 downloadSize:v6 state:2 documentationMetadata:v7];

  return v8;
}

+ (id)accessoryUUIDsForAccessoryIdentifiers:(id)a3 home:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 allObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__HMAccessorySoftwareUpdateControllerV2_accessoryUUIDsForAccessoryIdentifiers_home___block_invoke;
  v18[3] = &unk_1E7547310;
  v9 = v7;
  v19 = v9;
  v10 = [v8 na_map:v18];

  v11 = [v10 count];
  if (v11 != [v6 count])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v15;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert all identifiers to uuids. Identifiers: %@, uuids: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

id __84__HMAccessorySoftwareUpdateControllerV2_accessoryUUIDsForAccessoryIdentifiers_home___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) accessoryWithUniqueIdentifier:a2];
  v3 = [v2 uuid];

  return v3;
}

+ (id)topicFiltersForAccessoryIdentifiers:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = [a3 allObjects];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__HMAccessorySoftwareUpdateControllerV2_topicFiltersForAccessoryIdentifiers_home___block_invoke;
  v11[3] = &unk_1E75472E8;
  v12 = v6;
  v13 = a1;
  v8 = v6;
  v9 = [v7 na_flatMap:v11];

  return v9;
}

id __82__HMAccessorySoftwareUpdateControllerV2_topicFiltersForAccessoryIdentifiers_home___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) accessoryWithUniqueIdentifier:v3];
  v5 = [v4 uuid];

  if (v5)
  {
    v6 = [*(a1 + 32) uuid];
    v7 = [HMAccessoryEventTopic topicFromSuffixID:506 homeUUID:v6 accessoryUUID:v5];
    v8 = [*(a1 + 32) uuid];
    v9 = [HMAccessoryEventTopic topicFromSuffixID:507 homeUUID:v8 accessoryUUID:v5];
    v17[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory UUID for uniqueIdentifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

@end
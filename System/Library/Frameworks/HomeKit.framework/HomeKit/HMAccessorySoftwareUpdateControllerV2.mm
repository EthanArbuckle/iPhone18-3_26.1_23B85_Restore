@interface HMAccessorySoftwareUpdateControllerV2
+ (id)accessoryUUIDsForAccessoryIdentifiers:(id)identifiers home:(id)home;
+ (id)logCategory;
+ (id)softwareUpdateFromSoftwareUpdateV2:(id)v2;
+ (id)topicFiltersForAccessoryIdentifiers:(id)identifiers home:(id)home;
- (HMAccessorySoftwareUpdateControllerV2)initWithContext:(id)context home:(id)home subscriptionProvider:(id)provider documentationManager:(id)manager;
- (HMAccessorySoftwareUpdateControllerV2Delegate)delegate;
- (HMHome)home;
- (id)messageDestinationForAccessory:(id)accessory;
- (id)softwareUpdateForAccessory:(id)accessory withDescriptor:(id)descriptor;
- (id)softwareUpdateProgressForAccessory:(id)accessory withProgress:(id)progress;
- (void)applySoftwareUpdate:(id)update accessory:(id)accessory completion:(id)completion;
- (void)didReceiveCachedEvent:(id)event topic:(id)topic source:(id)source;
- (void)didReceiveEvent:(id)event topic:(id)topic;
- (void)fetchDocumentationFromMetadata:(id)metadata completion:(id)completion;
- (void)handleDidReceiveDescriptorEvent:(id)event forAccessory:(id)accessory;
- (void)handleDidReceiveEvent:(id)event topic:(id)topic;
- (void)handleDidReceiveProgressEvent:(id)event forAccessory:(id)accessory;
- (void)scanForSoftwareUpdateOnAccessories:(id)accessories withOptions:(unint64_t)options completion:(id)completion;
- (void)subscribe:(id)subscribe completion:(id)completion;
- (void)unsubscribe:(id)unsubscribe;
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

- (void)didReceiveCachedEvent:(id)event topic:(id)topic source:(id)source
{
  v24 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  topicCopy = topic;
  sourceCopy = source;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138544130;
    v17 = v14;
    v18 = 2112;
    v19 = eventCopy;
    v20 = 2112;
    v21 = topicCopy;
    v22 = 2112;
    v23 = sourceCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Did receive cached event: %@, topic: %@, source: %@", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy handleDidReceiveEvent:eventCopy topic:topicCopy];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveEvent:(id)event topic:(id)topic
{
  v19 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  topicCopy = topic;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = eventCopy;
    v17 = 2112;
    v18 = topicCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Did receive event: %@, topic: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy handleDidReceiveEvent:eventCopy topic:topicCopy];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)messageDestinationForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  home = [(HMAccessorySoftwareUpdateControllerV2 *)self home];
  v6 = [home accessoryWithUUID:accessoryCopy];

  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [v6 messageTargetUUID];
  v9 = [v7 initWithTarget:messageTargetUUID];

  return v9;
}

- (id)softwareUpdateForAccessory:(id)accessory withDescriptor:(id)descriptor
{
  v22 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  descriptorCopy = descriptor;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = accessoryCopy;
    v20 = 2112;
    v21 = descriptorCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating HMSoftwareUpdateV2 for accessory: %@, descriptor: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  v12 = [HMSoftwareUpdateV2 softwareUpdateFromDescriptor:descriptorCopy];
  softwareUpdateByAccessory = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy softwareUpdateByAccessory];
  [softwareUpdateByAccessory setObject:v12 forKeyedSubscript:accessoryCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)softwareUpdateProgressForAccessory:(id)accessory withProgress:(id)progress
{
  v32 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  progressCopy = progress;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v26 = 138543874;
    v27 = v11;
    v28 = 2112;
    v29 = accessoryCopy;
    v30 = 2112;
    v31 = progressCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating HMSoftwareUpdateV2 for accessory: %@, progress: %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  softwareUpdateByAccessory = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy softwareUpdateByAccessory];
  v13 = [softwareUpdateByAccessory objectForKeyedSubscript:accessoryCopy];

  if (v13)
  {
    v14 = [HMSoftwareUpdateProgressV2 alloc];
    [progressCopy percentageComplete];
    v16 = v15;
    [progressCopy estimatedTimeRemaining];
    v18 = v17;
    LODWORD(v17) = v16;
    v19 = [(HMSoftwareUpdateProgressV2 *)v14 initWithPercentageComplete:v17 estimatedTimeRemaining:v18];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = accessoryCopy;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Attempted to update progress without existing software update for accessory: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v24 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)handleDidReceiveProgressEvent:(id)event forAccessory:(id)accessory
{
  v47 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  accessoryCopy = accessory;
  delegate = [(HMAccessorySoftwareUpdateControllerV2 *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
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
    v15 = [HMSoftwareUpdateProgress progressFromEvent:eventCopy];
    if (v15)
    {
      home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
      v17 = [home accessoryWithUUID:accessoryCopy];
      uniqueIdentifier = [v17 uniqueIdentifier];

      if (uniqueIdentifier)
      {
        v19 = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy softwareUpdateProgressForAccessory:accessoryCopy withProgress:v15];
        if (v19)
        {
          v20 = objc_autoreleasePoolPush();
          v21 = selfCopy;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = HMFGetLogIdentifier();
            *buf = 138543874;
            v42 = v23;
            v43 = 2112;
            v44 = uniqueIdentifier;
            v45 = 2112;
            v46 = v19;
            _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Telling delegate that accessory did receive software update progress. Accessory: %@, progress:\n%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v20);
          context = [(HMAccessorySoftwareUpdateControllerV2 *)v21 context];
          delegateCaller = [context delegateCaller];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __84__HMAccessorySoftwareUpdateControllerV2_handleDidReceiveProgressEvent_forAccessory___block_invoke;
          v38[3] = &unk_1E754E5E8;
          v38[4] = v21;
          v39 = uniqueIdentifier;
          v40 = v19;
          [delegateCaller invokeBlock:v38];
        }
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = selfCopy;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v36;
          v43 = 2112;
          v44 = accessoryCopy;
          _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with uuid: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
      }
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
        v42 = v32;
        v43 = 2112;
        v44 = eventCopy;
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
      delegate2 = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy delegate];
      *buf = 138543874;
      v42 = v26;
      v43 = 2112;
      v44 = v27;
      v45 = 2112;
      v46 = delegate2;
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

- (void)handleDidReceiveDescriptorEvent:(id)event forAccessory:(id)accessory
{
  v42 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  accessoryCopy = accessory;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v11;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling did receive descriptor event", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMSoftwareUpdateDescriptor descriptorFromEvent:eventCopy];
  if (v12)
  {
    home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
    v14 = [home accessoryWithUUID:accessoryCopy];
    uniqueIdentifier = [v14 uniqueIdentifier];

    if (uniqueIdentifier)
    {
      v16 = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy softwareUpdateForAccessory:accessoryCopy withDescriptor:v12];
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v20;
        v38 = 2112;
        v39 = uniqueIdentifier;
        v40 = 2112;
        v41 = v16;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Telling delegate that accessory did receive software update. Accessory: %@, update:\n%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      context = [(HMAccessorySoftwareUpdateControllerV2 *)v18 context];
      delegateCaller = [context delegateCaller];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __86__HMAccessorySoftwareUpdateControllerV2_handleDidReceiveDescriptorEvent_forAccessory___block_invoke;
      v33[3] = &unk_1E754E5E8;
      v33[4] = v18;
      v34 = uniqueIdentifier;
      v35 = v16;
      v23 = v16;
      [delegateCaller invokeBlock:v33];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v31;
        v38 = 2112;
        v39 = accessoryCopy;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with uuid: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
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
      v37 = v27;
      v38 = 2112;
      v39 = eventCopy;
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

- (void)handleDidReceiveEvent:(id)event topic:(id)topic
{
  v18 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  topicCopy = topic;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v11;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling did receive event", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMEventTopicHelper decodeTopic:topicCopy];
  asAccessoryTopic = [v12 asAccessoryTopic];

  if (asAccessoryTopic)
  {
    if ([asAccessoryTopic accessoryEventTopicSuffixID] == 506)
    {
      accessoryUUID = [asAccessoryTopic accessoryUUID];
      [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy handleDidReceiveDescriptorEvent:eventCopy forAccessory:accessoryUUID];
LABEL_8:

      goto LABEL_9;
    }

    if ([asAccessoryTopic accessoryEventTopicSuffixID] == 507)
    {
      accessoryUUID = [asAccessoryTopic accessoryUUID];
      [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy handleDidReceiveProgressEvent:eventCopy forAccessory:accessoryUUID];
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

- (void)unsubscribe:(id)unsubscribe
{
  v26 = *MEMORY[0x1E69E9840];
  unsubscribeCopy = unsubscribe;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v8;
    v24 = 2112;
    v25 = unsubscribeCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from accessories with identifiers: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([unsubscribeCopy hmf_isEmpty])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from all topics", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    subscriptionProvider = [(HMAccessorySoftwareUpdateControllerV2 *)v10 subscriptionProvider];
    [subscriptionProvider unregisterConsumer:v10 completion:0];
  }

  else
  {
    v14 = objc_opt_class();
    home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
    subscriptionProvider = [v14 topicFiltersForAccessoryIdentifiers:unsubscribeCopy home:home];

    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = subscriptionProvider;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from topicFilters: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    subscriptionProvider2 = [(HMAccessorySoftwareUpdateControllerV2 *)v17 subscriptionProvider];
    [subscriptionProvider2 unregisterConsumer:v17 topicFilters:subscriptionProvider completion:0];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)fetchDocumentationFromMetadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  documentationManager = [(HMAccessorySoftwareUpdateControllerV2 *)self documentationManager];
  [documentationManager documentationForMetadata:metadataCopy completion:completionCopy];
}

- (void)applySoftwareUpdate:(id)update accessory:(id)accessory completion:(id)completion
{
  v58 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  accessoryCopy = accessory;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v53 = v14;
    v54 = 2112;
    v55 = updateCopy;
    v56 = 2112;
    v57 = accessoryCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Applying software update: %@ on accessory with identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  version = [updateCopy version];

  if (version)
  {
    v16 = [objc_opt_class() softwareUpdateFromSoftwareUpdateV2:updateCopy];
    home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
    v18 = [home accessoryWithUniqueIdentifier:accessoryCopy];
    uuid = [v18 uuid];

    if (uuid)
    {
      v50 = @"update";
      v20 = encodeRootObject(v16);
      v51 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];

      v22 = MEMORY[0x1E69A2A10];
      v23 = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy messageDestinationForAccessory:uuid];
      v24 = [v22 messageWithName:@"HMSU.su" destination:v23 payload:v21];

      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke_2;
      v43 = &unk_1E754DE00;
      v44 = selfCopy;
      v45 = completionCopy;
      [v24 setResponseHandler:&v40];
      v25 = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy context:v40];
      messageDispatcher = [v25 messageDispatcher];
      [messageDispatcher sendMessage:v24];
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v36;
        v54 = 2112;
        v55 = accessoryCopy;
        _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory for uniqueIdentifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      context = [(HMAccessorySoftwareUpdateControllerV2 *)v34 context];
      delegateCaller = [context delegateCaller];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke_50;
      v46[3] = &unk_1E754E430;
      v47 = completionCopy;
      [delegateCaller invokeBlock:v46];

      v21 = v47;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v30;
      v54 = 2112;
      v55 = updateCopy;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot apply software update with no version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    context2 = [(HMAccessorySoftwareUpdateControllerV2 *)v28 context];
    delegateCaller2 = [context2 delegateCaller];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __82__HMAccessorySoftwareUpdateControllerV2_applySoftwareUpdate_accessory_completion___block_invoke;
    v48[3] = &unk_1E754E430;
    v49 = completionCopy;
    [delegateCaller2 invokeBlock:v48];

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

- (void)scanForSoftwareUpdateOnAccessories:(id)accessories withOptions:(unint64_t)options completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  accessoriesCopy = accessories;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v32 = v13;
    v33 = 2112;
    v34 = accessoriesCopy;
    v35 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Scanning for software update on accessories: %@ with options: %lu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = objc_opt_class();
  home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
  v16 = [v14 accessoryUUIDsForAccessoryIdentifiers:accessoriesCopy home:home];
  v17 = [v16 na_map:&__block_literal_global_33];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_2;
  v30[3] = &unk_1E7547278;
  v30[4] = selfCopy;
  v30[5] = options;
  v18 = [v17 na_map:v30];
  v19 = MEMORY[0x1E69B3780];
  v20 = MEMORY[0x1E69B3790];
  context = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy context];
  queue = [context queue];
  v23 = [v20 schedulerWithDispatchQueue:queue];
  v24 = [v19 combineAllFutures:v18 scheduler:v23];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __99__HMAccessorySoftwareUpdateControllerV2_scanForSoftwareUpdateOnAccessories_withOptions_completion___block_invoke_42;
  v28[3] = &unk_1E75472C0;
  v28[4] = selfCopy;
  v29 = completionCopy;
  v25 = completionCopy;
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

- (void)subscribe:(id)subscribe completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  subscribeCopy = subscribe;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = subscribeCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Subscribing to accessories with identifiers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  home = [(HMAccessorySoftwareUpdateControllerV2 *)selfCopy home];
  if (home)
  {
    v13 = [objc_opt_class() topicFiltersForAccessoryIdentifiers:subscribeCopy home:home];
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
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
    subscriptionProvider = [(HMAccessorySoftwareUpdateControllerV2 *)v15 subscriptionProvider];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__HMAccessorySoftwareUpdateControllerV2_subscribe_completion___block_invoke;
    v24[3] = &unk_1E754A418;
    v24[4] = v15;
    v26 = completionCopy;
    v25 = home;
    [subscriptionProvider registerConsumer:v15 topicFilters:v13 completion:v24];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
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

- (HMAccessorySoftwareUpdateControllerV2)initWithContext:(id)context home:(id)home subscriptionProvider:(id)provider documentationManager:(id)manager
{
  contextCopy = context;
  homeCopy = home;
  providerCopy = provider;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = HMAccessorySoftwareUpdateControllerV2;
  v15 = [(HMAccessorySoftwareUpdateControllerV2 *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, context);
    objc_storeStrong(&v16->_subscriptionProvider, provider);
    objc_storeWeak(&v16->_home, homeCopy);
    objc_storeStrong(&v16->_documentationManager, manager);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    softwareUpdateByAccessory = v16->_softwareUpdateByAccessory;
    v16->_softwareUpdateByAccessory = dictionary;
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

+ (id)softwareUpdateFromSoftwareUpdateV2:(id)v2
{
  v2Copy = v2;
  v4 = [HMSoftwareUpdate alloc];
  version = [v2Copy version];
  downloadSize = [v2Copy downloadSize];
  documentationMetadata = [v2Copy documentationMetadata];

  v8 = [(HMSoftwareUpdate *)v4 initWithVersion:version downloadSize:downloadSize state:2 documentationMetadata:documentationMetadata];

  return v8;
}

+ (id)accessoryUUIDsForAccessoryIdentifiers:(id)identifiers home:(id)home
{
  v26 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  homeCopy = home;
  allObjects = [identifiersCopy allObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__HMAccessorySoftwareUpdateControllerV2_accessoryUUIDsForAccessoryIdentifiers_home___block_invoke;
  v18[3] = &unk_1E7547310;
  v9 = homeCopy;
  v19 = v9;
  v10 = [allObjects na_map:v18];

  v11 = [v10 count];
  if (v11 != [identifiersCopy count])
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v15;
      v22 = 2112;
      v23 = identifiersCopy;
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

+ (id)topicFiltersForAccessoryIdentifiers:(id)identifiers home:(id)home
{
  homeCopy = home;
  allObjects = [identifiers allObjects];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__HMAccessorySoftwareUpdateControllerV2_topicFiltersForAccessoryIdentifiers_home___block_invoke;
  v11[3] = &unk_1E75472E8;
  v12 = homeCopy;
  selfCopy = self;
  v8 = homeCopy;
  v9 = [allObjects na_flatMap:v11];

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
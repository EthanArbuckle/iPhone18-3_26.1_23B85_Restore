@interface HMService
+ (HMService)serviceWithSerializedDictionaryRepresentation:(id)a3 home:(id)a4;
+ (HMService)serviceWithServiceReference:(id)a3 home:(id)a4;
+ (id)__localizedDescriptionForServiceType:(id)a3;
+ (id)_mapToIsConfiguredValueFromServiceConfigurationState:(int64_t)a3;
+ (id)defaultCharacteristicByServiceDictionary;
+ (id)logCategory;
+ (id)shortDescription;
+ (id)unsupportedCharacteristicsForShortcutConditions;
+ (int64_t)_mapToServiceConfigurationStateFromIsConfiguredValue:(id)a3;
+ (void)initializeCharacteristicDictionaries;
- (BOOL)_hasCharacteristic:(id)a3;
- (BOOL)hasOperatingState;
- (BOOL)hasOperatingStateAbnormalReasons;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNameModifiable;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMAccessory)accessory;
- (HMApplicationData)applicationData;
- (HMBulletinBoardNotification)bulletinBoardNotificationInternal;
- (HMService)init;
- (HMService)initWithCoder:(id)a3;
- (HMService)initWithUUID:(id)a3 accessory:(id)a4 serviceType:(id)a5;
- (NSArray)attributeDescriptions;
- (NSArray)characteristics;
- (NSArray)linkedServices;
- (NSDictionary)serializedDictionaryRepresentation;
- (NSNumber)matterEndpointID;
- (NSNumber)mediaSourceIdentifier;
- (NSString)associatedServiceType;
- (NSString)configuredName;
- (NSString)defaultName;
- (NSString)localizedDescription;
- (NSString)name;
- (NSString)serviceSubtype;
- (NSString)serviceType;
- (NSString)shortDescription;
- (NSURL)homeObjectURLInternal;
- (NSUUID)uniqueIdentifier;
- (id)_findCharacteristic:(id)a3;
- (id)_findCharacteristicWithUniqueIdentifier:(id)a3;
- (id)assistantIdentifier;
- (id)characteristicsSupportedForShortcutConditions;
- (id)defaultCharacteristic;
- (id)logIdentifier;
- (int64_t)configurationState;
- (int64_t)lastKnownOperatingState;
- (unint64_t)hash;
- (unint64_t)lastKnownOperatingStateAbnormalReasons;
- (void)__configureWithContext:(id)a3 accessory:(id)a4;
- (void)_addCharacteristic:(id)a3;
- (void)_handleUpdateAssociatedServiceType:(id)a3;
- (void)_removeCharacteristic:(id)a3;
- (void)_unconfigure;
- (void)_updateAssociatedServiceType:(id)a3 completionHandler:(id)a4;
- (void)_updateConfigurationState:(int64_t)a3 completionHandler:(id)a4;
- (void)_updateName:(id)a3 completionHandler:(id)a4;
- (void)setAccessory:(id)a3;
- (void)setApplicationData:(id)a3;
- (void)setAssociatedServiceType:(id)a3;
- (void)setConfigurationState:(int64_t)a3;
- (void)setConfiguredName:(id)a3;
- (void)setDefaultName:(id)a3;
- (void)setMatterEndpointID:(id)a3;
- (void)setMediaSourceIdentifier:(id)a3;
- (void)setName:(id)a3;
- (void)setServiceSubtype:(id)a3;
- (void)setServiceType:(id)a3;
- (void)updateApplicationData:(id)a3 completionHandler:(id)a4;
- (void)updateAssociatedServiceType:(NSString *)serviceType completionHandler:(void *)completion;
- (void)updateConfigurationState:(int64_t)a3 completionHandler:(id)a4;
- (void)updateName:(NSString *)name completionHandler:(void *)completion;
@end

@implementation HMService

- (NSString)serviceType
{
  os_unfair_lock_lock_with_options();
  v3 = self->_serviceType;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)serializedDictionaryRepresentation
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [HMPBServiceReference serviceReferenceWithService:self];
  v7[0] = @"HMShortcutsSerializedDictionaryVersion";
  v7[1] = @"HMShortcutsSerializedDictionaryProtocol";
  v8[0] = @"1.0";
  v8[1] = @"ProtoBuf";
  v7[2] = @"HMServiceSerializedDataKey";
  v3 = [v2 data];
  v8[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (HMService)serviceWithServiceReference:(id)a3 home:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 hasUniqueIdentifier] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v19;
      v20 = "%{public}@ServiceReference uniqueIdentifier not set";
LABEL_10:
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, v20, &v27, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v16);
    v14 = 0;
    goto LABEL_18;
  }

  if (([v6 hasAccessoryReference] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v19;
      v20 = "%{public}@AccessoryReference not set in serviceReference";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v8 = [v6 accessoryReference];
  v9 = [HMAccessory accessoryWithAccessoryReference:v8 home:v7];

  if (v9)
  {
    v10 = MEMORY[0x1E696AFB0];
    v11 = [v6 uniqueIdentifier];
    v12 = [v10 hmf_UUIDWithBytesAsData:v11];

    v13 = [v9 _findServiceWithUniqueIdentifier:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = a1;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v24;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Can't find service %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_18:
  v25 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (HMService)serviceWithSerializedDictionaryRepresentation:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = [a3 hmf_dataForKey:@"HMServiceSerializedDataKey"];
  v8 = [HMPBServiceReference serviceReferenceWithData:v7];
  v9 = [a1 serviceWithServiceReference:v8 home:v6];

  return v9;
}

- (NSString)localizedDescription
{
  v3 = objc_opt_class();
  v4 = [(HMService *)self serviceType];
  v5 = [v3 __localizedDescriptionForServiceType:v4];

  return v5;
}

- (void)_addCharacteristic:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(HMService *)self _hasCharacteristic:v4])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding characteristic: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMService *)v6 currentCharacteristics];
    [v9 addObject:v4];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_removeCharacteristic:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(HMService *)self _hasCharacteristic:v4])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing characteristic: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMService *)v6 currentCharacteristics];
    [v9 removeObject:v4];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_hasCharacteristic:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(HMService *)self characteristics];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if (v10 == v4)
        {
LABEL_13:
          v16 = 1;
          goto LABEL_14;
        }

        v11 = [*(*(&v19 + 1) + 8 * i) service];
        v12 = v11;
        if (v11 == self)
        {
          v13 = [v10 instanceID];
          v14 = [v4 instanceID];
          v15 = [v13 isEqual:v14];

          if (v15)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_14:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)_handleUpdateAssociatedServiceType:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [(HMService *)self setAssociatedServiceType:v4];
}

- (void)updateApplicationData:(id)a3 completionHandler:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v13);
  }

  v7 = v6;
  v8 = [(HMService *)self accessory];
  v9 = v8;
  if (v8)
  {
    [v8 updateApplicationData:v14 forService:self completionHandler:v7];
  }

  else
  {
    v10 = [(HMService *)self context];
    v11 = [v10 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [v11 callCompletion:v7 error:v12];
  }
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v194 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMService *)self accessory];
  v6 = [v5 delegate];
  v7 = [HMObjectMergeCollection alloc];
  v8 = [(HMService *)self currentCharacteristics];
  v9 = [v8 array];
  v10 = [v4 currentCharacteristics];
  v11 = [v10 array];
  v12 = [(HMObjectMergeCollection *)v7 initWithCurrentObjects:v9 newObjects:v11];

  v13 = [(HMObjectMergeCollection *)v12 removedObjects];
  v187[0] = MEMORY[0x1E69E9820];
  v187[1] = 3221225472;
  v187[2] = __32__HMService_mergeFromNewObject___block_invoke;
  v187[3] = &unk_1E754DB50;
  v187[4] = self;
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v187];

  v14 = [(HMObjectMergeCollection *)v12 addedObjects];
  v186[0] = MEMORY[0x1E69E9820];
  v186[1] = 3221225472;
  v186[2] = __32__HMService_mergeFromNewObject___block_invoke_222;
  v186[3] = &unk_1E754DB50;
  v186[4] = self;
  [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v186];

  [(HMObjectMergeCollection *)v12 mergeCommonObjects];
  v161 = v5;
  if ([(HMObjectMergeCollection *)v12 isModified])
  {
    v15 = [(HMObjectMergeCollection *)v12 finalObjects];
    v16 = [(HMService *)self currentCharacteristics];
    [v16 setArray:v15];

    [v5 notifyDelegateOfUpdatedServices];
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(HMService *)self name];
  v19 = [v4 name];
  v20 = [v18 isEqualToString:v19];

  if ((v20 & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v4 name];
      *buf = 138543618;
      v189 = v24;
      v190 = 2112;
      v191 = v25;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating name via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = [v4 name];
    [(HMService *)v22 setName:v26];

    if (objc_opt_respondsToSelector())
    {
      v27 = [(HMService *)v22 context];
      v28 = [v27 delegateCaller];
      v182[0] = MEMORY[0x1E69E9820];
      v182[1] = 3221225472;
      v182[2] = __32__HMService_mergeFromNewObject___block_invoke_225;
      v182[3] = &unk_1E754E5E8;
      v183 = v6;
      v184 = v161;
      v185 = v22;
      [v28 invokeBlock:v182];
    }

    v17 = 1;
  }

  v29 = [(HMService *)self configuredName];
  v30 = [v4 configuredName];
  v31 = HMFEqualObjects();

  if ((v31 & 1) == 0)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = [v4 configuredName];
      *buf = 138543618;
      v189 = v35;
      v190 = 2112;
      v191 = v36;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_INFO, "%{public}@Updating configured name via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v37 = [v4 configuredName];
    [(HMService *)v33 setConfiguredName:v37];

    if ([v6 conformsToProtocol:&unk_1F0F63E80])
    {
      v38 = v6;
      if (objc_opt_respondsToSelector())
      {
        v39 = [(HMService *)v33 context];
        v40 = [v39 delegateCaller];
        v178[0] = MEMORY[0x1E69E9820];
        v178[1] = 3221225472;
        v178[2] = __32__HMService_mergeFromNewObject___block_invoke_354;
        v178[3] = &unk_1E754E5E8;
        v179 = v38;
        v180 = v161;
        v181 = v33;
        [v40 invokeBlock:v178];
      }
    }

    v17 = 1;
  }

  v41 = [(HMService *)self matterEndpointID];
  v42 = [v4 matterEndpointID];
  v43 = HMFEqualObjects();

  if ((v43 & 1) == 0)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      v48 = [v4 matterEndpointID];
      *buf = 138543618;
      v189 = v47;
      v190 = 2112;
      v191 = v48;
      _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_INFO, "%{public}@Updating matter endpoint ID via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v44);
    v49 = [v4 matterEndpointID];
    [(HMService *)v45 setMatterEndpointID:v49];

    v17 = 1;
  }

  v50 = [(HMService *)self defaultName];
  v51 = [v4 defaultName];
  v52 = HMFEqualObjects();

  if ((v52 & 1) == 0)
  {
    v53 = objc_autoreleasePoolPush();
    v54 = self;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = HMFGetLogIdentifier();
      v57 = [v4 defaultName];
      *buf = 138543618;
      v189 = v56;
      v190 = 2112;
      v191 = v57;
      _os_log_impl(&dword_19BB39000, v55, OS_LOG_TYPE_INFO, "%{public}@Updating default name via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    v58 = [v4 defaultName];
    [(HMService *)v54 setDefaultName:v58];

    v17 = 1;
  }

  v59 = [(HMService *)self applicationData];
  v60 = [v4 applicationData];
  v61 = HMFEqualObjects();

  if ((v61 & 1) == 0)
  {
    v62 = objc_autoreleasePoolPush();
    v63 = self;
    v64 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      v65 = HMFGetLogIdentifier();
      *buf = 138543362;
      v189 = v65;
      _os_log_impl(&dword_19BB39000, v64, OS_LOG_TYPE_INFO, "%{public}@Updating application data via merge", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v62);
    v66 = [v4 applicationData];
    [(HMService *)v63 setApplicationData:v66];

    [v161 notifyDelegateOfAppDataUpdateForService:v63];
    v17 = 1;
  }

  v67 = [(HMService *)self serviceType];
  v68 = [v4 serviceType];
  v69 = [v67 isEqualToString:v68];

  if ((v69 & 1) == 0)
  {
    v70 = objc_autoreleasePoolPush();
    v71 = self;
    v72 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v73 = HMFGetLogIdentifier();
      v74 = [v4 serviceType];
      *buf = 138543618;
      v189 = v73;
      v190 = 2112;
      v191 = v74;
      _os_log_impl(&dword_19BB39000, v72, OS_LOG_TYPE_INFO, "%{public}@Updating service type via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v70);
    v75 = [v4 serviceType];
    [(HMService *)v71 setServiceType:v75];

    v17 = 1;
  }

  v76 = [(HMService *)self isUserInteractive];
  if (v76 != [v4 isUserInteractive])
  {
    v77 = objc_autoreleasePoolPush();
    v78 = self;
    v79 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      v80 = HMFGetLogIdentifier();
      [v4 isUserInteractive];
      v81 = HMFBooleanToString();
      *buf = 138543618;
      v189 = v80;
      v190 = 2112;
      v191 = v81;
      _os_log_impl(&dword_19BB39000, v79, OS_LOG_TYPE_INFO, "%{public}@Updating is user interactive via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v77);
    -[HMService setUserInteractive:](v78, "setUserInteractive:", [v4 isUserInteractive]);
    v17 = 1;
  }

  v82 = [(HMService *)self associatedServiceType];
  v83 = [v4 associatedServiceType];
  v84 = HMFEqualObjects();

  if ((v84 & 1) == 0)
  {
    v85 = objc_autoreleasePoolPush();
    v86 = self;
    v87 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v88 = HMFGetLogIdentifier();
      v89 = [v4 associatedServiceType];
      *buf = 138543618;
      v189 = v88;
      v190 = 2112;
      v191 = v89;
      _os_log_impl(&dword_19BB39000, v87, OS_LOG_TYPE_INFO, "%{public}@Updating associated service type via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v85);
    v90 = [v4 associatedServiceType];
    [(HMService *)v86 setAssociatedServiceType:v90];

    if (objc_opt_respondsToSelector())
    {
      v91 = [(HMService *)v86 context];
      v92 = [v91 delegateCaller];
      v174[0] = MEMORY[0x1E69E9820];
      v174[1] = 3221225472;
      v174[2] = __32__HMService_mergeFromNewObject___block_invoke_356;
      v174[3] = &unk_1E754E5E8;
      v175 = v6;
      v176 = v161;
      v177 = v86;
      [v92 invokeBlock:v174];
    }

    v17 = 1;
  }

  v93 = [(HMService *)self serviceSubtype];
  v94 = [v4 serviceSubtype];
  v95 = HMFEqualObjects();

  if ((v95 & 1) == 0)
  {
    v96 = objc_autoreleasePoolPush();
    v97 = self;
    v98 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      v99 = HMFGetLogIdentifier();
      v100 = [v4 serviceSubtype];
      *buf = 138543618;
      v189 = v99;
      v190 = 2112;
      v191 = v100;
      _os_log_impl(&dword_19BB39000, v98, OS_LOG_TYPE_INFO, "%{public}@Updating service subtype via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v96);
    v101 = [v4 serviceSubtype];
    [(HMService *)v97 setServiceSubtype:v101];

    if ([v6 conformsToProtocol:&unk_1F0F63E80])
    {
      v102 = v6;
      if (objc_opt_respondsToSelector())
      {
        v103 = [(HMService *)v97 context];
        v104 = [v103 delegateCaller];
        v170[0] = MEMORY[0x1E69E9820];
        v170[1] = 3221225472;
        v170[2] = __32__HMService_mergeFromNewObject___block_invoke_358;
        v170[3] = &unk_1E754E5E8;
        v171 = v102;
        v172 = v161;
        v173 = v97;
        [v104 invokeBlock:v170];
      }
    }

    v17 = 1;
  }

  v105 = [(HMService *)self configurationState];
  if (v105 != [v4 configurationState])
  {
    v106 = objc_autoreleasePoolPush();
    v107 = self;
    v108 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
    {
      v109 = HMFGetLogIdentifier();
      v110 = HMServiceConfigurationStateAsString([v4 configurationState]);
      *buf = 138543618;
      v189 = v109;
      v190 = 2112;
      v191 = v110;
      _os_log_impl(&dword_19BB39000, v108, OS_LOG_TYPE_INFO, "%{public}@Updating configuration state via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v106);
    -[HMService setConfigurationState:](v107, "setConfigurationState:", [v4 configurationState]);
    if ([v6 conformsToProtocol:&unk_1F0F63E80])
    {
      v111 = v6;
      if (objc_opt_respondsToSelector())
      {
        v112 = [(HMService *)v107 context];
        v113 = [v112 delegateCaller];
        v166[0] = MEMORY[0x1E69E9820];
        v166[1] = 3221225472;
        v166[2] = __32__HMService_mergeFromNewObject___block_invoke_360;
        v166[3] = &unk_1E754E5E8;
        v167 = v111;
        v168 = v161;
        v169 = v107;
        [v113 invokeBlock:v166];
      }
    }

    v17 = 1;
  }

  v114 = [(HMService *)self lastKnownOperatingStateValue];
  v115 = [v4 lastKnownOperatingStateValue];
  v116 = HMFEqualObjects();

  if (!v116 || (-[HMService lastKnownOperatingStateAbnormalReasonsValue](self, "lastKnownOperatingStateAbnormalReasonsValue"), v117 = objc_claimAutoreleasedReturnValue(), [v4 lastKnownOperatingStateAbnormalReasonsValue], v118 = objc_claimAutoreleasedReturnValue(), v119 = HMFEqualObjects(), v118, v117, (v119 & 1) == 0))
  {
    v120 = objc_autoreleasePoolPush();
    v121 = self;
    v122 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
    {
      v123 = HMFGetLogIdentifier();
      v124 = [v4 lastKnownOperatingStateValue];
      v125 = [v4 lastKnownOperatingStateAbnormalReasonsValue];
      *buf = 138543874;
      v189 = v123;
      v190 = 2112;
      v191 = v124;
      v192 = 2112;
      v193 = v125;
      _os_log_impl(&dword_19BB39000, v122, OS_LOG_TYPE_INFO, "%{public}@Updating last known operating state value and abnormal reasons value via merge to %@ and %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v120);
    v126 = [v4 lastKnownOperatingStateValue];
    [(HMService *)v121 setLastKnownOperatingStateValue:v126];

    v127 = [v4 lastKnownOperatingStateAbnormalReasonsValue];
    [(HMService *)v121 setLastKnownOperatingStateAbnormalReasonsValue:v127];

    if ([v6 conformsToProtocol:&unk_1F0F63E80])
    {
      v128 = v6;
      if (objc_opt_respondsToSelector())
      {
        v129 = [(HMService *)v121 context];
        v130 = [v129 delegateCaller];
        v162[0] = MEMORY[0x1E69E9820];
        v162[1] = 3221225472;
        v162[2] = __32__HMService_mergeFromNewObject___block_invoke_362;
        v162[3] = &unk_1E754E5E8;
        v163 = v128;
        v164 = v161;
        v165 = v121;
        [v130 invokeBlock:v162];
      }
    }

    v17 = 1;
  }

  v131 = [(HMService *)self mediaSourceDisplayOrder];
  v132 = [v4 mediaSourceDisplayOrder];
  v133 = HMFEqualObjects();

  if ((v133 & 1) == 0)
  {
    v134 = objc_autoreleasePoolPush();
    v135 = self;
    v136 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
    {
      v137 = HMFGetLogIdentifier();
      v138 = [v4 mediaSourceDisplayOrder];
      *buf = 138543618;
      v189 = v137;
      v190 = 2112;
      v191 = v138;
      _os_log_impl(&dword_19BB39000, v136, OS_LOG_TYPE_INFO, "%{public}@Updating media display order via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v134);
    v139 = [v4 mediaSourceDisplayOrder];
    [(HMService *)v135 setMediaSourceDisplayOrder:v139];

    v17 = 1;
  }

  v140 = [(HMService *)self mediaSourceIdentifier];
  v141 = [v4 mediaSourceIdentifier];
  v142 = HMFEqualObjects();

  if ((v142 & 1) == 0)
  {
    v143 = objc_autoreleasePoolPush();
    v144 = self;
    v145 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
    {
      v146 = HMFGetLogIdentifier();
      v147 = [v4 mediaSourceIdentifier];
      *buf = 138543618;
      v189 = v146;
      v190 = 2112;
      v191 = v147;
      _os_log_impl(&dword_19BB39000, v145, OS_LOG_TYPE_INFO, "%{public}@Updating media source identifier via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v143);
    v148 = [v4 mediaSourceIdentifier];
    [(HMService *)v144 setMediaSourceIdentifier:v148];

    v17 = 1;
  }

  v149 = [(HMService *)self mediaSourceDisplayOrderModifiable];
  if (v149 != [v4 mediaSourceDisplayOrderModifiable])
  {
    v150 = objc_autoreleasePoolPush();
    v151 = self;
    v152 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
    {
      v153 = HMFGetLogIdentifier();
      [v4 mediaSourceDisplayOrderModifiable];
      v154 = HMFBooleanToString();
      *buf = 138543618;
      v189 = v153;
      v190 = 2112;
      v191 = v154;
      _os_log_impl(&dword_19BB39000, v152, OS_LOG_TYPE_INFO, "%{public}@Updating media source display order modifiable via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v150);
    -[HMService setMediaSourceDisplayOrderModifiable:](v151, "setMediaSourceDisplayOrderModifiable:", [v4 mediaSourceDisplayOrderModifiable]);
    v17 = 1;
  }

  v155 = [(HMService *)self bulletinBoardNotification];
  v156 = [v4 bulletinBoardNotification];
  v157 = [v155 mergeFromNewObject:v156];

  v158 = *MEMORY[0x1E69E9840];
  return v17 | v157;
}

void __32__HMService_mergeFromNewObject___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed characteristic via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];

  v8 = *MEMORY[0x1E69E9840];
}

void __32__HMService_mergeFromNewObject___block_invoke_222(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added characteristic via merge: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 service:*(a1 + 32)];

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_findCharacteristicWithUniqueIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMService *)self characteristics];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 uniqueIdentifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_findCharacteristic:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMService *)self characteristics];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 instanceID];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (HMService)initWithCoder:(id)a3
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hm_decodeAndCacheUUIDForKey:@"serviceUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v7 = [v4 hm_decodeAndCacheStringForKey:@"serviceType"];
  v8 = v7;
  if (!v5 || (v6 ? (v9 = v7 == 0) : (v9 = 1), v9))
  {
    v41 = objc_autoreleasePoolPush();
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138544130;
      v73 = v43;
      v74 = 2112;
      v75 = v5;
      v76 = 2112;
      v77 = v6;
      v78 = 2112;
      v79 = v8;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize from uuid: %@, accessory: %@, serviceType: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v41);
    v44 = 0;
  }

  else
  {
    v10 = [(HMService *)self initWithUUID:v5 accessory:v6 serviceType:v7];
    if (v10)
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMServiceTargetAccessoryUUID"];
      targetAccessoryUUID = v10->_targetAccessoryUUID;
      v10->_targetAccessoryUUID = v11;

      v13 = [v4 hm_decodeAndCacheStringForKey:@"associatedServiceType"];
      associatedServiceType = v10->_associatedServiceType;
      v10->_associatedServiceType = v13;

      if (![(NSString *)v10->_associatedServiceType length])
      {
        v15 = v10->_associatedServiceType;
        v10->_associatedServiceType = 0;
      }

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
      name = v10->_name;
      v10->_name = v16;

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceConfiguredName"];
      configuredName = v10->_configuredName;
      v10->_configuredName = v18;

      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceMatterEndpointID"];
      matterEndpointID = v10->_matterEndpointID;
      v10->_matterEndpointID = v20;

      v22 = [v4 hm_decodeAndCacheStringForKey:@"serviceDefaultName"];
      defaultName = v10->_defaultName;
      v10->_defaultName = v22;

      v24 = [v4 hm_decodeAndCacheStringForKey:@"serviceSubtype"];
      serviceSubtype = v10->_serviceSubtype;
      v10->_serviceSubtype = v24;

      v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceInstanceID"];
      instanceID = v10->_instanceID;
      v10->_instanceID = v26;

      v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastKnownOperatingStateCodingKey"];
      lastKnownOperatingStateValue = v10->_lastKnownOperatingStateValue;
      v10->_lastKnownOperatingStateValue = v28;

      v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMServiceLastKnownOperatingStateAbnormalReasonsCodingKey"];
      lastKnownOperatingStateAbnormalReasonsValue = v10->_lastKnownOperatingStateAbnormalReasonsValue;
      v10->_lastKnownOperatingStateAbnormalReasonsValue = v30;

      v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaSourceIdentifierCodingKey"];
      mediaSourceIdentifier = v10->_mediaSourceIdentifier;
      v10->_mediaSourceIdentifier = v32;

      v34 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mediaSourceDisplayOrderCodingKey"];
      mediaSourceDisplayOrder = v10->_mediaSourceDisplayOrder;
      v10->_mediaSourceDisplayOrder = v34;

      v10->_mediaSourceDisplayOrderModifiable = [v4 decodeBoolForKey:@"mediaSourceDisplayOrderModifiableCodingKey"];
      v10->_nameModifiable = [v4 decodeBoolForKey:@"nameModifiableCodingKey"];
      v36 = MEMORY[0x1E695DFD8];
      v71[0] = objc_opt_class();
      v71[1] = objc_opt_class();
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
      v38 = [v36 setWithArray:v37];
      v39 = [v4 decodeObjectOfClasses:v38 forKey:@"characteristics"];

      [(HMMutableArray *)v10->_currentCharacteristics setArray:v39];
      v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceConfigurationState"];
      if (v40)
      {
        v10->_configurationState = [HMService _mapToServiceConfigurationStateFromIsConfiguredValue:v40];
      }

      else
      {
        v63 = v39;
        v64 = v5;
        v10->_configurationState = 0;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v45 = [(HMService *)v10 characteristics];
        v46 = [v45 countByEnumeratingWithState:&v65 objects:v70 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v66;
          while (2)
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v66 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = [*(*(&v65 + 1) + 8 * i) characteristicType];
              v51 = [v50 isEqualToString:@"000000D6-0000-1000-8000-0026BB765291"];

              if (v51)
              {
                v10->_configurationState = 1;
                goto LABEL_24;
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v65 objects:v70 count:16];
            if (v47)
            {
              continue;
            }

            break;
          }
        }

LABEL_24:

        v5 = v64;
        v40 = 0;
        v39 = v63;
      }

      v10->_userInteractive = [v4 decodeBoolForKey:@"HM.hidden"] ^ 1;
      v52 = [[HMApplicationData alloc] initWithDictionaryFromCoder:v4 key:@"HM.appData"];
      applicationData = v10->_applicationData;
      v10->_applicationData = v52;

      v10->_primaryService = [v4 decodeBoolForKey:@"HM.primary"];
      v54 = MEMORY[0x1E695DFD8];
      v69[0] = objc_opt_class();
      v69[1] = objc_opt_class();
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
      v56 = [v54 setWithArray:v55];
      v57 = [v4 decodeObjectOfClasses:v56 forKey:@"HM.linkedServices"];
      linkedServiceInstanceIDs = v10->_linkedServiceInstanceIDs;
      v10->_linkedServiceInstanceIDs = v57;

      v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.BulletinBoardNotification"];
      bulletinBoardNotificationInternal = v10->_bulletinBoardNotificationInternal;
      v10->_bulletinBoardNotificationInternal = v59;
    }

    self = v10;
    v44 = self;
  }

  v61 = *MEMORY[0x1E69E9840];
  return v44;
}

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMService *)self uniqueIdentifier];
  v6 = [v4 initWithName:@"Unique ID" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMService *)self serviceType];
  v9 = [(HMService *)self serviceType];
  v10 = [v9 hasSuffix:@"-0000-1000-8000-0026BB765291"];

  if (v10)
  {
    v11 = [(HMService *)self serviceType];
    v12 = [(HMService *)self serviceType];
    v13 = [v11 substringToIndex:{objc_msgSend(v12, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];

    v8 = v13;
  }

  v14 = [v7 initWithName:@"Type" value:v8];
  [v3 addObject:v14];

  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  v16 = [(HMService *)self instanceID];
  v17 = [v15 initWithName:@"Instance ID" value:v16];
  [v3 addObject:v17];

  v18 = [v3 copy];

  return v18;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)logIdentifier
{
  v2 = [(HMService *)self uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_updateConfigurationState:(int64_t)a3 completionHandler:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (![(HMService *)self configurationState])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v19;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot update configuration state: configuration states not applicable to service", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v12 = [(HMService *)v17 context];
    v13 = [v12 delegateCaller];
    v14 = MEMORY[0x1E696ABC0];
    v15 = 48;
    goto LABEL_29;
  }

  if (a3 <= 1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMServiceConfigurationStateAsString(a3);
      *buf = 138543618;
      v62 = v10;
      v63 = 2112;
      v64 = v11;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot update configuration state: new configuration state is invalid: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMService *)v8 context];
    v13 = [v12 delegateCaller];
    v14 = MEMORY[0x1E696ABC0];
    v15 = 3;
    goto LABEL_29;
  }

  if ([(HMService *)self configurationState]!= a3)
  {
    v55 = v6;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v25 = [(HMService *)self characteristics];
    v26 = [v25 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v57;
LABEL_15:
      v29 = 0;
      while (1)
      {
        if (*v57 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v56 + 1) + 8 * v29);
        v31 = [v30 characteristicType];
        v32 = [v31 isEqualToString:@"000000D6-0000-1000-8000-0026BB765291"];

        if (v32)
        {
          break;
        }

        if (v27 == ++v29)
        {
          v27 = [v25 countByEnumeratingWithState:&v56 objects:v60 count:16];
          if (v27)
          {
            goto LABEL_15;
          }

          goto LABEL_21;
        }
      }

      v12 = v30;

      if (!v12)
      {
        goto LABEL_26;
      }

      v33 = [HMService _mapToIsConfiguredValueFromServiceConfigurationState:a3];
      v6 = v55;
      if (v33)
      {
        v13 = v33;
        v34 = [(HMService *)self accessory];
        if (v34)
        {
          v35 = v34;
          [v34 _writeValue:v13 forCharacteristic:v12 service:self completionHandler:v55];
        }

        else
        {
          v48 = objc_autoreleasePoolPush();
          v49 = self;
          v50 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            *buf = 138543362;
            v62 = v51;
            _os_log_impl(&dword_19BB39000, v50, OS_LOG_TYPE_ERROR, "%{public}@Cannot update configuration state: accessory is nil", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v48);
          v52 = [(HMService *)v49 context];
          v53 = [v52 delegateCaller];
          v54 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
          [v53 callCompletion:v55 error:v54];

          v35 = 0;
        }
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        v42 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          v45 = HMServiceConfigurationStateAsString(a3);
          *buf = 138543618;
          v62 = v44;
          v63 = 2112;
          v64 = v45;
          _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_ERROR, "%{public}@Cannot update configuration state: mapped value is nil for %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v41);
        v35 = [(HMService *)v42 context];
        v46 = [v35 delegateCaller];
        v47 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [v46 callCompletion:v55 error:v47];

        v13 = 0;
      }

      goto LABEL_30;
    }

LABEL_21:

LABEL_26:
    v36 = objc_autoreleasePoolPush();
    v37 = self;
    v38 = HMFGetOSLogHandle();
    v6 = v55;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v39;
      _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@Cannot update configuration state: cannot find IsConfigured characteristic", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
    v12 = [(HMService *)v37 context];
    v13 = [v12 delegateCaller];
    v14 = MEMORY[0x1E696ABC0];
    v15 = 2;
LABEL_29:
    v35 = [v14 hmErrorWithCode:v15];
    [v13 callCompletion:v6 error:v35];
LABEL_30:

    goto LABEL_31;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = HMServiceConfigurationStateAsString(a3);
    *buf = 138543618;
    v62 = v23;
    v63 = 2112;
    v64 = v24;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Not updating configuration state because it is already %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v12 = [(HMService *)v21 context];
  v13 = [v12 delegateCaller];
  [v13 callCompletion:v6 error:0];
LABEL_31:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)updateConfigurationState:(int64_t)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMService *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMService updateConfigurationState:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v8 = v7;
  if (v7)
  {
    v9 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__HMService_updateConfigurationState_completionHandler___block_invoke;
    block[3] = &unk_1E754DB20;
    block[4] = self;
    v24 = a3;
    v23 = v6;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2080;
      v28 = "[HMService updateConfigurationState:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_updateAssociatedServiceType:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v18 = v8;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_1F0E92498;
  }

  v10 = [(HMService *)self associatedServiceType];
  v11 = [(__CFString *)v9 isEqual:v10];

  if (v11)
  {
    v12 = [(HMService *)self context];
    v13 = [v12 delegateCaller];
    [v13 callCompletion:v7 error:0];
  }

  else
  {
    v14 = [(HMService *)self accessory];
    if (v14)
    {
      v12 = v14;
      [v14 _updateAssociatedServiceType:v9 forService:self completionHandler:v7];
    }

    else
    {
      v15 = [(HMService *)self context];
      v16 = [v15 delegateCaller];
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:21 userInfo:0];
      [v16 callCompletion:v7 error:v17];

      v12 = 0;
    }
  }
}

- (void)updateAssociatedServiceType:(NSString *)serviceType completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = serviceType;
  v7 = completion;
  v8 = [(HMService *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMService updateAssociatedServiceType:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__HMService_updateAssociatedServiceType_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMService updateAssociatedServiceType:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateName:(id)a3 completionHandler:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(HMService *)self accessory];
  if (v7)
  {
    if ([(HMService *)self isNameModifiable])
    {
      [v7 _updateName:v12 forService:self completionHandler:v6];
      goto LABEL_7;
    }

    v8 = [(HMService *)self context];
    v9 = [v8 delegateCaller];
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  }

  else
  {
    v8 = [(HMService *)self context];
    v9 = [v8 delegateCaller];
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:21 userInfo:0];
  }

  v11 = v10;
  [v9 callCompletion:v6 error:v10];

LABEL_7:
}

- (void)updateName:(NSString *)name completionHandler:(void *)completion
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = name;
  v7 = completion;
  v8 = [(HMService *)self context];
  if (!v7)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMService updateName:completionHandler:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v28;
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
    objc_exception_throw(v29);
  }

  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = [(NSString *)v6 length];
      if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
      {
        dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
      }

      if (v10 <= HMMaxLengthForNaming__hmf_once_v9)
      {
        v23 = [v9 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __42__HMService_updateName_completionHandler___block_invoke;
        block[3] = &unk_1E754E0F8;
        block[4] = self;
        v31 = v6;
        v32 = v7;
        dispatch_async(v23, block);

        goto LABEL_16;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v9 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
      [v15 callCompletion:v7 error:v16];
    }

    else
    {
      v15 = [(HMService *)self context];
      v16 = [v15 delegateCaller];
      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      [v16 callCompletion:v7 error:v21];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v20;
      v35 = 2080;
      v36 = "[HMService updateName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

LABEL_16:
  v22 = *MEMORY[0x1E69E9840];
}

- (NSArray)linkedServices
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(HMService *)self accessory];
  v5 = [v4 services];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        linkedServiceInstanceIDs = self->_linkedServiceInstanceIDs;
        v12 = [v10 instanceID];
        LODWORD(linkedServiceInstanceIDs) = [(NSArray *)linkedServiceInstanceIDs containsObject:v12];

        if (linkedServiceInstanceIDs)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)assistantIdentifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(HMService *)self accessory];
  v4 = [v3 uuid];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", self->_instanceID];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = hm_assistantIdentifierWithSalts(@"SV", v4, v6);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSURL)homeObjectURLInternal
{
  v3 = [(HMService *)self uniqueIdentifier];
  os_unfair_lock_lock_with_options();
  homeObjectURLInternal = self->_homeObjectURLInternal;
  if (!homeObjectURLInternal)
  {
    v5 = [v3 UUIDString];
    v6 = [HMBulletinObjectTuple tupleWithQueryType:2 uuidString:v5];

    v7 = generateURLForHomeKitObject(v6, 0);
    v8 = self->_homeObjectURLInternal;
    self->_homeObjectURLInternal = v7;

    homeObjectURLInternal = self->_homeObjectURLInternal;
  }

  v9 = homeObjectURLInternal;
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (HMBulletinBoardNotification)bulletinBoardNotificationInternal
{
  os_unfair_lock_lock_with_options();
  v3 = self->_bulletinBoardNotificationInternal;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setApplicationData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  applicationData = self->_applicationData;
  self->_applicationData = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMApplicationData)applicationData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_applicationData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isNameModifiable
{
  os_unfair_lock_lock_with_options();
  nameModifiable = self->_nameModifiable;
  os_unfair_lock_unlock(&self->_lock);
  return nameModifiable;
}

- (void)setMediaSourceIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  mediaSourceIdentifier = self->_mediaSourceIdentifier;
  self->_mediaSourceIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)mediaSourceIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mediaSourceIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)lastKnownOperatingStateAbnormalReasons
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSNumber *)self->_lastKnownOperatingStateAbnormalReasonsValue unsignedIntegerValue];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (int64_t)lastKnownOperatingState
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSNumber *)self->_lastKnownOperatingStateValue integerValue];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasOperatingStateAbnormalReasons
{
  v2 = [(HMService *)self lastKnownOperatingStateAbnormalReasonsValue];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasOperatingState
{
  v2 = [(HMService *)self lastKnownOperatingStateValue];
  v3 = v2 != 0;

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  v13[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = MEMORY[0x1E696AFB0];
    v5 = [(HMService *)self accessoryUniqueIdentifier];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", self->_instanceID];
    v13[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v8 = [v4 hm_deriveUUIDFromBaseUUID:v5 withSalts:v7];
    v9 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v8;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v10 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)characteristicsSupportedForShortcutConditions
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(HMService *)self currentCharacteristics];
  v4 = [v3 array];

  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v8 = off_1E7545000;
    do
    {
      v9 = 0;
      v26 = v6;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = [v10 characteristicType];
        v12 = [v11 hasSuffix:@"-0000-1000-8000-0026BB765291"];

        if (v12)
        {
          v13 = [(__objc2_class *)v8[361] unsupportedCharacteristicsForShortcutConditions];
          v14 = [v10 characteristicType];
          v15 = [v10 characteristicType];
          v16 = [v15 hasSuffix:@"-0000-1000-8000-0026BB765291"];

          if (v16)
          {
            v17 = [v10 characteristicType];
            v18 = [v10 characteristicType];
            v19 = v7;
            v20 = v4;
            v21 = [v17 substringToIndex:{objc_msgSend(v18, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];

            v14 = v21;
            v4 = v20;
            v7 = v19;
            v8 = off_1E7545000;
          }

          v22 = [v13 containsObject:v14];

          v6 = v26;
          if ((v22 & 1) == 0)
          {
            [v25 addObject:v10];
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)defaultCharacteristic
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = +[HMService defaultCharacteristicByServiceDictionary];
  v4 = [(HMService *)self serviceType];
  v5 = [(HMService *)self serviceType];
  v6 = [v5 hasSuffix:@"-0000-1000-8000-0026BB765291"];

  if (v6)
  {
    v7 = [(HMService *)self serviceType];
    v8 = [(HMService *)self serviceType];
    v9 = [v7 substringToIndex:{objc_msgSend(v8, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];

    v4 = v9;
  }

  v10 = [v3 hmf_stringForKey:v4];

  if (v10)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = self;
    v11 = [(HMService *)self characteristicsSupportedForShortcutConditions];
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      while (2)
      {
        v15 = 0;
        v32 = v13;
        do
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v33 + 1) + 8 * v15);
          v17 = [v16 characteristicType];
          v18 = [v16 characteristicType];
          v19 = [v18 hasSuffix:@"-0000-1000-8000-0026BB765291"];

          if (v19)
          {
            v20 = [v16 characteristicType];
            v21 = [v16 characteristicType];
            v22 = v14;
            v23 = v10;
            v24 = v11;
            v25 = [v20 substringToIndex:{objc_msgSend(v21, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];

            v17 = v25;
            v11 = v24;
            v10 = v23;
            v14 = v22;
            v13 = v32;
          }

          v26 = [v10 isEqualToString:v17];

          if (v26)
          {
            v28 = v16;
            goto LABEL_17;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    self = v31;
  }

  v11 = [(HMService *)self currentCharacteristics];
  v27 = [v11 array];
  v28 = [v27 firstObject];

LABEL_17:
  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (NSArray)characteristics
{
  v2 = [(HMService *)self currentCharacteristics];
  v3 = [v2 array];

  return v3;
}

- (void)setConfigurationState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_configurationState = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)configurationState
{
  os_unfair_lock_lock_with_options();
  configurationState = self->_configurationState;
  os_unfair_lock_unlock(&self->_lock);
  return configurationState;
}

- (void)setServiceSubtype:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  serviceSubtype = self->_serviceSubtype;
  self->_serviceSubtype = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)serviceSubtype
{
  os_unfair_lock_lock_with_options();
  v3 = self->_serviceSubtype;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAssociatedServiceType:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  associatedServiceType = self->_associatedServiceType;
  self->_associatedServiceType = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)associatedServiceType
{
  os_unfair_lock_lock_with_options();
  v3 = self->_associatedServiceType;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDefaultName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  defaultName = self->_defaultName;
  self->_defaultName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)defaultName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_defaultName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setConfiguredName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  configuredName = self->_configuredName;
  self->_configuredName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)configuredName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_configuredName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMatterEndpointID:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  matterEndpointID = self->_matterEndpointID;
  self->_matterEndpointID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)matterEndpointID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_matterEndpointID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setServiceType:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  serviceType = self->_serviceType;
  self->_serviceType = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAccessory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_accessory, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessory)accessory
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)_unconfigure
{
  v14 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring service", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMService *)v5 setAccessory:0];
    [(HMService *)v5 setContext:0];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:v5];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)__configureWithContext:(id)a3 accessory:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(HMService *)self setContext:v6];
  [(HMService *)self setAccessory:v7];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(HMService *)self characteristics];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v12++) __configureWithContext:v6 service:self];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [(HMService *)self bulletinBoardNotificationInternal];
  [v13 __configureWithContext:v6];

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMService *)self uniqueIdentifier];
      v7 = [(HMService *)v5 uniqueIdentifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(HMService *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (HMService)initWithUUID:(id)a3 accessory:(id)a4 serviceType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = HMService;
  v12 = [(HMService *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, a3);
    objc_storeWeak(&v13->_accessory, v10);
    v14 = [v10 uniqueIdentifier];
    accessoryUniqueIdentifier = v13->_accessoryUniqueIdentifier;
    v13->_accessoryUniqueIdentifier = v14;

    v16 = [v11 copy];
    serviceType = v13->_serviceType;
    v13->_serviceType = v16;

    v18 = +[HMMutableArray array];
    currentCharacteristics = v13->_currentCharacteristics;
    v13->_currentCharacteristics = v18;

    v20 = objc_alloc_init(HMApplicationData);
    applicationData = v13->_applicationData;
    v13->_applicationData = v20;
  }

  return v13;
}

- (HMService)init
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v5;
    v15 = 2080;
    v16 = "[HMService init]";
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@%s is unsupported and will be removed in a future release", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [HMAccessory alloc];
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [(HMAccessory *)v7 initWithUUID:v8];
  v10 = [(HMService *)self initWithUUID:v6 accessory:v9 serviceType:@"00000049-0000-1000-8000-0026BB765291"];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)__localizedDescriptionForServiceType:(id)a3
{
  v3 = localizationKeyForServiceType(a3);
  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedOrCustomString:v3];

  return v5;
}

+ (id)_mapToIsConfiguredValueFromServiceConfigurationState:(int64_t)a3
{
  v3 = &unk_1F0EFD2E0;
  if (a3 != 3)
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return &unk_1F0EFD2C8;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)_mapToServiceConfigurationStateFromIsConfiguredValue:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v3 = [a3 integerValue];
  v4 = 3;
  if (v3 != 1)
  {
    v4 = 1;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t47 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t47, &__block_literal_global_61268);
  }

  v3 = logCategory__hmf_once_v48;

  return v3;
}

uint64_t __24__HMService_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v48;
  logCategory__hmf_once_v48 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)unsupportedCharacteristicsForShortcutConditions
{
  [a1 initializeCharacteristicDictionaries];
  v2 = _unsupportedCharacteristicsForShortcutConditions;

  return v2;
}

+ (id)defaultCharacteristicByServiceDictionary
{
  [a1 initializeCharacteristicDictionaries];
  v2 = _defaultCharacteristicByServiceDictionary;

  return v2;
}

+ (void)initializeCharacteristicDictionaries
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__HMService_initializeCharacteristicDictionaries__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initializeCharacteristicDictionaries_onceToken != -1)
  {
    dispatch_once(&initializeCharacteristicDictionaries_onceToken, block);
  }
}

void __49__HMService_initializeCharacteristicDictionaries__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 resourceURL];
  v5 = [v4 URLByAppendingPathComponent:@"DefaultCharacteristics.plist"];

  v27 = 0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v5 error:&v27];
  v7 = v27;
  if (!v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v11;
      v30 = 2112;
      v31 = v5;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot load default characteristic map from %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = [v6 hmf_dictionaryForKey:@"DefaultCharacteristicsByService"];
  v13 = _defaultCharacteristicByServiceDictionary;
  _defaultCharacteristicByServiceDictionary = v12;

  if (!_defaultCharacteristicByServiceDictionary)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138544130;
      v29 = v17;
      v30 = 2112;
      v31 = @"DefaultCharacteristicsByService";
      v32 = 2112;
      v33 = v5;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot load %@ map from %@: plist %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = MEMORY[0x1E695DFD8];
  v19 = [v6 hmf_arrayForKey:@"UnsupportedCharacteristicsForShortcutConditions"];
  v20 = [v18 setWithArray:v19];
  v21 = _unsupportedCharacteristicsForShortcutConditions;
  _unsupportedCharacteristicsForShortcutConditions = v20;

  if (!_unsupportedCharacteristicsForShortcutConditions)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138544130;
      v29 = v25;
      v30 = 2112;
      v31 = @"UnsupportedCharacteristicsForShortcutConditions";
      v32 = 2112;
      v33 = v5;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot load %@ map from %@: plist %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
  }

  v26 = *MEMORY[0x1E69E9840];
}

@end
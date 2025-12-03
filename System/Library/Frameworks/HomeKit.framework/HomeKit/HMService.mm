@interface HMService
+ (HMService)serviceWithSerializedDictionaryRepresentation:(id)representation home:(id)home;
+ (HMService)serviceWithServiceReference:(id)reference home:(id)home;
+ (id)__localizedDescriptionForServiceType:(id)type;
+ (id)_mapToIsConfiguredValueFromServiceConfigurationState:(int64_t)state;
+ (id)defaultCharacteristicByServiceDictionary;
+ (id)logCategory;
+ (id)shortDescription;
+ (id)unsupportedCharacteristicsForShortcutConditions;
+ (int64_t)_mapToServiceConfigurationStateFromIsConfiguredValue:(id)value;
+ (void)initializeCharacteristicDictionaries;
- (BOOL)_hasCharacteristic:(id)characteristic;
- (BOOL)hasOperatingState;
- (BOOL)hasOperatingStateAbnormalReasons;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNameModifiable;
- (BOOL)mergeFromNewObject:(id)object;
- (HMAccessory)accessory;
- (HMApplicationData)applicationData;
- (HMBulletinBoardNotification)bulletinBoardNotificationInternal;
- (HMService)init;
- (HMService)initWithCoder:(id)coder;
- (HMService)initWithUUID:(id)d accessory:(id)accessory serviceType:(id)type;
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
- (id)_findCharacteristic:(id)characteristic;
- (id)_findCharacteristicWithUniqueIdentifier:(id)identifier;
- (id)assistantIdentifier;
- (id)characteristicsSupportedForShortcutConditions;
- (id)defaultCharacteristic;
- (id)logIdentifier;
- (int64_t)configurationState;
- (int64_t)lastKnownOperatingState;
- (unint64_t)hash;
- (unint64_t)lastKnownOperatingStateAbnormalReasons;
- (void)__configureWithContext:(id)context accessory:(id)accessory;
- (void)_addCharacteristic:(id)characteristic;
- (void)_handleUpdateAssociatedServiceType:(id)type;
- (void)_removeCharacteristic:(id)characteristic;
- (void)_unconfigure;
- (void)_updateAssociatedServiceType:(id)type completionHandler:(id)handler;
- (void)_updateConfigurationState:(int64_t)state completionHandler:(id)handler;
- (void)_updateName:(id)name completionHandler:(id)handler;
- (void)setAccessory:(id)accessory;
- (void)setApplicationData:(id)data;
- (void)setAssociatedServiceType:(id)type;
- (void)setConfigurationState:(int64_t)state;
- (void)setConfiguredName:(id)name;
- (void)setDefaultName:(id)name;
- (void)setMatterEndpointID:(id)d;
- (void)setMediaSourceIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setServiceSubtype:(id)subtype;
- (void)setServiceType:(id)type;
- (void)updateApplicationData:(id)data completionHandler:(id)handler;
- (void)updateAssociatedServiceType:(NSString *)serviceType completionHandler:(void *)completion;
- (void)updateConfigurationState:(int64_t)state completionHandler:(id)handler;
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
  data = [v2 data];
  v8[2] = data;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (HMService)serviceWithServiceReference:(id)reference home:(id)home
{
  v31 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  homeCopy = home;
  if (([referenceCopy hasUniqueIdentifier] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  if (([referenceCopy hasAccessoryReference] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  accessoryReference = [referenceCopy accessoryReference];
  v9 = [HMAccessory accessoryWithAccessoryReference:accessoryReference home:homeCopy];

  if (v9)
  {
    v10 = MEMORY[0x1E696AFB0];
    uniqueIdentifier = [referenceCopy uniqueIdentifier];
    v12 = [v10 hmf_UUIDWithBytesAsData:uniqueIdentifier];

    v13 = [v9 _findServiceWithUniqueIdentifier:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy3 = self;
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

+ (HMService)serviceWithSerializedDictionaryRepresentation:(id)representation home:(id)home
{
  homeCopy = home;
  v7 = [representation hmf_dataForKey:@"HMServiceSerializedDataKey"];
  v8 = [HMPBServiceReference serviceReferenceWithData:v7];
  v9 = [self serviceWithServiceReference:v8 home:homeCopy];

  return v9;
}

- (NSString)localizedDescription
{
  v3 = objc_opt_class();
  serviceType = [(HMService *)self serviceType];
  v5 = [v3 __localizedDescriptionForServiceType:serviceType];

  return v5;
}

- (void)_addCharacteristic:(id)characteristic
{
  v15 = *MEMORY[0x1E69E9840];
  characteristicCopy = characteristic;
  if (![(HMService *)self _hasCharacteristic:characteristicCopy])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = characteristicCopy;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding characteristic: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    currentCharacteristics = [(HMService *)selfCopy currentCharacteristics];
    [currentCharacteristics addObject:characteristicCopy];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_removeCharacteristic:(id)characteristic
{
  v15 = *MEMORY[0x1E69E9840];
  characteristicCopy = characteristic;
  if ([(HMService *)self _hasCharacteristic:characteristicCopy])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = characteristicCopy;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing characteristic: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    currentCharacteristics = [(HMService *)selfCopy currentCharacteristics];
    [currentCharacteristics removeObject:characteristicCopy];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_hasCharacteristic:(id)characteristic
{
  v24 = *MEMORY[0x1E69E9840];
  characteristicCopy = characteristic;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  characteristics = [(HMService *)self characteristics];
  v6 = [characteristics countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(characteristics);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if (v10 == characteristicCopy)
        {
LABEL_13:
          v16 = 1;
          goto LABEL_14;
        }

        service = [*(*(&v19 + 1) + 8 * i) service];
        v12 = service;
        if (service == self)
        {
          instanceID = [v10 instanceID];
          instanceID2 = [characteristicCopy instanceID];
          v15 = [instanceID isEqual:instanceID2];

          if (v15)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v7 = [characteristics countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (void)_handleUpdateAssociatedServiceType:(id)type
{
  typeCopy = type;
  if ([typeCopy length])
  {
    v4 = typeCopy;
  }

  else
  {
    v4 = 0;
  }

  [(HMService *)self setAssociatedServiceType:v4];
}

- (void)updateApplicationData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v13);
  }

  v7 = handlerCopy;
  accessory = [(HMService *)self accessory];
  v9 = accessory;
  if (accessory)
  {
    [accessory updateApplicationData:dataCopy forService:self completionHandler:v7];
  }

  else
  {
    context = [(HMService *)self context];
    delegateCaller = [context delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [delegateCaller callCompletion:v7 error:v12];
  }
}

- (BOOL)mergeFromNewObject:(id)object
{
  v194 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  accessory = [(HMService *)self accessory];
  delegate = [accessory delegate];
  v7 = [HMObjectMergeCollection alloc];
  currentCharacteristics = [(HMService *)self currentCharacteristics];
  array = [currentCharacteristics array];
  currentCharacteristics2 = [objectCopy currentCharacteristics];
  array2 = [currentCharacteristics2 array];
  v12 = [(HMObjectMergeCollection *)v7 initWithCurrentObjects:array newObjects:array2];

  removedObjects = [(HMObjectMergeCollection *)v12 removedObjects];
  v187[0] = MEMORY[0x1E69E9820];
  v187[1] = 3221225472;
  v187[2] = __32__HMService_mergeFromNewObject___block_invoke;
  v187[3] = &unk_1E754DB50;
  v187[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v187];

  addedObjects = [(HMObjectMergeCollection *)v12 addedObjects];
  v186[0] = MEMORY[0x1E69E9820];
  v186[1] = 3221225472;
  v186[2] = __32__HMService_mergeFromNewObject___block_invoke_222;
  v186[3] = &unk_1E754DB50;
  v186[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v186];

  [(HMObjectMergeCollection *)v12 mergeCommonObjects];
  v161 = accessory;
  if ([(HMObjectMergeCollection *)v12 isModified])
  {
    finalObjects = [(HMObjectMergeCollection *)v12 finalObjects];
    currentCharacteristics3 = [(HMService *)self currentCharacteristics];
    [currentCharacteristics3 setArray:finalObjects];

    [accessory notifyDelegateOfUpdatedServices];
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  name = [(HMService *)self name];
  name2 = [objectCopy name];
  v20 = [name isEqualToString:name2];

  if ((v20 & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      name3 = [objectCopy name];
      *buf = 138543618;
      v189 = v24;
      v190 = 2112;
      v191 = name3;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating name via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    name4 = [objectCopy name];
    [(HMService *)selfCopy setName:name4];

    if (objc_opt_respondsToSelector())
    {
      context = [(HMService *)selfCopy context];
      delegateCaller = [context delegateCaller];
      v182[0] = MEMORY[0x1E69E9820];
      v182[1] = 3221225472;
      v182[2] = __32__HMService_mergeFromNewObject___block_invoke_225;
      v182[3] = &unk_1E754E5E8;
      v183 = delegate;
      v184 = v161;
      v185 = selfCopy;
      [delegateCaller invokeBlock:v182];
    }

    v17 = 1;
  }

  configuredName = [(HMService *)self configuredName];
  configuredName2 = [objectCopy configuredName];
  v31 = HMFEqualObjects();

  if ((v31 & 1) == 0)
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      configuredName3 = [objectCopy configuredName];
      *buf = 138543618;
      v189 = v35;
      v190 = 2112;
      v191 = configuredName3;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_INFO, "%{public}@Updating configured name via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    configuredName4 = [objectCopy configuredName];
    [(HMService *)selfCopy2 setConfiguredName:configuredName4];

    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v38 = delegate;
      if (objc_opt_respondsToSelector())
      {
        context2 = [(HMService *)selfCopy2 context];
        delegateCaller2 = [context2 delegateCaller];
        v178[0] = MEMORY[0x1E69E9820];
        v178[1] = 3221225472;
        v178[2] = __32__HMService_mergeFromNewObject___block_invoke_354;
        v178[3] = &unk_1E754E5E8;
        v179 = v38;
        v180 = v161;
        v181 = selfCopy2;
        [delegateCaller2 invokeBlock:v178];
      }
    }

    v17 = 1;
  }

  matterEndpointID = [(HMService *)self matterEndpointID];
  matterEndpointID2 = [objectCopy matterEndpointID];
  v43 = HMFEqualObjects();

  if ((v43 & 1) == 0)
  {
    v44 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      matterEndpointID3 = [objectCopy matterEndpointID];
      *buf = 138543618;
      v189 = v47;
      v190 = 2112;
      v191 = matterEndpointID3;
      _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_INFO, "%{public}@Updating matter endpoint ID via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v44);
    matterEndpointID4 = [objectCopy matterEndpointID];
    [(HMService *)selfCopy3 setMatterEndpointID:matterEndpointID4];

    v17 = 1;
  }

  defaultName = [(HMService *)self defaultName];
  defaultName2 = [objectCopy defaultName];
  v52 = HMFEqualObjects();

  if ((v52 & 1) == 0)
  {
    v53 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = HMFGetLogIdentifier();
      defaultName3 = [objectCopy defaultName];
      *buf = 138543618;
      v189 = v56;
      v190 = 2112;
      v191 = defaultName3;
      _os_log_impl(&dword_19BB39000, v55, OS_LOG_TYPE_INFO, "%{public}@Updating default name via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    defaultName4 = [objectCopy defaultName];
    [(HMService *)selfCopy4 setDefaultName:defaultName4];

    v17 = 1;
  }

  applicationData = [(HMService *)self applicationData];
  applicationData2 = [objectCopy applicationData];
  v61 = HMFEqualObjects();

  if ((v61 & 1) == 0)
  {
    v62 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v64 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      v65 = HMFGetLogIdentifier();
      *buf = 138543362;
      v189 = v65;
      _os_log_impl(&dword_19BB39000, v64, OS_LOG_TYPE_INFO, "%{public}@Updating application data via merge", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v62);
    applicationData3 = [objectCopy applicationData];
    [(HMService *)selfCopy5 setApplicationData:applicationData3];

    [v161 notifyDelegateOfAppDataUpdateForService:selfCopy5];
    v17 = 1;
  }

  serviceType = [(HMService *)self serviceType];
  serviceType2 = [objectCopy serviceType];
  v69 = [serviceType isEqualToString:serviceType2];

  if ((v69 & 1) == 0)
  {
    v70 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v72 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v73 = HMFGetLogIdentifier();
      serviceType3 = [objectCopy serviceType];
      *buf = 138543618;
      v189 = v73;
      v190 = 2112;
      v191 = serviceType3;
      _os_log_impl(&dword_19BB39000, v72, OS_LOG_TYPE_INFO, "%{public}@Updating service type via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v70);
    serviceType4 = [objectCopy serviceType];
    [(HMService *)selfCopy6 setServiceType:serviceType4];

    v17 = 1;
  }

  isUserInteractive = [(HMService *)self isUserInteractive];
  if (isUserInteractive != [objectCopy isUserInteractive])
  {
    v77 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v79 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      v80 = HMFGetLogIdentifier();
      [objectCopy isUserInteractive];
      v81 = HMFBooleanToString();
      *buf = 138543618;
      v189 = v80;
      v190 = 2112;
      v191 = v81;
      _os_log_impl(&dword_19BB39000, v79, OS_LOG_TYPE_INFO, "%{public}@Updating is user interactive via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v77);
    -[HMService setUserInteractive:](selfCopy7, "setUserInteractive:", [objectCopy isUserInteractive]);
    v17 = 1;
  }

  associatedServiceType = [(HMService *)self associatedServiceType];
  associatedServiceType2 = [objectCopy associatedServiceType];
  v84 = HMFEqualObjects();

  if ((v84 & 1) == 0)
  {
    v85 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v87 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v88 = HMFGetLogIdentifier();
      associatedServiceType3 = [objectCopy associatedServiceType];
      *buf = 138543618;
      v189 = v88;
      v190 = 2112;
      v191 = associatedServiceType3;
      _os_log_impl(&dword_19BB39000, v87, OS_LOG_TYPE_INFO, "%{public}@Updating associated service type via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v85);
    associatedServiceType4 = [objectCopy associatedServiceType];
    [(HMService *)selfCopy8 setAssociatedServiceType:associatedServiceType4];

    if (objc_opt_respondsToSelector())
    {
      context3 = [(HMService *)selfCopy8 context];
      delegateCaller3 = [context3 delegateCaller];
      v174[0] = MEMORY[0x1E69E9820];
      v174[1] = 3221225472;
      v174[2] = __32__HMService_mergeFromNewObject___block_invoke_356;
      v174[3] = &unk_1E754E5E8;
      v175 = delegate;
      v176 = v161;
      v177 = selfCopy8;
      [delegateCaller3 invokeBlock:v174];
    }

    v17 = 1;
  }

  serviceSubtype = [(HMService *)self serviceSubtype];
  serviceSubtype2 = [objectCopy serviceSubtype];
  v95 = HMFEqualObjects();

  if ((v95 & 1) == 0)
  {
    v96 = objc_autoreleasePoolPush();
    selfCopy9 = self;
    v98 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      v99 = HMFGetLogIdentifier();
      serviceSubtype3 = [objectCopy serviceSubtype];
      *buf = 138543618;
      v189 = v99;
      v190 = 2112;
      v191 = serviceSubtype3;
      _os_log_impl(&dword_19BB39000, v98, OS_LOG_TYPE_INFO, "%{public}@Updating service subtype via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v96);
    serviceSubtype4 = [objectCopy serviceSubtype];
    [(HMService *)selfCopy9 setServiceSubtype:serviceSubtype4];

    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v102 = delegate;
      if (objc_opt_respondsToSelector())
      {
        context4 = [(HMService *)selfCopy9 context];
        delegateCaller4 = [context4 delegateCaller];
        v170[0] = MEMORY[0x1E69E9820];
        v170[1] = 3221225472;
        v170[2] = __32__HMService_mergeFromNewObject___block_invoke_358;
        v170[3] = &unk_1E754E5E8;
        v171 = v102;
        v172 = v161;
        v173 = selfCopy9;
        [delegateCaller4 invokeBlock:v170];
      }
    }

    v17 = 1;
  }

  configurationState = [(HMService *)self configurationState];
  if (configurationState != [objectCopy configurationState])
  {
    v106 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v108 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
    {
      v109 = HMFGetLogIdentifier();
      v110 = HMServiceConfigurationStateAsString([objectCopy configurationState]);
      *buf = 138543618;
      v189 = v109;
      v190 = 2112;
      v191 = v110;
      _os_log_impl(&dword_19BB39000, v108, OS_LOG_TYPE_INFO, "%{public}@Updating configuration state via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v106);
    -[HMService setConfigurationState:](selfCopy10, "setConfigurationState:", [objectCopy configurationState]);
    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v111 = delegate;
      if (objc_opt_respondsToSelector())
      {
        context5 = [(HMService *)selfCopy10 context];
        delegateCaller5 = [context5 delegateCaller];
        v166[0] = MEMORY[0x1E69E9820];
        v166[1] = 3221225472;
        v166[2] = __32__HMService_mergeFromNewObject___block_invoke_360;
        v166[3] = &unk_1E754E5E8;
        v167 = v111;
        v168 = v161;
        v169 = selfCopy10;
        [delegateCaller5 invokeBlock:v166];
      }
    }

    v17 = 1;
  }

  lastKnownOperatingStateValue = [(HMService *)self lastKnownOperatingStateValue];
  lastKnownOperatingStateValue2 = [objectCopy lastKnownOperatingStateValue];
  v116 = HMFEqualObjects();

  if (!v116 || (-[HMService lastKnownOperatingStateAbnormalReasonsValue](self, "lastKnownOperatingStateAbnormalReasonsValue"), v117 = objc_claimAutoreleasedReturnValue(), [objectCopy lastKnownOperatingStateAbnormalReasonsValue], v118 = objc_claimAutoreleasedReturnValue(), v119 = HMFEqualObjects(), v118, v117, (v119 & 1) == 0))
  {
    v120 = objc_autoreleasePoolPush();
    selfCopy11 = self;
    v122 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
    {
      v123 = HMFGetLogIdentifier();
      lastKnownOperatingStateValue3 = [objectCopy lastKnownOperatingStateValue];
      lastKnownOperatingStateAbnormalReasonsValue = [objectCopy lastKnownOperatingStateAbnormalReasonsValue];
      *buf = 138543874;
      v189 = v123;
      v190 = 2112;
      v191 = lastKnownOperatingStateValue3;
      v192 = 2112;
      v193 = lastKnownOperatingStateAbnormalReasonsValue;
      _os_log_impl(&dword_19BB39000, v122, OS_LOG_TYPE_INFO, "%{public}@Updating last known operating state value and abnormal reasons value via merge to %@ and %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v120);
    lastKnownOperatingStateValue4 = [objectCopy lastKnownOperatingStateValue];
    [(HMService *)selfCopy11 setLastKnownOperatingStateValue:lastKnownOperatingStateValue4];

    lastKnownOperatingStateAbnormalReasonsValue2 = [objectCopy lastKnownOperatingStateAbnormalReasonsValue];
    [(HMService *)selfCopy11 setLastKnownOperatingStateAbnormalReasonsValue:lastKnownOperatingStateAbnormalReasonsValue2];

    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v128 = delegate;
      if (objc_opt_respondsToSelector())
      {
        context6 = [(HMService *)selfCopy11 context];
        delegateCaller6 = [context6 delegateCaller];
        v162[0] = MEMORY[0x1E69E9820];
        v162[1] = 3221225472;
        v162[2] = __32__HMService_mergeFromNewObject___block_invoke_362;
        v162[3] = &unk_1E754E5E8;
        v163 = v128;
        v164 = v161;
        v165 = selfCopy11;
        [delegateCaller6 invokeBlock:v162];
      }
    }

    v17 = 1;
  }

  mediaSourceDisplayOrder = [(HMService *)self mediaSourceDisplayOrder];
  mediaSourceDisplayOrder2 = [objectCopy mediaSourceDisplayOrder];
  v133 = HMFEqualObjects();

  if ((v133 & 1) == 0)
  {
    v134 = objc_autoreleasePoolPush();
    selfCopy12 = self;
    v136 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
    {
      v137 = HMFGetLogIdentifier();
      mediaSourceDisplayOrder3 = [objectCopy mediaSourceDisplayOrder];
      *buf = 138543618;
      v189 = v137;
      v190 = 2112;
      v191 = mediaSourceDisplayOrder3;
      _os_log_impl(&dword_19BB39000, v136, OS_LOG_TYPE_INFO, "%{public}@Updating media display order via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v134);
    mediaSourceDisplayOrder4 = [objectCopy mediaSourceDisplayOrder];
    [(HMService *)selfCopy12 setMediaSourceDisplayOrder:mediaSourceDisplayOrder4];

    v17 = 1;
  }

  mediaSourceIdentifier = [(HMService *)self mediaSourceIdentifier];
  mediaSourceIdentifier2 = [objectCopy mediaSourceIdentifier];
  v142 = HMFEqualObjects();

  if ((v142 & 1) == 0)
  {
    v143 = objc_autoreleasePoolPush();
    selfCopy13 = self;
    v145 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
    {
      v146 = HMFGetLogIdentifier();
      mediaSourceIdentifier3 = [objectCopy mediaSourceIdentifier];
      *buf = 138543618;
      v189 = v146;
      v190 = 2112;
      v191 = mediaSourceIdentifier3;
      _os_log_impl(&dword_19BB39000, v145, OS_LOG_TYPE_INFO, "%{public}@Updating media source identifier via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v143);
    mediaSourceIdentifier4 = [objectCopy mediaSourceIdentifier];
    [(HMService *)selfCopy13 setMediaSourceIdentifier:mediaSourceIdentifier4];

    v17 = 1;
  }

  mediaSourceDisplayOrderModifiable = [(HMService *)self mediaSourceDisplayOrderModifiable];
  if (mediaSourceDisplayOrderModifiable != [objectCopy mediaSourceDisplayOrderModifiable])
  {
    v150 = objc_autoreleasePoolPush();
    selfCopy14 = self;
    v152 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
    {
      v153 = HMFGetLogIdentifier();
      [objectCopy mediaSourceDisplayOrderModifiable];
      v154 = HMFBooleanToString();
      *buf = 138543618;
      v189 = v153;
      v190 = 2112;
      v191 = v154;
      _os_log_impl(&dword_19BB39000, v152, OS_LOG_TYPE_INFO, "%{public}@Updating media source display order modifiable via merge to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v150);
    -[HMService setMediaSourceDisplayOrderModifiable:](selfCopy14, "setMediaSourceDisplayOrderModifiable:", [objectCopy mediaSourceDisplayOrderModifiable]);
    v17 = 1;
  }

  bulletinBoardNotification = [(HMService *)self bulletinBoardNotification];
  bulletinBoardNotification2 = [objectCopy bulletinBoardNotification];
  v157 = [bulletinBoardNotification mergeFromNewObject:bulletinBoardNotification2];

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

- (id)_findCharacteristicWithUniqueIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  characteristics = [(HMService *)self characteristics];
  v6 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(characteristics);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        uniqueIdentifier = [v9 uniqueIdentifier];
        v11 = [uniqueIdentifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_findCharacteristic:(id)characteristic
{
  v19 = *MEMORY[0x1E69E9840];
  characteristicCopy = characteristic;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  characteristics = [(HMService *)self characteristics];
  v6 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(characteristics);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        instanceID = [v9 instanceID];
        v11 = [instanceID isEqual:characteristicCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (HMService)initWithCoder:(id)coder
{
  v80 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy hm_decodeAndCacheUUIDForKey:@"serviceUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v7 = [coderCopy hm_decodeAndCacheStringForKey:@"serviceType"];
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
    selfCopy = 0;
  }

  else
  {
    v10 = [(HMService *)self initWithUUID:v5 accessory:v6 serviceType:v7];
    if (v10)
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMServiceTargetAccessoryUUID"];
      targetAccessoryUUID = v10->_targetAccessoryUUID;
      v10->_targetAccessoryUUID = v11;

      v13 = [coderCopy hm_decodeAndCacheStringForKey:@"associatedServiceType"];
      associatedServiceType = v10->_associatedServiceType;
      v10->_associatedServiceType = v13;

      if (![(NSString *)v10->_associatedServiceType length])
      {
        v15 = v10->_associatedServiceType;
        v10->_associatedServiceType = 0;
      }

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
      name = v10->_name;
      v10->_name = v16;

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceConfiguredName"];
      configuredName = v10->_configuredName;
      v10->_configuredName = v18;

      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceMatterEndpointID"];
      matterEndpointID = v10->_matterEndpointID;
      v10->_matterEndpointID = v20;

      v22 = [coderCopy hm_decodeAndCacheStringForKey:@"serviceDefaultName"];
      defaultName = v10->_defaultName;
      v10->_defaultName = v22;

      v24 = [coderCopy hm_decodeAndCacheStringForKey:@"serviceSubtype"];
      serviceSubtype = v10->_serviceSubtype;
      v10->_serviceSubtype = v24;

      v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceInstanceID"];
      instanceID = v10->_instanceID;
      v10->_instanceID = v26;

      v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastKnownOperatingStateCodingKey"];
      lastKnownOperatingStateValue = v10->_lastKnownOperatingStateValue;
      v10->_lastKnownOperatingStateValue = v28;

      v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMServiceLastKnownOperatingStateAbnormalReasonsCodingKey"];
      lastKnownOperatingStateAbnormalReasonsValue = v10->_lastKnownOperatingStateAbnormalReasonsValue;
      v10->_lastKnownOperatingStateAbnormalReasonsValue = v30;

      v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaSourceIdentifierCodingKey"];
      mediaSourceIdentifier = v10->_mediaSourceIdentifier;
      v10->_mediaSourceIdentifier = v32;

      v34 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mediaSourceDisplayOrderCodingKey"];
      mediaSourceDisplayOrder = v10->_mediaSourceDisplayOrder;
      v10->_mediaSourceDisplayOrder = v34;

      v10->_mediaSourceDisplayOrderModifiable = [coderCopy decodeBoolForKey:@"mediaSourceDisplayOrderModifiableCodingKey"];
      v10->_nameModifiable = [coderCopy decodeBoolForKey:@"nameModifiableCodingKey"];
      v36 = MEMORY[0x1E695DFD8];
      v71[0] = objc_opt_class();
      v71[1] = objc_opt_class();
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
      v38 = [v36 setWithArray:v37];
      v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"characteristics"];

      [(HMMutableArray *)v10->_currentCharacteristics setArray:v39];
      v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceConfigurationState"];
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
        characteristics = [(HMService *)v10 characteristics];
        v46 = [characteristics countByEnumeratingWithState:&v65 objects:v70 count:16];
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
                objc_enumerationMutation(characteristics);
              }

              characteristicType = [*(*(&v65 + 1) + 8 * i) characteristicType];
              v51 = [characteristicType isEqualToString:@"000000D6-0000-1000-8000-0026BB765291"];

              if (v51)
              {
                v10->_configurationState = 1;
                goto LABEL_24;
              }
            }

            v47 = [characteristics countByEnumeratingWithState:&v65 objects:v70 count:16];
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

      v10->_userInteractive = [coderCopy decodeBoolForKey:@"HM.hidden"] ^ 1;
      v52 = [[HMApplicationData alloc] initWithDictionaryFromCoder:coderCopy key:@"HM.appData"];
      applicationData = v10->_applicationData;
      v10->_applicationData = v52;

      v10->_primaryService = [coderCopy decodeBoolForKey:@"HM.primary"];
      v54 = MEMORY[0x1E695DFD8];
      v69[0] = objc_opt_class();
      v69[1] = objc_opt_class();
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
      v56 = [v54 setWithArray:v55];
      v57 = [coderCopy decodeObjectOfClasses:v56 forKey:@"HM.linkedServices"];
      linkedServiceInstanceIDs = v10->_linkedServiceInstanceIDs;
      v10->_linkedServiceInstanceIDs = v57;

      v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.BulletinBoardNotification"];
      bulletinBoardNotificationInternal = v10->_bulletinBoardNotificationInternal;
      v10->_bulletinBoardNotificationInternal = v59;
    }

    self = v10;
    selfCopy = self;
  }

  v61 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  uniqueIdentifier = [(HMService *)self uniqueIdentifier];
  v6 = [v4 initWithName:@"Unique ID" value:uniqueIdentifier];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  serviceType = [(HMService *)self serviceType];
  serviceType2 = [(HMService *)self serviceType];
  v10 = [serviceType2 hasSuffix:@"-0000-1000-8000-0026BB765291"];

  if (v10)
  {
    serviceType3 = [(HMService *)self serviceType];
    serviceType4 = [(HMService *)self serviceType];
    v13 = [serviceType3 substringToIndex:{objc_msgSend(serviceType4, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];

    serviceType = v13;
  }

  v14 = [v7 initWithName:@"Type" value:serviceType];
  [array addObject:v14];

  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  instanceID = [(HMService *)self instanceID];
  v17 = [v15 initWithName:@"Instance ID" value:instanceID];
  [array addObject:v17];

  v18 = [array copy];

  return v18;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)logIdentifier
{
  uniqueIdentifier = [(HMService *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)_updateConfigurationState:(int64_t)state completionHandler:(id)handler
{
  v65 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (![(HMService *)self configurationState])
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v19;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot update configuration state: configuration states not applicable to service", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    context = [(HMService *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v14 = MEMORY[0x1E696ABC0];
    v15 = 48;
    goto LABEL_29;
  }

  if (state <= 1)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMServiceConfigurationStateAsString(state);
      *buf = 138543618;
      v62 = v10;
      v63 = 2112;
      v64 = v11;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot update configuration state: new configuration state is invalid: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    context = [(HMService *)selfCopy2 context];
    delegateCaller = [context delegateCaller];
    v14 = MEMORY[0x1E696ABC0];
    v15 = 3;
    goto LABEL_29;
  }

  if ([(HMService *)self configurationState]!= state)
  {
    v55 = handlerCopy;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    characteristics = [(HMService *)self characteristics];
    v26 = [characteristics countByEnumeratingWithState:&v56 objects:v60 count:16];
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
          objc_enumerationMutation(characteristics);
        }

        v30 = *(*(&v56 + 1) + 8 * v29);
        characteristicType = [v30 characteristicType];
        v32 = [characteristicType isEqualToString:@"000000D6-0000-1000-8000-0026BB765291"];

        if (v32)
        {
          break;
        }

        if (v27 == ++v29)
        {
          v27 = [characteristics countByEnumeratingWithState:&v56 objects:v60 count:16];
          if (v27)
          {
            goto LABEL_15;
          }

          goto LABEL_21;
        }
      }

      context = v30;

      if (!context)
      {
        goto LABEL_26;
      }

      v33 = [HMService _mapToIsConfiguredValueFromServiceConfigurationState:state];
      handlerCopy = v55;
      if (v33)
      {
        delegateCaller = v33;
        accessory = [(HMService *)self accessory];
        if (accessory)
        {
          context3 = accessory;
          [accessory _writeValue:delegateCaller forCharacteristic:context service:self completionHandler:v55];
        }

        else
        {
          v48 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v50 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            *buf = 138543362;
            v62 = v51;
            _os_log_impl(&dword_19BB39000, v50, OS_LOG_TYPE_ERROR, "%{public}@Cannot update configuration state: accessory is nil", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v48);
          context2 = [(HMService *)selfCopy3 context];
          delegateCaller2 = [context2 delegateCaller];
          v54 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
          [delegateCaller2 callCompletion:v55 error:v54];

          context3 = 0;
        }
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          v45 = HMServiceConfigurationStateAsString(state);
          *buf = 138543618;
          v62 = v44;
          v63 = 2112;
          v64 = v45;
          _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_ERROR, "%{public}@Cannot update configuration state: mapped value is nil for %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v41);
        context3 = [(HMService *)selfCopy4 context];
        delegateCaller3 = [context3 delegateCaller];
        v47 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [delegateCaller3 callCompletion:v55 error:v47];

        delegateCaller = 0;
      }

      goto LABEL_30;
    }

LABEL_21:

LABEL_26:
    v36 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v38 = HMFGetOSLogHandle();
    handlerCopy = v55;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v39;
      _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@Cannot update configuration state: cannot find IsConfigured characteristic", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
    context = [(HMService *)selfCopy5 context];
    delegateCaller = [context delegateCaller];
    v14 = MEMORY[0x1E696ABC0];
    v15 = 2;
LABEL_29:
    context3 = [v14 hmErrorWithCode:v15];
    [delegateCaller callCompletion:handlerCopy error:context3];
LABEL_30:

    goto LABEL_31;
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = HMServiceConfigurationStateAsString(state);
    *buf = 138543618;
    v62 = v23;
    v63 = 2112;
    v64 = v24;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Not updating configuration state because it is already %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  context = [(HMService *)selfCopy6 context];
  delegateCaller = [context delegateCaller];
  [delegateCaller callCompletion:handlerCopy error:0];
LABEL_31:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)updateConfigurationState:(int64_t)state completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMService *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMService updateConfigurationState:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__HMService_updateConfigurationState_completionHandler___block_invoke;
    block[3] = &unk_1E754DB20;
    block[4] = self;
    stateCopy = state;
    v23 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_updateAssociatedServiceType:(id)type completionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  v8 = typeCopy;
  v18 = v8;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_1F0E92498;
  }

  associatedServiceType = [(HMService *)self associatedServiceType];
  v11 = [(__CFString *)v9 isEqual:associatedServiceType];

  if (v11)
  {
    context = [(HMService *)self context];
    delegateCaller = [context delegateCaller];
    [delegateCaller callCompletion:handlerCopy error:0];
  }

  else
  {
    accessory = [(HMService *)self accessory];
    if (accessory)
    {
      context = accessory;
      [accessory _updateAssociatedServiceType:v9 forService:self completionHandler:handlerCopy];
    }

    else
    {
      context2 = [(HMService *)self context];
      delegateCaller2 = [context2 delegateCaller];
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:21 userInfo:0];
      [delegateCaller2 callCompletion:handlerCopy error:v17];

      context = 0;
    }
  }
}

- (void)updateAssociatedServiceType:(NSString *)serviceType completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = serviceType;
  v7 = completion;
  context = [(HMService *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMService updateAssociatedServiceType:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__HMService_updateAssociatedServiceType_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)_updateName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  accessory = [(HMService *)self accessory];
  if (accessory)
  {
    if ([(HMService *)self isNameModifiable])
    {
      [accessory _updateName:nameCopy forService:self completionHandler:handlerCopy];
      goto LABEL_7;
    }

    context = [(HMService *)self context];
    delegateCaller = [context delegateCaller];
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  }

  else
  {
    context = [(HMService *)self context];
    delegateCaller = [context delegateCaller];
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:21 userInfo:0];
  }

  v11 = v10;
  [delegateCaller callCompletion:handlerCopy error:v10];

LABEL_7:
}

- (void)updateName:(NSString *)name completionHandler:(void *)completion
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = name;
  v7 = completion;
  context = [(HMService *)self context];
  if (!v7)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMService updateName:completionHandler:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
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
        queue = [v9 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __42__HMService_updateName_completionHandler___block_invoke;
        block[3] = &unk_1E754E0F8;
        block[4] = self;
        v31 = v6;
        v32 = v7;
        dispatch_async(queue, block);

        goto LABEL_16;
      }

      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      delegateCaller = [v9 delegateCaller];
      v15DelegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
      [delegateCaller callCompletion:v7 error:v15DelegateCaller];
    }

    else
    {
      delegateCaller = [(HMService *)self context];
      v15DelegateCaller = [delegateCaller delegateCaller];
      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      [v15DelegateCaller callCompletion:v7 error:v21];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, delegateCaller);
  }

LABEL_16:
  v22 = *MEMORY[0x1E69E9840];
}

- (NSArray)linkedServices
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  accessory = [(HMService *)self accessory];
  services = [accessory services];

  v6 = [services countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(services);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        linkedServiceInstanceIDs = self->_linkedServiceInstanceIDs;
        instanceID = [v10 instanceID];
        LODWORD(linkedServiceInstanceIDs) = [(NSArray *)linkedServiceInstanceIDs containsObject:instanceID];

        if (linkedServiceInstanceIDs)
        {
          [array addObject:v10];
        }
      }

      v7 = [services countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([array count])
  {
    v13 = array;
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
  accessory = [(HMService *)self accessory];
  uuid = [accessory uuid];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", self->_instanceID];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = hm_assistantIdentifierWithSalts(@"SV", uuid, v6);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSURL)homeObjectURLInternal
{
  uniqueIdentifier = [(HMService *)self uniqueIdentifier];
  os_unfair_lock_lock_with_options();
  homeObjectURLInternal = self->_homeObjectURLInternal;
  if (!homeObjectURLInternal)
  {
    uUIDString = [uniqueIdentifier UUIDString];
    v6 = [HMBulletinObjectTuple tupleWithQueryType:2 uuidString:uUIDString];

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

- (void)setApplicationData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  applicationData = self->_applicationData;
  self->_applicationData = dataCopy;

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

- (void)setMediaSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  mediaSourceIdentifier = self->_mediaSourceIdentifier;
  self->_mediaSourceIdentifier = identifierCopy;

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
  unsignedIntegerValue = [(NSNumber *)self->_lastKnownOperatingStateAbnormalReasonsValue unsignedIntegerValue];
  os_unfair_lock_unlock(&self->_lock);
  return unsignedIntegerValue;
}

- (int64_t)lastKnownOperatingState
{
  os_unfair_lock_lock_with_options();
  integerValue = [(NSNumber *)self->_lastKnownOperatingStateValue integerValue];
  os_unfair_lock_unlock(&self->_lock);
  return integerValue;
}

- (BOOL)hasOperatingStateAbnormalReasons
{
  lastKnownOperatingStateAbnormalReasonsValue = [(HMService *)self lastKnownOperatingStateAbnormalReasonsValue];
  v3 = lastKnownOperatingStateAbnormalReasonsValue != 0;

  return v3;
}

- (BOOL)hasOperatingState
{
  lastKnownOperatingStateValue = [(HMService *)self lastKnownOperatingStateValue];
  v3 = lastKnownOperatingStateValue != 0;

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
    accessoryUniqueIdentifier = [(HMService *)self accessoryUniqueIdentifier];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", self->_instanceID];
    v13[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v8 = [v4 hm_deriveUUIDFromBaseUUID:accessoryUniqueIdentifier withSalts:v7];
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
  currentCharacteristics = [(HMService *)self currentCharacteristics];
  array = [currentCharacteristics array];

  v5 = [array countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(array);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        characteristicType = [v10 characteristicType];
        v12 = [characteristicType hasSuffix:@"-0000-1000-8000-0026BB765291"];

        if (v12)
        {
          unsupportedCharacteristicsForShortcutConditions = [(__objc2_class *)v8[361] unsupportedCharacteristicsForShortcutConditions];
          characteristicType2 = [v10 characteristicType];
          characteristicType3 = [v10 characteristicType];
          v16 = [characteristicType3 hasSuffix:@"-0000-1000-8000-0026BB765291"];

          if (v16)
          {
            characteristicType4 = [v10 characteristicType];
            characteristicType5 = [v10 characteristicType];
            v19 = v7;
            v20 = array;
            v21 = [characteristicType4 substringToIndex:{objc_msgSend(characteristicType5, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];

            characteristicType2 = v21;
            array = v20;
            v7 = v19;
            v8 = off_1E7545000;
          }

          v22 = [unsupportedCharacteristicsForShortcutConditions containsObject:characteristicType2];

          v6 = v26;
          if ((v22 & 1) == 0)
          {
            [v25 addObject:v10];
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [array countByEnumeratingWithState:&v27 objects:v31 count:16];
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
  serviceType = [(HMService *)self serviceType];
  serviceType2 = [(HMService *)self serviceType];
  v6 = [serviceType2 hasSuffix:@"-0000-1000-8000-0026BB765291"];

  if (v6)
  {
    serviceType3 = [(HMService *)self serviceType];
    serviceType4 = [(HMService *)self serviceType];
    v9 = [serviceType3 substringToIndex:{objc_msgSend(serviceType4, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];

    serviceType = v9;
  }

  v10 = [v3 hmf_stringForKey:serviceType];

  if (v10)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    selfCopy = self;
    characteristicsSupportedForShortcutConditions = [(HMService *)self characteristicsSupportedForShortcutConditions];
    v12 = [characteristicsSupportedForShortcutConditions countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(characteristicsSupportedForShortcutConditions);
          }

          v16 = *(*(&v33 + 1) + 8 * v15);
          characteristicType = [v16 characteristicType];
          characteristicType2 = [v16 characteristicType];
          v19 = [characteristicType2 hasSuffix:@"-0000-1000-8000-0026BB765291"];

          if (v19)
          {
            characteristicType3 = [v16 characteristicType];
            characteristicType4 = [v16 characteristicType];
            v22 = v14;
            v23 = v10;
            v24 = characteristicsSupportedForShortcutConditions;
            v25 = [characteristicType3 substringToIndex:{objc_msgSend(characteristicType4, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];

            characteristicType = v25;
            characteristicsSupportedForShortcutConditions = v24;
            v10 = v23;
            v14 = v22;
            v13 = v32;
          }

          v26 = [v10 isEqualToString:characteristicType];

          if (v26)
          {
            firstObject = v16;
            goto LABEL_17;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [characteristicsSupportedForShortcutConditions countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    self = selfCopy;
  }

  characteristicsSupportedForShortcutConditions = [(HMService *)self currentCharacteristics];
  array = [characteristicsSupportedForShortcutConditions array];
  firstObject = [array firstObject];

LABEL_17:
  v29 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (NSArray)characteristics
{
  currentCharacteristics = [(HMService *)self currentCharacteristics];
  array = [currentCharacteristics array];

  return array;
}

- (void)setConfigurationState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_configurationState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)configurationState
{
  os_unfair_lock_lock_with_options();
  configurationState = self->_configurationState;
  os_unfair_lock_unlock(&self->_lock);
  return configurationState;
}

- (void)setServiceSubtype:(id)subtype
{
  subtypeCopy = subtype;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:subtypeCopy];
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

- (void)setAssociatedServiceType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:typeCopy];
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

- (void)setDefaultName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
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

- (void)setConfiguredName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
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

- (void)setMatterEndpointID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v4 = [dCopy copy];
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

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
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

- (void)setServiceType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:typeCopy];
  serviceType = self->_serviceType;
  self->_serviceType = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_accessory, accessoryCopy);

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
  selfCopy = self;
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
    [(HMService *)selfCopy setAccessory:0];
    [(HMService *)selfCopy setContext:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:selfCopy];
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

- (void)__configureWithContext:(id)context accessory:(id)accessory
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  accessoryCopy = accessory;
  [(HMService *)self setContext:contextCopy];
  [(HMService *)self setAccessory:accessoryCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  characteristics = [(HMService *)self characteristics];
  v9 = [characteristics countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(characteristics);
        }

        [*(*(&v15 + 1) + 8 * v12++) __configureWithContext:contextCopy service:self];
      }

      while (v10 != v12);
      v10 = [characteristics countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  bulletinBoardNotificationInternal = [(HMService *)self bulletinBoardNotificationInternal];
  [bulletinBoardNotificationInternal __configureWithContext:contextCopy];

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uniqueIdentifier = [(HMService *)self uniqueIdentifier];
      uniqueIdentifier2 = [(HMService *)v5 uniqueIdentifier];

      v8 = [uniqueIdentifier isEqual:uniqueIdentifier2];
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
  uniqueIdentifier = [(HMService *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (HMService)initWithUUID:(id)d accessory:(id)accessory serviceType:(id)type
{
  dCopy = d;
  accessoryCopy = accessory;
  typeCopy = type;
  v23.receiver = self;
  v23.super_class = HMService;
  v12 = [(HMService *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, d);
    objc_storeWeak(&v13->_accessory, accessoryCopy);
    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    accessoryUniqueIdentifier = v13->_accessoryUniqueIdentifier;
    v13->_accessoryUniqueIdentifier = uniqueIdentifier;

    v16 = [typeCopy copy];
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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v7 = [HMAccessory alloc];
  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [(HMAccessory *)v7 initWithUUID:uUID2];
  v10 = [(HMService *)self initWithUUID:uUID accessory:v9 serviceType:@"00000049-0000-1000-8000-0026BB765291"];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)__localizedDescriptionForServiceType:(id)type
{
  v3 = localizationKeyForServiceType(type);
  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedOrCustomString:v3];

  return v5;
}

+ (id)_mapToIsConfiguredValueFromServiceConfigurationState:(int64_t)state
{
  v3 = &unk_1F0EFD2E0;
  if (state != 3)
  {
    v3 = 0;
  }

  if (state == 2)
  {
    return &unk_1F0EFD2C8;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)_mapToServiceConfigurationStateFromIsConfiguredValue:(id)value
{
  if (!value)
  {
    return 1;
  }

  integerValue = [value integerValue];
  v4 = 3;
  if (integerValue != 1)
  {
    v4 = 1;
  }

  if (integerValue)
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
  [self initializeCharacteristicDictionaries];
  v2 = _unsupportedCharacteristicsForShortcutConditions;

  return v2;
}

+ (id)defaultCharacteristicByServiceDictionary
{
  [self initializeCharacteristicDictionaries];
  v2 = _defaultCharacteristicByServiceDictionary;

  return v2;
}

+ (void)initializeCharacteristicDictionaries
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__HMService_initializeCharacteristicDictionaries__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
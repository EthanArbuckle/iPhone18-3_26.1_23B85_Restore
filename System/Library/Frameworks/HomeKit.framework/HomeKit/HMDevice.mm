@interface HMDevice
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeFromNewObject:(id)object;
- (BOOL)supportsHH2;
- (HMDevice)init;
- (HMDevice)initWithCoder:(id)coder;
- (HMDevice)initWithUUID:(id)d name:(id)name isCurrentDevice:(BOOL)device;
- (HMFKey)rapportIRK;
- (HMFProductInfo)productInfo;
- (NSArray)attributeDescriptions;
- (NSString)idsDestination;
- (NSString)name;
- (NSString)shortDescription;
- (NSUUID)idsIdentifier;
- (NSUUID)uniqueIdentifier;
- (id)IDSDestinationForIDSService:(id)service;
- (id)IDSDeviceForIDSService:(id)service;
- (id)hmmmMessageDestination;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setIdsDestination:(id)destination;
- (void)setIdsIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setProductInfo:(id)info;
- (void)setRapportIRK:(id)k;
- (void)setSupportsHH2:(BOOL)h2;
@end

@implementation HMDevice

- (id)logIdentifier
{
  uuid = [(HMDevice *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  uuid = [(HMDevice *)self uuid];
  v6 = [v4 initWithName:@"UUID" value:uuid];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  uniqueIdentifier = [(HMDevice *)self uniqueIdentifier];
  v9 = [v7 initWithName:@"Identifier" value:uniqueIdentifier];
  [array addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  name = [(HMDevice *)self name];
  v12 = [v10 initWithName:@"Name" value:name];
  [array addObject:v12];

  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  productInfo = [(HMDevice *)self productInfo];
  v15 = [v13 initWithName:@"Product Info" value:productInfo];
  [array addObject:v15];

  v16 = objc_alloc(MEMORY[0x1E69A29C8]);
  rapportIRK = [(HMDevice *)self rapportIRK];
  v18 = [v16 initWithName:@"Rapport IRK" value:rapportIRK];
  [array addObject:v18];

  if ([(HMDevice *)self isCurrentDevice])
  {
    v19 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMDevice *)self isCurrentDevice];
    v20 = HMFBooleanToString();
    v21 = [v19 initWithName:@"Is Current Device" value:v20];
    [array addObject:v21];
  }

  if ([(HMDevice *)self supportsHH2])
  {
    v22 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMDevice *)self supportsHH2];
    v23 = HMFBooleanToString();
    v24 = [v22 initWithName:@"Supports HH2" value:v23];
    [array addObject:v24];
  }

  v25 = [array copy];

  return v25;
}

- (NSString)shortDescription
{
  uniqueIdentifier = [(HMDevice *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (BOOL)mergeFromNewObject:(id)object
{
  v67 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    name = [v6 name];
    name2 = [(HMDevice *)self name];
    v60 = name;
    v9 = HMFEqualObjects();

    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        name3 = [(HMDevice *)selfCopy name];
        *buf = 138543874;
        v62 = v13;
        v63 = 2112;
        v64 = name3;
        v65 = 2112;
        v66 = name;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating name from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDevice *)selfCopy setName:name];
    }

    productInfo = [v6 productInfo];
    productInfo2 = [(HMDevice *)self productInfo];
    v17 = HMFEqualObjects();

    if (v17)
    {
      v18 = v9 ^ 1;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        productInfo3 = [(HMDevice *)selfCopy2 productInfo];
        *buf = 138543874;
        v62 = v22;
        v63 = 2112;
        v64 = productInfo3;
        v65 = 2112;
        v66 = productInfo;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating productInfo from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      [(HMDevice *)selfCopy2 setProductInfo:productInfo];
      v18 = 1;
    }

    supportsHH2 = [v6 supportsHH2];
    if (supportsHH2 != [(HMDevice *)self supportsHH2])
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        [(HMDevice *)selfCopy3 supportsHH2];
        HMFBooleanToString();
        v29 = v58 = v25;
        HMFBooleanToString();
        v31 = v30 = productInfo;
        *buf = 138543874;
        v62 = v28;
        v63 = 2112;
        v64 = v29;
        v65 = 2112;
        v66 = v31;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating supportsHH2 from %@ to %@", buf, 0x20u);

        productInfo = v30;
        v25 = v58;
      }

      objc_autoreleasePoolPop(v25);
      [(HMDevice *)selfCopy3 setSupportsHH2:supportsHH2];
      v18 = 1;
    }

    v59 = productInfo;
    rapportIRK = [v6 rapportIRK];
    rapportIRK2 = [(HMDevice *)self rapportIRK];
    v34 = HMFEqualObjects();

    if ((v34 & 1) == 0)
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        rapportIRK3 = [(HMDevice *)selfCopy4 rapportIRK];
        *buf = 138543874;
        v62 = v38;
        v63 = 2112;
        v64 = rapportIRK3;
        v65 = 2112;
        v66 = rapportIRK;
        _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_INFO, "%{public}@Updating rapportIRK from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v35);
      [(HMDevice *)selfCopy4 setRapportIRK:rapportIRK];
      v18 = 1;
    }

    idsIdentifier = [v6 idsIdentifier];
    idsIdentifier2 = [(HMDevice *)self idsIdentifier];
    v42 = HMFEqualObjects();

    if ((v42 & 1) == 0)
    {
      v43 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        idsIdentifier3 = [(HMDevice *)selfCopy5 idsIdentifier];
        *buf = 138543874;
        v62 = v46;
        v63 = 2112;
        v64 = idsIdentifier3;
        v65 = 2112;
        v66 = idsIdentifier;
        _os_log_impl(&dword_19BB39000, v45, OS_LOG_TYPE_INFO, "%{public}@Updating idsIdentifier from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v43);
      [(HMDevice *)selfCopy5 setIdsIdentifier:idsIdentifier];
      v18 = 1;
    }

    idsDestination = [v6 idsDestination];
    idsDestination2 = [(HMDevice *)self idsDestination];
    v50 = HMFEqualObjects();

    if ((v50 & 1) == 0)
    {
      v51 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = HMFGetLogIdentifier();
        idsDestination3 = [(HMDevice *)selfCopy6 idsDestination];
        *buf = 138543874;
        v62 = v54;
        v63 = 2112;
        v64 = idsDestination3;
        v65 = 2112;
        v66 = idsDestination;
        _os_log_impl(&dword_19BB39000, v53, OS_LOG_TYPE_INFO, "%{public}@Updating idsDestination from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v51);
      [(HMDevice *)selfCopy6 setIdsDestination:idsDestination];
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  v56 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(HMDevice *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"HM.identifier"];

  name = [(HMDevice *)self name];
  [coderCopy encodeObject:name forKey:@"HM.name"];

  productInfo = [(HMDevice *)self productInfo];
  [coderCopy encodeObject:productInfo forKey:@"HM.productInfo"];

  [coderCopy encodeBool:-[HMDevice isCurrentDevice](self forKey:{"isCurrentDevice"), @"HM.currentDevice"}];
  [coderCopy encodeBool:-[HMDevice supportsHH2](self forKey:{"supportsHH2"), @"HM.supportsHH2"}];
  rapportIRK = [(HMDevice *)self rapportIRK];
  [coderCopy encodeObject:rapportIRK forKey:@"HM.rpDeviceIRK"];

  idsIdentifier = [(HMDevice *)self idsIdentifier];
  [coderCopy encodeObject:idsIdentifier forKey:@"HM.idsIdentifier"];

  idsDestination = [(HMDevice *)self idsDestination];
  [coderCopy encodeObject:idsDestination forKey:@"HM.idsDestination"];
}

- (HMDevice)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.name"];
  v7 = [coderCopy decodeBoolForKey:@"HM.currentDevice"];
  if (v5)
  {
    v8 = [(HMDevice *)self initWithUUID:v5 name:v6 isCurrentDevice:v7];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.productInfo"];
    [(HMDevice *)v8 setProductInfo:v9];

    -[HMDevice setSupportsHH2:](v8, "setSupportsHH2:", [coderCopy decodeBoolForKey:@"HM.supportsHH2"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.rpDeviceIRK"];
    [(HMDevice *)v8 setRapportIRK:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.idsIdentifier"];
    [(HMDevice *)v8 setIdsIdentifier:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.idsDestination"];
    [(HMDevice *)v8 setIdsDestination:v12];

    selfCopy = v8;
    v14 = selfCopy;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = 0;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded UUID: %@ name: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    uuid = [(HMDevice *)self uuid];
    uuid2 = [v6 uuid];
    if (![uuid isEqual:uuid2])
    {
      goto LABEL_13;
    }

    name = [(HMDevice *)self name];
    name2 = [v6 name];
    v11 = HMFEqualObjects();

    if (!v11)
    {
      goto LABEL_13;
    }

    productInfo = [(HMDevice *)self productInfo];
    productInfo2 = [v6 productInfo];
    v14 = HMFEqualObjects();

    if (!v14)
    {
      goto LABEL_13;
    }

    isCurrentDevice = [(HMDevice *)self isCurrentDevice];
    if (isCurrentDevice != [v6 isCurrentDevice])
    {
      goto LABEL_13;
    }

    supportsHH2 = [(HMDevice *)self supportsHH2];
    if (supportsHH2 != [v6 supportsHH2])
    {
      goto LABEL_13;
    }

    rapportIRK = [(HMDevice *)self rapportIRK];
    rapportIRK2 = [v6 rapportIRK];
    v19 = HMFEqualObjects();

    if (!v19)
    {
      goto LABEL_13;
    }

    idsIdentifier = [(HMDevice *)self idsIdentifier];
    idsIdentifier2 = [v6 idsIdentifier];
    v22 = HMFEqualObjects();

    if (v22)
    {
      idsDestination = [(HMDevice *)self idsDestination];
      idsDestination2 = [v6 idsDestination];
      v25 = HMFEqualObjects();
    }

    else
    {
LABEL_13:
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (unint64_t)hash
{
  uuid = [(HMDevice *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (void)setIdsDestination:(id)destination
{
  destinationCopy = destination;
  os_unfair_lock_lock_with_options();
  idsDestination = self->_idsDestination;
  self->_idsDestination = destinationCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)idsDestination
{
  os_unfair_lock_lock_with_options();
  v3 = self->_idsDestination;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIdsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  idsIdentifier = self->_idsIdentifier;
  self->_idsIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)idsIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_idsIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRapportIRK:(id)k
{
  kCopy = k;
  os_unfair_lock_lock_with_options();
  rapportIRK = self->_rapportIRK;
  self->_rapportIRK = kCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMFKey)rapportIRK
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rapportIRK;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSupportsHH2:(BOOL)h2
{
  os_unfair_lock_lock_with_options();
  self->_supportsHH2 = h2;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsHH2
{
  os_unfair_lock_lock_with_options();
  supportsHH2 = self->_supportsHH2;
  os_unfair_lock_unlock(&self->_lock);
  return supportsHH2;
}

- (void)setProductInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock_with_options();
  v4 = [infoCopy copy];
  productInfo = self->_productInfo;
  self->_productInfo = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMFProductInfo)productInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_productInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  name = self->_name;
  self->_name = nameCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_uuid];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (HMDevice)initWithUUID:(id)d name:(id)name isCurrentDevice:(BOOL)device
{
  dCopy = d;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = HMDevice;
  v10 = [(HMDevice *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    v12 = [dCopy copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;

    v11->_currentDevice = device;
  }

  return v11;
}

- (HMDevice)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t22_4067 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22_4067, &__block_literal_global_4068);
  }

  v3 = logCategory__hmf_once_v23_4069;

  return v3;
}

uint64_t __23__HMDevice_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v23_4069 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)IDSDestinationForIDSService:(id)service
{
  v22[3] = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  idsDestination = [(HMDevice *)self idsDestination];
  if (idsDestination && IDSFoundationLibraryCore())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v6 = getIDSDestinationClass_softClass;
    v19 = getIDSDestinationClass_softClass;
    if (!getIDSDestinationClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getIDSDestinationClass_block_invoke;
      v21 = &unk_1E754CB30;
      v22[0] = &v16;
      __getIDSDestinationClass_block_invoke(buf);
      v6 = v17[3];
    }

    v7 = v6;
    _Block_object_dispose(&v16, 8);
    v8 = [MEMORY[0x1E695DFD8] setWithObject:{idsDestination, v16}];
    v9 = [v6 destinationWithStrings:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138544130;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = idsDestination;
      *&buf[22] = 2112;
      v21 = serviceCopy;
      LOWORD(v22[0]) = 2112;
      *(v22 + 2) = selfCopy;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to get IDSDestination from destination: (%@) for service: (%@) on device: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)IDSDeviceForIDSService:(id)service
{
  v28 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  idsIdentifier = [(HMDevice *)self idsIdentifier];
  if (!idsIdentifier)
  {
    goto LABEL_14;
  }

  if (!IDSLibraryCore_frameworkLibrary)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __IDSLibraryCore_block_invoke;
    v23 = &__block_descriptor_40_e5_v8__0l;
    v24 = 0;
    v26 = xmmword_1E7546CA0;
    v27 = 0;
    IDSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (IDSLibraryCore_frameworkLibrary)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    devices = [serviceCopy devices];
    v7 = [devices countByEnumeratingWithState:&v16 objects:v25 count:16];
    if (v7)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(devices);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          uniqueIDOverride = [v10 uniqueIDOverride];
          uUIDString = [idsIdentifier UUIDString];
          v13 = [uniqueIDOverride isEqualToString:uUIDString];

          if (v13)
          {
            v7 = v10;
            goto LABEL_16;
          }
        }

        v7 = [devices countByEnumeratingWithState:&v16 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
LABEL_14:
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)hmmmMessageDestination
{
  v3 = [HMMMMessageDestination alloc];
  idsIdentifier = [(HMDevice *)self idsIdentifier];
  uUIDString = [idsIdentifier UUIDString];
  idsDestination = [(HMDevice *)self idsDestination];
  v7 = [(HMMMMessageDestination *)v3 initWithIDSIdentifier:uUIDString idsTokenURI:idsDestination];

  return v7;
}

@end
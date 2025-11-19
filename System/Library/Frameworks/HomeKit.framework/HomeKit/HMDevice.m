@interface HMDevice
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeFromNewObject:(id)a3;
- (BOOL)supportsHH2;
- (HMDevice)init;
- (HMDevice)initWithCoder:(id)a3;
- (HMDevice)initWithUUID:(id)a3 name:(id)a4 isCurrentDevice:(BOOL)a5;
- (HMFKey)rapportIRK;
- (HMFProductInfo)productInfo;
- (NSArray)attributeDescriptions;
- (NSString)idsDestination;
- (NSString)name;
- (NSString)shortDescription;
- (NSUUID)idsIdentifier;
- (NSUUID)uniqueIdentifier;
- (id)IDSDestinationForIDSService:(id)a3;
- (id)IDSDeviceForIDSService:(id)a3;
- (id)hmmmMessageDestination;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setIdsDestination:(id)a3;
- (void)setIdsIdentifier:(id)a3;
- (void)setName:(id)a3;
- (void)setProductInfo:(id)a3;
- (void)setRapportIRK:(id)a3;
- (void)setSupportsHH2:(BOOL)a3;
@end

@implementation HMDevice

- (id)logIdentifier
{
  v2 = [(HMDevice *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMDevice *)self uuid];
  v6 = [v4 initWithName:@"UUID" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMDevice *)self uniqueIdentifier];
  v9 = [v7 initWithName:@"Identifier" value:v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = [(HMDevice *)self name];
  v12 = [v10 initWithName:@"Name" value:v11];
  [v3 addObject:v12];

  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  v14 = [(HMDevice *)self productInfo];
  v15 = [v13 initWithName:@"Product Info" value:v14];
  [v3 addObject:v15];

  v16 = objc_alloc(MEMORY[0x1E69A29C8]);
  v17 = [(HMDevice *)self rapportIRK];
  v18 = [v16 initWithName:@"Rapport IRK" value:v17];
  [v3 addObject:v18];

  if ([(HMDevice *)self isCurrentDevice])
  {
    v19 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMDevice *)self isCurrentDevice];
    v20 = HMFBooleanToString();
    v21 = [v19 initWithName:@"Is Current Device" value:v20];
    [v3 addObject:v21];
  }

  if ([(HMDevice *)self supportsHH2])
  {
    v22 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMDevice *)self supportsHH2];
    v23 = HMFBooleanToString();
    v24 = [v22 initWithName:@"Supports HH2" value:v23];
    [v3 addObject:v24];
  }

  v25 = [v3 copy];

  return v25;
}

- (NSString)shortDescription
{
  v2 = [(HMDevice *)self uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 name];
    v8 = [(HMDevice *)self name];
    v60 = v7;
    v9 = HMFEqualObjects();

    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [(HMDevice *)v11 name];
        *buf = 138543874;
        v62 = v13;
        v63 = 2112;
        v64 = v14;
        v65 = 2112;
        v66 = v7;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating name from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDevice *)v11 setName:v7];
    }

    v15 = [v6 productInfo];
    v16 = [(HMDevice *)self productInfo];
    v17 = HMFEqualObjects();

    if (v17)
    {
      v18 = v9 ^ 1;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [(HMDevice *)v20 productInfo];
        *buf = 138543874;
        v62 = v22;
        v63 = 2112;
        v64 = v23;
        v65 = 2112;
        v66 = v15;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating productInfo from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      [(HMDevice *)v20 setProductInfo:v15];
      v18 = 1;
    }

    v24 = [v6 supportsHH2];
    if (v24 != [(HMDevice *)self supportsHH2])
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        [(HMDevice *)v26 supportsHH2];
        HMFBooleanToString();
        v29 = v58 = v25;
        HMFBooleanToString();
        v31 = v30 = v15;
        *buf = 138543874;
        v62 = v28;
        v63 = 2112;
        v64 = v29;
        v65 = 2112;
        v66 = v31;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating supportsHH2 from %@ to %@", buf, 0x20u);

        v15 = v30;
        v25 = v58;
      }

      objc_autoreleasePoolPop(v25);
      [(HMDevice *)v26 setSupportsHH2:v24];
      v18 = 1;
    }

    v59 = v15;
    v32 = [v6 rapportIRK];
    v33 = [(HMDevice *)self rapportIRK];
    v34 = HMFEqualObjects();

    if ((v34 & 1) == 0)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        v39 = [(HMDevice *)v36 rapportIRK];
        *buf = 138543874;
        v62 = v38;
        v63 = 2112;
        v64 = v39;
        v65 = 2112;
        v66 = v32;
        _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_INFO, "%{public}@Updating rapportIRK from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v35);
      [(HMDevice *)v36 setRapportIRK:v32];
      v18 = 1;
    }

    v40 = [v6 idsIdentifier];
    v41 = [(HMDevice *)self idsIdentifier];
    v42 = HMFEqualObjects();

    if ((v42 & 1) == 0)
    {
      v43 = objc_autoreleasePoolPush();
      v44 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        v47 = [(HMDevice *)v44 idsIdentifier];
        *buf = 138543874;
        v62 = v46;
        v63 = 2112;
        v64 = v47;
        v65 = 2112;
        v66 = v40;
        _os_log_impl(&dword_19BB39000, v45, OS_LOG_TYPE_INFO, "%{public}@Updating idsIdentifier from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v43);
      [(HMDevice *)v44 setIdsIdentifier:v40];
      v18 = 1;
    }

    v48 = [v6 idsDestination];
    v49 = [(HMDevice *)self idsDestination];
    v50 = HMFEqualObjects();

    if ((v50 & 1) == 0)
    {
      v51 = objc_autoreleasePoolPush();
      v52 = self;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = HMFGetLogIdentifier();
        v55 = [(HMDevice *)v52 idsDestination];
        *buf = 138543874;
        v62 = v54;
        v63 = 2112;
        v64 = v55;
        v65 = 2112;
        v66 = v48;
        _os_log_impl(&dword_19BB39000, v53, OS_LOG_TYPE_INFO, "%{public}@Updating idsDestination from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v51);
      [(HMDevice *)v52 setIdsDestination:v48];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDevice *)self uuid];
  [v4 encodeObject:v5 forKey:@"HM.identifier"];

  v6 = [(HMDevice *)self name];
  [v4 encodeObject:v6 forKey:@"HM.name"];

  v7 = [(HMDevice *)self productInfo];
  [v4 encodeObject:v7 forKey:@"HM.productInfo"];

  [v4 encodeBool:-[HMDevice isCurrentDevice](self forKey:{"isCurrentDevice"), @"HM.currentDevice"}];
  [v4 encodeBool:-[HMDevice supportsHH2](self forKey:{"supportsHH2"), @"HM.supportsHH2"}];
  v8 = [(HMDevice *)self rapportIRK];
  [v4 encodeObject:v8 forKey:@"HM.rpDeviceIRK"];

  v9 = [(HMDevice *)self idsIdentifier];
  [v4 encodeObject:v9 forKey:@"HM.idsIdentifier"];

  v10 = [(HMDevice *)self idsDestination];
  [v4 encodeObject:v10 forKey:@"HM.idsDestination"];
}

- (HMDevice)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.name"];
  v7 = [v4 decodeBoolForKey:@"HM.currentDevice"];
  if (v5)
  {
    v8 = [(HMDevice *)self initWithUUID:v5 name:v6 isCurrentDevice:v7];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.productInfo"];
    [(HMDevice *)v8 setProductInfo:v9];

    -[HMDevice setSupportsHH2:](v8, "setSupportsHH2:", [v4 decodeBoolForKey:@"HM.supportsHH2"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.rpDeviceIRK"];
    [(HMDevice *)v8 setRapportIRK:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.idsIdentifier"];
    [(HMDevice *)v8 setIdsIdentifier:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.idsDestination"];
    [(HMDevice *)v8 setIdsDestination:v12];

    v13 = v8;
    v14 = v13;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v13 = self;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMDevice *)self uuid];
    v8 = [v6 uuid];
    if (![v7 isEqual:v8])
    {
      goto LABEL_13;
    }

    v9 = [(HMDevice *)self name];
    v10 = [v6 name];
    v11 = HMFEqualObjects();

    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = [(HMDevice *)self productInfo];
    v13 = [v6 productInfo];
    v14 = HMFEqualObjects();

    if (!v14)
    {
      goto LABEL_13;
    }

    v15 = [(HMDevice *)self isCurrentDevice];
    if (v15 != [v6 isCurrentDevice])
    {
      goto LABEL_13;
    }

    v16 = [(HMDevice *)self supportsHH2];
    if (v16 != [v6 supportsHH2])
    {
      goto LABEL_13;
    }

    v17 = [(HMDevice *)self rapportIRK];
    v18 = [v6 rapportIRK];
    v19 = HMFEqualObjects();

    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = [(HMDevice *)self idsIdentifier];
    v21 = [v6 idsIdentifier];
    v22 = HMFEqualObjects();

    if (v22)
    {
      v23 = [(HMDevice *)self idsDestination];
      v24 = [v6 idsDestination];
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
  v2 = [(HMDevice *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (void)setIdsDestination:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  idsDestination = self->_idsDestination;
  self->_idsDestination = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)idsDestination
{
  os_unfair_lock_lock_with_options();
  v3 = self->_idsDestination;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIdsIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  idsIdentifier = self->_idsIdentifier;
  self->_idsIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)idsIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_idsIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRapportIRK:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  rapportIRK = self->_rapportIRK;
  self->_rapportIRK = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMFKey)rapportIRK
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rapportIRK;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSupportsHH2:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsHH2 = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsHH2
{
  os_unfair_lock_lock_with_options();
  supportsHH2 = self->_supportsHH2;
  os_unfair_lock_unlock(&self->_lock);
  return supportsHH2;
}

- (void)setProductInfo:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)setName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
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

- (HMDevice)initWithUUID:(id)a3 name:(id)a4 isCurrentDevice:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = HMDevice;
  v10 = [(HMDevice *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    v12 = [v8 copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    v14 = [v9 copy];
    name = v11->_name;
    v11->_name = v14;

    v11->_currentDevice = a5;
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

- (id)IDSDestinationForIDSService:(id)a3
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMDevice *)self idsDestination];
  if (v5 && IDSFoundationLibraryCore())
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
    v8 = [MEMORY[0x1E695DFD8] setWithObject:{v5, v16}];
    v9 = [v6 destinationWithStrings:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138544130;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      *&buf[22] = 2112;
      v21 = v4;
      LOWORD(v22[0]) = 2112;
      *(v22 + 2) = v11;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to get IDSDestination from destination: (%@) for service: (%@) on device: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)IDSDeviceForIDSService:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMDevice *)self idsIdentifier];
  if (!v5)
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
    v6 = [v4 devices];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v25 count:16];
    if (v7)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 uniqueIDOverride];
          v12 = [v5 UUIDString];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {
            v7 = v10;
            goto LABEL_16;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v25 count:16];
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
  v4 = [(HMDevice *)self idsIdentifier];
  v5 = [v4 UUIDString];
  v6 = [(HMDevice *)self idsDestination];
  v7 = [(HMMMMessageDestination *)v3 initWithIDSIdentifier:v5 idsTokenURI:v6];

  return v7;
}

@end
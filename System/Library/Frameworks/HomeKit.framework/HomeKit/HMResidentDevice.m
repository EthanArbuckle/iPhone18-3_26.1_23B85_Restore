@interface HMResidentDevice
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isCurrentDevice;
- (BOOL)isEnabled;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMHome)home;
- (HMResidentDevice)init;
- (HMResidentDevice)initWithCoder:(id)a3;
- (HMResidentDeviceDelegate)delegate;
- (NSArray)attributeDescriptions;
- (NSData)deviceIRKData;
- (NSString)IDSDestination;
- (NSString)name;
- (NSString)residentName;
- (NSString)shortDescription;
- (NSUUID)IDSIdentifier;
- (NSUUID)uniqueIdentifier;
- (id)logIdentifier;
- (unint64_t)capabilities;
- (unint64_t)status;
- (void)__configureWithContext:(id)a3 home:(id)a4;
- (void)_unconfigure;
- (void)handleRuntimeStateUpdate:(id)a3;
- (void)setCapabilities:(unint64_t)a3;
- (void)setDeviceIRKData:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHome:(id)a3;
- (void)setIDSDestination:(id)a3;
- (void)setIDSIdentifier:(id)a3;
- (void)setResidentName:(id)a3;
- (void)setStatus:(unint64_t)a3;
- (void)updatedEnabled:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation HMResidentDevice

- (HMResidentDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMResidentDevice *)self uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (NSArray)attributeDescriptions
{
  v28[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v27 = [(HMResidentDevice *)self device];
  v26 = [v3 initWithName:@"Device" value:v27];
  v28[0] = v26;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v25 = [(HMResidentDevice *)self uniqueIdentifier];
  v24 = [v4 initWithName:@"Identifier" value:v25];
  v28[1] = v24;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v23 = [(HMResidentDevice *)self uuid];
  v22 = [MEMORY[0x1E69A2A48] defaultFormatter];
  v6 = [v5 initWithName:@"UUID" value:v23 options:0 formatter:v22];
  v28[2] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMResidentDevice *)self isEnabled];
  v8 = HMFBooleanToString();
  v9 = [v7 initWithName:@"Enabled" value:v8];
  v28[3] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = HMResidentDeviceStatusDescription([(HMResidentDevice *)self status]);
  v12 = [v10 initWithName:@"Status" value:v11];
  v28[4] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  v14 = HMResidentDeviceCapabilitiesDescription([(HMResidentDevice *)self capabilities]);
  v15 = [v13 initWithName:@"Capabilities" value:v14];
  v28[5] = v15;
  v16 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMResidentDevice *)self supportsResidentSelection];
  v17 = HMFBooleanToString();
  v18 = [v16 initWithName:@"Supports Resident Selection" value:v17];
  v28[6] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:7];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (NSString)shortDescription
{
  v2 = [(HMResidentDevice *)self uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)handleRuntimeStateUpdate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMResidentDevice *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__HMResidentDevice_handleRuntimeStateUpdate___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v14 = v4;
    v15 = self;
    dispatch_async(v7, v13);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v11;
      v18 = 2080;
      v19 = "[HMResidentDevice handleRuntimeStateUpdate:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __45__HMResidentDevice_handleRuntimeStateUpdate___block_invoke(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) hmf_BOOLForKey:@"enabled"];
  if (v2 != [*(a1 + 40) isEnabled])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 40);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      [*(a1 + 40) isEnabled];
      v7 = HMFBooleanToString();
      v8 = HMFBooleanToString();
      *buf = 138543874;
      v89 = v6;
      v90 = 2112;
      v91 = v7;
      v92 = 2112;
      v93 = v8;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@<Runtime> Updating enabled from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 40) setEnabled:v2];
    v9 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 40);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        [*(a1 + 40) isEnabled];
        v14 = HMFBooleanToString();
        *buf = 138543618;
        v89 = v13;
        v90 = 2112;
        v91 = v14;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@<Runtime> Notifying client of updated enabled value: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = [*(a1 + 40) context];
      v16 = [v15 delegateCaller];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __45__HMResidentDevice_handleRuntimeStateUpdate___block_invoke_186;
      v84[3] = &unk_1E754DC70;
      v17 = v9;
      v18 = *(a1 + 40);
      v85 = v17;
      v86 = v18;
      v87 = v2;
      [v16 invokeBlock:v84];
    }
  }

  v19 = [*(a1 + 32) hmf_numberForKey:@"status"];
  v20 = [v19 unsignedIntegerValue];

  if ([*(a1 + 40) status] != v20)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 40);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      v25 = HMResidentDeviceStatusDescription([*(a1 + 40) status]);
      v26 = HMResidentDeviceStatusDescription(v20);
      *buf = 138543874;
      v89 = v24;
      v90 = 2112;
      v91 = v25;
      v92 = 2112;
      v93 = v26;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@<Runtime> Updating status from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    [*(a1 + 40) setStatus:v20];
    v27 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      v28 = objc_autoreleasePoolPush();
      v29 = *(a1 + 40);
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = HMResidentDeviceStatusDescription([*(a1 + 40) status]);
        *buf = 138543618;
        v89 = v31;
        v90 = 2112;
        v91 = v32;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_INFO, "%{public}@<Runtime> Notifying client of updated status: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v33 = [*(a1 + 40) context];
      v34 = [v33 delegateCaller];
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __45__HMResidentDevice_handleRuntimeStateUpdate___block_invoke_187;
      v80[3] = &unk_1E754E120;
      v35 = v27;
      v36 = *(a1 + 40);
      v81 = v35;
      v82 = v36;
      v83 = v20;
      [v34 invokeBlock:v80];
    }
  }

  v37 = [*(a1 + 32) hmf_numberForKey:@"capabilities"];
  v38 = [v37 unsignedIntegerValue];

  if ([*(a1 + 40) capabilities] != v38)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = *(a1 + 40);
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = HMFGetLogIdentifier();
      v43 = HMResidentDeviceCapabilitiesDescription([*(a1 + 40) capabilities]);
      v44 = HMResidentDeviceCapabilitiesDescription(v38);
      *buf = 138543874;
      v89 = v42;
      v90 = 2112;
      v91 = v43;
      v92 = 2112;
      v93 = v44;
      _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@<Runtime> Updating capabilities from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v39);
    [*(a1 + 40) setCapabilities:v38];
    v45 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      v46 = objc_autoreleasePoolPush();
      v47 = *(a1 + 40);
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = HMFGetLogIdentifier();
        v50 = HMResidentDeviceCapabilitiesDescription([*(a1 + 40) capabilities]);
        *buf = 138543618;
        v89 = v49;
        v90 = 2112;
        v91 = v50;
        _os_log_impl(&dword_19BB39000, v48, OS_LOG_TYPE_INFO, "%{public}@<Runtime> Notifying client of updated capabilities: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v46);
      v51 = [*(a1 + 40) context];
      v52 = [v51 delegateCaller];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __45__HMResidentDevice_handleRuntimeStateUpdate___block_invoke_188;
      v76[3] = &unk_1E754E120;
      v53 = v45;
      v54 = *(a1 + 40);
      v77 = v53;
      v78 = v54;
      v79 = v38;
      [v52 invokeBlock:v76];
    }
  }

  v55 = [*(a1 + 32) hmf_BOOLForKey:@"supportsResidentSelection"];
  if (v55 != [*(a1 + 40) supportsResidentSelection])
  {
    v56 = objc_autoreleasePoolPush();
    v57 = *(a1 + 40);
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = HMFGetLogIdentifier();
      [*(a1 + 40) supportsResidentSelection];
      v60 = HMFBooleanToString();
      v61 = HMFBooleanToString();
      *buf = 138543874;
      v89 = v59;
      v90 = 2112;
      v91 = v60;
      v92 = 2112;
      v93 = v61;
      _os_log_impl(&dword_19BB39000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@<Runtime> Updating supportsResidentSelection from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v56);
    [*(a1 + 40) setSupportsResidentSelection:v55];
    v62 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      v63 = objc_autoreleasePoolPush();
      v64 = *(a1 + 40);
      v65 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v66 = HMFGetLogIdentifier();
        [*(a1 + 40) supportsResidentSelection];
        v67 = HMFBooleanToString();
        *buf = 138543618;
        v89 = v66;
        v90 = 2112;
        v91 = v67;
        _os_log_impl(&dword_19BB39000, v65, OS_LOG_TYPE_INFO, "%{public}@<Runtime> Notifying client of updated supportsResidentSelection value: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v63);
      v68 = [*(a1 + 40) context];
      v69 = [v68 delegateCaller];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __45__HMResidentDevice_handleRuntimeStateUpdate___block_invoke_189;
      v73[3] = &unk_1E754E5C0;
      v70 = v62;
      v71 = *(a1 + 40);
      v74 = v70;
      v75 = v71;
      [v69 invokeBlock:v73];
    }
  }

  v72 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v117 = *MEMORY[0x1E69E9840];
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
    v8 = [(HMResidentDevice *)self name];
    v9 = [v8 isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [(HMResidentDevice *)v11 name];
        *buf = 138543874;
        v112 = v13;
        v113 = 2112;
        v114 = v14;
        v115 = 2112;
        v116 = v7;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@<Merge> Updating name from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = [(HMResidentDevice *)v11 delegate];
      if (objc_opt_respondsToSelector())
      {
        v16 = [(HMResidentDevice *)v11 context];
        v17 = [v16 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __39__HMResidentDevice_mergeFromNewObject___block_invoke;
        block[3] = &unk_1E754E5E8;
        block[4] = v11;
        v109 = v15;
        v110 = v7;
        dispatch_async(v17, block);
      }
    }

    v18 = [v6 residentName];
    v19 = [(HMResidentDevice *)self residentName];
    v20 = HMFEqualObjects();

    if (v20)
    {
      v21 = v9 ^ 1;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [(HMResidentDevice *)v23 residentName];
        *buf = 138543874;
        v112 = v25;
        v113 = 2112;
        v114 = v26;
        v115 = 2112;
        v116 = v18;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@<Merge> Updating resident name from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      [(HMResidentDevice *)v23 setResidentName:v18];
      v21 = 1;
    }

    v27 = [v6 isEnabled];
    if (v27 != [(HMResidentDevice *)self isEnabled])
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = HMFGetLogIdentifier();
        [(HMResidentDevice *)v29 isEnabled];
        v32 = HMFBooleanToString();
        v33 = HMFBooleanToString();
        *buf = 138543874;
        v112 = v31;
        v113 = 2112;
        v114 = v32;
        v115 = 2112;
        v116 = v33;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@<Merge> Updating enabled from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      [(HMResidentDevice *)v29 setEnabled:v27];
      v34 = [(HMResidentDevice *)v29 delegate];
      if (objc_opt_respondsToSelector())
      {
        v35 = [(HMResidentDevice *)v29 context];
        v36 = [v35 queue];
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = __39__HMResidentDevice_mergeFromNewObject___block_invoke_170;
        v105[3] = &unk_1E754DC70;
        v105[4] = v29;
        v106 = v34;
        v107 = v27;
        dispatch_async(v36, v105);
      }

      v21 = 1;
    }

    v37 = [v6 status];
    if ([(HMResidentDevice *)self status]!= v37)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = HMFGetLogIdentifier();
        v42 = HMResidentDeviceStatusDescription([(HMResidentDevice *)v39 status]);
        v43 = HMResidentDeviceStatusDescription(v37);
        *buf = 138543874;
        v112 = v41;
        v113 = 2112;
        v114 = v42;
        v115 = 2112;
        v116 = v43;
        _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@<Merge> Updating status from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v38);
      [(HMResidentDevice *)v39 setStatus:v37];
      v44 = [(HMResidentDevice *)v39 delegate];
      if (objc_opt_respondsToSelector())
      {
        v45 = [(HMResidentDevice *)v39 context];
        v46 = [v45 queue];
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 3221225472;
        v102[2] = __39__HMResidentDevice_mergeFromNewObject___block_invoke_174;
        v102[3] = &unk_1E754E120;
        v102[4] = v39;
        v103 = v44;
        v104 = v37;
        dispatch_async(v46, v102);
      }

      v21 = 1;
    }

    v47 = [v6 capabilities];
    if ([(HMResidentDevice *)self capabilities]!= v47)
    {
      v48 = objc_autoreleasePoolPush();
      v49 = self;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = HMFGetLogIdentifier();
        v52 = HMResidentDeviceCapabilitiesDescription([(HMResidentDevice *)v49 capabilities]);
        v53 = HMResidentDeviceCapabilitiesDescription(v47);
        *buf = 138543874;
        v112 = v51;
        v113 = 2112;
        v114 = v52;
        v115 = 2112;
        v116 = v53;
        _os_log_impl(&dword_19BB39000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@<Merge> Updating capabilities from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v48);
      [(HMResidentDevice *)v49 setCapabilities:v47];
      v54 = [(HMResidentDevice *)v49 delegate];
      if (objc_opt_respondsToSelector())
      {
        v55 = [(HMResidentDevice *)v49 context];
        v56 = [v55 queue];
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 3221225472;
        v99[2] = __39__HMResidentDevice_mergeFromNewObject___block_invoke_178;
        v99[3] = &unk_1E754E120;
        v99[4] = v49;
        v100 = v54;
        v101 = v47;
        dispatch_async(v56, v99);
      }

      v21 = 1;
    }

    v57 = [v6 supportsResidentSelection];
    v58 = &selRef_cancelUnarchiveWithError_;
    if (v57 != [(HMResidentDevice *)self supportsResidentSelection])
    {
      v59 = objc_autoreleasePoolPush();
      v60 = self;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = HMFGetLogIdentifier();
        [(HMResidentDevice *)v60 supportsResidentSelection];
        v63 = HMFBooleanToString();
        v64 = HMFBooleanToString();
        *buf = 138543874;
        v112 = v62;
        v113 = 2112;
        v114 = v63;
        v115 = 2112;
        v116 = v64;
        _os_log_impl(&dword_19BB39000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@<Merge> Updating supportsResidentSelection from %@ to %@", buf, 0x20u);

        v58 = &selRef_cancelUnarchiveWithError_;
      }

      objc_autoreleasePoolPop(v59);
      [(HMResidentDevice *)v60 setSupportsResidentSelection:v57];
      v65 = [(HMResidentDevice *)v60 delegate];
      v66 = v58[405];
      if (objc_opt_respondsToSelector())
      {
        v67 = [(HMResidentDevice *)v60 context];
        v68 = [v67 queue];
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = __39__HMResidentDevice_mergeFromNewObject___block_invoke_182;
        v97[3] = &unk_1E754E5C0;
        v97[4] = v60;
        v98 = v65;
        dispatch_async(v68, v97);
      }

      v21 = 1;
    }

    v69 = [v6 supportsHomeActivityState];
    if (v69 != [(HMResidentDevice *)self supportsHomeActivityState])
    {
      v70 = objc_autoreleasePoolPush();
      v71 = self;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v94 = v4;
        v74 = v73 = v58;
        [(HMResidentDevice *)v71 supportsHomeActivityState];
        v75 = HMFBooleanToString();
        v76 = HMFBooleanToString();
        *buf = 138543874;
        v112 = v74;
        v113 = 2112;
        v114 = v75;
        v115 = 2112;
        v116 = v76;
        _os_log_impl(&dword_19BB39000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@<Merge> Updating newSupportsHomeActivityState from %@ to %@", buf, 0x20u);

        v58 = v73;
        v4 = v94;
      }

      objc_autoreleasePoolPop(v70);
      [(HMResidentDevice *)v71 setSupportsHomeActivityState:v69];
      v77 = [(HMResidentDevice *)v71 delegate];
      v78 = v58[405];
      if (objc_opt_respondsToSelector())
      {
        v79 = [(HMResidentDevice *)v71 context];
        v80 = [v79 queue];
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __39__HMResidentDevice_mergeFromNewObject___block_invoke_184;
        v95[3] = &unk_1E754E5C0;
        v95[4] = v71;
        v96 = v77;
        dispatch_async(v80, v95);
      }

      v21 = 1;
    }

    v81 = [v6 IDSIdentifier];
    v82 = [(HMResidentDevice *)self IDSIdentifier];
    v83 = HMFEqualObjects();

    if ((v83 & 1) == 0)
    {
      [(HMResidentDevice *)self setIDSIdentifier:v81];
      v21 = 1;
    }

    v84 = [v6 IDSDestination];
    v85 = [(HMResidentDevice *)self IDSDestination];
    v86 = HMFEqualObjects();

    if ((v86 & 1) == 0)
    {
      [(HMResidentDevice *)self setIDSDestination:v84];
      v21 = 1;
    }

    v87 = [v6 deviceIRKData];
    v88 = [(HMResidentDevice *)self deviceIRKData];
    v89 = HMFEqualObjects();

    if ((v89 & 1) == 0)
    {
      [(HMResidentDevice *)self setDeviceIRKData:v87];
      v21 = 1;
    }

    v90 = [(HMResidentDevice *)self device];
    v91 = [v6 device];
    [v90 mergeFromNewObject:v91];
  }

  else
  {
    v21 = 0;
  }

  v92 = *MEMORY[0x1E69E9840];
  return v21;
}

void __39__HMResidentDevice_mergeFromNewObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__HMResidentDevice_mergeFromNewObject___block_invoke_2;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

void __39__HMResidentDevice_mergeFromNewObject___block_invoke_170(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__HMResidentDevice_mergeFromNewObject___block_invoke_2_171;
  v5[3] = &unk_1E754DC70;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

void __39__HMResidentDevice_mergeFromNewObject___block_invoke_174(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__HMResidentDevice_mergeFromNewObject___block_invoke_2_175;
  v7[3] = &unk_1E754E120;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v3 invokeBlock:v7];
}

void __39__HMResidentDevice_mergeFromNewObject___block_invoke_178(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__HMResidentDevice_mergeFromNewObject___block_invoke_2_179;
  v7[3] = &unk_1E754E120;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v3 invokeBlock:v7];
}

void __39__HMResidentDevice_mergeFromNewObject___block_invoke_182(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__HMResidentDevice_mergeFromNewObject___block_invoke_2_183;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __39__HMResidentDevice_mergeFromNewObject___block_invoke_184(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__HMResidentDevice_mergeFromNewObject___block_invoke_2_185;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

uint64_t __39__HMResidentDevice_mergeFromNewObject___block_invoke_2_185(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    [*(a1 + 32) supportsHomeActivityState];
    v6 = HMFBooleanToString();
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@<Merge> Notifying client of updated supportsHomeActivityState value: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) residentDevice:*(a1 + 32) didUpdateSupportsHomeActivityState:{objc_msgSend(*(a1 + 32), "supportsHomeActivityState")}];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __39__HMResidentDevice_mergeFromNewObject___block_invoke_2_183(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    [*(a1 + 32) supportsResidentSelection];
    v6 = HMFBooleanToString();
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@<Merge> Notifying client of updated supportsResidentSelection value: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) didUpdateSupportedCapabilitiesForResidentDevice:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __39__HMResidentDevice_mergeFromNewObject___block_invoke_2_179(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMResidentDeviceCapabilitiesDescription([*(a1 + 32) capabilities]);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@<Merge> Notifying client of updated capabilities: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) residentDevice:*(a1 + 32) didUpdateCapabilities:*(a1 + 48)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __39__HMResidentDevice_mergeFromNewObject___block_invoke_2_175(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMResidentDeviceStatusDescription([*(a1 + 32) status]);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@<Merge> Notifying client of updated status: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) residentDevice:*(a1 + 32) didUpdateStatus:*(a1 + 48)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __39__HMResidentDevice_mergeFromNewObject___block_invoke_2_171(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    [*(a1 + 32) isEnabled];
    v6 = HMFBooleanToString();
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@<Merge> Notifying client of updated enabled value: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) residentDevice:*(a1 + 32) didUpdateEnabled:*(a1 + 48)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __39__HMResidentDevice_mergeFromNewObject___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) name];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@<Merge> Notifying client of updated name: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) residentDevice:*(a1 + 32) didUpdateName:*(a1 + 48)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (HMResidentDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HMResidentDevice;
  v5 = [(HMResidentDevice *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
    device = v5->_device;
    v5->_device = v8;

    v5->_enabled = [v4 decodeBoolForKey:@"HM.enabled"];
    v5->_status = [v4 decodeIntegerForKey:@"HM.status"];
    v5->_capabilities = [v4 decodeIntegerForKey:@"HM.capabilities"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v5->_home, v10);

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.name"];
    residentName = v5->_residentName;
    v5->_residentName = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.accountIdentifier"];
    IDSIdentifier = v5->_IDSIdentifier;
    v5->_IDSIdentifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.idsDestination"];
    IDSDestination = v5->_IDSDestination;
    v5->_IDSDestination = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMResidentDeviceDeviceIRKDataCodingKey"];
    deviceIRKData = v5->_deviceIRKData;
    v5->_deviceIRKData = v17;

    v5->_supportsResidentSelection = [v4 decodeBoolForKey:@"HMResidentDeviceSupportsResidentSelectionCodingKey"];
    v5->_supportsHomeActivityState = [v4 decodeBoolForKey:@"HMResidentDeviceSupportsHomeActivityStateCodingKey"];
  }

  return v5;
}

- (void)updatedEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMResidentDevice *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMResidentDevice updatedEnabled:completionHandler:]", @"completionHandler"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v16;
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
    block[2] = __53__HMResidentDevice_updatedEnabled_completionHandler___block_invoke;
    block[3] = &unk_1E754A040;
    block[4] = self;
    v24 = v6;
    v25 = a3;
    v23 = v8;
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
      v27 = v13;
      v28 = 2080;
      v29 = "[HMResidentDevice updatedEnabled:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __53__HMResidentDevice_updatedEnabled_completionHandler___block_invoke(uint64_t a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) home];
  if (v2)
  {
    v3 = *(a1 + 56);
    if (v3 != [*(a1 + 32) isEnabled])
    {
      v8 = objc_alloc(MEMORY[0x1E69A2A00]);
      v9 = [v2 uuid];
      v10 = [v8 initWithTarget:v9];

      v11 = MEMORY[0x1E69A2A10];
      v24[0] = @"kIdentifierKey";
      v12 = [*(a1 + 32) uuid];
      v13 = [v12 UUIDString];
      v24[1] = @"kEnabledKey";
      v25[0] = v13;
      v14 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
      v25[1] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v16 = [v11 messageWithName:@"kResidentDeviceUpdateEnabledRequestKey" destination:v10 payload:v15];

      objc_initWeak(&location, *(a1 + 32));
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __53__HMResidentDevice_updatedEnabled_completionHandler___block_invoke_2;
      v19[3] = &unk_1E754D058;
      objc_copyWeak(&v22, &location);
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      [v16 setResponseHandler:v19];
      v17 = [*(a1 + 40) messageDispatcher];
      [v17 sendMessage:v16 completionHandler:0];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);

      goto LABEL_7;
    }

    v4 = [*(a1 + 32) context];
    v5 = [v4 delegateCaller];
    [v5 callCompletion:*(a1 + 48) error:0];
  }

  else
  {
    v4 = [*(a1 + 32) context];
    v5 = [v4 delegateCaller];
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [v5 callCompletion:v6 error:v7];
  }

LABEL_7:
  v18 = *MEMORY[0x1E69E9840];
}

void __53__HMResidentDevice_updatedEnabled_completionHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = [a1[4] queue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__HMResidentDevice_updatedEnabled_completionHandler___block_invoke_3;
    v9[3] = &unk_1E754D208;
    v10 = v5;
    v11 = v6;
    v12 = WeakRetained;
    v13 = a1[5];
    dispatch_async(v8, v9);
  }
}

void __53__HMResidentDevice_updatedEnabled_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v7 = 0;
    v3 = [*(a1 + 40) hmf_BOOLForKey:@"kEnabledKey" isPresent:&v7];
    if (v7)
    {
      [*(a1 + 48) setEnabled:v3];
    }

    else
    {
      v4 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];

      v2 = v4;
    }
  }

  v5 = [*(a1 + 48) context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 56) error:v2];
}

- (void)setResidentName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  residentName = self->_residentName;
  self->_residentName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)residentName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_residentName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCapabilities:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_capabilities = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)capabilities
{
  os_unfair_lock_lock_with_options();
  capabilities = self->_capabilities;
  os_unfair_lock_unlock(&self->_lock);
  return capabilities;
}

- (void)setDeviceIRKData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  deviceIRKData = self->_deviceIRKData;
  self->_deviceIRKData = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)deviceIRKData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deviceIRKData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIDSDestination:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  IDSDestination = self->_IDSDestination;
  self->_IDSDestination = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)IDSDestination
{
  os_unfair_lock_lock_with_options();
  v3 = self->_IDSDestination;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIDSIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  IDSIdentifier = self->_IDSIdentifier;
  self->_IDSIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)IDSIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_IDSIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHome:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setStatus:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_status = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)status
{
  os_unfair_lock_lock_with_options();
  status = self->_status;
  os_unfair_lock_unlock(&self->_lock);
  return status;
}

- (void)setEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_enabled = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock_with_options();
  enabled = self->_enabled;
  os_unfair_lock_unlock(&self->_lock);
  return enabled;
}

- (BOOL)isCurrentDevice
{
  v2 = [(HMResidentDevice *)self device];
  v3 = [v2 isCurrentDevice];

  return v3;
}

- (NSString)name
{
  v3 = [(HMResidentDevice *)self residentName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(HMResidentDevice *)self device];
    v5 = [v6 name];
  }

  return v5;
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
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring residentDevice", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMResidentDevice *)v5 setHome:0];
    [(HMResidentDevice *)v5 setContext:0];
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

- (void)__configureWithContext:(id)a3 home:(id)a4
{
  v6 = a4;
  [(HMResidentDevice *)self setContext:a3];
  [(HMResidentDevice *)self setHome:v6];
}

- (HMResidentDevice)init
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
  if (logCategory__hmf_once_t44 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t44, &__block_literal_global_7279);
  }

  v3 = logCategory__hmf_once_v45;

  return v3;
}

uint64_t __31__HMResidentDevice_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v45 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
@interface HMAssistantSyncHome
+ (id)logCategory;
- (BOOL)shouldSyncForAnchor:(id)a3;
- (HMAssistantSyncHome)init;
- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 count:(int64_t)a5 forKey:(id)a6 beginInfo:(id)a7;
- (void)dealloc;
- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)syncDidEnd;
@end

@implementation HMAssistantSyncHome

- (void)syncDidEnd
{
  [(HMAssistantSyncHome *)self setFinalAnchor:0];
  [(HMAssistantSyncHome *)self setAnchors:0];

  [(HMAssistantSyncHome *)self setEntities:0];
}

- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(HMAssistantSyncHome *)self entities];
  if (![v7 count])
  {

    goto LABEL_7;
  }

  v8 = [(HMAssistantSyncHome *)self finalAnchor];
  v9 = [v8 isEqualToString:v19];

  if (v9)
  {
LABEL_7:
    [v6 setObject:0];
    [v6 setPostAnchor:v19];
    goto LABEL_8;
  }

  if (v19)
  {
    v10 = [(HMAssistantSyncHome *)self anchors];
    v11 = [v10 indexOfObject:v19];

    if (v11 < 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = v11 + 1;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v12 = 0;
LABEL_12:
  v13 = [(HMAssistantSyncHome *)self anchors];
  v14 = [v13 objectAtIndex:v12];
  [v6 setPostAnchor:v14];

  v15 = [(HMAssistantSyncHome *)self entities];
  v16 = [v15 count];

  if (v12 < v16)
  {
    v17 = [(HMAssistantSyncHome *)self entities];
    v18 = [v17 objectAtIndex:v12];
    [v6 setObject:v18];
  }

LABEL_8:
}

- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 count:(int64_t)a5 forKey:(id)a6 beginInfo:(id)a7
{
  v74 = *MEMORY[0x277D85DE8];
  v50 = a3;
  v12 = a4;
  v13 = a6;
  v49 = a7;
  if ([@"com.apple.homekit.name" isEqualToString:v13])
  {
    [(HMAssistantSyncHome *)self syncDidEnd];
    v14 = dispatch_group_create();
    [(HMAssistantSyncHome *)self setWaitGroup:v14];

    v15 = [MEMORY[0x277CD1C60] defaultPrivateConfiguration];
    [(__CFString *)v15 setOptions:34397];
    [(__CFString *)v15 setCachePolicy:3];
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v63 = v19;
      v64 = 2112;
      v65 = v15;
      _os_log_impl(&dword_2334D2000, v18, OS_LOG_TYPE_INFO, "%{public}@Started initialization of home manager with configuration %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    mach_absolute_time();
    [(HMAssistantSyncHome *)v17 setFetchHomeConfigurationStartTime:UpTicksToMilliseconds()];
    v20 = [objc_alloc(MEMORY[0x277CD1A90]) initWithConfiguration:v15];
    [(HMAssistantSyncHome *)v17 setHomeManager:v20];

    v21 = [(HMAssistantSyncHome *)v17 waitGroup];
    dispatch_group_enter(v21);

    v22 = [(HMAssistantSyncHome *)v17 homeManager];
    [v22 setDelegate:v17];

    if ([MEMORY[0x277CD19B8] areAnyAccessoriesConfigured])
    {
      if ([(HMAssistantSyncHome *)v17 shouldSyncForAnchor:v50])
      {
        v60[0] = 0;
        v60[1] = v60;
        v60[2] = 0x3032000000;
        v60[3] = sub_2334D3A74;
        v60[4] = sub_2334D3A84;
        v61 = [MEMORY[0x277CBEB18] array];
        v58[0] = 0;
        v58[1] = v58;
        v58[2] = 0x3032000000;
        v58[3] = sub_2334D3A74;
        v58[4] = sub_2334D3A84;
        v59 = [MEMORY[0x277CBEB18] array];
        v48 = getLastSyncedAssistantConfigurationVersion();
        v23 = objc_autoreleasePoolPush();
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138544642;
          v63 = v25;
          v64 = 2112;
          v65 = v48;
          v66 = 2112;
          v67 = v50;
          v68 = 2112;
          v69 = v12;
          v70 = 2112;
          v71 = v13;
          v72 = 2048;
          v73 = a5;
          _os_log_impl(&dword_2334D2000, v24, OS_LOG_TYPE_INFO, "%{public}@lastSyncedVersion %@  beginAnchor is %@  validity %@  key %@  count %tu", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(v23);
        [(HMAssistantSyncHome *)v17 setDone:0];
        objc_initWeak(&location, v17);
        v26 = [objc_alloc(MEMORY[0x277CD19B8]) initWithNoValidation];
        v27 = [(HMAssistantSyncHome *)v17 waitGroup];
        dispatch_group_enter(v27);

        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = sub_2334D3A8C;
        v52[3] = &unk_2789D9E38;
        objc_copyWeak(&v56, &location);
        v54 = v60;
        v55 = v58;
        v53 = v49;
        [v26 requestSiriSyncDataWithValidity:v12 completion:v52];
        v28 = [(HMAssistantSyncHome *)v17 waitGroup];
        v29 = dispatch_time(0, 42000000000);
        v30 = dispatch_group_wait(v28, v29);

        if (v30)
        {
          v31 = objc_autoreleasePoolPush();
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            *buf = 138543362;
            v63 = v33;
            _os_log_impl(&dword_2334D2000, v32, OS_LOG_TYPE_INFO, "%{public}@Timed out waiting for homed", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v31);
        }

        v34 = [(HMAssistantSyncHome *)v17 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2334D3CD4;
        block[3] = &unk_2789D9E60;
        block[4] = v17;
        dispatch_async(v34, block);

        objc_destroyWeak(&v56);
        objc_destroyWeak(&location);

        _Block_object_dispose(v58, 8);
        _Block_object_dispose(v60, 8);

        goto LABEL_26;
      }

      v42 = objc_autoreleasePoolPush();
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        v46 = getAssistantConfigurationSnapshot();
        *buf = 138543874;
        v63 = v45;
        v64 = 2112;
        v65 = v50;
        v66 = 2112;
        v67 = v46;
        _os_log_impl(&dword_2334D2000, v43, OS_LOG_TYPE_INFO, "%{public}@lastSyncedSnapshot %@ at same as assistantConfigurationSnapshot %@ - skipping sync...", buf, 0x20u);
      }
    }

    else
    {
      if ([(HMAssistantSyncHome *)v17 shouldSyncForAnchor:v12])
      {
        v38 = getAssistantConfigurationSnapshot();
        v39 = objc_autoreleasePoolPush();
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543874;
          v63 = v41;
          v64 = 2112;
          v65 = v12;
          v66 = 2112;
          v67 = v38;
          _os_log_impl(&dword_2334D2000, v40, OS_LOG_TYPE_INFO, "%{public}@lastSyncValidity '%@' different from assistantConfigurationSnapshot %@ - reset all data so that full sync attempted next time", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v39);
        [v49 resetWithValidity:v38];
      }

      v42 = objc_autoreleasePoolPush();
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543362;
        v63 = v44;
        _os_log_impl(&dword_2334D2000, v43, OS_LOG_TYPE_INFO, "%{public}@No accessories configured - skipping sync request from Siri client...", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v42);
LABEL_26:

    goto LABEL_27;
  }

  v35 = objc_autoreleasePoolPush();
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    *buf = 138543874;
    v63 = v37;
    v64 = 2112;
    v65 = v13;
    v66 = 2112;
    v67 = @"com.apple.homekit.name";
    _os_log_impl(&dword_2334D2000, v36, OS_LOG_TYPE_INFO, "%{public}@Incoming key '%@' does not match plug-in key '%@'", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v35);
LABEL_27:

  v47 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldSyncForAnchor:(id)a3
{
  v3 = a3;
  v4 = getAssistantConfigurationSnapshot();
  v5 = [v3 isEqual:v4];

  return v5 ^ 1;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2334D2000, v5, OS_LOG_TYPE_INFO, "%{public}@Indicating syncDidEnd from dealloc", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMAssistantSyncHome *)v4 syncDidEnd];
  v8.receiver = v4;
  v8.super_class = HMAssistantSyncHome;
  [(HMAssistantSyncHome *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    mach_absolute_time();
    v9 = UpTicksToMilliseconds();
    v12 = 138543618;
    v13 = v8;
    v14 = 2048;
    v15 = v9 - [(HMAssistantSyncHome *)v6 fetchHomeConfigurationStartTime];
    _os_log_impl(&dword_2334D2000, v7, OS_LOG_TYPE_INFO, "%{public}@Home manager did update homes in %llu milliseconds", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMAssistantSyncHome *)v6 waitGroup];
  dispatch_group_leave(v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (HMAssistantSyncHome)init
{
  v9.receiver = self;
  v9.super_class = HMAssistantSyncHome;
  v2 = [(HMAssistantSyncHome *)&v9 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    [MEMORY[0x277D0F8D0] setDefaultValue:MEMORY[0x277CBEC38] forPreferenceKey:@"dropHomeNamesFromSyncData"];
  }

  return v2;
}

+ (id)logCategory
{
  if (qword_2814EE698 != -1)
  {
    dispatch_once(&qword_2814EE698, &unk_2848D36B8);
  }

  v3 = qword_2814EE690;

  return v3;
}

@end
@interface HMWidgetManager
+ (id)logCategory;
- (HMHomeManager)homeManager;
- (HMWidgetManager)initWithHomeManager:(id)a3 context:(id)a4;
- (void)fetchStateForActionSets:(id)a3 completion:(id)a4;
- (void)fetchStateForCharacteristics:(id)a3 completion:(id)a4;
- (void)monitorAndFetchStateForActionSets:(id)a3 widgetIdentifier:(id)a4 kind:(id)a5 completion:(id)a6;
- (void)monitorStateForMTRAttributeDescriptors:(id)a3 widgetIdentifier:(id)a4 kind:(id)a5 completion:(id)a6;
- (void)performRequests:(id)a3 forKind:(id)a4 completion:(id)a5;
@end

@implementation HMWidgetManager

- (HMHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)monitorStateForMTRAttributeDescriptors:(id)a3 widgetIdentifier:(id)a4 kind:(id)a5 completion:(id)a6
{
  v73[3] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v12)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v13)
  {
LABEL_15:
    _HMFPreconditionFailure();
LABEL_16:
    _HMFPreconditionFailure();
  }

  v15 = v14;
  if (!v14)
  {
    goto LABEL_16;
  }

  v16 = objc_alloc(MEMORY[0x1E69A29C0]);
  v17 = MEMORY[0x1E696AEC0];
  v18 = MEMORY[0x19EAEB2A0](self, a2);
  v19 = [v17 stringWithFormat:@"%@, %s:%ld", v18, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Widgets/HMWidgetManager.m", 464];
  v20 = [v16 initWithName:v19];

  v21 = [(HMWidgetManager *)self homeManager];
  v22 = objc_autoreleasePoolPush();
  v23 = v22;
  if (v21)
  {
    context = v22;
    v24 = encodeRootObject(v11);
    v25 = objc_alloc(MEMORY[0x1E69A2A00]);
    v56 = v21;
    v26 = [v21 uuid];
    v27 = [v25 initWithTarget:v26];

    v72[0] = @"HMWM.widgetIdentifier";
    v72[1] = @"HMWM.widgetKind";
    v73[0] = v12;
    v73[1] = v13;
    v72[2] = @"HMWM.mtrAttributes";
    v53 = v24;
    v73[2] = v24;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:3];
    v52 = v27;
    v28 = [MEMORY[0x1E69A2A10] messageWithName:@"HMWM.monitorMTRAttributes" destination:v27 payload:?];
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v32 = v48 = v29;
      v33 = [v20 identifier];
      [v33 shortDescription];
      v49 = v20;
      v35 = v34 = v13;
      [v28 identifier];
      v50 = v15;
      v36 = v12;
      v38 = v37 = v11;
      *buf = 138544642;
      v61 = v32;
      v62 = 2114;
      v63 = v35;
      v64 = 2112;
      v65 = v38;
      v66 = 2048;
      v67 = [v37 count];
      v68 = 2112;
      v69 = v36;
      v70 = 2112;
      v71 = v34;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] [%@] Monitoring %ld attributes for widget (%@, %@)", buf, 0x3Eu);

      v11 = v37;
      v12 = v36;
      v15 = v50;

      v13 = v34;
      v20 = v49;

      v29 = v48;
    }

    objc_autoreleasePoolPop(v29);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __91__HMWidgetManager_monitorStateForMTRAttributeDescriptors_widgetIdentifier_kind_completion___block_invoke;
    v57[3] = &unk_1E754E480;
    v57[4] = v30;
    v58 = v20;
    v59 = v15;
    [v28 setResponseHandler:v57];
    v39 = [(HMWidgetManager *)v30 context];
    v40 = [v39 messageDispatcher];
    [v40 sendMessage:v28];

    objc_autoreleasePoolPop(context);
    v21 = v56;
  }

  else
  {
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      [v20 identifier];
      v44 = contexta = v23;
      v45 = [v44 shortDescription];
      *buf = 138543618;
      v61 = v43;
      v62 = 2114;
      v63 = v45;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] HomeManager has been deallocated", buf, 0x16u);

      v23 = contexta;
      v21 = 0;
    }

    objc_autoreleasePoolPop(v23);
    v46 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (v15)[2](v15, v46);
  }

  v47 = *MEMORY[0x1E69E9840];
}

void __91__HMWidgetManager_monitorStateForMTRAttributeDescriptors_widgetIdentifier_kind_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v27 = v11;
      v28 = 2114;
      v29 = v13;
      v30 = 2112;
      v31 = v5;
      v14 = "%{public}@[%{public}@] Failed to monitor attributes with error: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, buf, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [a1[5] identifier];
    v13 = [v12 shortDescription];
    *buf = 138543618;
    v27 = v11;
    v28 = 2114;
    v29 = v13;
    v14 = "%{public}@[%{public}@] Successfully monitored attributes";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [a1[4] context];
  v19 = [v18 delegateCaller];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __91__HMWidgetManager_monitorStateForMTRAttributeDescriptors_widgetIdentifier_kind_completion___block_invoke_136;
  v23[3] = &unk_1E754E458;
  v20 = a1[6];
  v24 = v5;
  v25 = v20;
  v21 = v5;
  [v19 invokeBlock:v23];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)fetchStateForActionSets:(id)a3 completion:(id)a4
{
  v58[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v9 = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = objc_alloc(MEMORY[0x1E69A29C0]);
  v11 = MEMORY[0x1E696AEC0];
  v12 = MEMORY[0x19EAEB2A0](self, a2);
  v13 = [v11 stringWithFormat:@"%@, %s:%ld", v12, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Widgets/HMWidgetManager.m", 397];
  v14 = [v10 initWithName:v13];

  v15 = [(HMWidgetManager *)self homeManager];
  if (v15)
  {
    v16 = [v7 na_map:&__block_literal_global_127];
    v17 = objc_alloc(MEMORY[0x1E69A2A00]);
    v18 = [v15 uuid];
    v19 = [v17 initWithTarget:v18];

    v57 = @"HMWM.actionSets";
    v58[0] = v16;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    v45 = v19;
    v21 = [MEMORY[0x1E69A2A10] messageWithName:@"HMWM.fetchStateForActionSets" destination:v19 payload:v20];
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v25 = v42 = v20;
      [v14 identifier];
      v26 = v41 = v22;
      [v26 shortDescription];
      v27 = v44 = v7;
      [v21 identifier];
      v43 = v15;
      v28 = v9;
      v30 = v29 = v14;
      *buf = 138544130;
      v50 = v25;
      v51 = 2114;
      v52 = v27;
      v53 = 2112;
      v54 = v30;
      v55 = 2112;
      v56 = v16;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] [%@] Fetching action sets: %@", buf, 0x2Au);

      v14 = v29;
      v9 = v28;
      v15 = v43;

      v7 = v44;
      v22 = v41;

      v20 = v42;
    }

    objc_autoreleasePoolPop(v22);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __54__HMWidgetManager_fetchStateForActionSets_completion___block_invoke_128;
    v46[3] = &unk_1E754E480;
    v46[4] = v23;
    v47 = v14;
    v48 = v9;
    [v21 setResponseHandler:v46];
    v31 = [(HMWidgetManager *)v23 context];
    v32 = [v31 messageDispatcher];
    [v32 sendMessage:v21];
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v37 = v36 = v7;
      v38 = [v14 identifier];
      v39 = [v38 shortDescription];
      *buf = 138543618;
      v50 = v37;
      v51 = 2114;
      v52 = v39;
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] HomeManager has been deallocated", buf, 0x16u);

      v7 = v36;
    }

    objc_autoreleasePoolPop(v33);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (v9)[2](v9, 0, v16);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void __54__HMWidgetManager_fetchStateForActionSets_completion___block_invoke_128(id *a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v53 = v11;
      v54 = 2114;
      v55 = v13;
      v56 = 2112;
      v57 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch action sets with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [a1[4] context];
    v15 = [v14 delegateCaller];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __54__HMWidgetManager_fetchStateForActionSets_completion___block_invoke_129;
    v49[3] = &unk_1E754E458;
    v51 = a1[6];
    v50 = v5;
    [v15 invokeBlock:v49];

    v16 = v51;
  }

  else
  {
    v17 = [v6 hmf_dictionaryForKey:@"HMWM.actionSetsIsOn"];
    if (v17)
    {
      v16 = v17;
      v18 = [v7 hmf_dictionaryForKey:@"HMWM.actionSetsDidExecuteFail"];
      v19 = v18;
      v20 = MEMORY[0x1E695E0F8];
      if (v18)
      {
        v20 = v18;
      }

      v21 = v20;

      v22 = [[HMWidgetManagerFetchStateForActionSetsResponse alloc] initWithIsOnByActionSetsUniqueIdentifier:v16 didExecutionFailByActionSetUniqueIdentifier:v21];
      v23 = objc_autoreleasePoolPush();
      v24 = a1[4];
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v26 = v43 = v21;
        [a1[5] identifier];
        v27 = v42 = v23;
        v28 = [v27 shortDescription];
        *buf = 138543618;
        v53 = v26;
        v54 = 2114;
        v55 = v28;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched action sets", buf, 0x16u);

        v23 = v42;
        v21 = v43;
      }

      objc_autoreleasePoolPop(v23);
      v29 = [a1[4] context];
      v30 = [v29 delegateCaller];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __54__HMWidgetManager_fetchStateForActionSets_completion___block_invoke_132;
      v44[3] = &unk_1E754E458;
      v31 = a1[6];
      v45 = v22;
      v46 = v31;
      v32 = v22;
      [v30 invokeBlock:v44];
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = a1[4];
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [a1[5] identifier];
        v38 = [v37 shortDescription];
        *buf = 138543618;
        v53 = v36;
        v54 = 2114;
        v55 = v38;
        _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Action set isOn statuses are unexpectedly missing in the response", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v39 = [a1[4] context];
      v40 = [v39 delegateCaller];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __54__HMWidgetManager_fetchStateForActionSets_completion___block_invoke_130;
      v47[3] = &unk_1E754E430;
      v48 = a1[6];
      [v40 invokeBlock:v47];

      v16 = 0;
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __54__HMWidgetManager_fetchStateForActionSets_completion___block_invoke_130(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)monitorAndFetchStateForActionSets:(id)a3 widgetIdentifier:(id)a4 kind:(id)a5 completion:(id)a6
{
  v69[3] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v12)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v13)
  {
LABEL_15:
    _HMFPreconditionFailure();
LABEL_16:
    _HMFPreconditionFailure();
  }

  v15 = v14;
  if (!v14)
  {
    goto LABEL_16;
  }

  v16 = objc_alloc(MEMORY[0x1E69A29C0]);
  v17 = MEMORY[0x1E696AEC0];
  v18 = MEMORY[0x19EAEB2A0](self, a2);
  v19 = [v17 stringWithFormat:@"%@, %s:%ld", v18, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Widgets/HMWidgetManager.m", 334];
  v20 = [v16 initWithName:v19];

  v21 = [(HMWidgetManager *)self homeManager];
  if (v21)
  {
    v51 = v20;
    v49 = v15;
    v22 = [v11 na_map:&__block_literal_global_120];
    v23 = objc_alloc(MEMORY[0x1E69A2A00]);
    v24 = [v21 uuid];
    v25 = [v23 initWithTarget:v24];

    v68[0] = @"HMWM.widgetIdentifier";
    v68[1] = @"HMWM.widgetKind";
    v69[0] = v12;
    v69[1] = v13;
    v68[2] = @"HMWM.actionSets";
    v69[2] = v22;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:3];
    v48 = v25;
    v26 = [MEMORY[0x1E69A2A10] messageWithName:@"HMWM.monitorActionSets" destination:v25 payload:?];
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v30 = v45 = v27;
      v31 = [v51 identifier];
      [v31 shortDescription];
      v50 = v21;
      v33 = v32 = v12;
      [v26 identifier];
      v34 = v46 = v11;
      *buf = 138544642;
      v57 = v30;
      v58 = 2114;
      v59 = v33;
      v60 = 2112;
      v61 = v34;
      v62 = 2112;
      v63 = v32;
      v64 = 2112;
      v65 = v13;
      v66 = 2112;
      v67 = v22;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] [%@] Monitoring action sets for widget (%@, %@): %@", buf, 0x3Eu);

      v11 = v46;
      v12 = v32;
      v21 = v50;

      v27 = v45;
    }

    objc_autoreleasePoolPop(v27);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __86__HMWidgetManager_monitorAndFetchStateForActionSets_widgetIdentifier_kind_completion___block_invoke_121;
    v53[3] = &unk_1E754E480;
    v53[4] = v28;
    v20 = v51;
    v54 = v51;
    v15 = v49;
    v55 = v49;
    [v26 setResponseHandler:v53];
    v35 = [(HMWidgetManager *)v28 context];
    v36 = [v35 messageDispatcher];
    [v36 sendMessage:v26];
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      [v20 identifier];
      v41 = v52 = v20;
      [v41 shortDescription];
      v43 = v42 = v15;
      *buf = 138543618;
      v57 = v40;
      v58 = 2114;
      v59 = v43;
      _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] HomeManager has been deallocated", buf, 0x16u);

      v15 = v42;
      v20 = v52;
    }

    objc_autoreleasePoolPop(v37);
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (v15)[2](v15, 0, v22);
    v21 = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
}

void __86__HMWidgetManager_monitorAndFetchStateForActionSets_widgetIdentifier_kind_completion___block_invoke_121(id *a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v53 = v11;
      v54 = 2114;
      v55 = v13;
      v56 = 2112;
      v57 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to monitor action sets with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [a1[4] context];
    v15 = [v14 delegateCaller];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __86__HMWidgetManager_monitorAndFetchStateForActionSets_widgetIdentifier_kind_completion___block_invoke_122;
    v49[3] = &unk_1E754E458;
    v51 = a1[6];
    v50 = v5;
    [v15 invokeBlock:v49];

    v16 = v51;
  }

  else
  {
    v17 = [v6 hmf_dictionaryForKey:@"HMWM.actionSetsIsOn"];
    if (v17)
    {
      v16 = v17;
      v18 = [v7 hmf_dictionaryForKey:@"HMWM.actionSetsDidExecuteFail"];
      v19 = v18;
      v20 = MEMORY[0x1E695E0F8];
      if (v18)
      {
        v20 = v18;
      }

      v21 = v20;

      v22 = [[HMWidgetManagerMonitorActionSetsResponse alloc] initWithIsOnByActionSetsUniqueIdentifier:v16 didExecutionFailByActionSetUniqueIdentifier:v21];
      v23 = objc_autoreleasePoolPush();
      v24 = a1[4];
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v26 = v43 = v21;
        [a1[5] identifier];
        v27 = v42 = v23;
        v28 = [v27 shortDescription];
        *buf = 138543618;
        v53 = v26;
        v54 = 2114;
        v55 = v28;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully monitored action sets", buf, 0x16u);

        v23 = v42;
        v21 = v43;
      }

      objc_autoreleasePoolPop(v23);
      v29 = [a1[4] context];
      v30 = [v29 delegateCaller];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __86__HMWidgetManager_monitorAndFetchStateForActionSets_widgetIdentifier_kind_completion___block_invoke_125;
      v44[3] = &unk_1E754E458;
      v31 = a1[6];
      v45 = v22;
      v46 = v31;
      v32 = v22;
      [v30 invokeBlock:v44];
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = a1[4];
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [a1[5] identifier];
        v38 = [v37 shortDescription];
        *buf = 138543618;
        v53 = v36;
        v54 = 2114;
        v55 = v38;
        _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Action set isOn statuses are unexpectedly missing in the response", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v39 = [a1[4] context];
      v40 = [v39 delegateCaller];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __86__HMWidgetManager_monitorAndFetchStateForActionSets_widgetIdentifier_kind_completion___block_invoke_123;
      v47[3] = &unk_1E754E430;
      v48 = a1[6];
      [v40 invokeBlock:v47];

      v16 = 0;
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __86__HMWidgetManager_monitorAndFetchStateForActionSets_widgetIdentifier_kind_completion___block_invoke_123(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)performRequests:(id)a3 forKind:(id)a4 completion:(id)a5
{
  v105 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
LABEL_44:
    _HMFPreconditionFailure();
  }

  if (!v10)
  {
    goto LABEL_44;
  }

  v12 = v11;
  v13 = objc_alloc(MEMORY[0x1E69A29C0]);
  v14 = MEMORY[0x1E696AEC0];
  v15 = MEMORY[0x19EAEB2A0](self, a2);
  v16 = [v14 stringWithFormat:@"%@, %s:%ld", v15, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Widgets/HMWidgetManager.m", 263];
  v17 = [v13 initWithName:v16];

  v18 = [(HMWidgetManager *)self homeManager];
  if (v18)
  {
    if ([v9 count])
    {
      v79 = self;
      v82 = v10;
      v83 = v17;
      aBlock = v12;
      v19 = [MEMORY[0x1E695DF70] array];
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v81 = v9;
      obj = v9;
      v20 = [obj countByEnumeratingWithState:&v90 objects:v104 count:16];
      v85 = v19;
      if (v20)
      {
        v21 = v20;
        v22 = *v91;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v91 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v90 + 1) + 8 * i);
            v25 = [MEMORY[0x1E695DF90] dictionary];
            v26 = v24;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = v26;
            }

            else
            {
              v27 = 0;
            }

            v28 = v27;

            v29 = v26;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = v29;
            }

            else
            {
              v30 = 0;
            }

            v31 = v30;

            if (v28)
            {
              [v25 setObject:&unk_1F0EFD2B0 forKeyedSubscript:@"HMWM.requestType"];
              v32 = [v28 characteristic];
              v33 = [v32 uniqueIdentifier];
              [v25 setObject:v33 forKeyedSubscript:@"HMWM.characteristicUUID"];

              v34 = [v28 value];
              [v25 setObject:v34 forKeyedSubscript:@"HMWM.characteristicValue"];
            }

            else
            {
              if (!v31)
              {
                v70 = objc_autoreleasePoolPush();
                v71 = self;
                v72 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  v73 = HMFGetLogIdentifier();
                  v74 = [v83 identifier];
                  v75 = [v74 shortDescription];
                  *buf = 138543874;
                  v95 = v73;
                  v96 = 2114;
                  v97 = v75;
                  v98 = 2112;
                  v99 = v29;
                  _os_log_impl(&dword_19BB39000, v72, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Request is not a supported type: %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v70);
                v12 = aBlock;
                v76 = _Block_copy(aBlock);
                v10 = v82;
                if (v76)
                {
                  v77 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
                  v76[2](v76, v77);
                }

                v9 = v81;
                v17 = v83;
                goto LABEL_41;
              }

              v35 = MEMORY[0x1E696AD98];
              if ([v31 isMemberOfClass:objc_opt_class()])
              {
                v36 = 2;
              }

              else
              {
                v36 = 1;
              }

              v37 = [v35 numberWithInteger:v36];
              [v25 setObject:v37 forKeyedSubscript:@"HMWM.requestType"];

              v34 = [v31 actionSet];
              v38 = [v34 uniqueIdentifier];
              [v25 setObject:v38 forKeyedSubscript:@"HMWM.actionSetUUID"];
            }

            v19 = v85;
            [v85 addObject:v25];
          }

          v21 = [obj countByEnumeratingWithState:&v90 objects:v104 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v102[0] = @"HMWM.requests";
      v102[1] = @"HMWM.widgetKind";
      v10 = v82;
      v103[0] = v19;
      v103[1] = v82;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
      v40 = MEMORY[0x1E69A2A10];
      v41 = objc_alloc(MEMORY[0x1E69A2A00]);
      v42 = [v18 uuid];
      v43 = [v41 initWithTarget:v42];
      v44 = [v40 messageWithName:@"HMWM.performRequests" destination:v43 payload:v39];

      v45 = objc_autoreleasePoolPush();
      v46 = v79;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        v49 = [v83 identifier];
        v50 = [v49 shortDescription];
        v51 = [v44 identifier];
        *buf = 138544130;
        v95 = v48;
        v96 = 2114;
        v97 = v50;
        v98 = 2112;
        v99 = v51;
        v100 = 2112;
        v101 = v85;
        _os_log_impl(&dword_19BB39000, v47, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] [%@] Performing requests: %@", buf, 0x2Au);

        v10 = v82;
      }

      objc_autoreleasePoolPop(v45);
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __54__HMWidgetManager_performRequests_forKind_completion___block_invoke;
      v87[3] = &unk_1E754E480;
      v87[4] = v46;
      v17 = v83;
      v88 = v83;
      v12 = aBlock;
      v89 = aBlock;
      [v44 setResponseHandler:v87];
      v52 = [(HMWidgetManager *)v46 context];
      v53 = [v52 messageDispatcher];
      [v53 sendMessage:v44];

      v9 = v81;
LABEL_41:
      v60 = v85;
    }

    else
    {
      v62 = objc_autoreleasePoolPush();
      v63 = self;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = HMFGetLogIdentifier();
        v66 = [v17 identifier];
        [v66 shortDescription];
        v86 = v62;
        v68 = v67 = v18;
        *buf = 138543618;
        v95 = v65;
        v96 = 2114;
        v97 = v68;
        _os_log_impl(&dword_19BB39000, v64, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] No requests to process", buf, 0x16u);

        v18 = v67;
        v62 = v86;
      }

      objc_autoreleasePoolPop(v62);
      v69 = _Block_copy(v12);
      v60 = v69;
      if (v69)
      {
        v69[2](v69, 0);
      }
    }
  }

  else
  {
    v54 = objc_autoreleasePoolPush();
    v55 = self;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = HMFGetLogIdentifier();
      v58 = [v17 identifier];
      v59 = [v58 shortDescription];
      *buf = 138543618;
      v95 = v57;
      v96 = 2114;
      v97 = v59;
      _os_log_impl(&dword_19BB39000, v56, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] HomeManager has been deallocated", buf, 0x16u);

      v18 = 0;
    }

    objc_autoreleasePoolPop(v54);
    v60 = _Block_copy(v12);
    if (v60)
    {
      v61 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      v60[2](v60, v61);
    }
  }

  v78 = *MEMORY[0x1E69E9840];
}

void __54__HMWidgetManager_performRequests_forKind_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v27 = v11;
      v28 = 2114;
      v29 = v13;
      v30 = 2112;
      v31 = v5;
      v14 = "%{public}@[%{public}@] Failed to perform requests with error: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, buf, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [a1[5] identifier];
    v13 = [v12 shortDescription];
    *buf = 138543618;
    v27 = v11;
    v28 = 2114;
    v29 = v13;
    v14 = "%{public}@[%{public}@] Successfully performed requests";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [a1[4] context];
  v19 = [v18 delegateCaller];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __54__HMWidgetManager_performRequests_forKind_completion___block_invoke_114;
  v23[3] = &unk_1E754E458;
  v20 = a1[6];
  v24 = v5;
  v25 = v20;
  v21 = v5;
  [v19 invokeBlock:v23];

  v22 = *MEMORY[0x1E69E9840];
}

void __54__HMWidgetManager_performRequests_forKind_completion___block_invoke_114(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

- (void)fetchStateForCharacteristics:(id)a3 completion:(id)a4
{
  v58[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v9 = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = objc_alloc(MEMORY[0x1E69A29C0]);
  v11 = MEMORY[0x1E696AEC0];
  v12 = MEMORY[0x19EAEB2A0](self, a2);
  v13 = [v11 stringWithFormat:@"%@, %s:%ld", v12, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Widgets/HMWidgetManager.m", 203];
  v14 = [v10 initWithName:v13];

  v15 = [(HMWidgetManager *)self homeManager];
  if (v15)
  {
    v16 = [v7 na_map:&__block_literal_global_99];
    v17 = objc_alloc(MEMORY[0x1E69A2A00]);
    v18 = [v15 uuid];
    v19 = [v17 initWithTarget:v18];

    v57 = @"HMWM.characteristics";
    v58[0] = v16;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    v45 = v19;
    v21 = [MEMORY[0x1E69A2A10] messageWithName:@"HMWM.fetchState" destination:v19 payload:v20];
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v25 = v42 = v20;
      [v14 identifier];
      v26 = v41 = v22;
      [v26 shortDescription];
      v27 = v44 = v7;
      [v21 identifier];
      v43 = v15;
      v28 = v9;
      v30 = v29 = v14;
      *buf = 138544130;
      v50 = v25;
      v51 = 2114;
      v52 = v27;
      v53 = 2112;
      v54 = v30;
      v55 = 2112;
      v56 = v16;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] [%@] Fetching state for characteristics: %@", buf, 0x2Au);

      v14 = v29;
      v9 = v28;
      v15 = v43;

      v7 = v44;
      v22 = v41;

      v20 = v42;
    }

    objc_autoreleasePoolPop(v22);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __59__HMWidgetManager_fetchStateForCharacteristics_completion___block_invoke_100;
    v46[3] = &unk_1E754E480;
    v46[4] = v23;
    v47 = v14;
    v48 = v9;
    [v21 setResponseHandler:v46];
    v31 = [(HMWidgetManager *)v23 context];
    v32 = [v31 messageDispatcher];
    [v32 sendMessage:v21];
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v37 = v36 = v7;
      v38 = [v14 identifier];
      v39 = [v38 shortDescription];
      *buf = 138543618;
      v50 = v37;
      v51 = 2114;
      v52 = v39;
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] HomeManager has been deallocated", buf, 0x16u);

      v7 = v36;
    }

    objc_autoreleasePoolPop(v33);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (v9)[2](v9, 0, v16);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void __59__HMWidgetManager_fetchStateForCharacteristics_completion___block_invoke_100(id *a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v47 = v11;
      v48 = 2114;
      v49 = v13;
      v50 = 2112;
      v51 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch state with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [a1[4] context];
    v15 = [v14 delegateCaller];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __59__HMWidgetManager_fetchStateForCharacteristics_completion___block_invoke_101;
    v43[3] = &unk_1E754E458;
    v45 = a1[6];
    v44 = v5;
    [v15 invokeBlock:v43];

    v16 = v45;
  }

  else
  {
    v16 = [v6 hmf_dictionaryForKey:@"HMWM.characteristics"];
    if (v16)
    {
      v17 = [[HMWidgetManagerFetchStateResponse alloc] initWithValueByCharacteristicUniqueIdentifier:v16];
      v18 = objc_autoreleasePoolPush();
      v19 = a1[4];
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [a1[5] identifier];
        [v22 shortDescription];
        v23 = v37 = v18;
        *buf = 138543618;
        v47 = v21;
        v48 = 2114;
        v49 = v23;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched state", buf, 0x16u);

        v18 = v37;
      }

      objc_autoreleasePoolPop(v18);
      v24 = [a1[4] context];
      v25 = [v24 delegateCaller];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __59__HMWidgetManager_fetchStateForCharacteristics_completion___block_invoke_104;
      v38[3] = &unk_1E754E458;
      v26 = a1[6];
      v39 = v17;
      v40 = v26;
      v27 = v17;
      [v25 invokeBlock:v38];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = a1[4];
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [a1[5] identifier];
        v33 = [v32 shortDescription];
        *buf = 138543618;
        v47 = v31;
        v48 = 2114;
        v49 = v33;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Characteristic values are unexpectedly missing", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v34 = [a1[4] context];
      v35 = [v34 delegateCaller];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __59__HMWidgetManager_fetchStateForCharacteristics_completion___block_invoke_102;
      v41[3] = &unk_1E754E430;
      v42 = a1[6];
      [v35 invokeBlock:v41];

      v27 = v42;
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

void __59__HMWidgetManager_fetchStateForCharacteristics_completion___block_invoke_102(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_90(id *a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v60 = v11;
      v61 = 2114;
      v62 = v13;
      v63 = 2112;
      v64 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to monitor characteristics with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [a1[4] context];
    v15 = [v14 delegateCaller];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_91;
    v56[3] = &unk_1E754E458;
    v58 = a1[6];
    v57 = v5;
    [v15 invokeBlock:v56];

    v16 = v58;
  }

  else
  {
    v16 = [v6 hmf_dictionaryForKey:@"HMWM.characteristics"];
    if (v16)
    {
      v17 = [v7 hmf_dictionaryForKey:@"HMWM.reachability"];
      if (v17)
      {
        v18 = [[HMWidgetManagerMonitorCharacteristicsResponse alloc] initWithValueByCharacteristicUniqueIdentifier:v16 reachabilityByAccessoryUniqueIdentifier:v17];
        v19 = objc_autoreleasePoolPush();
        v20 = a1[4];
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v22 = v47 = v18;
          v23 = [a1[5] identifier];
          [v23 shortDescription];
          v24 = v46 = v19;
          *buf = 138543618;
          v60 = v22;
          v61 = 2114;
          v62 = v24;
          _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully monitored characteristics", buf, 0x16u);

          v19 = v46;
          v18 = v47;
        }

        objc_autoreleasePoolPop(v19);
        v25 = [a1[4] context];
        v26 = [v25 delegateCaller];
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_96;
        v49[3] = &unk_1E754E458;
        v27 = a1[6];
        v50 = v18;
        v51 = v27;
        v28 = v18;
        [v26 invokeBlock:v49];
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = a1[4];
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          v41 = [a1[5] identifier];
          [v41 shortDescription];
          v42 = v48 = v37;
          *buf = 138543618;
          v60 = v40;
          v61 = 2114;
          v62 = v42;
          _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Accessory reachability is unexpectedly missing", buf, 0x16u);

          v37 = v48;
        }

        objc_autoreleasePoolPop(v37);
        v43 = [a1[4] context];
        v44 = [v43 delegateCaller];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_94;
        v52[3] = &unk_1E754E430;
        v53 = a1[6];
        [v44 invokeBlock:v52];

        v28 = v53;
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = a1[4];
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [a1[5] identifier];
        v34 = [v33 shortDescription];
        *buf = 138543618;
        v60 = v32;
        v61 = 2114;
        v62 = v34;
        _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Characteristic values are unexpectedly missing", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v35 = [a1[4] context];
      v36 = [v35 delegateCaller];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_93;
      v54[3] = &unk_1E754E430;
      v55 = a1[6];
      [v36 invokeBlock:v54];

      v17 = v55;
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

void __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_93(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __118__HMWidgetManager_monitorAndFetchStateForCharacteristics_monitorReachabilityChanges_widgetIdentifier_kind_completion___block_invoke_94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

- (HMWidgetManager)initWithHomeManager:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = v7;
  if (!v7)
  {
LABEL_7:
    v12 = _HMFPreconditionFailure();
    return +[(HMWidgetManager *)v12];
  }

  v14.receiver = self;
  v14.super_class = HMWidgetManager;
  v9 = [(HMWidgetManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_homeManager, v6);
    objc_storeStrong(&v10->_context, a4);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t37_55041 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t37_55041, &__block_literal_global_138);
  }

  v3 = logCategory__hmf_once_v38_55042;

  return v3;
}

uint64_t __30__HMWidgetManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v38_55042;
  logCategory__hmf_once_v38_55042 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end
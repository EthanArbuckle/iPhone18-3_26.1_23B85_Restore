@interface HMUserActionPredictionTransformer
+ (id)logCategory;
- (BOOL)isValidPredictionForAccessory:(id)a3 targetServiceIdentifier:(id)a4;
- (id)matchingAccessoryForDuetAccessoryPrediction:(id)a3 home:(id)a4;
- (id)matchingServiceForDuetAccessoryPrediction:(id)a3 onAccessory:(id)a4 home:(id)a5;
- (id)predictionForDuetAccessoryPrediction:(id)a3 home:(id)a4;
- (id)predictionForDuetScenePrediction:(id)a3 home:(id)a4;
- (id)predictionWithSameTargetGroupAsPrediction:(id)a3 inPredictions:(id)a4;
- (id)predictionsWithDuetPredictions:(id)a3 forHome:(id)a4;
@end

@implementation HMUserActionPredictionTransformer

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_19192 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_19192, &__block_literal_global_19193);
  }

  v3 = logCategory__hmf_once_v6_19194;

  return v3;
}

uint64_t __48__HMUserActionPredictionTransformer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_19194;
  logCategory__hmf_once_v6_19194 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (BOOL)isValidPredictionForAccessory:(id)a3 targetServiceIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = v6;
    v8 = [v5 mediaProfile];

    if (v7)
    {
      v9 = [v5 services];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __91__HMUserActionPredictionTransformer_isValidPredictionForAccessory_targetServiceIdentifier___block_invoke;
      v16[3] = &unk_1E7548460;
      v17 = v7;
      v10 = [v9 na_any:v16];
    }

    else
    {
      v10 = 0;
    }

    if (v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8 == 0;
    }

    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 1;
    }

    return v12;
  }

  else
  {
    v14 = _HMFPreconditionFailure();
    return __91__HMUserActionPredictionTransformer_isValidPredictionForAccessory_targetServiceIdentifier___block_invoke(v14, v15);
  }
}

uint64_t __91__HMUserActionPredictionTransformer_isValidPredictionForAccessory_targetServiceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)matchingServiceForDuetAccessoryPrediction:(id)a3 onAccessory:(id)a4 home:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 predictionType] != 2)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v8)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v9)
  {
LABEL_13:
    v18 = _HMFPreconditionFailure();
    return __96__HMUserActionPredictionTransformer_matchingServiceForDuetAccessoryPrediction_onAccessory_home___block_invoke(v18, v19);
  }

  v10 = [v7 targetAccessoryServiceIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc(MEMORY[0x1E696AFB0]);
    v13 = [v7 targetAccessoryServiceIdentifier];
    v14 = [v12 initWithUUIDString:v13];

    if (v14)
    {
      v15 = [v8 services];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __96__HMUserActionPredictionTransformer_matchingServiceForDuetAccessoryPrediction_onAccessory_home___block_invoke;
      v20[3] = &unk_1E7548460;
      v21 = v14;
      v16 = v14;
      v14 = [v15 na_firstObjectPassingTest:v20];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __96__HMUserActionPredictionTransformer_matchingServiceForDuetAccessoryPrediction_onAccessory_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)matchingAccessoryForDuetAccessoryPrediction:(id)a3 home:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 predictionType] != 2)
  {
    _HMFPreconditionFailure();
LABEL_45:
    _HMFPreconditionFailure();
  }

  if (!v6)
  {
    goto LABEL_45;
  }

  v7 = [v5 targetIdentifier];
  v8 = [HMUserActionPredictionTransformerMatter matchingMatterAccessoryForTargetIdentifier:v7 home:v6];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696AFB0]);
    v11 = [v5 targetIdentifier];
    v12 = [v10 initWithUUIDString:v11];

    v13 = [v5 targetAccessoryServiceIdentifier];
    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E696AFB0]);
      v15 = [v5 targetAccessoryServiceIdentifier];
      v46 = [v14 initWithUUIDString:v15];
    }

    else
    {
      v46 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v16 = [v6 accessories];
    v17 = [v16 countByEnumeratingWithState:&v53 objects:v66 count:16];
    v43 = v12;
    if (v17)
    {
      v18 = v17;
      v42 = v5;
      v19 = *v54;
LABEL_10:
      v20 = 0;
      while (1)
      {
        if (*v54 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v53 + 1) + 8 * v20);
        v22 = [v21 uniqueIdentifier];
        v23 = [v22 hmf_isEqualToUUID:v12];

        v24 = [v21 uniqueIdentifiersForBridgedAccessories];
        v25 = [v24 count];

        if (v25 && v23 != 0)
        {
          break;
        }

        if (v23 && [(HMUserActionPredictionTransformer *)self isValidPredictionForAccessory:v21 targetServiceIdentifier:v46])
        {
          v9 = v21;
LABEL_39:
          v5 = v42;
          v8 = 0;
          goto LABEL_40;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v53 objects:v66 count:16];
          if (v18)
          {
            goto LABEL_10;
          }

          v9 = 0;
          goto LABEL_39;
        }
      }

      v41 = v16;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = [v21 bridgedAccessories];
      v27 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v50;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v50 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v49 + 1) + 8 * i);
            v32 = [v31 services];
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __86__HMUserActionPredictionTransformer_matchingAccessoryForDuetAccessoryPrediction_home___block_invoke;
            v47[3] = &unk_1E7548460;
            v33 = v46;
            v48 = v33;
            v34 = [v32 na_any:v47];

            if (v34 && [(HMUserActionPredictionTransformer *)self isValidPredictionForAccessory:v31 targetServiceIdentifier:v33])
            {
              v9 = v31;

              v5 = v42;
              goto LABEL_37;
            }
          }

          v28 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v35 = objc_autoreleasePoolPush();
      v36 = self;
      v37 = HMFGetOSLogHandle();
      v5 = v42;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138544130;
        v58 = v38;
        v59 = 2112;
        v60 = v21;
        v61 = 2112;
        v62 = v6;
        v63 = 2112;
        v64 = v42;
        _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@Bad accessory prediction from duet, found bridge: %@ but couldn't find accessory in home (%@) for prediction: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v35);
      v9 = 0;
LABEL_37:
      v16 = v41;
      v8 = 0;
    }

    else
    {
      v9 = 0;
    }

LABEL_40:
  }

  v39 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __86__HMUserActionPredictionTransformer_matchingAccessoryForDuetAccessoryPrediction_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)predictionForDuetAccessoryPrediction:(id)a3 home:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 predictionType] != 2)
  {
    _HMFPreconditionFailure();
LABEL_20:
    _HMFPreconditionFailure();
  }

  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = [(HMUserActionPredictionTransformer *)self matchingAccessoryForDuetAccessoryPrediction:v7 home:v8];
  if (v9)
  {
    v10 = [(HMUserActionPredictionTransformer *)self matchingServiceForDuetAccessoryPrediction:v7 onAccessory:v9 home:v8];
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = [v8 serviceGroups];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __79__HMUserActionPredictionTransformer_predictionForDuetAccessoryPrediction_home___block_invoke;
    v34[3] = &unk_1E7548488;
    v4 = &v35;
    v35 = v10;
    v12 = [v11 na_firstObjectPassingTest:v34];
    v13 = [v12 uniqueIdentifier];

    if (v13)
    {
      v14 = [HMUserActionPrediction alloc];
      [v7 score];
      v15 = [(HMUserActionPrediction *)v14 initWithPredictionTargetUUID:v13 predictionType:3 predictionScore:?];
    }

    else
    {
LABEL_10:
      v20 = [v8 mediaSystems];
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __79__HMUserActionPredictionTransformer_predictionForDuetAccessoryPrediction_home___block_invoke_3;
      v32 = &unk_1E75484D8;
      v21 = v9;
      v33 = v21;
      v22 = [v20 na_firstObjectPassingTest:&v29];
      v23 = [v22 uniqueIdentifier];

      v24 = [HMUserActionPrediction alloc];
      if (v23)
      {
        [v7 score];
        v15 = [(HMUserActionPrediction *)v24 initWithPredictionTargetUUID:v23 predictionType:4 predictionScore:?];
      }

      else
      {
        v25 = [v21 uniqueIdentifier];
        v26 = [v10 uniqueIdentifier];
        [v7 score];
        v15 = [(HMUserActionPrediction *)v24 initWithPredictionTargetUUID:v25 targetServiceUUID:v26 predictionType:2 predictionScore:?];
      }

      if (!v10)
      {
        goto LABEL_15;
      }
    }

LABEL_15:
    goto LABEL_16;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v19;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Bad service prediction retrieved from duet, missing predicted service in home (%@)", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v15 = 0;
LABEL_16:

  v27 = *MEMORY[0x1E69E9840];

  return v15;
}

uint64_t __79__HMUserActionPredictionTransformer_predictionForDuetAccessoryPrediction_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__HMUserActionPredictionTransformer_predictionForDuetAccessoryPrediction_home___block_invoke_2;
  v6[3] = &unk_1E7548460;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __79__HMUserActionPredictionTransformer_predictionForDuetAccessoryPrediction_home___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 components];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__HMUserActionPredictionTransformer_predictionForDuetAccessoryPrediction_home___block_invoke_4;
  v6[3] = &unk_1E75484B0;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __79__HMUserActionPredictionTransformer_predictionForDuetAccessoryPrediction_home___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

uint64_t __79__HMUserActionPredictionTransformer_predictionForDuetAccessoryPrediction_home___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (id)predictionForDuetScenePrediction:(id)a3 home:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 predictionType] != 1)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = objc_alloc(MEMORY[0x1E696AFB0]);
  v9 = [v6 targetIdentifier];
  v10 = [v8 initWithUUIDString:v9];

  v11 = [v7 actionSets];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__HMUserActionPredictionTransformer_predictionForDuetScenePrediction_home___block_invoke;
  v23[3] = &unk_1E7548438;
  v12 = v10;
  v24 = v12;
  v13 = [v11 na_firstObjectPassingTest:v23];

  if (v13)
  {
    v14 = [HMUserActionPrediction alloc];
    v15 = [v13 uniqueIdentifier];
    [v6 score];
    v16 = [(HMUserActionPrediction *)v14 initWithPredictionTargetUUID:v15 predictionType:1 predictionScore:?];
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
      v26 = v20;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Bad scene prediction from duet, missing predicted action set in home (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t __75__HMUserActionPredictionTransformer_predictionForDuetScenePrediction_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 actions];
    v5 = [v6 count] != 0;
  }

  return v5;
}

- (id)predictionWithSameTargetGroupAsPrediction:(id)a3 inPredictions:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v7 = v6;
  if (!v6)
  {
LABEL_13:
    v13 = _HMFPreconditionFailure();
    return __93__HMUserActionPredictionTransformer_predictionWithSameTargetGroupAsPrediction_inPredictions___block_invoke(v13, v14);
  }

  v8 = [v5 predictionType];
  if (v8 == 3)
  {
    v9 = v15;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v10 = __93__HMUserActionPredictionTransformer_predictionWithSameTargetGroupAsPrediction_inPredictions___block_invoke_2;
  }

  else
  {
    if (v8 != 4)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v9 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v10 = __93__HMUserActionPredictionTransformer_predictionWithSameTargetGroupAsPrediction_inPredictions___block_invoke;
  }

  v9[2] = v10;
  v9[3] = &unk_1E7548410;
  v9[4] = v5;
  v11 = [v7 na_firstObjectPassingTest:v9];

LABEL_9:

  return v11;
}

uint64_t __93__HMUserActionPredictionTransformer_predictionWithSameTargetGroupAsPrediction_inPredictions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 predictionType] == 4)
  {
    v4 = [*(a1 + 32) predictionTargetUUID];
    v5 = [v3 predictionTargetUUID];
    v6 = [v4 hmf_isEqualToUUID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __93__HMUserActionPredictionTransformer_predictionWithSameTargetGroupAsPrediction_inPredictions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 predictionType] == 3)
  {
    v4 = [*(a1 + 32) predictionTargetUUID];
    v5 = [v3 predictionTargetUUID];
    v6 = [v4 hmf_isEqualToUUID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)predictionsWithDuetPredictions:(id)a3 forHome:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_35:
    _HMFPreconditionFailure();
  }

  if (!v7)
  {
    goto LABEL_35;
  }

  v37 = v7;
  v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = v8;
  v10 = *v39;
  v11 = 0x1E696A000uLL;
  do
  {
    v12 = 0;
    do
    {
      if (*v39 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v38 + 1) + 8 * v12);
      v14 = objc_alloc(*(v11 + 4016));
      v15 = [v13 targetIdentifier];
      v16 = [v14 initWithUUIDString:v15];

      if (!v16)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543874;
          v43 = v22;
          v44 = 2112;
          v45 = v37;
          v46 = 2112;
          v47 = v13;
          v23 = v21;
          v24 = "%{public}@Bad prediction for home %@ from duet, missing targetIdentifier (%@)";
          goto LABEL_19;
        }

LABEL_20:

        objc_autoreleasePoolPop(v19);
        goto LABEL_21;
      }

      if (([v13 hasPredictionType] & 1) == 0)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543874;
          v43 = v22;
          v44 = 2112;
          v45 = v37;
          v46 = 2112;
          v47 = v13;
          v23 = v21;
          v24 = "%{public}@Bad prediction for home %@ from duet, missing prediction type (%@)";
LABEL_19:
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x20u);

          v11 = 0x1E696A000;
        }

        goto LABEL_20;
      }

      v17 = [v13 predictionType];
      if (v17 == 2)
      {
        v25 = [(HMUserActionPredictionTransformer *)self predictionForDuetAccessoryPrediction:v13 home:v37];
        if (v25)
        {
          v26 = [(HMUserActionPredictionTransformer *)self predictionWithSameTargetGroupAsPrediction:v25 inPredictions:v35];
          v27 = v26;
          if (!v26)
          {
            goto LABEL_27;
          }

          [v26 predictionScore];
          v29 = v28;
          [v25 predictionScore];
          if (v29 <= v30)
          {
            [v35 removeObject:v27];
LABEL_27:
            [v35 addObject:v25];
          }

          v11 = 0x1E696A000;
        }

        goto LABEL_21;
      }

      if (v17 == 1)
      {
        v18 = [(HMUserActionPredictionTransformer *)self predictionForDuetScenePrediction:v13 home:v37];
        if (v18)
        {
          [v35 addObject:v18];
        }
      }

LABEL_21:

      ++v12;
    }

    while (v9 != v12);
    v31 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    v9 = v31;
  }

  while (v31);
LABEL_31:

  v32 = [v35 copy];
  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

@end
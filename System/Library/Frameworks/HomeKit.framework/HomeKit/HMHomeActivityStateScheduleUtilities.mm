@interface HMHomeActivityStateScheduleUtilities
+ (BOOL)areValidScheduleEntries:(id)a3;
+ (id)logCategory;
+ (id)sortedScheduleEntries:(id)a3;
@end

@implementation HMHomeActivityStateScheduleUtilities

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_54286 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_54286, &__block_literal_global_6);
  }

  v3 = logCategory__hmf_once_v4_54287;

  return v3;
}

uint64_t __51__HMHomeActivityStateScheduleUtilities_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_54287;
  logCategory__hmf_once_v4_54287 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (BOOL)areValidScheduleEntries:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] >= 2)
  {
    v6 = [HMHomeActivityStateScheduleUtilities sortedScheduleEntries:v4];
    if ([v6 count] == 2)
    {
LABEL_8:
      v15 = [v6 lastObject];
      v9 = [v15 end];

      v16 = [v6 lastObject];
      v11 = [v16 start];

      v17 = [v6 firstObject];
      v13 = [v17 start];

      v19 = scheduleEntryComparator_block_invoke(v18, v11, v9);
      if (v19 == -1 || scheduleEntryComparator_block_invoke(v19, v9, v13) == -1)
      {
        v5 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v20 = objc_autoreleasePoolPush();
      v21 = a1;
      v22 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
LABEL_19:

        objc_autoreleasePoolPop(v20);
        v5 = 0;
        goto LABEL_20;
      }

      v23 = HMFGetLogIdentifier();
      v31 = 138544130;
      v32 = v23;
      v33 = 2112;
      v34 = v11;
      v35 = 2112;
      v36 = v9;
      v37 = 2112;
      v38 = v13;
      v24 = "%{public}@Invalid schedule as the last end date component is invalid. lastStart:%@ lastEnd:%@ firstStart:%@";
      v25 = v22;
      v26 = 42;
    }

    else
    {
      v7 = 0;
      while (1)
      {
        v8 = [v6 objectAtIndex:v7];
        v9 = [v8 start];

        v10 = [v6 objectAtIndex:v7];
        v11 = [v10 end];

        v12 = [v6 objectAtIndex:++v7];
        v13 = [v12 start];

        if (scheduleEntryComparator_block_invoke(v14, v9, v11) != -1)
        {
          v20 = objc_autoreleasePoolPush();
          v27 = a1;
          v22 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            goto LABEL_19;
          }

          v23 = HMFGetLogIdentifier();
          v31 = 138543874;
          v32 = v23;
          v33 = 2112;
          v34 = v9;
          v35 = 2112;
          v36 = v11;
          v24 = "%{public}@Invalid schedule due to start:%@ not coming before end:%@";
          goto LABEL_17;
        }

        if (scheduleEntryComparator_block_invoke(-1, v11, v13) != -1)
        {
          break;
        }

        if (v7 >= [v6 count] - 2)
        {
          goto LABEL_8;
        }
      }

      v20 = objc_autoreleasePoolPush();
      v28 = a1;
      v22 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v23 = HMFGetLogIdentifier();
      v31 = 138543874;
      v32 = v23;
      v33 = 2112;
      v34 = v11;
      v35 = 2112;
      v36 = v13;
      v24 = "%{public}@Invalid schedule due to end:%@ overlapping with following start:%@";
LABEL_17:
      v25 = v22;
      v26 = 32;
    }

    _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, v24, &v31, v26);

    goto LABEL_19;
  }

  v5 = 1;
LABEL_21:

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)sortedScheduleEntries:(id)a3
{
  v3 = MEMORY[0x1E696AEB0];
  v4 = a3;
  v5 = [v3 sortDescriptorWithKey:@"start" ascending:1 comparator:&__block_literal_global_54297];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];
  v7 = [v4 sortedArrayUsingDescriptors:v6];

  return v7;
}

@end
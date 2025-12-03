@interface HMHomeActivityStateScheduleUtilities
+ (BOOL)areValidScheduleEntries:(id)entries;
+ (id)logCategory;
+ (id)sortedScheduleEntries:(id)entries;
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

+ (BOOL)areValidScheduleEntries:(id)entries
{
  v39 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  if ([entriesCopy count] >= 2)
  {
    v6 = [HMHomeActivityStateScheduleUtilities sortedScheduleEntries:entriesCopy];
    if ([v6 count] == 2)
    {
LABEL_8:
      lastObject = [v6 lastObject];
      start3 = [lastObject end];

      lastObject2 = [v6 lastObject];
      start = [lastObject2 start];

      firstObject = [v6 firstObject];
      start2 = [firstObject start];

      v19 = scheduleEntryComparator_block_invoke(v18, start, start3);
      if (v19 == -1 || scheduleEntryComparator_block_invoke(v19, start3, start2) == -1)
      {
        v5 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      v34 = start;
      v35 = 2112;
      v36 = start3;
      v37 = 2112;
      v38 = start2;
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
        start3 = [v8 start];

        v10 = [v6 objectAtIndex:v7];
        start = [v10 end];

        v12 = [v6 objectAtIndex:++v7];
        start2 = [v12 start];

        if (scheduleEntryComparator_block_invoke(v14, start3, start) != -1)
        {
          v20 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v22 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            goto LABEL_19;
          }

          v23 = HMFGetLogIdentifier();
          v31 = 138543874;
          v32 = v23;
          v33 = 2112;
          v34 = start3;
          v35 = 2112;
          v36 = start;
          v24 = "%{public}@Invalid schedule due to start:%@ not coming before end:%@";
          goto LABEL_17;
        }

        if (scheduleEntryComparator_block_invoke(-1, start, start2) != -1)
        {
          break;
        }

        if (v7 >= [v6 count] - 2)
        {
          goto LABEL_8;
        }
      }

      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v23 = HMFGetLogIdentifier();
      v31 = 138543874;
      v32 = v23;
      v33 = 2112;
      v34 = start;
      v35 = 2112;
      v36 = start2;
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

+ (id)sortedScheduleEntries:(id)entries
{
  v3 = MEMORY[0x1E696AEB0];
  entriesCopy = entries;
  v5 = [v3 sortDescriptorWithKey:@"start" ascending:1 comparator:&__block_literal_global_54297];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];
  v7 = [entriesCopy sortedArrayUsingDescriptors:v6];

  return v7;
}

@end
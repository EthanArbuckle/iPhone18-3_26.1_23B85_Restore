@interface HMHomeActivityStateSchedule
+ (id)logCategory;
- (BOOL)setScheduleEntries:(id)a3;
- (HMHome)home;
- (HMHomeActivityStateSchedule)initWithCoder:(id)a3;
- (HMHomeActivityStateSchedule)initWithUUID:(id)a3 home:(id)a4 scheduleEntries:(id)a5 state:(unint64_t)a6 homeActivityStateEnabled:(BOOL)a7;
- (NSArray)scheduleEntries;
- (id)_messagePayloadFromScheduleEntries:(id)a3;
- (void)_handleUpdateSchedules:(id)a3 withReason:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setScheduleEntries:(id)a3 completion:(id)a4;
@end

@implementation HMHomeActivityStateSchedule

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMHomeActivityStateSchedule)initWithCoder:(id)a3
{
  v35[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AFB0]);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeActivityStateScheduleUUIDCodingKey"];
  v7 = [v5 initWithUUIDString:v6];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeActivityStateScheduleActivityStateCodingKey"];
  v9 = MEMORY[0x1E695DFD8];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"HMHomeActivityStateScheduleScheduleEntriesCodingKey"];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v14 = _os_feature_enabled_impl();
  if (v7 && v8 && v12 && v13)
  {
    v15 = v14;
    v16 = [v8 unsignedIntValue];
    v17 = [HMHomeActivityStateScheduleUtilities sortedScheduleEntries:v12];
    v18 = [(HMHomeActivityStateSchedule *)self initWithUUID:v7 home:v13 scheduleEntries:v17 state:v16 homeActivityStateEnabled:v15];

    v19 = v18;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v18 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138544386;
      v26 = v22;
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded uuid: %@ activityStateNumber: %@, scheduleEntries: %@, home: %@", &v25, 0x34u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

- (NSArray)scheduleEntries
{
  os_unfair_lock_lock_with_options();
  v3 = self->_scheduleEntries;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)setScheduleEntries:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v6 = [v5 isEqual:self->_scheduleEntries];
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_scheduleEntries, a3);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6 ^ 1;
}

- (void)_handleUpdateSchedules:(id)a3 withReason:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(HMHomeActivityStateSchedule *)self setScheduleEntries:v6])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMHomeActivityStateSchedule *)v9 scheduleEntries];
      *buf = 138544130;
      v24 = v11;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating schedules with reason: %@ (%@:%@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [(HMHomeActivityStateSchedule *)v9 home];
    v14 = [v13 delegate];

    if ([v14 conformsToProtocol:&unk_1F0F63B38])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (objc_opt_respondsToSelector())
    {
      v17 = [(HMHomeActivityStateSchedule *)v9 context];
      v18 = [v17 delegateCaller];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __65__HMHomeActivityStateSchedule__handleUpdateSchedules_withReason___block_invoke;
      v20[3] = &unk_1E754E5C0;
      v21 = v16;
      v22 = v9;
      [v18 invokeBlock:v20];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __65__HMHomeActivityStateSchedule__handleUpdateSchedules_withReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) home];
  [v2 home:v3 didUpdateHomeActivityStateSchedule:*(a1 + 40)];
}

- (id)_messagePayloadFromScheduleEntries:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v22 + 1) + 8 * i) serializeForAdd];
        if (!v12)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v27 = v19;
            v28 = 2112;
            v29 = 0;
            _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize schedule entry: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          v15 = 0;
          goto LABEL_13;
        }

        v13 = v12;
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v6 copy];
  [v5 setObject:v14 forKeyedSubscript:@"HMHomeActivityStateScheduleScheduleEntriesKey"];

  v15 = [v5 copy];
LABEL_13:

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setScheduleEntries:(id)a3 completion:(id)a4
{
  location[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMHomeActivityStateSchedule *)self context];
  if ([(HMHomeActivityStateSchedule *)self homeActivityStateEnabled])
  {
    v9 = [(HMHomeActivityStateSchedule *)self home];
    v10 = [v9 areValidScheduleEntries:v6 forState:{-[HMHomeActivityStateSchedule state](self, "state")}];

    if (v10)
    {
      v11 = [(HMHomeActivityStateSchedule *)self _messagePayloadFromScheduleEntries:v6];
      if (v11)
      {
        v12 = objc_alloc(MEMORY[0x1E69A2A00]);
        v13 = [(HMHomeActivityStateSchedule *)self uuid];
        v14 = [v12 initWithTarget:v13];

        v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeActivityStateScheduleUpdateScheduleEntriesMessage" destination:v14 payload:v11];
        objc_initWeak(location, self);
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __61__HMHomeActivityStateSchedule_setScheduleEntries_completion___block_invoke;
        v31 = &unk_1E754D820;
        objc_copyWeak(&v35, location);
        v32 = v8;
        v34 = v7;
        v33 = v6;
        [v15 setResponseHandler:&v28];
        v16 = [(HMHomeActivityStateSchedule *)self context:v28];
        v17 = [v16 messageDispatcher];
        v18 = [v15 copy];
        [v17 sendMessage:v18];

        objc_destroyWeak(&v35);
        objc_destroyWeak(location);
      }

      else
      {
        v25 = [v8 delegateCaller];
        v26 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [v25 callCompletion:v7 error:v26];

        v11 = 0;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v24;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to update schedule as the schedules provided are not valid", location, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v11 = [v8 delegateCaller];
      [v11 callCompletion:v7 error:0];
    }
  }

  else
  {
    v19 = _Block_copy(v7);
    if (v19)
    {
      v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
      v19[2](v19, v20);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __61__HMHomeActivityStateSchedule_setScheduleEntries_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (v5)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v8;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the home activity state schedules: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [*(a1 + 32) delegateCaller];
    v14 = v13;
    v15 = *(a1 + 48);
    v16 = v5;
  }

  else
  {
    [WeakRetained _handleUpdateSchedules:*(a1 + 40) withReason:@"HMHomeActivityStateScheduleUpdateScheduleEntriesMessage"];
    v13 = [*(a1 + 32) delegateCaller];
    v14 = v13;
    v15 = *(a1 + 48);
    v16 = 0;
  }

  [v13 callCompletion:v15 error:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (HMHomeActivityStateSchedule)initWithUUID:(id)a3 home:(id)a4 scheduleEntries:(id)a5 state:(unint64_t)a6 homeActivityStateEnabled:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = HMHomeActivityStateSchedule;
  v16 = [(HMHomeActivityStateSchedule *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_uuid, a3);
    objc_storeWeak(&v17->_home, v14);
    objc_storeStrong(&v17->_scheduleEntries, a5);
    v17->_state = a6;
    v17->_homeActivityStateEnabled = a7;
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_30056 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_30056, &__block_literal_global_30057);
  }

  v3 = logCategory__hmf_once_v10_30058;

  return v3;
}

uint64_t __42__HMHomeActivityStateSchedule_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_30058;
  logCategory__hmf_once_v10_30058 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end
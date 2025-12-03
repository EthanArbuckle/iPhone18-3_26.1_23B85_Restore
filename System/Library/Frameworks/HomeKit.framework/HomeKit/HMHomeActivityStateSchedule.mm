@interface HMHomeActivityStateSchedule
+ (id)logCategory;
- (BOOL)setScheduleEntries:(id)entries;
- (HMHome)home;
- (HMHomeActivityStateSchedule)initWithCoder:(id)coder;
- (HMHomeActivityStateSchedule)initWithUUID:(id)d home:(id)home scheduleEntries:(id)entries state:(unint64_t)state homeActivityStateEnabled:(BOOL)enabled;
- (NSArray)scheduleEntries;
- (id)_messagePayloadFromScheduleEntries:(id)entries;
- (void)_handleUpdateSchedules:(id)schedules withReason:(id)reason;
- (void)encodeWithCoder:(id)coder;
- (void)setScheduleEntries:(id)entries completion:(id)completion;
@end

@implementation HMHomeActivityStateSchedule

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMHomeActivityStateSchedule)initWithCoder:(id)coder
{
  v35[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x1E696AFB0]);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeActivityStateScheduleUUIDCodingKey"];
  v7 = [v5 initWithUUIDString:v6];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeActivityStateScheduleActivityStateCodingKey"];
  v9 = MEMORY[0x1E695DFD8];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"HMHomeActivityStateScheduleScheduleEntriesCodingKey"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v14 = _os_feature_enabled_impl();
  if (v7 && v8 && v12 && v13)
  {
    v15 = v14;
    unsignedIntValue = [v8 unsignedIntValue];
    v17 = [HMHomeActivityStateScheduleUtilities sortedScheduleEntries:v12];
    selfCopy = [(HMHomeActivityStateSchedule *)self initWithUUID:v7 home:v13 scheduleEntries:v17 state:unsignedIntValue homeActivityStateEnabled:v15];

    v19 = selfCopy;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (BOOL)setScheduleEntries:(id)entries
{
  entriesCopy = entries;
  os_unfair_lock_lock_with_options();
  v6 = [entriesCopy isEqual:self->_scheduleEntries];
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_scheduleEntries, entries);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6 ^ 1;
}

- (void)_handleUpdateSchedules:(id)schedules withReason:(id)reason
{
  v31 = *MEMORY[0x1E69E9840];
  schedulesCopy = schedules;
  reasonCopy = reason;
  if ([(HMHomeActivityStateSchedule *)self setScheduleEntries:schedulesCopy])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      scheduleEntries = [(HMHomeActivityStateSchedule *)selfCopy scheduleEntries];
      *buf = 138544130;
      v24 = v11;
      v25 = 2112;
      v26 = reasonCopy;
      v27 = 2112;
      v28 = scheduleEntries;
      v29 = 2112;
      v30 = schedulesCopy;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating schedules with reason: %@ (%@:%@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    home = [(HMHomeActivityStateSchedule *)selfCopy home];
    delegate = [home delegate];

    if ([delegate conformsToProtocol:&unk_1F0F63B38])
    {
      v15 = delegate;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (objc_opt_respondsToSelector())
    {
      context = [(HMHomeActivityStateSchedule *)selfCopy context];
      delegateCaller = [context delegateCaller];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __65__HMHomeActivityStateSchedule__handleUpdateSchedules_withReason___block_invoke;
      v20[3] = &unk_1E754E5C0;
      v21 = v16;
      v22 = selfCopy;
      [delegateCaller invokeBlock:v20];
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

- (id)_messagePayloadFromScheduleEntries:(id)entries
{
  v31 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(entriesCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = entriesCopy;
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

        serializeForAdd = [*(*(&v22 + 1) + 8 * i) serializeForAdd];
        if (!serializeForAdd)
        {
          v16 = objc_autoreleasePoolPush();
          selfCopy = self;
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

        v13 = serializeForAdd;
        [v6 addObject:serializeForAdd];
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
  [dictionary setObject:v14 forKeyedSubscript:@"HMHomeActivityStateScheduleScheduleEntriesKey"];

  v15 = [dictionary copy];
LABEL_13:

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setScheduleEntries:(id)entries completion:(id)completion
{
  location[3] = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  completionCopy = completion;
  context = [(HMHomeActivityStateSchedule *)self context];
  if ([(HMHomeActivityStateSchedule *)self homeActivityStateEnabled])
  {
    home = [(HMHomeActivityStateSchedule *)self home];
    v10 = [home areValidScheduleEntries:entriesCopy forState:{-[HMHomeActivityStateSchedule state](self, "state")}];

    if (v10)
    {
      delegateCaller2 = [(HMHomeActivityStateSchedule *)self _messagePayloadFromScheduleEntries:entriesCopy];
      if (delegateCaller2)
      {
        v12 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid = [(HMHomeActivityStateSchedule *)self uuid];
        v14 = [v12 initWithTarget:uuid];

        v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeActivityStateScheduleUpdateScheduleEntriesMessage" destination:v14 payload:delegateCaller2];
        objc_initWeak(location, self);
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __61__HMHomeActivityStateSchedule_setScheduleEntries_completion___block_invoke;
        v31 = &unk_1E754D820;
        objc_copyWeak(&v35, location);
        v32 = context;
        v34 = completionCopy;
        v33 = entriesCopy;
        [v15 setResponseHandler:&v28];
        v16 = [(HMHomeActivityStateSchedule *)self context:v28];
        messageDispatcher = [v16 messageDispatcher];
        v18 = [v15 copy];
        [messageDispatcher sendMessage:v18];

        objc_destroyWeak(&v35);
        objc_destroyWeak(location);
      }

      else
      {
        delegateCaller = [context delegateCaller];
        v26 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [delegateCaller callCompletion:completionCopy error:v26];

        delegateCaller2 = 0;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v24;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to update schedule as the schedules provided are not valid", location, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      delegateCaller2 = [context delegateCaller];
      [delegateCaller2 callCompletion:completionCopy error:0];
    }
  }

  else
  {
    v19 = _Block_copy(completionCopy);
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

- (HMHomeActivityStateSchedule)initWithUUID:(id)d home:(id)home scheduleEntries:(id)entries state:(unint64_t)state homeActivityStateEnabled:(BOOL)enabled
{
  dCopy = d;
  homeCopy = home;
  entriesCopy = entries;
  v19.receiver = self;
  v19.super_class = HMHomeActivityStateSchedule;
  v16 = [(HMHomeActivityStateSchedule *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_uuid, d);
    objc_storeWeak(&v17->_home, homeCopy);
    objc_storeStrong(&v17->_scheduleEntries, entries);
    v17->_state = state;
    v17->_homeActivityStateEnabled = enabled;
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
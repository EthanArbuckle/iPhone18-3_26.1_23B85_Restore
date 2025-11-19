@interface HMMediaProfile
- (BOOL)mergeFromNewObject:(id)a3;
- (HMAccessorySettings)settings;
- (HMHome)containerHome;
- (HMMediaProfile)init;
- (HMMediaProfile)initWithMediaProfile:(id)a3;
- (HMMediaProfileDelegate)delegate;
- (HMMediaSession)mediaSession;
- (NSString)routeUID;
- (NSUUID)containerUUID;
- (unint64_t)capability;
- (void)fetchAccessorySleepWakeStateWithCompletion:(id)a3;
- (void)mediaProfile:(id)a3 didUpdateMediaSession:(id)a4;
- (void)refreshStateWithCompletionHandler:(id)a3;
- (void)setCapability:(unint64_t)a3;
@end

@implementation HMMediaProfile

void __56___HMMediaProfile__notifyDelegateOfUpdatedMediaSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 mediaProfile:*(a1 + 32) didUpdateMediaSession:*(a1 + 40)];
}

- (HMMediaProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)refreshStateWithCompletionHandler:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@nil completion handler", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v18);
  }

  v5 = v4;
  v6 = [(HMMediaProfile *)self mediaSession];
  v7 = v6;
  if (v6)
  {
    [v6 refreshPlaybackStateWithCompletionHandler:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine media session", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (v5)[2](v5, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeFromNewObject:(id)a3
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
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mediaSession];
    v9 = [(HMMediaProfile *)self mediaSession];
    v10 = [v9 mergeFromNewObject:v8];

    v11 = [(HMMediaProfile *)self capability];
    if (v11 != [v7 capability])
    {
      -[HMMediaProfile setCapability:](self, "setCapability:", [v7 capability]);
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)fetchAccessorySleepWakeStateWithCompletion:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMMediaProfile fetchAccessorySleepWakeStateWithCompletion:]", @"completion"];
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v34;
      v42 = 2112;
      v43 = v30;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v30 userInfo:0];
    objc_exception_throw(v35);
  }

  v5 = v4;
  v6 = [(HMAccessoryProfile *)self accessory];
  if (v6)
  {
    v7 = [(HMAccessoryProfile *)self accessoryProfile];
    v8 = [v7 context];

    v9 = [v8 messageDispatcher];
    if (v9)
    {
      v10 = [v6 category];
      v11 = [v10 categoryType];
      v12 = [v11 isEqualToString:@"F6D2A2AC-3A6E-4E6F-8196-678ABE909D8E"];

      if (v12)
      {
        v13 = objc_alloc(MEMORY[0x1E69A2A00]);
        v14 = [v6 messageTargetUUID];
        v15 = [v13 initWithTarget:v14];

        v16 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMFetchAppleMediaAccessorySleepWakeStateMessage" destination:v15 payload:0];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __61__HMMediaProfile_fetchAccessorySleepWakeStateWithCompletion___block_invoke;
        v36[3] = &unk_1E754E480;
        v37 = v8;
        v38 = self;
        v39 = v5;
        [v16 setResponseHandler:v36];
        v17 = [v16 copy];
        [v9 sendMessage:v17];

LABEL_14:
        goto LABEL_15;
      }

      v26 = MEMORY[0x1E696ABC0];
      v27 = 3;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v25;
        v42 = 2112;
        v43 = v8;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch sleep wake state due to no message dispatcher given by context: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = MEMORY[0x1E696ABC0];
      v27 = 21;
    }

    v28 = [v26 hmErrorWithCode:v27];
    (v5)[2](v5, 0, v28);

    goto LABEL_14;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v21;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch sleep wake state due to no accessory on media profile", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
  (v5)[2](v5, 0, v8);
LABEL_15:

  v29 = *MEMORY[0x1E69E9840];
}

void __61__HMMediaProfile_fetchAccessorySleepWakeStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) delegateCaller];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__HMMediaProfile_fetchAccessorySleepWakeStateWithCompletion___block_invoke_2;
  v12[3] = &unk_1E754D208;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  [v7 invokeBlock:v12];
}

void __61__HMMediaProfile_fetchAccessorySleepWakeStateWithCompletion___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      v20 = 138543618;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Fetch accessory SleepWake state request message responded with error: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = [*(a1 + 48) hmf_numberForKey:@"HMFetchAppleMediaAccessorySleepWakeStateKey"];
    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 40);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v12;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Fetch accessory SleepWake state request message responded with result: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = *(a1 + 56);
      v14 = *(a1 + 40);
      v15 = v8;
      v16 = v15;
      if (v14)
      {
        if ([v15 unsignedIntValue] == 2)
        {
          v14 = 2;
        }

        else
        {
          v14 = [v16 unsignedIntValue] == 1;
        }
      }

      (*(v13 + 16))(v13, v14, *(a1 + 32));
    }

    else
    {
      v17 = *(a1 + 56);
      v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      (*(v17 + 16))(v17, 0, v18);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)mediaProfile:(id)a3 didUpdateMediaSession:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMediaProfile *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(HMMediaProfile *)self delegate];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v14;
      v53 = 2112;
      v54 = v7;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated media session: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [(HMAccessoryProfile *)v12 accessoryProfile];
    v16 = [v15 context];
    v17 = [v16 delegateCaller];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __53__HMMediaProfile_mediaProfile_didUpdateMediaSession___block_invoke;
    v46[3] = &unk_1E754E5E8;
    v47 = v10;
    v48 = v12;
    v49 = v7;
    v18 = v10;
    [v17 invokeBlock:v46];
  }

  v19 = [(HMMediaProfile *)self delegate];
  if ([v19 conformsToProtocol:&unk_1F0F5C670])
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (objc_opt_respondsToSelector())
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v25;
      v53 = 2112;
      v54 = v7;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@Notifying media object of updated media session: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [(HMAccessoryProfile *)v23 accessoryProfile];
    v27 = [v26 context];
    v28 = [v27 delegateCaller];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __53__HMMediaProfile_mediaProfile_didUpdateMediaSession___block_invoke_65;
    v42[3] = &unk_1E754E5E8;
    v43 = v21;
    v44 = v23;
    v45 = v7;
    [v28 invokeBlock:v42];
  }

  v29 = [(HMAccessoryProfile *)self accessory];
  v30 = [v29 home];
  v31 = [v30 mediaSystems];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = v31;
  v33 = [v32 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v39;
    do
    {
      v36 = 0;
      do
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(v32);
        }

        [*(*(&v38 + 1) + 8 * v36++) updateMediaSession:v7 forMediaProfile:{self, v38}];
      }

      while (v34 != v36);
      v34 = [v32 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v34);
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (NSUUID)containerUUID
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 accessory];

  v6 = [v5 uuid];

  return v6;
}

- (HMHome)containerHome
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 accessory];

  v6 = [v5 containerHome];

  return v6;
}

- (void)setCapability:(unint64_t)a3
{
  v4 = [(HMAccessoryProfile *)self accessoryProfile];
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

  [v6 setCapability:a3];
}

- (unint64_t)capability
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 capability];
  return v5;
}

- (NSString)routeUID
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 routeUID];

  return v5;
}

- (HMMediaSession)mediaSession
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 mediaSession];

  return v5;
}

- (HMAccessorySettings)settings
{
  v2 = [(HMAccessoryProfile *)self accessory];
  v3 = [v2 settings];

  return v3;
}

- (HMMediaProfile)initWithMediaProfile:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HMMediaProfile;
  v5 = [(HMAccessoryProfile *)&v7 initWithAccessoryProfile:v4];
  if (v5)
  {
    [v4 setDelegate:v5];
  }

  return v5;
}

- (HMMediaProfile)init
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

@end
@interface HMMediaProfile
- (BOOL)mergeFromNewObject:(id)object;
- (HMAccessorySettings)settings;
- (HMHome)containerHome;
- (HMMediaProfile)init;
- (HMMediaProfile)initWithMediaProfile:(id)profile;
- (HMMediaProfileDelegate)delegate;
- (HMMediaSession)mediaSession;
- (NSString)routeUID;
- (NSUUID)containerUUID;
- (unint64_t)capability;
- (void)fetchAccessorySleepWakeStateWithCompletion:(id)completion;
- (void)mediaProfile:(id)profile didUpdateMediaSession:(id)session;
- (void)refreshStateWithCompletionHandler:(id)handler;
- (void)setCapability:(unint64_t)capability;
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

- (void)refreshStateWithCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v5 = handlerCopy;
  mediaSession = [(HMMediaProfile *)self mediaSession];
  v7 = mediaSession;
  if (mediaSession)
  {
    [mediaSession refreshPlaybackStateWithCompletionHandler:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    mediaSession = [v6 mediaSession];
    mediaSession2 = [(HMMediaProfile *)self mediaSession];
    v10 = [mediaSession2 mergeFromNewObject:mediaSession];

    capability = [(HMMediaProfile *)self capability];
    if (capability != [v7 capability])
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

- (void)fetchAccessorySleepWakeStateWithCompletion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMMediaProfile fetchAccessorySleepWakeStateWithCompletion:]", @"completion"];
    v31 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v5 = completionCopy;
  accessory = [(HMAccessoryProfile *)self accessory];
  if (accessory)
  {
    accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
    context = [accessoryProfile context];

    messageDispatcher = [context messageDispatcher];
    if (messageDispatcher)
    {
      category = [accessory category];
      categoryType = [category categoryType];
      v12 = [categoryType isEqualToString:@"F6D2A2AC-3A6E-4E6F-8196-678ABE909D8E"];

      if (v12)
      {
        v13 = objc_alloc(MEMORY[0x1E69A2A00]);
        messageTargetUUID = [accessory messageTargetUUID];
        v15 = [v13 initWithTarget:messageTargetUUID];

        v16 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMFetchAppleMediaAccessorySleepWakeStateMessage" destination:v15 payload:0];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __61__HMMediaProfile_fetchAccessorySleepWakeStateWithCompletion___block_invoke;
        v36[3] = &unk_1E754E480;
        v37 = context;
        selfCopy2 = self;
        v39 = v5;
        [v16 setResponseHandler:v36];
        v17 = [v16 copy];
        [messageDispatcher sendMessage:v17];

LABEL_14:
        goto LABEL_15;
      }

      v26 = MEMORY[0x1E696ABC0];
      v27 = 3;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v25;
        v42 = 2112;
        v43 = context;
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
  selfCopy4 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v21;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch sleep wake state due to no accessory on media profile", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  context = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
  (v5)[2](v5, 0, context);
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

- (void)mediaProfile:(id)profile didUpdateMediaSession:(id)session
{
  v55 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  sessionCopy = session;
  delegate = [(HMMediaProfile *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(HMMediaProfile *)self delegate];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v14;
      v53 = 2112;
      v54 = sessionCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated media session: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    accessoryProfile = [(HMAccessoryProfile *)selfCopy accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __53__HMMediaProfile_mediaProfile_didUpdateMediaSession___block_invoke;
    v46[3] = &unk_1E754E5E8;
    v47 = delegate2;
    v48 = selfCopy;
    v49 = sessionCopy;
    v18 = delegate2;
    [delegateCaller invokeBlock:v46];
  }

  delegate3 = [(HMMediaProfile *)self delegate];
  if ([delegate3 conformsToProtocol:&unk_1F0F5C670])
  {
    v20 = delegate3;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (objc_opt_respondsToSelector())
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v25;
      v53 = 2112;
      v54 = sessionCopy;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@Notifying media object of updated media session: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    accessoryProfile2 = [(HMAccessoryProfile *)selfCopy2 accessoryProfile];
    context2 = [accessoryProfile2 context];
    delegateCaller2 = [context2 delegateCaller];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __53__HMMediaProfile_mediaProfile_didUpdateMediaSession___block_invoke_65;
    v42[3] = &unk_1E754E5E8;
    v43 = v21;
    v44 = selfCopy2;
    v45 = sessionCopy;
    [delegateCaller2 invokeBlock:v42];
  }

  accessory = [(HMAccessoryProfile *)self accessory];
  home = [accessory home];
  mediaSystems = [home mediaSystems];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = mediaSystems;
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

        [*(*(&v38 + 1) + 8 * v36++) updateMediaSession:sessionCopy forMediaProfile:{self, v38}];
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
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  accessory = [v4 accessory];

  uuid = [accessory uuid];

  return uuid;
}

- (HMHome)containerHome
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  accessory = [v4 accessory];

  containerHome = [accessory containerHome];

  return containerHome;
}

- (void)setCapability:(unint64_t)capability
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = accessoryProfile;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 setCapability:capability];
}

- (unint64_t)capability
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  capability = [v4 capability];
  return capability;
}

- (NSString)routeUID
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  routeUID = [v4 routeUID];

  return routeUID;
}

- (HMMediaSession)mediaSession
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  mediaSession = [v4 mediaSession];

  return mediaSession;
}

- (HMAccessorySettings)settings
{
  accessory = [(HMAccessoryProfile *)self accessory];
  settings = [accessory settings];

  return settings;
}

- (HMMediaProfile)initWithMediaProfile:(id)profile
{
  profileCopy = profile;
  v7.receiver = self;
  v7.super_class = HMMediaProfile;
  v5 = [(HMAccessoryProfile *)&v7 initWithAccessoryProfile:profileCopy];
  if (v5)
  {
    [profileCopy setDelegate:v5];
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
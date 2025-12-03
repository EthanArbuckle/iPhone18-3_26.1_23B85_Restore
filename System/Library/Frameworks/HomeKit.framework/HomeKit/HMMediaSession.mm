@interface HMMediaSession
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeFromNewObject:(id)object;
- (HMMediaProfile)mediaProfile;
- (HMMediaSession)initWithCoder:(id)coder;
- (HMMediaSession)initWithUUID:(id)d routeUID:(id)iD playbackState:(int64_t)state shuffleState:(int64_t)shuffleState repeatState:(int64_t)repeatState mediaUniqueIdentifier:(id)identifier sleepWakeState:(unint64_t)wakeState;
- (HMMediaSessionDelegate)delegate;
- (NSString)description;
- (NSString)mediaUniqueIdentifier;
- (NSString)routeUID;
- (NSUUID)uniqueIdentifier;
- (NSUUID)uuid;
- (id)messageTargetUUID;
- (id)playbackStateDescription;
- (int64_t)playbackState;
- (int64_t)repeatState;
- (int64_t)shuffleState;
- (unint64_t)hash;
- (unint64_t)sleepWakeState;
- (void)_unconfigure;
- (void)configure:(id)configure messageTargetUUID:(id)d;
- (void)mediaSession:(id)session didUpdatePlaybackState:(int64_t)state;
- (void)mediaSession:(id)session didUpdateRouteUID:(id)d;
- (void)mediaSessionDidUpdate:(id)update;
- (void)pauseWithCompletionHandler:(id)handler;
- (void)refreshPlaybackStateWithCompletionHandler:(id)handler;
- (void)resumeWithCompletionHandler:(id)handler;
- (void)setUuid:(id)uuid;
- (void)updateMediaState:(id)state;
- (void)updatePlaybackState:(id)state;
- (void)updatePlaybackState:(int64_t)state completionHandler:(id)handler;
@end

@implementation HMMediaSession

void __38___HMMediaSession_mergeFromNewObject___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) routeUID];
  [v1 _notifyDelegateOfUpdatedRouteUID:v2];
}

uint64_t __38___HMMediaSession_mergeFromNewObject___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 playbackState];

  return [v1 _notifyDelegateOfUpdatedPlaybackState:v2];
}

void __39___HMMediaSession_updatePlaybackState___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5 = @"pb-state";
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [*(a1 + 40) _updateMediaState:v3 completion:0];

  v4 = *MEMORY[0x1E69E9840];
}

void __48___HMMediaSession__updateMediaState_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Set muted returned error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __53___HMMediaSession__notifyDelegateOfUpdatedMediaState__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v5 = v17 = v2;
    v6 = [*(a1 + 32) uuid];
    v7 = [*(a1 + 32) playbackState];
    v8 = [*(a1 + 32) shuffleState];
    v9 = [*(a1 + 32) repeatState];
    v10 = [*(a1 + 32) audioControl];
    [v10 volume];
    v12 = v11;
    v13 = [*(a1 + 32) mediaUniqueIdentifier];
    v14 = [*(a1 + 32) sleepWakeState];
    *buf = 138545154;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    v22 = 2048;
    v23 = v7;
    v24 = 2048;
    v25 = v8;
    v26 = 2048;
    v27 = v9;
    v28 = 2048;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    v32 = 2048;
    v33 = v14;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling delegate didUpdateMediaState %@ with state: p:%tu s:%tu r:%tu v:%f m:%@ sw:%tu", buf, 0x52u);

    v2 = v17;
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) mediaSessionDidUpdate:*(a1 + 32)];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __61___HMMediaSession_refreshPlaybackStateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v21[7] = *MEMORY[0x1E69E9840];
  v21[0] = @"pb-state";
  v21[1] = @"ms-shuffle";
  v21[2] = @"ms-repeat";
  v21[3] = @"ms-volume";
  v21[4] = @"ms-mediaid";
  v21[5] = @"ms-muted";
  v21[6] = @"HMMediaSessionSleepWakeStateMessageKey";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:7];
  v3 = MEMORY[0x1E69A2A10];
  v4 = [*(a1 + 32) messageDestination];
  v19 = @"property-list";
  v20 = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v6 = [v3 messageWithName:@"HMMS.rp" destination:v4 payload:v5];

  v7 = [*(a1 + 32) context];
  v8 = [v7 pendingRequests];

  v9 = [v6 identifier];
  v10 = _Block_copy(*(a1 + 48));
  [v8 addCompletionBlock:v10 forIdentifier:v9];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61___HMMediaSession_refreshPlaybackStateWithCompletionHandler___block_invoke_2;
  v15[3] = &unk_1E754E0A8;
  v16 = v8;
  v17 = v9;
  v18 = *(a1 + 40);
  v11 = v9;
  v12 = v8;
  [v6 setResponseHandler:v15];
  v13 = [*(a1 + 40) messageDispatcher];
  [v13 sendMessage:v6 completionHandler:0];

  v14 = *MEMORY[0x1E69E9840];
}

void __61___HMMediaSession_refreshPlaybackStateWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v7 = [v3 removeCompletionBlockForIdentifier:v4];
    v6 = [*(a1 + 48) delegateCaller];
    [v6 callCompletion:v7 obj:0 error:v5];
  }
}

void __54___HMMediaSession_setPlaybackState_completionHandler___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22 = @"pb-state";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  v23[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  v4 = MEMORY[0x1E69A2A10];
  v5 = [*(a1 + 32) messageDestination];
  v6 = [v4 messageWithName:@"HMMS.sp" destination:v5 payload:v3];

  v7 = [*(a1 + 32) context];
  v8 = [v7 pendingRequests];

  v9 = [v6 identifier];
  v10 = _Block_copy(*(a1 + 48));
  [v8 addCompletionBlock:v10 forIdentifier:v9];

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __54___HMMediaSession_setPlaybackState_completionHandler___block_invoke_2;
  v18 = &unk_1E754E0A8;
  v19 = v8;
  v20 = v9;
  v21 = *(a1 + 40);
  v11 = v9;
  v12 = v8;
  [v6 setResponseHandler:&v15];
  v13 = [*(a1 + 40) messageDispatcher];
  [v13 sendMessage:v6 completionHandler:0];

  v14 = *MEMORY[0x1E69E9840];
}

void __54___HMMediaSession_setPlaybackState_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v3 removeCompletionBlockForIdentifier:v4];
  v6 = [*(a1 + 48) delegateCaller];
  [v6 callCompletion:v7 error:v5];
}

- (HMMediaProfile)mediaProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaProfile);

  return WeakRetained;
}

- (HMMediaSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMMediaSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.ms.pb-state"];
  v23 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.ms.shuffle-state"];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue2 = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 0;
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.ms.repeat-state"];
  v10 = v9;
  if (v9)
  {
    unsignedIntegerValue3 = [v9 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue3 = 0;
  }

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.ms.muid-state"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.ms.route-uid"];
  unsignedIntegerValue4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSessionSleepWakeStateCodingKey"];
  v15 = unsignedIntegerValue4;
  if (unsignedIntegerValue4)
  {
    unsignedIntegerValue4 = [unsignedIntegerValue4 unsignedIntegerValue];
  }

  v16 = [(HMMediaSession *)self initWithUUID:0 routeUID:v13 playbackState:unsignedIntegerValue shuffleState:unsignedIntegerValue2 repeatState:unsignedIntegerValue3 mediaUniqueIdentifier:v12 sleepWakeState:unsignedIntegerValue4];
  if (v16)
  {
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.ac.volume"];
    if (v17)
    {
      audioControl = [(HMMediaSession *)v16 audioControl];
      [v17 floatValue];
      [audioControl setVolume:?];
    }

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.ac.muted"];
    if (v19)
    {
      audioControl2 = [(HMMediaSession *)v16 audioControl];
      [audioControl2 setMuted:{objc_msgSend(v19, "BOOLValue")}];
    }
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      mediaSession = [(HMMediaSession *)self mediaSession];
      mediaSession2 = [(HMMediaSession *)v6 mediaSession];
      v9 = [mediaSession isEqual:mediaSession2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  mediaSession = [(HMMediaSession *)self mediaSession];
  v3 = [mediaSession hash];

  return v3;
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
  if (v6)
  {
    mediaSession = [(HMMediaSession *)self mediaSession];
    mediaSession2 = [v6 mediaSession];
    v9 = [mediaSession mergeFromNewObject:mediaSession2];

    audioControl = [(HMMediaSession *)self audioControl];
    audioControl2 = [v6 audioControl];
    v12 = [audioControl mergeFromNewObject:audioControl2] | v9;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (void)mediaSession:(id)session didUpdateRouteUID:(id)d
{
  dCopy = d;
  delegate = [(HMMediaSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(HMMediaSession *)self delegate];
    if ([delegate2 conformsToProtocol:&unk_1F0F63EE0])
    {
      v9 = delegate2;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    mediaSession = [(HMMediaSession *)self mediaSession];
    context = [mediaSession context];
    delegateCaller = [context delegateCaller];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__HMMediaSession_mediaSession_didUpdateRouteUID___block_invoke;
    v15[3] = &unk_1E754E5E8;
    v16 = v10;
    selfCopy = self;
    v18 = dCopy;
    v14 = v10;
    [delegateCaller invokeBlock:v15];
  }
}

- (void)mediaSessionDidUpdate:(id)update
{
  delegate = [(HMMediaSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HMMediaSession *)self delegate];
    mediaSession = [(HMMediaSession *)self mediaSession];
    context = [mediaSession context];
    delegateCaller = [context delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__HMMediaSession_mediaSessionDidUpdate___block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = delegate2;
    selfCopy = self;
    v10 = delegate2;
    [delegateCaller invokeBlock:v11];
  }
}

- (void)mediaSession:(id)session didUpdatePlaybackState:(int64_t)state
{
  v32 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  delegate = [(HMMediaSession *)self delegate];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    if ((state - 1) > 5)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_1E75484F8[state - 1];
    }

    v13 = v12;
    *buf = 138543874;
    v27 = v11;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = delegate;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notify client of did update playback state: %@ delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  mediaSession = [(HMMediaSession *)selfCopy mediaSession];
  context = [(__CFString *)mediaSession context];
  delegateCaller = [context delegateCaller];
  if (delegateCaller)
  {
    if (objc_opt_respondsToSelector())
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __54__HMMediaSession_mediaSession_didUpdatePlaybackState___block_invoke;
      v22[3] = &unk_1E754E120;
      v23 = delegate;
      v24 = selfCopy;
      stateCopy = state;
      [delegateCaller invokeBlock:v22];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v20;
      v28 = 2112;
      v29 = mediaSession;
      v30 = 2112;
      v31 = context;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of did update playback state due to no delegate caller from media session: %@ context: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  routeUID = [(HMMediaSession *)self routeUID];
  playbackState = [(HMMediaSession *)self playbackState];
  playbackStateDescription = [(HMMediaSession *)self playbackStateDescription];
  shuffleState = [(HMMediaSession *)self shuffleState];
  repeatState = [(HMMediaSession *)self repeatState];
  mediaUniqueIdentifier = [(HMMediaSession *)self mediaUniqueIdentifier];
  v12 = [v3 stringWithFormat:@"%@<RouteUID %@ Playback State %lu (%@) Shuffle %lu Repeat %lu MediaUniqueIdentifier %@>", v5, routeUID, playbackState, playbackStateDescription, shuffleState, repeatState, mediaUniqueIdentifier];

  return v12;
}

- (void)updatePlaybackState:(int64_t)state completionHandler:(id)handler
{
  handlerCopy = handler;
  mediaSession = [(HMMediaSession *)self mediaSession];
  [mediaSession setPlaybackState:state completionHandler:handlerCopy];
}

- (void)refreshPlaybackStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mediaSession = [(HMMediaSession *)self mediaSession];
  [mediaSession refreshPlaybackStateWithCompletionHandler:handlerCopy];
}

- (void)pauseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mediaSession = [(HMMediaSession *)self mediaSession];
  [mediaSession setPlaybackState:2 completionHandler:handlerCopy];
}

- (void)resumeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mediaSession = [(HMMediaSession *)self mediaSession];
  [mediaSession setPlaybackState:1 completionHandler:handlerCopy];
}

- (id)playbackStateDescription
{
  playbackState = [(HMMediaSession *)self playbackState];
  if ((playbackState - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E75484F8[playbackState - 1];
  }
}

- (NSString)routeUID
{
  mediaSession = [(HMMediaSession *)self mediaSession];
  routeUID = [mediaSession routeUID];

  return routeUID;
}

- (void)updateMediaState:(id)state
{
  stateCopy = state;
  mediaSession = [(HMMediaSession *)self mediaSession];
  [mediaSession updateMediaState:stateCopy];
}

- (unint64_t)sleepWakeState
{
  mediaSession = [(HMMediaSession *)self mediaSession];
  sleepWakeState = [mediaSession sleepWakeState];

  return sleepWakeState;
}

- (NSString)mediaUniqueIdentifier
{
  mediaSession = [(HMMediaSession *)self mediaSession];
  mediaUniqueIdentifier = [mediaSession mediaUniqueIdentifier];

  return mediaUniqueIdentifier;
}

- (int64_t)repeatState
{
  mediaSession = [(HMMediaSession *)self mediaSession];
  repeatState = [mediaSession repeatState];

  return repeatState;
}

- (int64_t)shuffleState
{
  mediaSession = [(HMMediaSession *)self mediaSession];
  shuffleState = [mediaSession shuffleState];

  return shuffleState;
}

- (int64_t)playbackState
{
  mediaSession = [(HMMediaSession *)self mediaSession];
  playbackState = [mediaSession playbackState];

  return playbackState;
}

- (NSUUID)uniqueIdentifier
{
  mediaSession = [(HMMediaSession *)self mediaSession];
  uniqueIdentifier = [mediaSession uniqueIdentifier];

  return uniqueIdentifier;
}

- (void)setUuid:(id)uuid
{
  uuidCopy = uuid;
  mediaSession = [(HMMediaSession *)self mediaSession];
  [mediaSession setUuid:uuidCopy];
}

- (NSUUID)uuid
{
  mediaSession = [(HMMediaSession *)self mediaSession];
  uuid = [mediaSession uuid];

  return uuid;
}

- (id)messageTargetUUID
{
  mediaSession = [(HMMediaSession *)self mediaSession];
  messageTargetUUID = [mediaSession messageTargetUUID];

  return messageTargetUUID;
}

- (void)updatePlaybackState:(id)state
{
  stateCopy = state;
  mediaSession = [(HMMediaSession *)self mediaSession];
  [mediaSession updatePlaybackState:stateCopy];
}

- (void)_unconfigure
{
  v16 = *MEMORY[0x1E69E9840];
  mediaSession = [(HMMediaSession *)self mediaSession];
  context = [mediaSession context];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (context)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring mediaSession", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    audioControl = [(HMMediaSession *)selfCopy audioControl];
    [audioControl _unconfigure];

    mediaSession2 = [(HMMediaSession *)selfCopy mediaSession];
    [mediaSession2 setContext:0];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)configure:(id)configure messageTargetUUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  configureCopy = configure;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = selfCopy;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring media session: %@ message target uuid: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  mediaSession = [(HMMediaSession *)selfCopy mediaSession];
  [mediaSession setMessageTargetUUID:dCopy];

  mediaSession2 = [(HMMediaSession *)selfCopy mediaSession];
  [mediaSession2 setContext:configureCopy];

  audioControl = [(HMMediaSession *)selfCopy audioControl];
  [audioControl __configureWithContext:configureCopy];

  v15 = *MEMORY[0x1E69E9840];
}

- (HMMediaSession)initWithUUID:(id)d routeUID:(id)iD playbackState:(int64_t)state shuffleState:(int64_t)shuffleState repeatState:(int64_t)repeatState mediaUniqueIdentifier:(id)identifier sleepWakeState:(unint64_t)wakeState
{
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = HMMediaSession;
  v18 = [(HMMediaSession *)&v26 init];
  if (v18)
  {
    if (dCopy)
    {
      uUID = dCopy;
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
    }

    uuid = v18->_uuid;
    v18->_uuid = uUID;

    v21 = [[HMAudioControl alloc] initWithMediaSession:v18];
    audioControl = v18->_audioControl;
    v18->_audioControl = v21;

    v23 = [[_HMMediaSession alloc] initWithUUID:dCopy routeUID:iDCopy playbackState:state shuffleState:shuffleState repeatState:repeatState audioControl:v18->_audioControl mediaUniqueIdentifier:identifierCopy sleepWakeState:wakeState];
    mediaSession = v18->_mediaSession;
    v18->_mediaSession = v23;

    [(_HMMediaSession *)v18->_mediaSession setDelegate:v18];
  }

  return v18;
}

@end
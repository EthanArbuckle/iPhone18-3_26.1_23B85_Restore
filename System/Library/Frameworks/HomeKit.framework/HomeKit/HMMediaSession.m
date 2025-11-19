@interface HMMediaSession
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMMediaProfile)mediaProfile;
- (HMMediaSession)initWithCoder:(id)a3;
- (HMMediaSession)initWithUUID:(id)a3 routeUID:(id)a4 playbackState:(int64_t)a5 shuffleState:(int64_t)a6 repeatState:(int64_t)a7 mediaUniqueIdentifier:(id)a8 sleepWakeState:(unint64_t)a9;
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
- (void)configure:(id)a3 messageTargetUUID:(id)a4;
- (void)mediaSession:(id)a3 didUpdatePlaybackState:(int64_t)a4;
- (void)mediaSession:(id)a3 didUpdateRouteUID:(id)a4;
- (void)mediaSessionDidUpdate:(id)a3;
- (void)pauseWithCompletionHandler:(id)a3;
- (void)refreshPlaybackStateWithCompletionHandler:(id)a3;
- (void)resumeWithCompletionHandler:(id)a3;
- (void)setUuid:(id)a3;
- (void)updateMediaState:(id)a3;
- (void)updatePlaybackState:(id)a3;
- (void)updatePlaybackState:(int64_t)a3 completionHandler:(id)a4;
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

- (HMMediaSession)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.ms.pb-state"];
  v23 = v4;
  if (v4)
  {
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.ms.shuffle-state"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.ms.repeat-state"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 unsignedIntegerValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.ms.muid-state"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.ms.route-uid"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaSessionSleepWakeStateCodingKey"];
  v15 = v14;
  if (v14)
  {
    v14 = [v14 unsignedIntegerValue];
  }

  v16 = [(HMMediaSession *)self initWithUUID:0 routeUID:v13 playbackState:v5 shuffleState:v8 repeatState:v11 mediaUniqueIdentifier:v12 sleepWakeState:v14];
  if (v16)
  {
    v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.ac.volume"];
    if (v17)
    {
      v18 = [(HMMediaSession *)v16 audioControl];
      [v17 floatValue];
      [v18 setVolume:?];
    }

    v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HM.ac.muted"];
    if (v19)
    {
      v20 = [(HMMediaSession *)v16 audioControl];
      [v20 setMuted:{objc_msgSend(v19, "BOOLValue")}];
    }
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
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
    if (v6)
    {
      v7 = [(HMMediaSession *)self mediaSession];
      v8 = [(HMMediaSession *)v6 mediaSession];
      v9 = [v7 isEqual:v8];
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
  v2 = [(HMMediaSession *)self mediaSession];
  v3 = [v2 hash];

  return v3;
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
  if (v6)
  {
    v7 = [(HMMediaSession *)self mediaSession];
    v8 = [v6 mediaSession];
    v9 = [v7 mergeFromNewObject:v8];

    v10 = [(HMMediaSession *)self audioControl];
    v11 = [v6 audioControl];
    v12 = [v10 mergeFromNewObject:v11] | v9;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (void)mediaSession:(id)a3 didUpdateRouteUID:(id)a4
{
  v5 = a4;
  v6 = [(HMMediaSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HMMediaSession *)self delegate];
    if ([v8 conformsToProtocol:&unk_1F0F63EE0])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [(HMMediaSession *)self mediaSession];
    v12 = [v11 context];
    v13 = [v12 delegateCaller];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__HMMediaSession_mediaSession_didUpdateRouteUID___block_invoke;
    v15[3] = &unk_1E754E5E8;
    v16 = v10;
    v17 = self;
    v18 = v5;
    v14 = v10;
    [v13 invokeBlock:v15];
  }
}

- (void)mediaSessionDidUpdate:(id)a3
{
  v4 = [(HMMediaSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HMMediaSession *)self delegate];
    v7 = [(HMMediaSession *)self mediaSession];
    v8 = [v7 context];
    v9 = [v8 delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__HMMediaSession_mediaSessionDidUpdate___block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = v6;
    v13 = self;
    v10 = v6;
    [v9 invokeBlock:v11];
  }
}

- (void)mediaSession:(id)a3 didUpdatePlaybackState:(int64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HMMediaSession *)self delegate];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    if ((a4 - 1) > 5)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_1E75484F8[a4 - 1];
    }

    v13 = v12;
    *buf = 138543874;
    v27 = v11;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notify client of did update playback state: %@ delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = [(HMMediaSession *)v9 mediaSession];
  v15 = [(__CFString *)v14 context];
  v16 = [v15 delegateCaller];
  if (v16)
  {
    if (objc_opt_respondsToSelector())
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __54__HMMediaSession_mediaSession_didUpdatePlaybackState___block_invoke;
      v22[3] = &unk_1E754E120;
      v23 = v7;
      v24 = v9;
      v25 = a4;
      [v16 invokeBlock:v22];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v9;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v20;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
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
  v6 = [(HMMediaSession *)self routeUID];
  v7 = [(HMMediaSession *)self playbackState];
  v8 = [(HMMediaSession *)self playbackStateDescription];
  v9 = [(HMMediaSession *)self shuffleState];
  v10 = [(HMMediaSession *)self repeatState];
  v11 = [(HMMediaSession *)self mediaUniqueIdentifier];
  v12 = [v3 stringWithFormat:@"%@<RouteUID %@ Playback State %lu (%@) Shuffle %lu Repeat %lu MediaUniqueIdentifier %@>", v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (void)updatePlaybackState:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(HMMediaSession *)self mediaSession];
  [v7 setPlaybackState:a3 completionHandler:v6];
}

- (void)refreshPlaybackStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSession *)self mediaSession];
  [v5 refreshPlaybackStateWithCompletionHandler:v4];
}

- (void)pauseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSession *)self mediaSession];
  [v5 setPlaybackState:2 completionHandler:v4];
}

- (void)resumeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSession *)self mediaSession];
  [v5 setPlaybackState:1 completionHandler:v4];
}

- (id)playbackStateDescription
{
  v2 = [(HMMediaSession *)self playbackState];
  if ((v2 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E75484F8[v2 - 1];
  }
}

- (NSString)routeUID
{
  v2 = [(HMMediaSession *)self mediaSession];
  v3 = [v2 routeUID];

  return v3;
}

- (void)updateMediaState:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSession *)self mediaSession];
  [v5 updateMediaState:v4];
}

- (unint64_t)sleepWakeState
{
  v2 = [(HMMediaSession *)self mediaSession];
  v3 = [v2 sleepWakeState];

  return v3;
}

- (NSString)mediaUniqueIdentifier
{
  v2 = [(HMMediaSession *)self mediaSession];
  v3 = [v2 mediaUniqueIdentifier];

  return v3;
}

- (int64_t)repeatState
{
  v2 = [(HMMediaSession *)self mediaSession];
  v3 = [v2 repeatState];

  return v3;
}

- (int64_t)shuffleState
{
  v2 = [(HMMediaSession *)self mediaSession];
  v3 = [v2 shuffleState];

  return v3;
}

- (int64_t)playbackState
{
  v2 = [(HMMediaSession *)self mediaSession];
  v3 = [v2 playbackState];

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  v2 = [(HMMediaSession *)self mediaSession];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (void)setUuid:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSession *)self mediaSession];
  [v5 setUuid:v4];
}

- (NSUUID)uuid
{
  v2 = [(HMMediaSession *)self mediaSession];
  v3 = [v2 uuid];

  return v3;
}

- (id)messageTargetUUID
{
  v2 = [(HMMediaSession *)self mediaSession];
  v3 = [v2 messageTargetUUID];

  return v3;
}

- (void)updatePlaybackState:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSession *)self mediaSession];
  [v5 updatePlaybackState:v4];
}

- (void)_unconfigure
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(HMMediaSession *)self mediaSession];
  v4 = [v3 context];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring mediaSession", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMMediaSession *)v6 audioControl];
    [v10 _unconfigure];

    v11 = [(HMMediaSession *)v6 mediaSession];
    [v11 setContext:0];
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

- (void)configure:(id)a3 messageTargetUUID:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring media session: %@ message target uuid: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMMediaSession *)v9 mediaSession];
  [v12 setMessageTargetUUID:v7];

  v13 = [(HMMediaSession *)v9 mediaSession];
  [v13 setContext:v6];

  v14 = [(HMMediaSession *)v9 audioControl];
  [v14 __configureWithContext:v6];

  v15 = *MEMORY[0x1E69E9840];
}

- (HMMediaSession)initWithUUID:(id)a3 routeUID:(id)a4 playbackState:(int64_t)a5 shuffleState:(int64_t)a6 repeatState:(int64_t)a7 mediaUniqueIdentifier:(id)a8 sleepWakeState:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v26.receiver = self;
  v26.super_class = HMMediaSession;
  v18 = [(HMMediaSession *)&v26 init];
  if (v18)
  {
    if (v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = [MEMORY[0x1E696AFB0] UUID];
    }

    uuid = v18->_uuid;
    v18->_uuid = v19;

    v21 = [[HMAudioControl alloc] initWithMediaSession:v18];
    audioControl = v18->_audioControl;
    v18->_audioControl = v21;

    v23 = [[_HMMediaSession alloc] initWithUUID:v15 routeUID:v16 playbackState:a5 shuffleState:a6 repeatState:a7 audioControl:v18->_audioControl mediaUniqueIdentifier:v17 sleepWakeState:a9];
    mediaSession = v18->_mediaSession;
    v18->_mediaSession = v23;

    [(_HMMediaSession *)v18->_mediaSession setDelegate:v18];
  }

  return v18;
}

@end
@interface _HMMediaSession
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeFromNewObject:(id)object;
- (NSString)mediaUniqueIdentifier;
- (NSString)routeUID;
- (NSUUID)messageTargetUUID;
- (NSUUID)uniqueIdentifier;
- (_HMContext)context;
- (_HMMediaSession)initWithUUID:(id)d routeUID:(id)iD playbackState:(int64_t)state shuffleState:(int64_t)shuffleState repeatState:(int64_t)repeatState audioControl:(id)control mediaUniqueIdentifier:(id)identifier sleepWakeState:(unint64_t)self0;
- (_HMMediaSessionDelegate)delegate;
- (id)messageDestination;
- (int64_t)playbackState;
- (int64_t)repeatState;
- (int64_t)shuffleState;
- (unint64_t)hash;
- (unint64_t)sleepWakeState;
- (void)_handleSessionPlaybackUpdated:(id)updated;
- (void)_handleSessionRouteUIDUpdated:(id)updated;
- (void)_notifyDelegateOfUpdatedMediaState;
- (void)_notifyDelegateOfUpdatedPlaybackState:(int64_t)state;
- (void)_notifyDelegateOfUpdatedRouteUID:(id)d;
- (void)_registerNotificationHandlers;
- (void)_updateMediaState:(id)state completion:(id)completion;
- (void)refreshPlaybackStateWithCompletionHandler:(id)handler;
- (void)setContext:(id)context;
- (void)setMediaUniqueIdentifier:(id)identifier;
- (void)setMessageTargetUUID:(id)d;
- (void)setPlaybackState:(int64_t)state;
- (void)setPlaybackState:(int64_t)state completionHandler:(id)handler;
- (void)setRepeatState:(int64_t)state;
- (void)setRouteUID:(id)d;
- (void)setShuffleState:(int64_t)state;
- (void)setSleepWakeState:(unint64_t)state;
- (void)setUuid:(id)uuid;
- (void)updateMediaState:(id)state;
- (void)updatePlaybackState:(id)state;
@end

@implementation _HMMediaSession

- (_HMMediaSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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
    routeUID = [(_HMMediaSession *)self routeUID];
    routeUID2 = [v6 routeUID];
    v9 = HMFEqualObjects();

    if ((v9 & 1) == 0)
    {
      routeUID3 = [v6 routeUID];
      [(_HMMediaSession *)self setRouteUID:routeUID3];

      context = [(_HMMediaSession *)self context];
      queue = [context queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38___HMMediaSession_mergeFromNewObject___block_invoke;
      block[3] = &unk_1E754E5C0;
      block[4] = self;
      v34 = v6;
      dispatch_async(queue, block);
    }

    playbackState = [(_HMMediaSession *)self playbackState];
    playbackState2 = [v6 playbackState];
    v15 = playbackState != playbackState2;
    if (playbackState != playbackState2)
    {
      -[_HMMediaSession setPlaybackState:](self, "setPlaybackState:", [v6 playbackState]);
      context2 = [(_HMMediaSession *)self context];
      queue2 = [context2 queue];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __38___HMMediaSession_mergeFromNewObject___block_invoke_2;
      v32[3] = &unk_1E754E2A8;
      v32[4] = self;
      dispatch_async(queue2, v32);
    }

    shuffleState = [(_HMMediaSession *)self shuffleState];
    if (shuffleState != [v6 shuffleState])
    {
      -[_HMMediaSession setShuffleState:](self, "setShuffleState:", [v6 shuffleState]);
      v15 = 1;
    }

    repeatState = [(_HMMediaSession *)self repeatState];
    if (repeatState != [v6 repeatState])
    {
      -[_HMMediaSession setRepeatState:](self, "setRepeatState:", [v6 repeatState]);
      v15 = 1;
    }

    mediaUniqueIdentifier = [(_HMMediaSession *)self mediaUniqueIdentifier];
    mediaUniqueIdentifier2 = [v6 mediaUniqueIdentifier];
    v22 = HMFEqualObjects();

    if ((v22 & 1) == 0)
    {
      mediaUniqueIdentifier3 = [v6 mediaUniqueIdentifier];
      [(_HMMediaSession *)self setMediaUniqueIdentifier:mediaUniqueIdentifier3];

      v15 = 1;
    }

    v24 = v9 ^ 1;
    sleepWakeState = [(_HMMediaSession *)self sleepWakeState];
    if (sleepWakeState == [v6 sleepWakeState])
    {
      if (!v15)
      {
        v26 = 0;
LABEL_21:
        v27 = v26 | v24;
        goto LABEL_22;
      }
    }

    else
    {
      -[_HMMediaSession setSleepWakeState:](self, "setSleepWakeState:", [v6 sleepWakeState]);
    }

    context3 = [(_HMMediaSession *)self context];
    queue3 = [context3 queue];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __38___HMMediaSession_mergeFromNewObject___block_invoke_3;
    v31[3] = &unk_1E754E2A8;
    v31[4] = self;
    dispatch_async(queue3, v31);

    v26 = 1;
    goto LABEL_21;
  }

  v27 = 0;
LABEL_22:

  return v27;
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
      uuid = [(_HMMediaSession *)self uuid];
      uuid2 = [(_HMMediaSession *)v6 uuid];
      v9 = [uuid isEqual:uuid2];
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
  uuid = [(_HMMediaSession *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (void)_handleSessionRouteUIDUpdated:(id)updated
{
  v5 = [updated stringForKey:@"route-uid"];
  routeUID = [(_HMMediaSession *)self routeUID];
  if ((HMFEqualObjects() & 1) == 0)
  {
    [(_HMMediaSession *)self setRouteUID:v5];
    [(_HMMediaSession *)self _notifyDelegateOfUpdatedRouteUID:v5];
  }
}

- (void)_notifyDelegateOfUpdatedRouteUID:(id)d
{
  dCopy = d;
  delegate = [(_HMMediaSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(_HMMediaSession *)self delegate];
    context = [(_HMMediaSession *)self context];
    delegateCaller = [context delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52___HMMediaSession__notifyDelegateOfUpdatedRouteUID___block_invoke;
    v11[3] = &unk_1E754E5E8;
    v12 = delegate2;
    selfCopy = self;
    v14 = dCopy;
    v10 = delegate2;
    [delegateCaller invokeBlock:v11];
  }
}

- (void)updateMediaState:(id)state
{
  v19 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  context = [(_HMMediaSession *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __36___HMMediaSession_updateMediaState___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = stateCopy;
    dispatch_async(queue, v13);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2080;
      v18 = "[_HMMediaSession updateMediaState:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updatePlaybackState:(id)state
{
  v20 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  context = [(_HMMediaSession *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39___HMMediaSession_updatePlaybackState___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v14 = stateCopy;
    selfCopy = self;
    dispatch_async(queue, v13);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v11;
      v18 = 2080;
      v19 = "[_HMMediaSession updatePlaybackState:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateMediaState:(id)state completion:(id)completion
{
  v65 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  completionCopy = completion;
  v7 = [stateCopy hmf_numberForKey:@"pb-state"];
  v56 = v7;
  if (v7 && (v8 = v7, v9 = -[_HMMediaSession playbackState](self, "playbackState"), v10 = [v8 unsignedIntegerValue], v9 != v10))
  {
    v12 = v10;
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v60 = v16;
      v61 = 2048;
      v62 = v9;
      v63 = 2048;
      v64 = v12;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@_updateMediaState playback state changed from %tu to %tu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [(_HMMediaSession *)selfCopy setPlaybackState:v12];
    [(_HMMediaSession *)selfCopy _notifyDelegateOfUpdatedPlaybackState:v12];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v17 = [stateCopy hmf_numberForKey:@"ms-shuffle"];
  if (v17)
  {
    shuffleState = [(_HMMediaSession *)self shuffleState];
    unsignedIntegerValue = [v17 unsignedIntegerValue];
    if (shuffleState != unsignedIntegerValue)
    {
      [(_HMMediaSession *)self setShuffleState:unsignedIntegerValue];
      v11 = 1;
    }
  }

  v20 = [stateCopy hmf_numberForKey:@"ms-repeat"];
  if (v20)
  {
    repeatState = [(_HMMediaSession *)self repeatState];
    unsignedIntegerValue2 = [v20 unsignedIntegerValue];
    if (repeatState != unsignedIntegerValue2)
    {
      [(_HMMediaSession *)self setRepeatState:unsignedIntegerValue2];
      v11 = 1;
    }
  }

  v23 = [stateCopy hmf_numberForKey:@"ms-volume"];
  if (v23)
  {
    audioControl = [(_HMMediaSession *)self audioControl];
    [audioControl volume];
    v26 = v25;

    [v23 floatValue];
    if (vabds_f32(v26, v27) > 0.0001)
    {
      audioControl2 = [(_HMMediaSession *)self audioControl];
      [v23 floatValue];
      [audioControl2 setVolume:?];

      v11 = 1;
    }
  }

  v29 = [stateCopy hmf_stringForKey:@"ms-mediaid"];
  if (v29)
  {
    mediaUniqueIdentifier = [(_HMMediaSession *)self mediaUniqueIdentifier];
    if (([mediaUniqueIdentifier isEqualToString:v29] & 1) == 0)
    {
      [(_HMMediaSession *)self setMediaUniqueIdentifier:v29];
      v11 = 1;
    }
  }

  v55 = v17;
  v31 = [stateCopy hmf_numberForKey:@"ms-muted"];
  if (v31)
  {
    audioControl3 = [(_HMMediaSession *)self audioControl];
    isMuted = [audioControl3 isMuted];

    if (isMuted != [v31 BOOLValue])
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v37 = v53 = v20;
        v38 = HMFBooleanToString();
        [v31 BOOLValue];
        HMFBooleanToString();
        v39 = v54 = v34;
        *buf = 138543874;
        v60 = v37;
        v61 = 2112;
        v62 = v38;
        v63 = 2112;
        v64 = v39;
        _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_INFO, "%{public}@_updateMediaState muted changed from %@ to %@", buf, 0x20u);

        v34 = v54;
        v20 = v53;
      }

      objc_autoreleasePoolPop(v34);
      audioControl4 = [(_HMMediaSession *)selfCopy2 audioControl];
      [audioControl4 setMuted:{objc_msgSend(v31, "BOOLValue")}];

      audioControl5 = [(_HMMediaSession *)selfCopy2 audioControl];
      bOOLValue = [v31 BOOLValue];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __48___HMMediaSession__updateMediaState_completion___block_invoke;
      v58[3] = &unk_1E754E148;
      v58[4] = selfCopy2;
      [audioControl5 updateMuted:bOOLValue completionHandler:v58];

      v11 = 1;
    }
  }

  v43 = [stateCopy hmf_numberForKey:{@"HMMediaSessionSleepWakeStateMessageKey", v53}];
  if (v43 && (v44 = -[_HMMediaSession sleepWakeState](self, "sleepWakeState"), v45 = [v43 unsignedIntegerValue], v44 != v45))
  {
    [(_HMMediaSession *)self setSleepWakeState:v45];
    if (!completionCopy)
    {
LABEL_34:
      [(_HMMediaSession *)self _notifyDelegateOfUpdatedMediaState];
      goto LABEL_35;
    }
  }

  else if (!completionCopy)
  {
    if (!v11)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v46 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v48 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543618;
    v60 = v49;
    v61 = 2112;
    v62 = v56;
    _os_log_impl(&dword_19BB39000, v48, OS_LOG_TYPE_INFO, "%{public}@_updateMediaState calling completion with state: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v46);
  context = [(_HMMediaSession *)selfCopy3 context];
  delegateCaller = [context delegateCaller];
  [delegateCaller callCompletion:completionCopy error:0];

LABEL_35:
  v52 = *MEMORY[0x1E69E9840];
}

- (void)_handleSessionPlaybackUpdated:(id)updated
{
  updatedCopy = updated;
  context = [(_HMMediaSession *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [updatedCopy identifier];
  v7 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  messagePayload = [updatedCopy messagePayload];

  [(_HMMediaSession *)self _updateMediaState:messagePayload completion:v7];
}

- (void)_notifyDelegateOfUpdatedMediaState
{
  delegate = [(_HMMediaSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(_HMMediaSession *)self delegate];
    context = [(_HMMediaSession *)self context];
    delegateCaller = [context delegateCaller];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53___HMMediaSession__notifyDelegateOfUpdatedMediaState__block_invoke;
    v9[3] = &unk_1E754E5C0;
    v9[4] = self;
    v10 = delegate2;
    v8 = delegate2;
    [delegateCaller invokeBlock:v9];
  }
}

- (void)_notifyDelegateOfUpdatedPlaybackState:(int64_t)state
{
  v29 = *MEMORY[0x1E69E9840];
  delegate = [(_HMMediaSession *)self delegate];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    if ((state - 1) > 5)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = off_1E75484F8[state - 1];
    }

    v11 = v10;
    *buf = 138543874;
    v24 = v9;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = delegate;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notify client of did update playback state: %@ delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  context = [(_HMMediaSession *)selfCopy context];
  delegateCaller = [(__CFString *)context delegateCaller];
  if (delegateCaller)
  {
    if (objc_opt_respondsToSelector())
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __57___HMMediaSession__notifyDelegateOfUpdatedPlaybackState___block_invoke;
      v19[3] = &unk_1E754E120;
      v20 = delegate;
      v21 = selfCopy;
      stateCopy = state;
      [delegateCaller invokeBlock:v19];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v17;
      v25 = 2112;
      v26 = context;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of did update playback state due to no delegate caller from context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)refreshPlaybackStateWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(_HMMediaSession *)self context];
  if (!handlerCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMMediaSession refreshPlaybackStateWithCompletionHandler:]", @"completionHandler"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v6 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61___HMMediaSession_refreshPlaybackStateWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v22 = handlerCopy;
    v21 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v11;
      v25 = 2080;
      v26 = "[_HMMediaSession refreshPlaybackStateWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setPlaybackState:(int64_t)state completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(_HMMediaSession *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMMediaSession setPlaybackState:completionHandler:]", @"completionHandler"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54___HMMediaSession_setPlaybackState_completionHandler___block_invoke;
    block[3] = &unk_1E754E0D0;
    stateCopy = state;
    block[4] = self;
    v24 = handlerCopy;
    v23 = v8;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v13;
      v28 = 2080;
      v29 = "[_HMMediaSession setPlaybackState:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(_HMMediaSession *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_messageTargetUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSleepWakeState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_sleepWakeState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)sleepWakeState
{
  os_unfair_lock_lock_with_options();
  sleepWakeState = self->_sleepWakeState;
  os_unfair_lock_unlock(&self->_lock);
  return sleepWakeState;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_uuid];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)setRouteUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  routeUID = self->_routeUID;
  self->_routeUID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)routeUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_routeUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMediaUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  mediaUniqueIdentifier = self->_mediaUniqueIdentifier;
  self->_mediaUniqueIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)mediaUniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mediaUniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRepeatState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_repeatState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)repeatState
{
  os_unfair_lock_lock_with_options();
  repeatState = self->_repeatState;
  os_unfair_lock_unlock(&self->_lock);
  return repeatState;
}

- (void)setShuffleState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_shuffleState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)shuffleState
{
  os_unfair_lock_lock_with_options();
  shuffleState = self->_shuffleState;
  os_unfair_lock_unlock(&self->_lock);
  return shuffleState;
}

- (void)setPlaybackState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_playbackState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)playbackState
{
  os_unfair_lock_lock_with_options();
  playbackState = self->_playbackState;
  os_unfair_lock_unlock(&self->_lock);
  return playbackState;
}

- (void)setMessageTargetUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  messageTargetUUID = self->_messageTargetUUID;
  self->_messageTargetUUID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  context = self->_context;
  self->_context = contextCopy;

  os_unfair_lock_unlock(&self->_lock);

  [(_HMMediaSession *)self _registerNotificationHandlers];
}

- (_HMContext)context
{
  os_unfair_lock_lock_with_options();
  v3 = self->_context;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setUuid:(id)uuid
{
  uuidCopy = uuid;
  os_unfair_lock_lock_with_options();
  uuid = self->_uuid;
  self->_uuid = uuidCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_registerNotificationHandlers
{
  context = [(_HMMediaSession *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMMS.up" receiver:self selector:sel__handleSessionPlaybackUpdated_];

  context2 = [(_HMMediaSession *)self context];
  messageDispatcher2 = [context2 messageDispatcher];
  [messageDispatcher2 registerForMessage:@"HMMS.ur" receiver:self selector:sel__handleSessionRouteUIDUpdated_];
}

- (_HMMediaSession)initWithUUID:(id)d routeUID:(id)iD playbackState:(int64_t)state shuffleState:(int64_t)shuffleState repeatState:(int64_t)repeatState audioControl:(id)control mediaUniqueIdentifier:(id)identifier sleepWakeState:(unint64_t)self0
{
  dCopy = d;
  iDCopy = iD;
  controlCopy = control;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = _HMMediaSession;
  v19 = [(_HMMediaSession *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_uuid, d);
    objc_storeStrong(&v20->_routeUID, iD);
    v20->_playbackState = state;
    v20->_shuffleState = shuffleState;
    v20->_repeatState = repeatState;
    objc_storeStrong(&v20->_audioControl, control);
    objc_storeStrong(&v20->_mediaUniqueIdentifier, identifier);
    v20->_sleepWakeState = wakeState;
  }

  return v20;
}

@end
@interface _HMMediaSession
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeFromNewObject:(id)a3;
- (NSString)mediaUniqueIdentifier;
- (NSString)routeUID;
- (NSUUID)messageTargetUUID;
- (NSUUID)uniqueIdentifier;
- (_HMContext)context;
- (_HMMediaSession)initWithUUID:(id)a3 routeUID:(id)a4 playbackState:(int64_t)a5 shuffleState:(int64_t)a6 repeatState:(int64_t)a7 audioControl:(id)a8 mediaUniqueIdentifier:(id)a9 sleepWakeState:(unint64_t)a10;
- (_HMMediaSessionDelegate)delegate;
- (id)messageDestination;
- (int64_t)playbackState;
- (int64_t)repeatState;
- (int64_t)shuffleState;
- (unint64_t)hash;
- (unint64_t)sleepWakeState;
- (void)_handleSessionPlaybackUpdated:(id)a3;
- (void)_handleSessionRouteUIDUpdated:(id)a3;
- (void)_notifyDelegateOfUpdatedMediaState;
- (void)_notifyDelegateOfUpdatedPlaybackState:(int64_t)a3;
- (void)_notifyDelegateOfUpdatedRouteUID:(id)a3;
- (void)_registerNotificationHandlers;
- (void)_updateMediaState:(id)a3 completion:(id)a4;
- (void)refreshPlaybackStateWithCompletionHandler:(id)a3;
- (void)setContext:(id)a3;
- (void)setMediaUniqueIdentifier:(id)a3;
- (void)setMessageTargetUUID:(id)a3;
- (void)setPlaybackState:(int64_t)a3;
- (void)setPlaybackState:(int64_t)a3 completionHandler:(id)a4;
- (void)setRepeatState:(int64_t)a3;
- (void)setRouteUID:(id)a3;
- (void)setShuffleState:(int64_t)a3;
- (void)setSleepWakeState:(unint64_t)a3;
- (void)setUuid:(id)a3;
- (void)updateMediaState:(id)a3;
- (void)updatePlaybackState:(id)a3;
@end

@implementation _HMMediaSession

- (_HMMediaSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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
    v7 = [(_HMMediaSession *)self routeUID];
    v8 = [v6 routeUID];
    v9 = HMFEqualObjects();

    if ((v9 & 1) == 0)
    {
      v10 = [v6 routeUID];
      [(_HMMediaSession *)self setRouteUID:v10];

      v11 = [(_HMMediaSession *)self context];
      v12 = [v11 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38___HMMediaSession_mergeFromNewObject___block_invoke;
      block[3] = &unk_1E754E5C0;
      block[4] = self;
      v34 = v6;
      dispatch_async(v12, block);
    }

    v13 = [(_HMMediaSession *)self playbackState];
    v14 = [v6 playbackState];
    v15 = v13 != v14;
    if (v13 != v14)
    {
      -[_HMMediaSession setPlaybackState:](self, "setPlaybackState:", [v6 playbackState]);
      v16 = [(_HMMediaSession *)self context];
      v17 = [v16 queue];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __38___HMMediaSession_mergeFromNewObject___block_invoke_2;
      v32[3] = &unk_1E754E2A8;
      v32[4] = self;
      dispatch_async(v17, v32);
    }

    v18 = [(_HMMediaSession *)self shuffleState];
    if (v18 != [v6 shuffleState])
    {
      -[_HMMediaSession setShuffleState:](self, "setShuffleState:", [v6 shuffleState]);
      v15 = 1;
    }

    v19 = [(_HMMediaSession *)self repeatState];
    if (v19 != [v6 repeatState])
    {
      -[_HMMediaSession setRepeatState:](self, "setRepeatState:", [v6 repeatState]);
      v15 = 1;
    }

    v20 = [(_HMMediaSession *)self mediaUniqueIdentifier];
    v21 = [v6 mediaUniqueIdentifier];
    v22 = HMFEqualObjects();

    if ((v22 & 1) == 0)
    {
      v23 = [v6 mediaUniqueIdentifier];
      [(_HMMediaSession *)self setMediaUniqueIdentifier:v23];

      v15 = 1;
    }

    v24 = v9 ^ 1;
    v25 = [(_HMMediaSession *)self sleepWakeState];
    if (v25 == [v6 sleepWakeState])
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

    v28 = [(_HMMediaSession *)self context];
    v29 = [v28 queue];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __38___HMMediaSession_mergeFromNewObject___block_invoke_3;
    v31[3] = &unk_1E754E2A8;
    v31[4] = self;
    dispatch_async(v29, v31);

    v26 = 1;
    goto LABEL_21;
  }

  v27 = 0;
LABEL_22:

  return v27;
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
      v7 = [(_HMMediaSession *)self uuid];
      v8 = [(_HMMediaSession *)v6 uuid];
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
  v2 = [(_HMMediaSession *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (void)_handleSessionRouteUIDUpdated:(id)a3
{
  v5 = [a3 stringForKey:@"route-uid"];
  v4 = [(_HMMediaSession *)self routeUID];
  if ((HMFEqualObjects() & 1) == 0)
  {
    [(_HMMediaSession *)self setRouteUID:v5];
    [(_HMMediaSession *)self _notifyDelegateOfUpdatedRouteUID:v5];
  }
}

- (void)_notifyDelegateOfUpdatedRouteUID:(id)a3
{
  v4 = a3;
  v5 = [(_HMMediaSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_HMMediaSession *)self delegate];
    v8 = [(_HMMediaSession *)self context];
    v9 = [v8 delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52___HMMediaSession__notifyDelegateOfUpdatedRouteUID___block_invoke;
    v11[3] = &unk_1E754E5E8;
    v12 = v7;
    v13 = self;
    v14 = v4;
    v10 = v7;
    [v9 invokeBlock:v11];
  }
}

- (void)updateMediaState:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_HMMediaSession *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __36___HMMediaSession_updateMediaState___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v7, v13);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
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

- (void)updatePlaybackState:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_HMMediaSession *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39___HMMediaSession_updatePlaybackState___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v14 = v4;
    v15 = self;
    dispatch_async(v7, v13);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
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

- (void)_updateMediaState:(id)a3 completion:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v57 = a4;
  v7 = [v6 hmf_numberForKey:@"pb-state"];
  v56 = v7;
  if (v7 && (v8 = v7, v9 = -[_HMMediaSession playbackState](self, "playbackState"), v10 = [v8 unsignedIntegerValue], v9 != v10))
  {
    v12 = v10;
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
    [(_HMMediaSession *)v14 setPlaybackState:v12];
    [(_HMMediaSession *)v14 _notifyDelegateOfUpdatedPlaybackState:v12];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v17 = [v6 hmf_numberForKey:@"ms-shuffle"];
  if (v17)
  {
    v18 = [(_HMMediaSession *)self shuffleState];
    v19 = [v17 unsignedIntegerValue];
    if (v18 != v19)
    {
      [(_HMMediaSession *)self setShuffleState:v19];
      v11 = 1;
    }
  }

  v20 = [v6 hmf_numberForKey:@"ms-repeat"];
  if (v20)
  {
    v21 = [(_HMMediaSession *)self repeatState];
    v22 = [v20 unsignedIntegerValue];
    if (v21 != v22)
    {
      [(_HMMediaSession *)self setRepeatState:v22];
      v11 = 1;
    }
  }

  v23 = [v6 hmf_numberForKey:@"ms-volume"];
  if (v23)
  {
    v24 = [(_HMMediaSession *)self audioControl];
    [v24 volume];
    v26 = v25;

    [v23 floatValue];
    if (vabds_f32(v26, v27) > 0.0001)
    {
      v28 = [(_HMMediaSession *)self audioControl];
      [v23 floatValue];
      [v28 setVolume:?];

      v11 = 1;
    }
  }

  v29 = [v6 hmf_stringForKey:@"ms-mediaid"];
  if (v29)
  {
    v30 = [(_HMMediaSession *)self mediaUniqueIdentifier];
    if (([v30 isEqualToString:v29] & 1) == 0)
    {
      [(_HMMediaSession *)self setMediaUniqueIdentifier:v29];
      v11 = 1;
    }
  }

  v55 = v17;
  v31 = [v6 hmf_numberForKey:@"ms-muted"];
  if (v31)
  {
    v32 = [(_HMMediaSession *)self audioControl];
    v33 = [v32 isMuted];

    if (v33 != [v31 BOOLValue])
    {
      v34 = objc_autoreleasePoolPush();
      v35 = self;
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
      v40 = [(_HMMediaSession *)v35 audioControl];
      [v40 setMuted:{objc_msgSend(v31, "BOOLValue")}];

      v41 = [(_HMMediaSession *)v35 audioControl];
      v42 = [v31 BOOLValue];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __48___HMMediaSession__updateMediaState_completion___block_invoke;
      v58[3] = &unk_1E754E148;
      v58[4] = v35;
      [v41 updateMuted:v42 completionHandler:v58];

      v11 = 1;
    }
  }

  v43 = [v6 hmf_numberForKey:{@"HMMediaSessionSleepWakeStateMessageKey", v53}];
  if (v43 && (v44 = -[_HMMediaSession sleepWakeState](self, "sleepWakeState"), v45 = [v43 unsignedIntegerValue], v44 != v45))
  {
    [(_HMMediaSession *)self setSleepWakeState:v45];
    if (!v57)
    {
LABEL_34:
      [(_HMMediaSession *)self _notifyDelegateOfUpdatedMediaState];
      goto LABEL_35;
    }
  }

  else if (!v57)
  {
    if (!v11)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v46 = objc_autoreleasePoolPush();
  v47 = self;
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
  v50 = [(_HMMediaSession *)v47 context];
  v51 = [v50 delegateCaller];
  [v51 callCompletion:v57 error:0];

LABEL_35:
  v52 = *MEMORY[0x1E69E9840];
}

- (void)_handleSessionPlaybackUpdated:(id)a3
{
  v4 = a3;
  v5 = [(_HMMediaSession *)self context];
  v9 = [v5 pendingRequests];

  v6 = [v4 identifier];
  v7 = [v9 removeCompletionBlockForIdentifier:v6];

  v8 = [v4 messagePayload];

  [(_HMMediaSession *)self _updateMediaState:v8 completion:v7];
}

- (void)_notifyDelegateOfUpdatedMediaState
{
  v3 = [(_HMMediaSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_HMMediaSession *)self delegate];
    v6 = [(_HMMediaSession *)self context];
    v7 = [v6 delegateCaller];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53___HMMediaSession__notifyDelegateOfUpdatedMediaState__block_invoke;
    v9[3] = &unk_1E754E5C0;
    v9[4] = self;
    v10 = v5;
    v8 = v5;
    [v7 invokeBlock:v9];
  }
}

- (void)_notifyDelegateOfUpdatedPlaybackState:(int64_t)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [(_HMMediaSession *)self delegate];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    if ((a3 - 1) > 5)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = off_1E75484F8[a3 - 1];
    }

    v11 = v10;
    *buf = 138543874;
    v24 = v9;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notify client of did update playback state: %@ delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = [(_HMMediaSession *)v7 context];
  v13 = [(__CFString *)v12 delegateCaller];
  if (v13)
  {
    if (objc_opt_respondsToSelector())
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __57___HMMediaSession__notifyDelegateOfUpdatedPlaybackState___block_invoke;
      v19[3] = &unk_1E754E120;
      v20 = v5;
      v21 = v7;
      v22 = a3;
      [v13 invokeBlock:v19];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v17;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of did update playback state due to no delegate caller from context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)refreshPlaybackStateWithCompletionHandler:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_HMMediaSession *)self context];
  if (!v4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMMediaSession refreshPlaybackStateWithCompletionHandler:]", @"completionHandler"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
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

  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61___HMMediaSession_refreshPlaybackStateWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v22 = v4;
    v21 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
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
    (*(v4 + 2))(v4, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setPlaybackState:(int64_t)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(_HMMediaSession *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMMediaSession setPlaybackState:completionHandler:]", @"completionHandler"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
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

  v8 = v7;
  if (v7)
  {
    v9 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54___HMMediaSession_setPlaybackState_completionHandler___block_invoke;
    block[3] = &unk_1E754E0D0;
    v25 = a3;
    block[4] = self;
    v24 = v6;
    v23 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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
    (*(v6 + 2))(v6, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(_HMMediaSession *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_messageTargetUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSleepWakeState:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_sleepWakeState = a3;

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

- (void)setRouteUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  routeUID = self->_routeUID;
  self->_routeUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)routeUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_routeUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMediaUniqueIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  mediaUniqueIdentifier = self->_mediaUniqueIdentifier;
  self->_mediaUniqueIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)mediaUniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mediaUniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRepeatState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_repeatState = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)repeatState
{
  os_unfair_lock_lock_with_options();
  repeatState = self->_repeatState;
  os_unfair_lock_unlock(&self->_lock);
  return repeatState;
}

- (void)setShuffleState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_shuffleState = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)shuffleState
{
  os_unfair_lock_lock_with_options();
  shuffleState = self->_shuffleState;
  os_unfair_lock_unlock(&self->_lock);
  return shuffleState;
}

- (void)setPlaybackState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_playbackState = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)playbackState
{
  os_unfair_lock_lock_with_options();
  playbackState = self->_playbackState;
  os_unfair_lock_unlock(&self->_lock);
  return playbackState;
}

- (void)setMessageTargetUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  messageTargetUUID = self->_messageTargetUUID;
  self->_messageTargetUUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  context = self->_context;
  self->_context = v4;

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

- (void)setUuid:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  uuid = self->_uuid;
  self->_uuid = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_registerNotificationHandlers
{
  v3 = [(_HMMediaSession *)self context];
  v4 = [v3 messageDispatcher];
  [v4 registerForMessage:@"HMMS.up" receiver:self selector:sel__handleSessionPlaybackUpdated_];

  v6 = [(_HMMediaSession *)self context];
  v5 = [v6 messageDispatcher];
  [v5 registerForMessage:@"HMMS.ur" receiver:self selector:sel__handleSessionRouteUIDUpdated_];
}

- (_HMMediaSession)initWithUUID:(id)a3 routeUID:(id)a4 playbackState:(int64_t)a5 shuffleState:(int64_t)a6 repeatState:(int64_t)a7 audioControl:(id)a8 mediaUniqueIdentifier:(id)a9 sleepWakeState:(unint64_t)a10
{
  v16 = a3;
  v17 = a4;
  v23 = a8;
  v18 = a9;
  v24.receiver = self;
  v24.super_class = _HMMediaSession;
  v19 = [(_HMMediaSession *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_uuid, a3);
    objc_storeStrong(&v20->_routeUID, a4);
    v20->_playbackState = a5;
    v20->_shuffleState = a6;
    v20->_repeatState = a7;
    objc_storeStrong(&v20->_audioControl, a8);
    objc_storeStrong(&v20->_mediaUniqueIdentifier, a9);
    v20->_sleepWakeState = a10;
  }

  return v20;
}

@end
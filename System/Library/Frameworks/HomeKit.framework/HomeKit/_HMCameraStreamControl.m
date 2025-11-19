@interface _HMCameraStreamControl
+ (id)logCategory;
- (HMCameraStream)cameraStream;
- (NSString)sessionID;
- (_HMCameraStreamControl)initWithCameraProfile:(id)a3 profileUniqueIdentifier:(id)a4;
- (_HMCameraStreamControlDelegate)delegate;
- (unint64_t)streamState;
- (void)__configureWithContext:(id)a3;
- (void)_callVideoStartedDelegate;
- (void)_callVideoStoppedDelegateWithError:(id)a3;
- (void)_handleStreamStartedWithResponse:(id)a3 sessionID:(id)a4 error:(id)a5;
- (void)_handleVideoStopResponse:(id)a3 sessionID:(id)a4 error:(id)a5;
- (void)_handleVideoStreamStopped:(id)a3;
- (void)_resetStateWithError:(id)a3;
- (void)dealloc;
- (void)setCameraStream:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setSessionID:(id)a3;
- (void)setStreamState:(unint64_t)a3;
- (void)startStreamWithPreferences:(id)a3;
- (void)stopStream;
@end

@implementation _HMCameraStreamControl

- (void)_callVideoStoppedDelegateWithError:(id)a3
{
  v4 = a3;
  v5 = [(_HMCameraStreamControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(_HMCameraControl *)self context];
    v7 = [v6 delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61___HMCameraStreamControl__callVideoStoppedDelegateWithError___block_invoke;
    v8[3] = &unk_1E754E5E8;
    v9 = v5;
    v10 = self;
    v11 = v4;
    [v7 invokeBlock:v8];
  }
}

- (void)_callVideoStartedDelegate
{
  v3 = [(_HMCameraStreamControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(_HMCameraControl *)self context];
    v5 = [v4 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51___HMCameraStreamControl__callVideoStartedDelegate__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = v3;
    v8 = self;
    [v5 invokeBlock:v6];
  }
}

- (void)_handleVideoStopResponse:(id)a3 sessionID:(id)a4 error:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_HMCameraStreamControl *)self sessionID];
  v12 = HMFEqualObjects();

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    v16 = v15;
    if (v10)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v28 = 138543874;
        v29 = v17;
        v30 = 2112;
        v31 = v9;
        v32 = 2112;
        v33 = v10;
        v18 = "%{public}@Failed to stop stream for session ID %@: %@";
        v19 = v16;
        v20 = OS_LOG_TYPE_ERROR;
        v21 = 32;
LABEL_10:
        _os_log_impl(&dword_19BB39000, v19, v20, v18, &v28, v21);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v17;
      v30 = 2112;
      v31 = v9;
      v18 = "%{public}@Successfully stopped stream for session ID: %@";
      v19 = v16;
      v20 = OS_LOG_TYPE_INFO;
      v21 = 22;
      goto LABEL_10;
    }

    objc_autoreleasePoolPop(v13);
    [(_HMCameraStreamControl *)v14 _resetStateWithError:v10];
    goto LABEL_12;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = HMFGetLogIdentifier();
    v26 = [(_HMCameraStreamControl *)v23 sessionID];
    v28 = 138543874;
    v29 = v25;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v26;
    _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Not handling stop stream response: Received session ID %@ does not match the current one %@", &v28, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
LABEL_12:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)stopStream
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [(_HMCameraControl *)self context];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping the stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [(_HMCameraStreamControl *)v5 sessionID];
    if (v9)
    {
      if ([(_HMCameraStreamControl *)v5 streamState]!= 3)
      {
        [(_HMCameraStreamControl *)v5 setStreamState:3];
        v18 = MEMORY[0x1E69A2A10];
        v19 = objc_alloc(MEMORY[0x1E69A2A00]);
        v20 = [(_HMCameraControl *)v5 profileUniqueIdentifier];
        v21 = [v19 initWithTarget:v20];
        v37 = @"kCameraSessionID";
        v38 = v9;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v23 = [v18 messageWithName:@"HMCameraStreamStopStreamMessage" destination:v21 payload:v22];

        v31 = MEMORY[0x1E69E9820];
        v32 = 3221225472;
        v33 = __36___HMCameraStreamControl_stopStream__block_invoke;
        v34 = &unk_1E754E570;
        v35 = v5;
        v24 = v9;
        v36 = v24;
        [v23 setResponseHandler:&v31];
        v25 = objc_autoreleasePoolPush();
        v26 = v5;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v28;
          v41 = 2112;
          v42 = v24;
          _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Sending stop video stream message for session ID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v29 = [v3 messageDispatcher];
        [v29 sendMessage:v23];

        goto LABEL_18;
      }

      v10 = objc_autoreleasePoolPush();
      v11 = v5;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v13;
        v14 = "%{public}@Not stopping stream because it is already being stopped";
        v15 = v12;
        v16 = OS_LOG_TYPE_INFO;
LABEL_13:
        _os_log_impl(&dword_19BB39000, v15, v16, v14, buf, 0xCu);
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v5;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v13;
        v14 = "%{public}@Ignoring stop stream request because no stream session ID exists";
        v15 = v12;
        v16 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_13;
      }
    }

    objc_autoreleasePoolPop(v10);
LABEL_18:

    goto LABEL_19;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v17;
    v41 = 2080;
    v42 = "[_HMCameraStreamControl stopStream]";
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
LABEL_19:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_handleStreamStartedWithResponse:(id)a3 sessionID:(id)a4 error:(id)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_HMCameraStreamControl *)self sessionID];
  v12 = HMFEqualObjects();

  if (v12)
  {
    if (v10)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v16;
        v59 = 2112;
        v60 = v10;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to start video stream: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [(_HMCameraStreamControl *)v14 _resetStateWithError:v10];
    }

    else
    {
      v22 = [v8 hmf_stringForKey:@"kCameraSessionID"];
      [(_HMCameraStreamControl *)self setSessionID:v22];

      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [(_HMCameraStreamControl *)v24 sessionID];
        *buf = 138543618;
        v58 = v26;
        v59 = 2112;
        v60 = v27;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Successfully started video stream for session ID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v54 = [v8 hmf_numberForKey:@"kSlotIdentifierKey"];
      v28 = [v8 hmf_numberForKey:@"kAudioStreamSetting"];
      v29 = [v8 hmf_numberForKey:@"kSourceAspectRatioKey"];
      v56 = 0;
      v30 = [v8 hmf_integerForKey:@"HMCameraStreamAudioDownlinkTokenMessageKey" error:&v56];
      v31 = v56;
      v53 = v30;
      if (!v30)
      {
        v32 = v28;
        v33 = objc_autoreleasePoolPush();
        v34 = v24;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v36 = v52 = v33;
          *buf = 138543618;
          v58 = v36;
          v59 = 2112;
          v60 = v31;
          _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to unpack audio downlink token: %@", buf, 0x16u);

          v33 = v52;
        }

        objc_autoreleasePoolPop(v33);
        v28 = v32;
      }

      v55 = v31;
      v37 = [v8 hmf_integerForKey:@"HMCameraStreamAudioUplinkTokenMessageKey" error:&v55];
      v38 = v55;

      if (!v37)
      {
        v39 = objc_autoreleasePoolPush();
        v40 = v24;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v42 = v51 = v39;
          *buf = 138543618;
          v58 = v42;
          v59 = 2112;
          v60 = v38;
          _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to unpack audio uplink token: %@", buf, 0x16u);

          v39 = v51;
        }

        objc_autoreleasePoolPop(v39);
      }

      v43 = [HMCameraStream alloc];
      v44 = [(_HMCameraControl *)v24 profileUniqueIdentifier];
      [v29 doubleValue];
      v46 = v45;
      v47 = [(_HMCameraStreamControl *)v24 sessionID];
      v48 = -[HMCameraStream initWithProfileUniqueIdentifier:slotIdentifier:aspectRatio:sessionID:audioStreamSetting:audioDownlinkToken:audioUplinkToken:](v43, "initWithProfileUniqueIdentifier:slotIdentifier:aspectRatio:sessionID:audioStreamSetting:audioDownlinkToken:audioUplinkToken:", v44, v54, v47, [v28 unsignedIntegerValue], v53, v37, v46);

      v49 = [(_HMCameraControl *)v24 context];
      [(HMCameraSource *)v48 setContext:v49];

      [(_HMCameraStreamControl *)v24 setCameraStream:v48];
      [(_HMCameraStreamControl *)v24 setStreamState:2];
      [(_HMCameraStreamControl *)v24 _callVideoStartedDelegate];

      v10 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [(_HMCameraStreamControl *)v18 sessionID];
      *buf = 138543874;
      v58 = v20;
      v59 = 2112;
      v60 = v9;
      v61 = 2112;
      v62 = v21;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Not handling start stream response: Received session ID %@ does not match the current one %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (void)startStreamWithPreferences:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_HMCameraControl *)self context];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (!v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v11;
      v40 = 2080;
      v41 = "[_HMCameraStreamControl startStreamWithPreferences:]";
      v12 = "%{public}@Nil context - %s";
      v13 = v9;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
      goto LABEL_10;
    }

LABEL_11:

    objc_autoreleasePoolPop(v6);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v10;
    v40 = 2112;
    v41 = v4;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting stream with preferences: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if ([(_HMCameraStreamControl *)v7 streamState]== 1 || [(_HMCameraStreamControl *)v7 streamState]== 2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v7;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v11;
      v12 = "%{public}@Ignoring start stream request because a stream session is already starting or actively streaming";
      v13 = v9;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 12;
LABEL_10:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, buf, v15);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  [(_HMCameraStreamControl *)v7 setStreamState:1];
  v17 = [MEMORY[0x1E696AFB0] UUID];
  v18 = [v17 UUIDString];

  [(_HMCameraStreamControl *)v7 setSessionID:v18];
  v19 = [MEMORY[0x1E695DF90] dictionary];
  [v19 setObject:v18 forKeyedSubscript:@"kCameraSessionID"];
  if (v4)
  {
    v20 = encodeRootObject(v4);
    [v19 setObject:v20 forKeyedSubscript:@"kCameraSessionPreference"];
  }

  v21 = objc_alloc(MEMORY[0x1E69A2A10]);
  v22 = objc_alloc(MEMORY[0x1E69A2A00]);
  v23 = [(_HMCameraControl *)v7 profileUniqueIdentifier];
  v24 = [v22 initWithTarget:v23];
  v25 = [v21 initWithName:@"HMCameraStreamNegotiateStreamMessage" destination:v24 payload:v19];

  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = __53___HMCameraStreamControl_startStreamWithPreferences___block_invoke;
  v35 = &unk_1E754E570;
  v36 = v7;
  v26 = v18;
  v37 = v26;
  [v25 setResponseHandler:&v32];
  v27 = objc_autoreleasePoolPush();
  v28 = v7;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v30;
    v40 = 2112;
    v41 = v26;
    _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_INFO, "%{public}@Sending negotiate stream message for session ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v31 = [v5 messageDispatcher];
  [v31 sendMessage:v25];

LABEL_12:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleVideoStreamStopped:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_HMCameraStreamControl *)self sessionID];
  if (v5)
  {
    v6 = [v4 stringForKey:@"kCameraSessionID"];
    if (([v5 isEqualToString:v6] & 1) == 0)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HMFGetLogIdentifier();
        v26 = 138543874;
        v27 = v24;
        v28 = 2112;
        v29 = v6;
        v30 = 2112;
        v31 = v5;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Not handling video stream stopped message: Received session ID %@ does not match the current one %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      goto LABEL_16;
    }

    v7 = [v4 errorForKey:@"kCameraSessionError"];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v26 = 138543874;
        v27 = v12;
        v28 = 2112;
        v29 = v5;
        v30 = 2112;
        v31 = v7;
        v13 = "%{public}@Video stream has failed for the session ID %@: %@";
        v14 = v11;
        v15 = OS_LOG_TYPE_ERROR;
        v16 = 32;
LABEL_14:
        _os_log_impl(&dword_19BB39000, v14, v15, v13, &v26, v16);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v12;
      v28 = 2112;
      v29 = v5;
      v13 = "%{public}@Video stream has stopped for the session ID: %@";
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
      v16 = 22;
      goto LABEL_14;
    }

    objc_autoreleasePoolPop(v8);
    [(_HMCameraStreamControl *)v9 _resetStateWithError:v7];

LABEL_16:
    goto LABEL_17;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v20;
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring stream stopped message because there is no current stream", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)__configureWithContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _HMCameraStreamControl;
  [(_HMCameraControl *)&v12 __configureWithContext:v4];
  v5 = [(_HMCameraControl *)self context];
  v6 = [v5 messageDispatcher];
  [v6 registerForMessage:@"HMCameraStreamStoppedMessage" receiver:self selector:sel__handleVideoStreamStopped_];

  objc_initWeak(&location, self);
  v7 = [(_HMCameraControl *)self context];
  v8 = [v7 xpcClient];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49___HMCameraStreamControl___configureWithContext___block_invoke;
  v9[3] = &unk_1E754E540;
  objc_copyWeak(&v10, &location);
  [v8 registerReconnectionHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_resetStateWithError:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Resetting all the stream control state with error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(_HMCameraStreamControl *)v6 setCameraStream:0];
  [(_HMCameraStreamControl *)v6 setSessionID:0];
  [(_HMCameraStreamControl *)v6 setStreamState:4];
  [(_HMCameraStreamControl *)v6 _callVideoStoppedDelegateWithError:v4];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setSessionID:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  sessionID = self->_sessionID;
  self->_sessionID = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)sessionID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sessionID;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setStreamState:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_streamState = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (unint64_t)streamState
{
  os_unfair_lock_lock_with_options();
  streamState = self->_streamState;
  os_unfair_lock_unlock(&self->super._lock);
  return streamState;
}

- (void)setCameraStream:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  cameraStream = self->_cameraStream;
  self->_cameraStream = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMCameraStream)cameraStream
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cameraStream;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->super._lock);
}

- (_HMCameraStreamControlDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->super._lock);

  return WeakRetained;
}

- (void)dealloc
{
  v3 = [(_HMCameraControl *)self context];
  v4 = [v3 messageDispatcher];
  [v4 deregisterReceiver:self];

  v5.receiver = self;
  v5.super_class = _HMCameraStreamControl;
  [(_HMCameraStreamControl *)&v5 dealloc];
}

- (_HMCameraStreamControl)initWithCameraProfile:(id)a3 profileUniqueIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = _HMCameraStreamControl;
  result = [(_HMCameraControl *)&v5 initWithCameraProfile:a3 profileUniqueIdentifier:a4];
  if (result)
  {
    result->_streamState = 4;
  }

  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31_66861 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_66861, &__block_literal_global_66862);
  }

  v3 = logCategory__hmf_once_v32_66863;

  return v3;
}

@end
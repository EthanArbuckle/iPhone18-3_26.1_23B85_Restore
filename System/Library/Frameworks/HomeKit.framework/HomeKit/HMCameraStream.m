@interface HMCameraStream
+ (id)logCategory;
- (HMCameraStream)init;
- (HMCameraStream)initWithProfileUniqueIdentifier:(id)a3 slotIdentifier:(id)a4 aspectRatio:(double)a5 sessionID:(id)a6 audioStreamSetting:(unint64_t)a7 audioDownlinkToken:(int64_t)a8 audioUplinkToken:(int64_t)a9;
- (void)_handleAudioStreamSettingUpdate:(unint64_t)a3 withError:(id)a4 context:(id)a5 completionHandler:(id)a6;
- (void)_issueUpdateAudioStreamSettingRequest:(unint64_t)a3 completionHandler:(id)a4;
- (void)_updateAudioStreamSetting:(unint64_t)a3 completionHandler:(id)a4;
- (void)_updateAudioVolume:(id)a3 completionHandler:(id)a4;
- (void)_updateMaximumVideoResolutionQuality:(int64_t)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)updateAudioStreamSetting:(HMCameraAudioStreamSetting)audioStreamSetting completionHandler:(void *)completion;
- (void)updateAudioVolume:(id)a3 completionHandler:(id)a4;
- (void)updateMaximumVideoResolutionQuality:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation HMCameraStream

- (void)_updateMaximumVideoResolutionQuality:(int64_t)a3 completionHandler:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMCameraSource *)self context];
  if (!v6)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream _updateMaximumVideoResolutionQuality:completionHandler:]", @"completion"];
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v35;
      v44 = 2112;
      v45 = v31;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v31 userInfo:0];
    objc_exception_throw(v36);
  }

  v8 = v7;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v13;
      v44 = 2048;
      v45 = a3;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating stream video resolution quality to: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v40[0] = @"kCameraSessionID";
    v14 = [(HMCameraStream *)v10 sessionID];
    v40[1] = @"HMCameraStreamVideoResolutionQualityMessageKey";
    v41[0] = v14;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v41[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];

    v17 = objc_alloc(MEMORY[0x1E69A2A10]);
    v18 = objc_alloc(MEMORY[0x1E69A2A00]);
    v19 = [(HMCameraSource *)v10 profileUniqueIdentifier];
    v20 = [v18 initWithTarget:v19];
    v21 = [v17 initWithName:@"HMCameraStreamUpdateMaximumVideoResolutionQualityMessage" destination:v20 payload:v16];

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __73__HMCameraStream__updateMaximumVideoResolutionQuality_completionHandler___block_invoke;
    v37[3] = &unk_1E754E480;
    v37[4] = v10;
    v22 = v8;
    v38 = v22;
    v39 = v6;
    [v21 setResponseHandler:v37];
    v23 = objc_autoreleasePoolPush();
    v24 = v10;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [(HMCameraStream *)v24 sessionID];
      *buf = 138543618;
      v43 = v26;
      v44 = 2112;
      v45 = v27;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Sending update video resolution quality message for session ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v28 = [v22 messageDispatcher];
    [v28 sendMessage:v21];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v29;
      v44 = 2080;
      v45 = "[HMCameraStream _updateMaximumVideoResolutionQuality:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v16);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __73__HMCameraStream__updateMaximumVideoResolutionQuality_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      v12 = "%{public}@Failed to update video resoluiton quality: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v18, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v11;
    v12 = "%{public}@Successfully updated video resolution quality";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_handleAudioStreamSettingUpdate:(unint64_t)a3 withError:(id)a4 context:(id)a5 completionHandler:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  v16 = v15;
  if (v10)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio stream setting: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v18;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Successfully updated audio stream setting", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    [(HMCameraStream *)v14 setInternalAudioStreamSetting:a3];
  }

  v19 = [v11 delegateCaller];
  v20 = [v10 hmPublicError];
  [v19 callCompletion:v12 error:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_issueUpdateAudioStreamSettingRequest:(unint64_t)a3 completionHandler:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMCameraSource *)self context];
  if (!v6)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream _issueUpdateAudioStreamSettingRequest:completionHandler:]", @"completion"];
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v27;
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v8 = v7;
  if (v7)
  {
    v9 = objc_alloc(MEMORY[0x1E69A2A00]);
    v10 = [(HMCameraSource *)self profileUniqueIdentifier];
    v11 = [v9 initWithTarget:v10];

    v33[0] = @"kCameraSessionID";
    v12 = [(HMCameraStream *)self sessionID];
    v33[1] = @"kAudioStreamSetting";
    v34[0] = v12;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v34[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

    v15 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMCameraStreamSetAudioStreamSettingMessage" destination:v11 payload:v14];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __74__HMCameraStream__issueUpdateAudioStreamSettingRequest_completionHandler___block_invoke;
    v29[3] = &unk_1E7549B68;
    v29[4] = self;
    v32 = a3;
    v16 = v8;
    v30 = v16;
    v31 = v6;
    [v15 setResponseHandler:v29];
    v17 = [v16 messageDispatcher];
    [v17 sendMessage:v15];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v21;
      v37 = 2080;
      v38 = "[HMCameraStream _issueUpdateAudioStreamSettingRequest:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v11);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_updateAudioVolume:(id)a3 completionHandler:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMCameraSource *)self context];
  if (!v7)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream _updateAudioVolume:completionHandler:]", @"completion"];
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v29;
      v39 = 2112;
      v40 = v25;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0];
    objc_exception_throw(v30);
  }

  v9 = v8;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v14;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating audio volume to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc(MEMORY[0x1E69A2A00]);
    v16 = [(HMCameraSource *)v11 profileUniqueIdentifier];
    v17 = [v15 initWithTarget:v16];

    v35[0] = @"kCameraSessionID";
    v18 = [(HMCameraStream *)v11 sessionID];
    v35[1] = @"HMCameraStreamAudioVolumeSettingMessageKey";
    v36[0] = v18;
    v36[1] = v6;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];

    v20 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMCameraStreamSetAudioVolumeMessage" destination:v17 payload:v19];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __55__HMCameraStream__updateAudioVolume_completionHandler___block_invoke;
    v31[3] = &unk_1E754D030;
    v31[4] = v11;
    v32 = v6;
    v21 = v9;
    v33 = v21;
    v34 = v7;
    [v20 setResponseHandler:v31];
    v22 = [v21 messageDispatcher];
    [v22 sendMessage:v20];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v23;
      v39 = 2080;
      v40 = "[HMCameraStream _updateAudioVolume:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v17);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __55__HMCameraStream__updateAudioVolume_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio volume: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully updated audio volume", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setInternalAudioVolume:*(a1 + 40)];
  }

  v13 = [*(a1 + 48) delegateCaller];
  [v13 callCompletion:*(a1 + 56) error:v5];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_updateAudioStreamSetting:(unint64_t)a3 completionHandler:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMCameraSource *)self context];
  if (!v6)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream _updateAudioStreamSetting:completionHandler:]", @"completion"];
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v27;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v8 = v7;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMCameraAudioStreamSettingAsString(a3);
      *buf = 138543618;
      v34 = v13;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating audio stream setting to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if (a3 - 1 >= 2)
    {
      if (a3 == 3)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = v10;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v34 = v20;
          _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Requesting access for microphone", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        v21 = [v8 queue];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __62__HMCameraStream__updateAudioStreamSetting_completionHandler___block_invoke;
        v29[3] = &unk_1E7547CD0;
        v29[4] = v18;
        v32 = 3;
        v31 = v6;
        v30 = v8;
        __HMPrivacyRequestAccessForService(*MEMORY[0x1E69D5588], v21, v29);
      }
    }

    else
    {
      [(HMCameraStream *)v10 _issueUpdateAudioStreamSettingRequest:a3 completionHandler:v6];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v15;
      v35 = 2080;
      v36 = "[HMCameraStream _updateAudioStreamSetting:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v16);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __62__HMCameraStream__updateAudioStreamSetting_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Request for microphone access was granted", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _issueUpdateAudioStreamSettingRequest:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Request for microphone access was not granted", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:89];
    [v10 _handleAudioStreamSettingUpdate:v11 withError:v12 context:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updateMaximumVideoResolutionQuality:(int64_t)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMCameraSource *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream updateMaximumVideoResolutionQuality:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
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
    block[2] = __72__HMCameraStream_updateMaximumVideoResolutionQuality_completionHandler___block_invoke;
    block[3] = &unk_1E754DB20;
    block[4] = self;
    v24 = a3;
    v23 = v6;
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
      v26 = v13;
      v27 = 2080;
      v28 = "[HMCameraStream updateMaximumVideoResolutionQuality:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateAudioVolume:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMCameraSource *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream updateAudioVolume:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__HMCameraStream_updateAudioVolume_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMCameraStream updateAudioVolume:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateAudioStreamSetting:(HMCameraAudioStreamSetting)audioStreamSetting completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = completion;
  v7 = [(HMCameraSource *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraStream updateAudioStreamSetting:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
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
    block[2] = __61__HMCameraStream_updateAudioStreamSetting_completionHandler___block_invoke;
    block[3] = &unk_1E754DB20;
    block[4] = self;
    v24 = audioStreamSetting;
    v23 = v6;
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
      v26 = v13;
      v27 = 2080;
      v28 = "[HMCameraStream updateAudioStreamSetting:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3 = [(HMCameraSource *)self context];
  v4 = [v3 messageDispatcher];
  [v4 deregisterReceiver:self];

  v5.receiver = self;
  v5.super_class = HMCameraStream;
  [(HMCameraStream *)&v5 dealloc];
}

- (HMCameraStream)initWithProfileUniqueIdentifier:(id)a3 slotIdentifier:(id)a4 aspectRatio:(double)a5 sessionID:(id)a6 audioStreamSetting:(unint64_t)a7 audioDownlinkToken:(int64_t)a8 audioUplinkToken:(int64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  if (!v16)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v17)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (a5 == 0.0)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v19 = v18;
  if (!v18)
  {
LABEL_11:
    v25 = _HMFPreconditionFailure();
    return [(HMCameraStream *)v25 init];
  }

  v27.receiver = self;
  v27.super_class = HMCameraStream;
  v20 = [(HMCameraSource *)&v27 initWithProfileUniqueIdentifier:v16 slotIdentifier:v17 aspectRatio:a5];
  if (v20)
  {
    v21 = [v19 copy];
    sessionID = v20->_sessionID;
    v20->_sessionID = v21;

    v20->_internalAudioStreamSetting = a7;
    internalAudioVolume = v20->_internalAudioVolume;
    v20->_internalAudioVolume = &unk_1F0EFE0F8;

    v20->_audioDownlinkToken = a8;
    v20->_audioUplinkToken = a9;
  }

  return v20;
}

- (HMCameraStream)init
{
  v3.receiver = self;
  v3.super_class = HMCameraStream;
  return [(HMCameraSource *)&v3 init];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t27 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27, &__block_literal_global_61);
  }

  v3 = logCategory__hmf_once_v28;

  return v3;
}

uint64_t __29__HMCameraStream_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v28;
  logCategory__hmf_once_v28 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end
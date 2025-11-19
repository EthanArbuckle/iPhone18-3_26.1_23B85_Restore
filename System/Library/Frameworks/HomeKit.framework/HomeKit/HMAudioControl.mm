@interface HMAudioControl
- (BOOL)isMuted;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMAudioControl)initWithMediaSession:(id)a3;
- (HMAudioControlDelegate)delegate;
- (HMMediaSession)mediaSession;
- (NSUUID)uniqueIdentifier;
- (float)volume;
- (void)__configureWithContext:(id)a3;
- (void)_unconfigure;
- (void)audioControl:(id)a3 didUpdateMuted:(BOOL)a4;
- (void)audioControl:(id)a3 didUpdateVolume:(float)a4;
- (void)setVolume:(float)a3;
- (void)updateVolume:(float)a3 completionHandler:(id)a4;
@end

@implementation HMAudioControl

void __49___HMAudioControl_updateMuted_completionHandler___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"muted";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v15[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v4 = MEMORY[0x1E69A2A10];
  v5 = [*(a1 + 32) messageDestination];
  v6 = [v4 messageWithName:@"HMAC.sa" destination:v5 payload:v3];

  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49___HMAudioControl_updateMuted_completionHandler___block_invoke_2;
  v9[3] = &unk_1E754A018;
  objc_copyWeak(&v11, &location);
  v12 = *(a1 + 56);
  v10 = *(a1 + 48);
  [v6 setResponseHandler:v9];
  v7 = [*(a1 + 40) messageDispatcher];
  [v7 sendMessage:v6 completionHandler:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  v8 = *MEMORY[0x1E69E9840];
}

void __49___HMAudioControl_updateMuted_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v13 = HMFBooleanToString();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set the mute state to %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 setMuted:*(a1 + 48)];
  }

  v14 = [WeakRetained context];
  v15 = [v14 delegateCaller];
  [v15 callCompletion:*(a1 + 32) error:v5];

  v16 = *MEMORY[0x1E69E9840];
}

void __50___HMAudioControl_updateVolume_completionHandler___block_invoke(uint64_t a1, double a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = @"volume";
  LODWORD(a2) = *(a1 + 56);
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v16[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v5 = MEMORY[0x1E69A2A10];
  v6 = [*(a1 + 32) messageDestination];
  v7 = [v5 messageWithName:@"HMAC.sa" destination:v6 payload:v4];

  objc_initWeak(&location, *(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50___HMAudioControl_updateVolume_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7547928;
  objc_copyWeak(&v12, &location);
  v13 = *(a1 + 56);
  v11 = *(a1 + 48);
  [v7 setResponseHandler:v10];
  v8 = [*(a1 + 40) messageDispatcher];
  [v8 sendMessage:v7 completionHandler:0];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x1E69E9840];
}

void __50___HMAudioControl_updateVolume_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      LODWORD(v12) = *(a1 + 48);
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set the volume to %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    LODWORD(v14) = *(a1 + 48);
    [v9 setVolume:v14];
  }

  v15 = [WeakRetained context];
  v16 = [v15 delegateCaller];
  [v16 callCompletion:*(a1 + 32) error:v5];

  v17 = *MEMORY[0x1E69E9840];
}

void __38___HMAudioControl_mergeFromNewObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38___HMAudioControl_mergeFromNewObject___block_invoke_2;
  v5[3] = &unk_1E7547B40;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __38___HMAudioControl_mergeFromNewObject___block_invoke_27(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38___HMAudioControl_mergeFromNewObject___block_invoke_2_28;
  v6[3] = &unk_1E754DC70;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 invokeBlock:v6];
}

uint64_t __38___HMAudioControl_mergeFromNewObject___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    LODWORD(v6) = *(a1 + 48);
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateVolume : %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  LODWORD(v8) = *(a1 + 48);
  result = [*(a1 + 40) audioControl:*(a1 + 32) didUpdateVolume:v8];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (HMMediaSession)mediaSession
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaSession);

  return WeakRetained;
}

- (HMAudioControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)audioControl:(id)a3 didUpdateMuted:(BOOL)a4
{
  v6 = [(HMAudioControl *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HMAudioControl *)self delegate];
    v9 = [(HMAudioControl *)self audioControl];
    v10 = [v9 context];
    v11 = [v10 delegateCaller];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__HMAudioControl_audioControl_didUpdateMuted___block_invoke;
    v13[3] = &unk_1E754DC70;
    v14 = v8;
    v15 = self;
    v16 = a4;
    v12 = v8;
    [v11 invokeBlock:v13];
  }
}

- (void)audioControl:(id)a3 didUpdateVolume:(float)a4
{
  v6 = [(HMAudioControl *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HMAudioControl *)self delegate];
    v9 = [(HMAudioControl *)self audioControl];
    v10 = [v9 context];
    v11 = [v10 delegateCaller];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__HMAudioControl_audioControl_didUpdateVolume___block_invoke;
    v13[3] = &unk_1E7547B40;
    v14 = v8;
    v15 = self;
    v16 = a4;
    v12 = v8;
    [v11 invokeBlock:v13];
  }
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
    v7 = [(HMAudioControl *)self audioControl];
    v8 = [v6 audioControl];
    v9 = [v7 mergeFromNewObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateVolume:(float)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = a4;
  if (a3 < 0.0 || a3 > 1.0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v14;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Volume must be between 0.0 - 1.0", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    objc_exception_throw(*MEMORY[0x1E695DA20]);
  }

  v7 = [(HMAudioControl *)self audioControl];
  *&v8 = a3;
  [v7 updateVolume:v15 completionHandler:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isMuted
{
  v2 = [(HMAudioControl *)self audioControl];
  v3 = [v2 isMuted];

  return v3;
}

- (void)setVolume:(float)a3
{
  v5 = [(HMAudioControl *)self audioControl];
  *&v4 = a3;
  [v5 setVolume:v4];
}

- (float)volume
{
  v2 = [(HMAudioControl *)self audioControl];
  [v2 volume];
  v4 = v3;

  return v4;
}

- (NSUUID)uniqueIdentifier
{
  v2 = [(HMAudioControl *)self audioControl];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (void)_unconfigure
{
  v2 = [(HMAudioControl *)self audioControl];
  [v2 _unconfigure];
}

- (void)__configureWithContext:(id)a3
{
  v4 = a3;
  v5 = [(HMAudioControl *)self audioControl];
  [v5 __configureWithContext:v4];
}

- (HMAudioControl)initWithMediaSession:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMAudioControl;
  v5 = [(HMAudioControl *)&v9 init];
  if (v5)
  {
    v6 = [[_HMAudioControl alloc] initWithMediaSession:v4];
    audioControl = v5->_audioControl;
    v5->_audioControl = v6;

    [(_HMAudioControl *)v5->_audioControl setDelegate:v5];
  }

  return v5;
}

@end
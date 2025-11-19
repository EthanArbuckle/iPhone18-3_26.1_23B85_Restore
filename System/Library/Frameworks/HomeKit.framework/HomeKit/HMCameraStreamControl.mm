@interface HMCameraStreamControl
- (HMCameraStream)cameraStream;
- (HMCameraStreamControl)init;
- (HMCameraStreamControl)initWithStreamControl:(id)a3;
- (HMCameraStreamState)streamState;
- (id)delegate;
- (void)cameraStreamControl:(id)a3 didStopStreamWithError:(id)a4;
- (void)cameraStreamControlDidStartStream:(id)a3;
- (void)setDelegate:(id)delegate;
- (void)startStream;
- (void)startStreamWithPreferences:(id)a3;
- (void)stopStream;
@end

@implementation HMCameraStreamControl

- (void)cameraStreamControl:(id)a3 didStopStreamWithError:(id)a4
{
  v6 = a4;
  v5 = [(HMCameraStreamControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 cameraStreamControl:self didStopStreamWithError:v6];
  }
}

- (void)cameraStreamControlDidStartStream:(id)a3
{
  v4 = [(HMCameraStreamControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 cameraStreamControlDidStartStream:self];
  }
}

- (void)stopStream
{
  v2 = [(HMCameraStreamControl *)self streamControl];
  [v2 stopStream];
}

- (void)startStreamWithPreferences:(id)a3
{
  v4 = a3;
  v5 = [(HMCameraStreamControl *)self streamControl];
  [v5 startStreamWithPreferences:v4];
}

- (void)startStream
{
  v2 = [(HMCameraStreamControl *)self streamControl];
  [v2 startStreamWithPreferences:0];
}

- (HMCameraStream)cameraStream
{
  v2 = [(HMCameraStreamControl *)self streamControl];
  v3 = [v2 cameraStream];

  return v3;
}

- (HMCameraStreamState)streamState
{
  v2 = [(HMCameraStreamControl *)self streamControl];
  v3 = [v2 streamState];

  return v3;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMCameraStreamControl)initWithStreamControl:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMCameraStreamControl;
  v6 = [(HMCameraControl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_streamControl, a3);
    [(_HMCameraStreamControl *)v7->_streamControl setDelegate:v7];
  }

  return v7;
}

- (HMCameraStreamControl)init
{
  v3.receiver = self;
  v3.super_class = HMCameraStreamControl;
  return [(HMCameraControl *)&v3 init];
}

void __61___HMCameraStreamControl__callVideoStoppedDelegateWithError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) hmPublicError];
  [v1 cameraStreamControl:v2 didStopStreamWithError:v3];
}

void __49___HMCameraStreamControl___configureWithContext___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained streamState] == 2)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WeakRetained;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failing active stream due to daemon reconnection", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
    [v3 _resetStateWithError:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __37___HMCameraStreamControl_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v32_66863;
  logCategory__hmf_once_v32_66863 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end
@interface HMCameraSnapshotControl
- (HMCameraSnapshot)mostRecentSnapshot;
- (HMCameraSnapshotControl)init;
- (HMCameraSnapshotControl)initWithSnapshotControl:(id)control;
- (id)delegate;
- (void)cameraSnapshotControl:(id)control didTakeSnapshot:(id)snapshot error:(id)error;
- (void)cameraSnapshotControlDidUpdateMostRecentSnapshot:(id)snapshot;
- (void)fetchCameraSnapshotForBulletinContext:(id)context completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)takeSnapshot;
@end

@implementation HMCameraSnapshotControl

void __67___HMCameraSnapshotControl__notifyDelegateOfDidTakeSnapshot_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) hmPublicError];
  [v1 cameraSnapshotControl:v2 didTakeSnapshot:v3 error:v4];
}

void __41___HMCameraSnapshotControl__takeSnapshot__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 32);
    v14 = 138543874;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response for snapshot request with session ID %@: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [v9 _handleSnapshotDictionary:v6 error:v5 isMostRecent:0];

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __39___HMCameraSnapshotControl_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v22 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

- (void)cameraSnapshotControlDidUpdateMostRecentSnapshot:(id)snapshot
{
  delegate = [(HMCameraSnapshotControl *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F635A0])
  {
    v5 = delegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    [v6 cameraSnapshotControlDidUpdateMostRecentSnapshot:self];
  }
}

- (void)cameraSnapshotControl:(id)control didTakeSnapshot:(id)snapshot error:(id)error
{
  snapshotCopy = snapshot;
  errorCopy = error;
  delegate = [(HMCameraSnapshotControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate cameraSnapshotControl:self didTakeSnapshot:snapshotCopy error:errorCopy];
  }
}

- (void)fetchCameraSnapshotForBulletinContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  snapshotControl = [(HMCameraSnapshotControl *)self snapshotControl];
  [snapshotControl fetchCameraSnapshotForBulletinContext:contextCopy completionHandler:handlerCopy];
}

- (void)takeSnapshot
{
  v4 = objc_alloc(MEMORY[0x1E69A29C0]);
  v5 = MEMORY[0x1E696AEC0];
  v6 = MEMORY[0x19EAEB2A0](self, a2);
  v7 = [v5 stringWithFormat:@"%@, %s:%ld", v6, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Camera/Source/Snapshot/HMCameraSnapshotControl.m", 64];
  v9 = [v4 initWithName:v7];

  snapshotControl = [(HMCameraSnapshotControl *)self snapshotControl];
  [snapshotControl takeSnapshot];

  __HMFActivityScopeLeave();
}

- (HMCameraSnapshot)mostRecentSnapshot
{
  snapshotControl = [(HMCameraSnapshotControl *)self snapshotControl];
  mostRecentSnapshot = [snapshotControl mostRecentSnapshot];

  return mostRecentSnapshot;
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

- (HMCameraSnapshotControl)initWithSnapshotControl:(id)control
{
  controlCopy = control;
  v9.receiver = self;
  v9.super_class = HMCameraSnapshotControl;
  v6 = [(HMCameraControl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshotControl, control);
    [(_HMCameraSnapshotControl *)v7->_snapshotControl setDelegate:v7];
  }

  return v7;
}

- (HMCameraSnapshotControl)init
{
  v3.receiver = self;
  v3.super_class = HMCameraSnapshotControl;
  return [(HMCameraControl *)&v3 init];
}

@end
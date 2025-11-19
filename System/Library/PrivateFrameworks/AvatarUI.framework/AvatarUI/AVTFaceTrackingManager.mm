@interface AVTFaceTrackingManager
+ (double)desiredUserInfoLabelAlphaForFaceTrackingState:(BOOL)a3;
- (AVTFaceTrackingManager)initWithAvatarView:(id)a3 environment:(id)a4;
- (AVTFaceTrackingManager)initWithAvatarView:(id)a3 userInfoView:(id)a4 environment:(id)a5;
- (AVTFaceTrackingManagerDelegate)delegate;
- (id)userInfoStringForCurrentTrackingState;
- (void)avatarView:(id)a3 didUpdateWithFaceTrackingStatus:(BOOL)a4;
- (void)avatarView:(id)a3 faceTrackingSessionFailedWithError:(id)a4;
- (void)avatarViewDidUpdateWithLowLightOrCameraOcclusionStatus;
- (void)avatarViewFaceTrackingSessionInterruptionDidBegin:(id)a3;
- (void)avatarViewFaceTrackingSessionInterruptionDidEnd:(id)a3;
- (void)cancelLowLightAndSensorOcclusionTimer;
- (void)dealloc;
- (void)invalidateFaceTrackingTimers;
- (void)layoutMonitorDidUpdateDisplayLayout:(id)a3 withContext:(id)a4;
- (void)resetForResumingTrackingAnimated:(BOOL)a3;
- (void)resetForTrackingFoundAFaceAnimated:(BOOL)a3;
- (void)resumeFaceTrackingIfNeededAnimated:(BOOL)a3;
- (void)setFaceTrackingManagementPaused:(BOOL)a3;
- (void)setupDisplayLayoutMonitor;
- (void)startTrackingLostTimers;
- (void)updateForPausingTrackingWithLabel:(BOOL)a3;
- (void)updateForTrackingLost;
- (void)updateInterruptionTypeIfNeeded:(unint64_t)a3;
- (void)updateUserInfoBackdropForCurrentLabel;
- (void)updateUserInfoLabelAlphaForFaceTrackingState:(BOOL)a3;
- (void)updateUserInfoLabelAlphaForFaceTrackingState:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation AVTFaceTrackingManager

+ (double)desiredUserInfoLabelAlphaForFaceTrackingState:(BOOL)a3
{
  result = 1.0;
  if (a3)
  {
    return 0.0;
  }

  return result;
}

- (AVTFaceTrackingManager)initWithAvatarView:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [AVTUserInfoView alloc];
  v9 = [(AVTUserInfoView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = [(AVTFaceTrackingManager *)self initWithAvatarView:v7 userInfoView:v9 environment:v6];

  return v10;
}

- (AVTFaceTrackingManager)initWithAvatarView:(id)a3 userInfoView:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = AVTFaceTrackingManager;
  v12 = [(AVTFaceTrackingManager *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_environment, a5);
    objc_storeStrong(&v13->_avatarView, a3);
    [v9 setFaceTrackingDelegate:v13];
    objc_storeStrong(&v13->_userInfoView, a4);
    [v10 setUserInteractionEnabled:0];
    [(AVTUserInfoView *)v13->_userInfoView setAlpha:0.0];
    v14 = MGCopyAnswer();
    v15 = [v14 copy];
    localizedDeviceName = v13->_localizedDeviceName;
    v13->_localizedDeviceName = v15;

    [(AVTFaceTrackingManager *)v13 setupDisplayLayoutMonitor];
  }

  return v13;
}

- (void)dealloc
{
  v3 = [(AVTFaceTrackingManager *)self displayLayoutMonitor];
  [v3 invalidate];

  [(AVTFaceTrackingManager *)self invalidateFaceTrackingTimers];
  [(AVTFaceTrackingManager *)self cancelLowLightAndSensorOcclusionTimer];
  v4.receiver = self;
  v4.super_class = AVTFaceTrackingManager;
  [(AVTFaceTrackingManager *)&v4 dealloc];
}

- (void)setFaceTrackingManagementPaused:(BOOL)a3
{
  if (self->_faceTrackingManagementPaused != a3)
  {
    self->_faceTrackingManagementPaused = a3;
    if (a3)
    {
      [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:1 animated:0];
      [(AVTFaceTrackingManager *)self resetForResumingTrackingAnimated:0];

      [(AVTFaceTrackingManager *)self cancelLowLightAndSensorOcclusionTimer];
    }

    else
    {
      v4 = [(AVTFaceTrackingManager *)self avatarView];
      v5 = [v4 faceIsTracked];

      if ((v5 & 1) == 0)
      {

        [(AVTFaceTrackingManager *)self startTrackingLostTimers];
      }
    }
  }
}

- (void)resumeFaceTrackingIfNeededAnimated:(BOOL)a3
{
  [(AVTFaceTrackingManager *)self resetForResumingTrackingAnimated:a3];
  v4 = [(AVTFaceTrackingManager *)self avatarView];
  v5 = [v4 faceIsTracked];

  if ((v5 & 1) == 0)
  {

    [(AVTFaceTrackingManager *)self startTrackingLostTimers];
  }
}

- (void)updateInterruptionTypeIfNeeded:(unint64_t)a3
{
  if ([(AVTFaceTrackingManager *)self interruptionType]< a3)
  {

    [(AVTFaceTrackingManager *)self setInterruptionType:a3];
  }
}

- (void)updateUserInfoBackdropForCurrentLabel
{
  v3 = [(AVTFaceTrackingManager *)self userInfoView];
  [v3 sizeToFit];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    v6 = [(AVTFaceTrackingManager *)self userInfoView];
    [v6 bounds];
    [v9 faceTrackingManager:self didUpdateUserInfoWithSize:{v7, v8}];
  }
}

- (void)resetForTrackingFoundAFaceAnimated:(BOOL)a3
{
  v3 = a3;
  [(AVTFaceTrackingManager *)self invalidateFaceTrackingTimers];

  [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:1 animated:v3];
}

- (void)resetForResumingTrackingAnimated:(BOOL)a3
{
  [(AVTFaceTrackingManager *)self invalidateFaceTrackingTimers];
  v4 = [(AVTFaceTrackingManager *)self avatarView];
  [v4 setFaceTrackingPaused:0];

  v5 = [(AVTFaceTrackingManager *)self userInfoStringForCurrentTrackingState];
  v6 = [(AVTFaceTrackingManager *)self userInfoView];
  [v6 setText:v5];

  [(AVTFaceTrackingManager *)self updateUserInfoBackdropForCurrentLabel];
  v7 = [(AVTFaceTrackingManager *)self avatarView];
  LODWORD(v6) = [v7 faceIsTracked];

  if (v6)
  {
    [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:1 animated:1];
  }

  v8 = [(AVTFaceTrackingManager *)self environment];
  v9 = [v8 usageTrackingSession];
  [v9 didResumeFaceTracking];

  [(AVTFaceTrackingManager *)self setInterruptionType:0];
}

- (void)updateUserInfoLabelAlphaForFaceTrackingState:(BOOL)a3
{
  if (a3)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = [(AVTFaceTrackingManager *)self userInfoView];
  [v4 setAlpha:v3];
}

- (void)updateUserInfoLabelAlphaForFaceTrackingState:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(AVTFaceTrackingManager *)self userInfoView];
  [v7 alpha];
  v9 = v8;
  [objc_opt_class() desiredUserInfoLabelAlphaForFaceTrackingState:v5];
  v11 = v10;

  if (v9 != v11)
  {
    if (v4)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __80__AVTFaceTrackingManager_updateUserInfoLabelAlphaForFaceTrackingState_animated___block_invoke;
      v12[3] = &unk_1E7F3B910;
      v12[4] = self;
      v13 = v5;
      [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.5];
    }

    else
    {

      [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:v5];
    }
  }
}

- (void)invalidateFaceTrackingTimers
{
  v3 = [(AVTFaceTrackingManager *)self trackingLostMessageTimer];
  [v3 invalidate];

  [(AVTFaceTrackingManager *)self setTrackingLostMessageTimer:0];
  v4 = [(AVTFaceTrackingManager *)self pauseTrackingTimer];
  [v4 invalidate];

  [(AVTFaceTrackingManager *)self setPauseTrackingTimer:0];
}

- (void)startTrackingLostTimers
{
  v3 = [(AVTFaceTrackingManager *)self pauseTrackingTimer];

  if (!v3 && ![(AVTFaceTrackingManager *)self faceTrackingManagementPaused])
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E695DFF0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__AVTFaceTrackingManager_startTrackingLostTimers__block_invoke;
    v15[3] = &unk_1E7F3B938;
    objc_copyWeak(&v16, &location);
    v5 = [v4 timerWithTimeInterval:0 repeats:v15 block:2.0];
    [(AVTFaceTrackingManager *)self setTrackingLostMessageTimer:v5];

    v6 = MEMORY[0x1E695DFF0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__AVTFaceTrackingManager_startTrackingLostTimers__block_invoke_2;
    v13[3] = &unk_1E7F3B938;
    objc_copyWeak(&v14, &location);
    v7 = [v6 timerWithTimeInterval:0 repeats:v13 block:10.0];
    [(AVTFaceTrackingManager *)self setPauseTrackingTimer:v7];

    v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
    v9 = [(AVTFaceTrackingManager *)self pauseTrackingTimer];
    v10 = *MEMORY[0x1E695DA28];
    [v8 addTimer:v9 forMode:*MEMORY[0x1E695DA28]];

    v11 = [MEMORY[0x1E695DFD0] mainRunLoop];
    v12 = [(AVTFaceTrackingManager *)self trackingLostMessageTimer];
    [v11 addTimer:v12 forMode:v10];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __49__AVTFaceTrackingManager_startTrackingLostTimers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateForTrackingLost];
  [WeakRetained setTrackingLostMessageTimer:0];
}

void __49__AVTFaceTrackingManager_startTrackingLostTimers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateForPausingTracking];
}

- (void)updateForTrackingLost
{
  v3 = [(AVTFaceTrackingManager *)self userInfoStringForCurrentTrackingState];
  v4 = [(AVTFaceTrackingManager *)self userInfoView];
  [v4 setText:v3];

  [(AVTFaceTrackingManager *)self updateUserInfoBackdropForCurrentLabel];

  [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:0 animated:1];
}

- (void)updateForPausingTrackingWithLabel:(BOOL)a3
{
  v3 = a3;
  [(AVTFaceTrackingManager *)self cancelLowLightAndSensorOcclusionTimer];
  if (v3)
  {
    v5 = AVTAvatarUIBundle();
    v6 = [v5 localizedStringForKey:@"TAP_TO_RESUME" value:&stru_1F39618F0 table:@"Localized"];
    v7 = [(AVTFaceTrackingManager *)self userInfoView];
    [v7 setText:v6];

    [(AVTFaceTrackingManager *)self updateUserInfoBackdropForCurrentLabel];
  }

  [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:!v3 animated:1];
  v8 = [(AVTFaceTrackingManager *)self avatarView];
  [v8 setFaceTrackingPaused:1];

  [(AVTFaceTrackingManager *)self setPauseTrackingTimer:0];
  [(AVTFaceTrackingManager *)self updateInterruptionTypeIfNeeded:1];
  v10 = [(AVTFaceTrackingManager *)self environment];
  v9 = [v10 usageTrackingSession];
  [v9 didPauseFaceTracking];
}

- (id)userInfoStringForCurrentTrackingState
{
  v3 = [(AVTFaceTrackingManager *)self environment];
  if (([v3 deviceIsPad] & 1) == 0)
  {

    goto LABEL_5;
  }

  v4 = [(AVTFaceTrackingManager *)self delegate];
  v5 = [v4 interfaceOrientationForFaceTrackingManager:self];

  if (v5 != 2)
  {
LABEL_5:
    v11 = [(AVTFaceTrackingManager *)self avatarView];
    v12 = [v11 isSensorCovered];

    if (v12)
    {
      v13 = AVTAvatarUIBundle();
      v7 = v13;
      v14 = @"CAMERA_COVERED";
    }

    else
    {
      v15 = [(AVTFaceTrackingManager *)self avatarView];
      v16 = [v15 captureImageIsTooDark];

      v13 = AVTAvatarUIBundle();
      v7 = v13;
      if (v16)
      {
        v14 = @"LOW_LIGHT";
      }

      else
      {
        v14 = @"TRACKING_LOST";
      }
    }

    v10 = [v13 localizedStringForKey:v14 value:&stru_1F39618F0 table:@"Localized"];
    goto LABEL_11;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = AVTAvatarUIBundle();
  v8 = [v7 localizedStringForKey:@"ROTATE_DEVICE" value:&stru_1F39618F0 table:@"Localized"];
  v9 = [(AVTFaceTrackingManager *)self localizedDeviceName];
  v10 = [v6 stringWithFormat:v8, v9];

LABEL_11:

  return v10;
}

- (void)avatarView:(id)a3 didUpdateWithFaceTrackingStatus:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AVTFaceTrackingManager_avatarView_didUpdateWithFaceTrackingStatus___block_invoke;
  v4[3] = &unk_1E7F3B910;
  v4[4] = self;
  v5 = a4;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

uint64_t __69__AVTFaceTrackingManager_avatarView_didUpdateWithFaceTrackingStatus___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) faceTrackingManagementPaused];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) interruptionType];
    if (!result)
    {
      v3 = *(a1 + 32);
      if (*(a1 + 40) == 1)
      {

        return [v3 resetForTrackingFoundAFaceAnimated:1];
      }

      else
      {

        return [v3 startTrackingLostTimers];
      }
    }
  }

  return result;
}

- (void)cancelLowLightAndSensorOcclusionTimer
{
  v3 = [(AVTFaceTrackingManager *)self lowLightAndSensorOcclusionLockoutTimer];
  [v3 invalidate];

  [(AVTFaceTrackingManager *)self setLowLightAndSensorOcclusionLockoutTimer:0];

  [(AVTFaceTrackingManager *)self setShouldRecheckLowLightAndSensorOcclusionState:0];
}

- (void)avatarViewDidUpdateWithLowLightOrCameraOcclusionStatus
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__AVTFaceTrackingManager_avatarViewDidUpdateWithLowLightOrCameraOcclusionStatus__block_invoke;
  block[3] = &unk_1E7F3A9B8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__AVTFaceTrackingManager_avatarViewDidUpdateWithLowLightOrCameraOcclusionStatus__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) faceTrackingManagementPaused] & 1) != 0 || objc_msgSend(*(a1 + 32), "interruptionType") && objc_msgSend(*(a1 + 32), "interruptionType") != 1)
  {
    return;
  }

  v2 = [*(a1 + 32) lowLightAndSensorOcclusionLockoutTimer];

  v3 = *(a1 + 32);
  if (!v2)
  {
    v4 = [v3 avatarView];
    if ([v4 faceIsTracked])
    {
      v5 = [*(a1 + 32) avatarView];
      if (![v5 captureImageIsTooDark])
      {
        v13 = [*(a1 + 32) avatarView];
        v14 = [v13 isSensorCovered];

        if ((v14 & 1) == 0)
        {
          v8 = 1;
          goto LABEL_13;
        }

LABEL_12:
        v6 = [*(a1 + 32) userInfoStringForCurrentTrackingState];
        v7 = [*(a1 + 32) userInfoView];
        [v7 setText:v6];

        [*(a1 + 32) updateUserInfoBackdropForCurrentLabel];
        v8 = 0;
LABEL_13:
        [*(a1 + 32) updateUserInfoLabelAlphaForFaceTrackingState:v8 animated:1];
        objc_initWeak(&location, *(a1 + 32));
        v9 = MEMORY[0x1E695DFF0];
        v15 = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = __80__AVTFaceTrackingManager_avatarViewDidUpdateWithLowLightOrCameraOcclusionStatus__block_invoke_2;
        v18 = &unk_1E7F3B938;
        objc_copyWeak(&v19, &location);
        v10 = [v9 timerWithTimeInterval:0 repeats:&v15 block:1.0];
        [*(a1 + 32) setLowLightAndSensorOcclusionLockoutTimer:{v10, v15, v16, v17, v18}];

        v11 = [MEMORY[0x1E695DFD0] mainRunLoop];
        v12 = [*(a1 + 32) lowLightAndSensorOcclusionLockoutTimer];
        [v11 addTimer:v12 forMode:*MEMORY[0x1E695DA28]];

        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
        return;
      }
    }

    goto LABEL_12;
  }

  [v3 setShouldRecheckLowLightAndSensorOcclusionState:1];
}

void __80__AVTFaceTrackingManager_avatarViewDidUpdateWithLowLightOrCameraOcclusionStatus__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained shouldRecheckLowLightAndSensorOcclusionState])
  {
    [WeakRetained setLowLightAndSensorOcclusionLockoutTimer:0];
    [WeakRetained avatarViewDidUpdateWithLowLightOrCameraOcclusionStatus];
  }
}

- (void)avatarView:(id)a3 faceTrackingSessionFailedWithError:(id)a4
{
  if (![(AVTFaceTrackingManager *)self faceTrackingManagementPaused:a3])
  {
    [(AVTFaceTrackingManager *)self updateInterruptionTypeIfNeeded:4];
    [(AVTFaceTrackingManager *)self invalidateFaceTrackingTimers];
    [(AVTFaceTrackingManager *)self cancelLowLightAndSensorOcclusionTimer];
    v5 = [(AVTFaceTrackingManager *)self avatarView];
    [v5 setFaceTrackingPaused:1];

    v6 = AVTAvatarUIBundle();
    v7 = [v6 localizedStringForKey:@"FACE_TRACKING_FAILED" value:&stru_1F39618F0 table:@"Localized"];
    v8 = [(AVTFaceTrackingManager *)self userInfoView];
    [v8 setText:v7];

    [(AVTFaceTrackingManager *)self updateUserInfoBackdropForCurrentLabel];

    [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:0 animated:1];
  }
}

- (void)avatarViewFaceTrackingSessionInterruptionDidBegin:(id)a3
{
  if (![(AVTFaceTrackingManager *)self faceTrackingManagementPaused])
  {
    [(AVTFaceTrackingManager *)self updateInterruptionTypeIfNeeded:2];
    if ([(AVTFaceTrackingManager *)self interruptionType]== 2)
    {
      [(AVTFaceTrackingManager *)self invalidateFaceTrackingTimers];
      [(AVTFaceTrackingManager *)self cancelLowLightAndSensorOcclusionTimer];
      v4 = AVTAvatarUIBundle();
      v5 = [v4 localizedStringForKey:@"SESSION_INTERRUPTED" value:&stru_1F39618F0 table:@"Localized"];
      v6 = [(AVTFaceTrackingManager *)self userInfoView];
      [v6 setText:v5];

      [(AVTFaceTrackingManager *)self updateUserInfoBackdropForCurrentLabel];

      [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:0 animated:1];
    }
  }
}

- (void)avatarViewFaceTrackingSessionInterruptionDidEnd:(id)a3
{
  if (![(AVTFaceTrackingManager *)self faceTrackingManagementPaused]&& [(AVTFaceTrackingManager *)self interruptionType]== 2)
  {

    [(AVTFaceTrackingManager *)self resumeFaceTrackingIfNeededAnimated:1];
  }
}

- (void)setupDisplayLayoutMonitor
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __51__AVTFaceTrackingManager_setupDisplayLayoutMonitor__block_invoke;
  v9 = &unk_1E7F3D280;
  objc_copyWeak(&v10, &location);
  [v3 setTransitionHandler:&v6];
  v4 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:{v3, v6, v7, v8, v9}];
  displayLayoutMonitor = self->_displayLayoutMonitor;
  self->_displayLayoutMonitor = v4;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __51__AVTFaceTrackingManager_setupDisplayLayoutMonitor__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutMonitorDidUpdateDisplayLayout:v7 withContext:v6];
}

- (void)layoutMonitorDidUpdateDisplayLayout:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__AVTFaceTrackingManager_layoutMonitorDidUpdateDisplayLayout_withContext___block_invoke;
  v7[3] = &unk_1E7F3AD60;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __74__AVTFaceTrackingManager_layoutMonitorDidUpdateDisplayLayout_withContext___block_invoke(uint64_t a1)
{
  v1 = a1;
  v28 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) faceTrackingManagementPaused];
  if ((result & 1) == 0)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [*(v1 + 40) elements];
    v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v3)
    {
      v4 = v3;
      v22 = *v24;
      v5 = *MEMORY[0x1E699F898];
      v6 = *MEMORY[0x1E699F8A0];
      v7 = *MEMORY[0x1E699F8B0];
      v21 = *MEMORY[0x1E699F8A8];
      v19 = v1;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v24 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v10 = [v9 identifier];
          if ([v10 isEqualToString:v5])
          {
            goto LABEL_17;
          }

          v11 = [v9 identifier];
          if ([v11 isEqualToString:v6])
          {
            goto LABEL_16;
          }

          v12 = [v9 identifier];
          if ([v12 isEqualToString:v7])
          {

LABEL_16:
LABEL_17:

LABEL_18:
            v15 = 1;
            v1 = v19;
            goto LABEL_19;
          }

          v13 = [v9 identifier];
          v14 = [v13 isEqualToString:v21];

          if (v14)
          {
            goto LABEL_18;
          }
        }

        v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        v15 = 0;
        v1 = v19;
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_19:

    v16 = [*(v1 + 32) interruptionType];
    v17 = *(v1 + 32);
    if (v15 && v16 <= 2)
    {
      [v17 updateInterruptionTypeIfNeeded:3];
      [*(v1 + 32) invalidateFaceTrackingTimers];
      return [*(v1 + 32) updateForPausingTrackingWithLabel:0];
    }

    else
    {
      result = [v17 interruptionType];
      if (result == 3)
      {
        v18 = v15;
      }

      else
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        return [*(v1 + 32) resumeFaceTrackingIfNeededAnimated:1];
      }
    }
  }

  return result;
}

- (AVTFaceTrackingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
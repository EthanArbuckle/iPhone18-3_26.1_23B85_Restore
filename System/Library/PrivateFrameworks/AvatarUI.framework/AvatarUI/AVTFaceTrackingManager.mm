@interface AVTFaceTrackingManager
+ (double)desiredUserInfoLabelAlphaForFaceTrackingState:(BOOL)state;
- (AVTFaceTrackingManager)initWithAvatarView:(id)view environment:(id)environment;
- (AVTFaceTrackingManager)initWithAvatarView:(id)view userInfoView:(id)infoView environment:(id)environment;
- (AVTFaceTrackingManagerDelegate)delegate;
- (id)userInfoStringForCurrentTrackingState;
- (void)avatarView:(id)view didUpdateWithFaceTrackingStatus:(BOOL)status;
- (void)avatarView:(id)view faceTrackingSessionFailedWithError:(id)error;
- (void)avatarViewDidUpdateWithLowLightOrCameraOcclusionStatus;
- (void)avatarViewFaceTrackingSessionInterruptionDidBegin:(id)begin;
- (void)avatarViewFaceTrackingSessionInterruptionDidEnd:(id)end;
- (void)cancelLowLightAndSensorOcclusionTimer;
- (void)dealloc;
- (void)invalidateFaceTrackingTimers;
- (void)layoutMonitorDidUpdateDisplayLayout:(id)layout withContext:(id)context;
- (void)resetForResumingTrackingAnimated:(BOOL)animated;
- (void)resetForTrackingFoundAFaceAnimated:(BOOL)animated;
- (void)resumeFaceTrackingIfNeededAnimated:(BOOL)animated;
- (void)setFaceTrackingManagementPaused:(BOOL)paused;
- (void)setupDisplayLayoutMonitor;
- (void)startTrackingLostTimers;
- (void)updateForPausingTrackingWithLabel:(BOOL)label;
- (void)updateForTrackingLost;
- (void)updateInterruptionTypeIfNeeded:(unint64_t)needed;
- (void)updateUserInfoBackdropForCurrentLabel;
- (void)updateUserInfoLabelAlphaForFaceTrackingState:(BOOL)state;
- (void)updateUserInfoLabelAlphaForFaceTrackingState:(BOOL)state animated:(BOOL)animated;
@end

@implementation AVTFaceTrackingManager

+ (double)desiredUserInfoLabelAlphaForFaceTrackingState:(BOOL)state
{
  result = 1.0;
  if (state)
  {
    return 0.0;
  }

  return result;
}

- (AVTFaceTrackingManager)initWithAvatarView:(id)view environment:(id)environment
{
  environmentCopy = environment;
  viewCopy = view;
  v8 = [AVTUserInfoView alloc];
  v9 = [(AVTUserInfoView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = [(AVTFaceTrackingManager *)self initWithAvatarView:viewCopy userInfoView:v9 environment:environmentCopy];

  return v10;
}

- (AVTFaceTrackingManager)initWithAvatarView:(id)view userInfoView:(id)infoView environment:(id)environment
{
  viewCopy = view;
  infoViewCopy = infoView;
  environmentCopy = environment;
  v18.receiver = self;
  v18.super_class = AVTFaceTrackingManager;
  v12 = [(AVTFaceTrackingManager *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_environment, environment);
    objc_storeStrong(&v13->_avatarView, view);
    [viewCopy setFaceTrackingDelegate:v13];
    objc_storeStrong(&v13->_userInfoView, infoView);
    [infoViewCopy setUserInteractionEnabled:0];
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
  displayLayoutMonitor = [(AVTFaceTrackingManager *)self displayLayoutMonitor];
  [displayLayoutMonitor invalidate];

  [(AVTFaceTrackingManager *)self invalidateFaceTrackingTimers];
  [(AVTFaceTrackingManager *)self cancelLowLightAndSensorOcclusionTimer];
  v4.receiver = self;
  v4.super_class = AVTFaceTrackingManager;
  [(AVTFaceTrackingManager *)&v4 dealloc];
}

- (void)setFaceTrackingManagementPaused:(BOOL)paused
{
  if (self->_faceTrackingManagementPaused != paused)
  {
    self->_faceTrackingManagementPaused = paused;
    if (paused)
    {
      [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:1 animated:0];
      [(AVTFaceTrackingManager *)self resetForResumingTrackingAnimated:0];

      [(AVTFaceTrackingManager *)self cancelLowLightAndSensorOcclusionTimer];
    }

    else
    {
      avatarView = [(AVTFaceTrackingManager *)self avatarView];
      faceIsTracked = [avatarView faceIsTracked];

      if ((faceIsTracked & 1) == 0)
      {

        [(AVTFaceTrackingManager *)self startTrackingLostTimers];
      }
    }
  }
}

- (void)resumeFaceTrackingIfNeededAnimated:(BOOL)animated
{
  [(AVTFaceTrackingManager *)self resetForResumingTrackingAnimated:animated];
  avatarView = [(AVTFaceTrackingManager *)self avatarView];
  faceIsTracked = [avatarView faceIsTracked];

  if ((faceIsTracked & 1) == 0)
  {

    [(AVTFaceTrackingManager *)self startTrackingLostTimers];
  }
}

- (void)updateInterruptionTypeIfNeeded:(unint64_t)needed
{
  if ([(AVTFaceTrackingManager *)self interruptionType]< needed)
  {

    [(AVTFaceTrackingManager *)self setInterruptionType:needed];
  }
}

- (void)updateUserInfoBackdropForCurrentLabel
{
  userInfoView = [(AVTFaceTrackingManager *)self userInfoView];
  [userInfoView sizeToFit];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    userInfoView2 = [(AVTFaceTrackingManager *)self userInfoView];
    [userInfoView2 bounds];
    [v9 faceTrackingManager:self didUpdateUserInfoWithSize:{v7, v8}];
  }
}

- (void)resetForTrackingFoundAFaceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(AVTFaceTrackingManager *)self invalidateFaceTrackingTimers];

  [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:1 animated:animatedCopy];
}

- (void)resetForResumingTrackingAnimated:(BOOL)animated
{
  [(AVTFaceTrackingManager *)self invalidateFaceTrackingTimers];
  avatarView = [(AVTFaceTrackingManager *)self avatarView];
  [avatarView setFaceTrackingPaused:0];

  userInfoStringForCurrentTrackingState = [(AVTFaceTrackingManager *)self userInfoStringForCurrentTrackingState];
  userInfoView = [(AVTFaceTrackingManager *)self userInfoView];
  [userInfoView setText:userInfoStringForCurrentTrackingState];

  [(AVTFaceTrackingManager *)self updateUserInfoBackdropForCurrentLabel];
  avatarView2 = [(AVTFaceTrackingManager *)self avatarView];
  LODWORD(userInfoView) = [avatarView2 faceIsTracked];

  if (userInfoView)
  {
    [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:1 animated:1];
  }

  environment = [(AVTFaceTrackingManager *)self environment];
  usageTrackingSession = [environment usageTrackingSession];
  [usageTrackingSession didResumeFaceTracking];

  [(AVTFaceTrackingManager *)self setInterruptionType:0];
}

- (void)updateUserInfoLabelAlphaForFaceTrackingState:(BOOL)state
{
  if (state)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  userInfoView = [(AVTFaceTrackingManager *)self userInfoView];
  [userInfoView setAlpha:v3];
}

- (void)updateUserInfoLabelAlphaForFaceTrackingState:(BOOL)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  userInfoView = [(AVTFaceTrackingManager *)self userInfoView];
  [userInfoView alpha];
  v9 = v8;
  [objc_opt_class() desiredUserInfoLabelAlphaForFaceTrackingState:stateCopy];
  v11 = v10;

  if (v9 != v11)
  {
    if (animatedCopy)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __80__AVTFaceTrackingManager_updateUserInfoLabelAlphaForFaceTrackingState_animated___block_invoke;
      v12[3] = &unk_1E7F3B910;
      v12[4] = self;
      v13 = stateCopy;
      [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.5];
    }

    else
    {

      [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:stateCopy];
    }
  }
}

- (void)invalidateFaceTrackingTimers
{
  trackingLostMessageTimer = [(AVTFaceTrackingManager *)self trackingLostMessageTimer];
  [trackingLostMessageTimer invalidate];

  [(AVTFaceTrackingManager *)self setTrackingLostMessageTimer:0];
  pauseTrackingTimer = [(AVTFaceTrackingManager *)self pauseTrackingTimer];
  [pauseTrackingTimer invalidate];

  [(AVTFaceTrackingManager *)self setPauseTrackingTimer:0];
}

- (void)startTrackingLostTimers
{
  pauseTrackingTimer = [(AVTFaceTrackingManager *)self pauseTrackingTimer];

  if (!pauseTrackingTimer && ![(AVTFaceTrackingManager *)self faceTrackingManagementPaused])
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

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    pauseTrackingTimer2 = [(AVTFaceTrackingManager *)self pauseTrackingTimer];
    v10 = *MEMORY[0x1E695DA28];
    [mainRunLoop addTimer:pauseTrackingTimer2 forMode:*MEMORY[0x1E695DA28]];

    mainRunLoop2 = [MEMORY[0x1E695DFD0] mainRunLoop];
    trackingLostMessageTimer = [(AVTFaceTrackingManager *)self trackingLostMessageTimer];
    [mainRunLoop2 addTimer:trackingLostMessageTimer forMode:v10];

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
  userInfoStringForCurrentTrackingState = [(AVTFaceTrackingManager *)self userInfoStringForCurrentTrackingState];
  userInfoView = [(AVTFaceTrackingManager *)self userInfoView];
  [userInfoView setText:userInfoStringForCurrentTrackingState];

  [(AVTFaceTrackingManager *)self updateUserInfoBackdropForCurrentLabel];

  [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:0 animated:1];
}

- (void)updateForPausingTrackingWithLabel:(BOOL)label
{
  labelCopy = label;
  [(AVTFaceTrackingManager *)self cancelLowLightAndSensorOcclusionTimer];
  if (labelCopy)
  {
    v5 = AVTAvatarUIBundle();
    v6 = [v5 localizedStringForKey:@"TAP_TO_RESUME" value:&stru_1F39618F0 table:@"Localized"];
    userInfoView = [(AVTFaceTrackingManager *)self userInfoView];
    [userInfoView setText:v6];

    [(AVTFaceTrackingManager *)self updateUserInfoBackdropForCurrentLabel];
  }

  [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:!labelCopy animated:1];
  avatarView = [(AVTFaceTrackingManager *)self avatarView];
  [avatarView setFaceTrackingPaused:1];

  [(AVTFaceTrackingManager *)self setPauseTrackingTimer:0];
  [(AVTFaceTrackingManager *)self updateInterruptionTypeIfNeeded:1];
  environment = [(AVTFaceTrackingManager *)self environment];
  usageTrackingSession = [environment usageTrackingSession];
  [usageTrackingSession didPauseFaceTracking];
}

- (id)userInfoStringForCurrentTrackingState
{
  environment = [(AVTFaceTrackingManager *)self environment];
  if (([environment deviceIsPad] & 1) == 0)
  {

    goto LABEL_5;
  }

  delegate = [(AVTFaceTrackingManager *)self delegate];
  v5 = [delegate interfaceOrientationForFaceTrackingManager:self];

  if (v5 != 2)
  {
LABEL_5:
    avatarView = [(AVTFaceTrackingManager *)self avatarView];
    isSensorCovered = [avatarView isSensorCovered];

    if (isSensorCovered)
    {
      v13 = AVTAvatarUIBundle();
      v7 = v13;
      v14 = @"CAMERA_COVERED";
    }

    else
    {
      avatarView2 = [(AVTFaceTrackingManager *)self avatarView];
      captureImageIsTooDark = [avatarView2 captureImageIsTooDark];

      v13 = AVTAvatarUIBundle();
      v7 = v13;
      if (captureImageIsTooDark)
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
  localizedDeviceName = [(AVTFaceTrackingManager *)self localizedDeviceName];
  v10 = [v6 stringWithFormat:v8, localizedDeviceName];

LABEL_11:

  return v10;
}

- (void)avatarView:(id)view didUpdateWithFaceTrackingStatus:(BOOL)status
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AVTFaceTrackingManager_avatarView_didUpdateWithFaceTrackingStatus___block_invoke;
  v4[3] = &unk_1E7F3B910;
  v4[4] = self;
  statusCopy = status;
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
  lowLightAndSensorOcclusionLockoutTimer = [(AVTFaceTrackingManager *)self lowLightAndSensorOcclusionLockoutTimer];
  [lowLightAndSensorOcclusionLockoutTimer invalidate];

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

- (void)avatarView:(id)view faceTrackingSessionFailedWithError:(id)error
{
  if (![(AVTFaceTrackingManager *)self faceTrackingManagementPaused:view])
  {
    [(AVTFaceTrackingManager *)self updateInterruptionTypeIfNeeded:4];
    [(AVTFaceTrackingManager *)self invalidateFaceTrackingTimers];
    [(AVTFaceTrackingManager *)self cancelLowLightAndSensorOcclusionTimer];
    avatarView = [(AVTFaceTrackingManager *)self avatarView];
    [avatarView setFaceTrackingPaused:1];

    v6 = AVTAvatarUIBundle();
    v7 = [v6 localizedStringForKey:@"FACE_TRACKING_FAILED" value:&stru_1F39618F0 table:@"Localized"];
    userInfoView = [(AVTFaceTrackingManager *)self userInfoView];
    [userInfoView setText:v7];

    [(AVTFaceTrackingManager *)self updateUserInfoBackdropForCurrentLabel];

    [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:0 animated:1];
  }
}

- (void)avatarViewFaceTrackingSessionInterruptionDidBegin:(id)begin
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
      userInfoView = [(AVTFaceTrackingManager *)self userInfoView];
      [userInfoView setText:v5];

      [(AVTFaceTrackingManager *)self updateUserInfoBackdropForCurrentLabel];

      [(AVTFaceTrackingManager *)self updateUserInfoLabelAlphaForFaceTrackingState:0 animated:1];
    }
  }
}

- (void)avatarViewFaceTrackingSessionInterruptionDidEnd:(id)end
{
  if (![(AVTFaceTrackingManager *)self faceTrackingManagementPaused]&& [(AVTFaceTrackingManager *)self interruptionType]== 2)
  {

    [(AVTFaceTrackingManager *)self resumeFaceTrackingIfNeededAnimated:1];
  }
}

- (void)setupDisplayLayoutMonitor
{
  objc_initWeak(&location, self);
  configurationForDefaultMainDisplayMonitor = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __51__AVTFaceTrackingManager_setupDisplayLayoutMonitor__block_invoke;
  v9 = &unk_1E7F3D280;
  objc_copyWeak(&v10, &location);
  [configurationForDefaultMainDisplayMonitor setTransitionHandler:&v6];
  v4 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:{configurationForDefaultMainDisplayMonitor, v6, v7, v8, v9}];
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

- (void)layoutMonitorDidUpdateDisplayLayout:(id)layout withContext:(id)context
{
  layoutCopy = layout;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__AVTFaceTrackingManager_layoutMonitorDidUpdateDisplayLayout_withContext___block_invoke;
  v7[3] = &unk_1E7F3AD60;
  v7[4] = self;
  v8 = layoutCopy;
  v6 = layoutCopy;
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
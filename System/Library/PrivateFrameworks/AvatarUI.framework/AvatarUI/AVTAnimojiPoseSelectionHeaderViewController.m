@interface AVTAnimojiPoseSelectionHeaderViewController
- (AVTAnimojiPoseSelectionHeaderViewController)initWithRecord:(id)a3;
- (id)newStickerConfigurationFromCurrentPose;
- (void)beginFaceTrackingWithCompletionBlock:(id)a3;
- (void)endFaceTracking;
- (void)pauseFaceTracking;
- (void)setCaptureBackgroundColor:(id)a3;
- (void)setCaptureBackgroundColorOverride:(id)a3;
- (void)updateForAvatarRecord:(id)a3 discardPose:(BOOL)a4;
- (void)updateForStickerConfiguration:(id)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation AVTAnimojiPoseSelectionHeaderViewController

- (AVTAnimojiPoseSelectionHeaderViewController)initWithRecord:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AVTAnimojiPoseSelectionHeaderViewController;
  v6 = [(AVTAnimojiPoseSelectionHeaderViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avatarRecord, a3);
    v8 = +[AVTUIColorRepository appBackgroundColor];
    avtCaptureBackgroundColor = v7->_avtCaptureBackgroundColor;
    v7->_avtCaptureBackgroundColor = v8;
  }

  return v7;
}

- (void)viewDidLoad
{
  v38[4] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = AVTAnimojiPoseSelectionHeaderViewController;
  [(AVTAnimojiPoseSelectionHeaderViewController *)&v37 viewDidLoad];
  v3 = +[AVTUIColorRepository appBackgroundColor];
  v4 = [(AVTAnimojiPoseSelectionHeaderViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc(MEMORY[0x1E698E2D8]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  avtView = self->_avtView;
  self->_avtView = v6;

  [(AVTView *)self->_avtView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AVTView *)self->_avtView setBackgroundColor:self->_avtCaptureBackgroundColor];
  v8 = [(AVTAnimojiPoseSelectionHeaderViewController *)self view];
  [v8 addSubview:self->_avtView];

  v33 = [(AVTAnimojiPoseSelectionHeaderViewController *)self view];
  v32 = [v33 heightAnchor];
  v31 = [(AVTView *)self->_avtView heightAnchor];
  v30 = [v32 constraintEqualToAnchor:v31 multiplier:1.0 constant:40.0];
  v38[0] = v30;
  v29 = [(AVTView *)self->_avtView heightAnchor];
  v28 = [(AVTView *)self->_avtView widthAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v38[1] = v27;
  v9 = [(AVTView *)self->_avtView centerYAnchor];
  v10 = [(AVTAnimojiPoseSelectionHeaderViewController *)self view];
  v11 = [v10 centerYAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:0.0];
  v38[2] = v12;
  v13 = [(AVTView *)self->_avtView centerXAnchor];
  v14 = [(AVTAnimojiPoseSelectionHeaderViewController *)self view];
  v15 = [v14 centerXAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v38[3] = v16;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v26];
  v17 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avatarRecord];
  v18 = [MEMORY[0x1E698E328] avatarForRecord:v17];
  v19 = [AVTViewUpdater alloc];
  v20 = self->_avtView;
  v21 = +[AVTUIEnvironment defaultEnvironment];
  v22 = [v21 logger];
  v23 = [(AVTViewUpdater *)v19 initWithAVTView:v20 logger:v22];
  viewUpdater = self->_viewUpdater;
  self->_viewUpdater = v23;

  objc_initWeak(&location, self);
  v25 = self->_viewUpdater;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __58__AVTAnimojiPoseSelectionHeaderViewController_viewDidLoad__block_invoke;
  v34[3] = &unk_1E7F3AD10;
  objc_copyWeak(&v35, &location);
  [(AVTViewUpdater *)v25 setAvatarRecord:v17 avatar:v18 completionHandler:v34];
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void __58__AVTAnimojiPoseSelectionHeaderViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained displayedConfiguration];

  if (v1)
  {
    v2 = [WeakRetained avtView];
    v3 = [WeakRetained displayedConfiguration];
    [v2 transitionToStickerConfiguration:v3 duration:1 style:0 completionHandler:0.0];
  }
}

- (void)updateForAvatarRecord:(id)a3 discardPose:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_storeStrong(&self->_avatarRecord, a3);
  v8 = [MEMORY[0x1E698E328] avatarForRecord:v7];
  if (v4)
  {
    [(AVTAnimojiPoseSelectionHeaderViewController *)self setDisplayedConfiguration:0];
  }

  objc_initWeak(&location, self);
  viewUpdater = self->_viewUpdater;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__AVTAnimojiPoseSelectionHeaderViewController_updateForAvatarRecord_discardPose___block_invoke;
  v10[3] = &unk_1E7F3AD10;
  objc_copyWeak(&v11, &location);
  [(AVTViewUpdater *)viewUpdater setAvatarRecord:v7 avatar:v8 completionHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __81__AVTAnimojiPoseSelectionHeaderViewController_updateForAvatarRecord_discardPose___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained displayedConfiguration];

  if (v1)
  {
    v2 = [WeakRetained avtView];
    v3 = [WeakRetained displayedConfiguration];
    [v2 transitionToStickerConfiguration:v3 duration:1 style:0 completionHandler:0.0];
  }
}

- (id)newStickerConfigurationFromCurrentPose
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
  v3 = [v2 avatar];

  v11 = @"memoji";
  v4 = [v3 physicsState];
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v6 = objc_alloc(MEMORY[0x1E698E280]);
  v7 = [v3 pose];
  v8 = [v6 initWithPose:v7 physicsStates:v5];

  v9 = [objc_alloc(MEMORY[0x1E698E2C0]) initWithName:@"custom_capture" pose:v8 props:0 shaders:0 camera:0 options:0];
  return v9;
}

- (void)beginFaceTrackingWithCompletionBlock:(id)a3
{
  v11 = a3;
  if (![(AVTAnimojiPoseSelectionHeaderViewController *)self isViewLoaded])
  {
    goto LABEL_4;
  }

  v4 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
  if (([v4 enableFaceTracking] & 1) == 0)
  {

    goto LABEL_7;
  }

  v5 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
  v6 = [v5 faceTrackingIsPaused];

  if (v6)
  {
LABEL_7:
    [(AVTAnimojiPoseSelectionHeaderViewController *)self setDisplayedConfiguration:0];
    v8 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
    [v8 setEnableReticle:1];

    v9 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
    [v9 setFaceTrackingPaused:0];

    v10 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
    [v10 transitionToFaceTrackingWithDuration:0 enableBakedAnimations:v11 completionHandler:0.25];

    goto LABEL_8;
  }

LABEL_4:
  v7 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  (*(v11 + 2))(v11);
LABEL_8:
  v7 = v11;
LABEL_9:
}

- (void)pauseFaceTracking
{
  if ([(AVTAnimojiPoseSelectionHeaderViewController *)self isViewLoaded])
  {
    v3 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
    v4 = [v3 faceTrackingIsPaused];

    if ((v4 & 1) == 0)
    {
      v5 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
      [v5 setFaceTrackingPaused:1];

      v6 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
      [v6 setEnableReticle:0];
    }
  }
}

- (void)endFaceTracking
{
  if ([(AVTAnimojiPoseSelectionHeaderViewController *)self isViewLoaded])
  {
    v3 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
    v4 = [v3 enableFaceTracking];

    if (v4)
    {
      v5 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
      [v5 setEnableFaceTracking:0];

      v6 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
      [v6 setEnableReticle:0];
    }
  }
}

- (void)updateForStickerConfiguration:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(AVTAnimojiPoseSelectionHeaderViewController *)self displayedConfiguration];

  if (v6 != v10)
  {
    [(AVTAnimojiPoseSelectionHeaderViewController *)self setDisplayedConfiguration:v10];
    if ([(AVTAnimojiPoseSelectionHeaderViewController *)self isViewLoaded])
    {
      v7 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
      v8 = v7;
      v9 = 0.0;
      if (v4)
      {
        v9 = 0.25;
      }

      [v7 transitionToStickerConfiguration:v10 duration:1 style:0 completionHandler:v9];
    }
  }
}

- (void)setCaptureBackgroundColor:(id)a3
{
  v4 = a3;
  captureBackgroundColorOverride = self->_captureBackgroundColorOverride;
  v13 = v4;
  if (!captureBackgroundColorOverride)
  {
    captureBackgroundColorOverride = v4;
  }

  v6 = captureBackgroundColorOverride;
  v7 = v6;
  if (!v6)
  {
    v7 = +[AVTUIColorRepository appBackgroundColor];
  }

  objc_storeStrong(&self->_avtCaptureBackgroundColor, v7);
  if (!v6)
  {
  }

  avtView = self->_avtView;
  if (avtView)
  {
    v9 = [(AVTView *)avtView backgroundColor];
    avtCaptureBackgroundColor = self->_avtCaptureBackgroundColor;

    if (v9 != avtCaptureBackgroundColor)
    {
      v11 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtCaptureBackgroundColor];
      v12 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
      [v12 setBackgroundColor:v11];
    }
  }
}

- (void)setCaptureBackgroundColorOverride:(id)a3
{
  objc_storeStrong(&self->_captureBackgroundColorOverride, a3);
  v5 = a3;
  [(AVTAnimojiPoseSelectionHeaderViewController *)self setCaptureBackgroundColor:v5];
}

@end
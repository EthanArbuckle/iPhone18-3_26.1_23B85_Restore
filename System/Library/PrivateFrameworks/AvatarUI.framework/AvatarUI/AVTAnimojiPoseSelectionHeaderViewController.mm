@interface AVTAnimojiPoseSelectionHeaderViewController
- (AVTAnimojiPoseSelectionHeaderViewController)initWithRecord:(id)record;
- (id)newStickerConfigurationFromCurrentPose;
- (void)beginFaceTrackingWithCompletionBlock:(id)block;
- (void)endFaceTracking;
- (void)pauseFaceTracking;
- (void)setCaptureBackgroundColor:(id)color;
- (void)setCaptureBackgroundColorOverride:(id)override;
- (void)updateForAvatarRecord:(id)record discardPose:(BOOL)pose;
- (void)updateForStickerConfiguration:(id)configuration animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation AVTAnimojiPoseSelectionHeaderViewController

- (AVTAnimojiPoseSelectionHeaderViewController)initWithRecord:(id)record
{
  recordCopy = record;
  v11.receiver = self;
  v11.super_class = AVTAnimojiPoseSelectionHeaderViewController;
  v6 = [(AVTAnimojiPoseSelectionHeaderViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avatarRecord, record);
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
  view = [(AVTAnimojiPoseSelectionHeaderViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = objc_alloc(MEMORY[0x1E698E2D8]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  avtView = self->_avtView;
  self->_avtView = v6;

  [(AVTView *)self->_avtView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AVTView *)self->_avtView setBackgroundColor:self->_avtCaptureBackgroundColor];
  view2 = [(AVTAnimojiPoseSelectionHeaderViewController *)self view];
  [view2 addSubview:self->_avtView];

  view3 = [(AVTAnimojiPoseSelectionHeaderViewController *)self view];
  heightAnchor = [view3 heightAnchor];
  heightAnchor2 = [(AVTView *)self->_avtView heightAnchor];
  v30 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0 constant:40.0];
  v38[0] = v30;
  heightAnchor3 = [(AVTView *)self->_avtView heightAnchor];
  widthAnchor = [(AVTView *)self->_avtView widthAnchor];
  v27 = [heightAnchor3 constraintEqualToAnchor:widthAnchor];
  v38[1] = v27;
  centerYAnchor = [(AVTView *)self->_avtView centerYAnchor];
  view4 = [(AVTAnimojiPoseSelectionHeaderViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
  v38[2] = v12;
  centerXAnchor = [(AVTView *)self->_avtView centerXAnchor];
  view5 = [(AVTAnimojiPoseSelectionHeaderViewController *)self view];
  centerXAnchor2 = [view5 centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v38[3] = v16;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v26];
  avatarRecord = [(AVTAnimojiPoseSelectionHeaderViewController *)self avatarRecord];
  v18 = [MEMORY[0x1E698E328] avatarForRecord:avatarRecord];
  v19 = [AVTViewUpdater alloc];
  v20 = self->_avtView;
  v21 = +[AVTUIEnvironment defaultEnvironment];
  logger = [v21 logger];
  v23 = [(AVTViewUpdater *)v19 initWithAVTView:v20 logger:logger];
  viewUpdater = self->_viewUpdater;
  self->_viewUpdater = v23;

  objc_initWeak(&location, self);
  v25 = self->_viewUpdater;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __58__AVTAnimojiPoseSelectionHeaderViewController_viewDidLoad__block_invoke;
  v34[3] = &unk_1E7F3AD10;
  objc_copyWeak(&v35, &location);
  [(AVTViewUpdater *)v25 setAvatarRecord:avatarRecord avatar:v18 completionHandler:v34];
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

- (void)updateForAvatarRecord:(id)record discardPose:(BOOL)pose
{
  poseCopy = pose;
  recordCopy = record;
  objc_storeStrong(&self->_avatarRecord, record);
  v8 = [MEMORY[0x1E698E328] avatarForRecord:recordCopy];
  if (poseCopy)
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
  [(AVTViewUpdater *)viewUpdater setAvatarRecord:recordCopy avatar:v8 completionHandler:v10];
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
  avtView = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
  avatar = [avtView avatar];

  v11 = @"memoji";
  physicsState = [avatar physicsState];
  v12[0] = physicsState;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v6 = objc_alloc(MEMORY[0x1E698E280]);
  pose = [avatar pose];
  v8 = [v6 initWithPose:pose physicsStates:v5];

  v9 = [objc_alloc(MEMORY[0x1E698E2C0]) initWithName:@"custom_capture" pose:v8 props:0 shaders:0 camera:0 options:0];
  return v9;
}

- (void)beginFaceTrackingWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (![(AVTAnimojiPoseSelectionHeaderViewController *)self isViewLoaded])
  {
    goto LABEL_4;
  }

  avtView = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
  if (([avtView enableFaceTracking] & 1) == 0)
  {

    goto LABEL_7;
  }

  avtView2 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
  faceTrackingIsPaused = [avtView2 faceTrackingIsPaused];

  if (faceTrackingIsPaused)
  {
LABEL_7:
    [(AVTAnimojiPoseSelectionHeaderViewController *)self setDisplayedConfiguration:0];
    avtView3 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
    [avtView3 setEnableReticle:1];

    avtView4 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
    [avtView4 setFaceTrackingPaused:0];

    avtView5 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
    [avtView5 transitionToFaceTrackingWithDuration:0 enableBakedAnimations:blockCopy completionHandler:0.25];

    goto LABEL_8;
  }

LABEL_4:
  v7 = blockCopy;
  if (!blockCopy)
  {
    goto LABEL_9;
  }

  (*(blockCopy + 2))(blockCopy);
LABEL_8:
  v7 = blockCopy;
LABEL_9:
}

- (void)pauseFaceTracking
{
  if ([(AVTAnimojiPoseSelectionHeaderViewController *)self isViewLoaded])
  {
    avtView = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
    faceTrackingIsPaused = [avtView faceTrackingIsPaused];

    if ((faceTrackingIsPaused & 1) == 0)
    {
      avtView2 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
      [avtView2 setFaceTrackingPaused:1];

      avtView3 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
      [avtView3 setEnableReticle:0];
    }
  }
}

- (void)endFaceTracking
{
  if ([(AVTAnimojiPoseSelectionHeaderViewController *)self isViewLoaded])
  {
    avtView = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
    enableFaceTracking = [avtView enableFaceTracking];

    if (enableFaceTracking)
    {
      avtView2 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
      [avtView2 setEnableFaceTracking:0];

      avtView3 = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
      [avtView3 setEnableReticle:0];
    }
  }
}

- (void)updateForStickerConfiguration:(id)configuration animated:(BOOL)animated
{
  animatedCopy = animated;
  configurationCopy = configuration;
  displayedConfiguration = [(AVTAnimojiPoseSelectionHeaderViewController *)self displayedConfiguration];

  if (displayedConfiguration != configurationCopy)
  {
    [(AVTAnimojiPoseSelectionHeaderViewController *)self setDisplayedConfiguration:configurationCopy];
    if ([(AVTAnimojiPoseSelectionHeaderViewController *)self isViewLoaded])
    {
      avtView = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
      v8 = avtView;
      v9 = 0.0;
      if (animatedCopy)
      {
        v9 = 0.25;
      }

      [avtView transitionToStickerConfiguration:configurationCopy duration:1 style:0 completionHandler:v9];
    }
  }
}

- (void)setCaptureBackgroundColor:(id)color
{
  colorCopy = color;
  captureBackgroundColorOverride = self->_captureBackgroundColorOverride;
  v13 = colorCopy;
  if (!captureBackgroundColorOverride)
  {
    captureBackgroundColorOverride = colorCopy;
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
    backgroundColor = [(AVTView *)avtView backgroundColor];
    avtCaptureBackgroundColor = self->_avtCaptureBackgroundColor;

    if (backgroundColor != avtCaptureBackgroundColor)
    {
      avtCaptureBackgroundColor = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtCaptureBackgroundColor];
      avtView = [(AVTAnimojiPoseSelectionHeaderViewController *)self avtView];
      [avtView setBackgroundColor:avtCaptureBackgroundColor];
    }
  }
}

- (void)setCaptureBackgroundColorOverride:(id)override
{
  objc_storeStrong(&self->_captureBackgroundColorOverride, override);
  overrideCopy = override;
  [(AVTAnimojiPoseSelectionHeaderViewController *)self setCaptureBackgroundColor:overrideCopy];
}

@end
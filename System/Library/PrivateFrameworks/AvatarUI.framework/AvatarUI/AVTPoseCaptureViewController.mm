@interface AVTPoseCaptureViewController
- (AVTPoseCaptureViewController)initWithSelectedRecord:(id)record avtViewSessionProvider:(id)provider;
- (AVTPoseCaptureViewControllerDelegate)delegate;
- (UIView)avtViewContainer;
- (int64_t)interfaceOrientationForFaceTrackingManager:(id)manager;
- (void)beginAVTViewSessionWithDidBeginBlock:(id)block;
- (void)beginUsingAVTViewFromSession:(id)session;
- (void)configureAVTViewSession:(id)session withAvatarRecord:(id)record completionBlock:(id)block;
- (void)configureUserInfoLabel;
- (void)createCaptureButtonIfNeeded;
- (void)createDiscardButtonIfNeeded;
- (void)didTapAvatarView:(id)view;
- (void)didTapCancel:(id)cancel;
- (void)didTapCaptureButton:(id)button;
- (void)didTapDone:(id)done;
- (void)setMode:(unint64_t)mode;
- (void)switchToCaptureMode;
- (void)switchToReviewMode:(id)mode;
- (void)updateAVTViewContainerFrame;
- (void)updateHeaderHeightConstraint;
- (void)updatePaddingConstant;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AVTPoseCaptureViewController

- (AVTPoseCaptureViewController)initWithSelectedRecord:(id)record avtViewSessionProvider:(id)provider
{
  recordCopy = record;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = AVTPoseCaptureViewController;
  v9 = [(AVTPoseCaptureViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_avatarRecord, record);
    objc_storeStrong(&v10->_avtViewSessionProvider, provider);
  }

  return v10;
}

- (void)viewDidLoad
{
  v61[8] = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = AVTPoseCaptureViewController;
  [(AVTPoseCaptureViewController *)&v60 viewDidLoad];
  backgroundColor = [(AVTPoseCaptureViewController *)self backgroundColor];
  view = [(AVTPoseCaptureViewController *)self view];
  [view setBackgroundColor:backgroundColor];

  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  headerView = self->_headerView;
  self->_headerView = v5;

  [(UIView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(AVTPoseCaptureViewController *)self view];
  [view2 addSubview:self->_headerView];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)self->_headerView setBackgroundColor:clearColor];

  v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  snapshotImageView = self->_snapshotImageView;
  self->_snapshotImageView = v10;

  [(UIImageView *)self->_snapshotImageView setContentMode:1];
  [(UIImageView *)self->_snapshotImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_snapshotImageView setHidden:1];
  [(UIImageView *)self->_snapshotImageView setAlpha:0.0];
  view3 = [(AVTPoseCaptureViewController *)self view];
  [view3 addSubview:self->_snapshotImageView];

  v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_didTapCancel_];
  navigationItem = [(AVTPoseCaptureViewController *)self navigationItem];
  v59 = v13;
  [navigationItem setLeftBarButtonItem:v13];

  v15 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_didTapDone_];
  doneButton = self->_doneButton;
  self->_doneButton = v15;

  v17 = self->_doneButton;
  navigationItem2 = [(AVTPoseCaptureViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v17];

  [(AVTPoseCaptureViewController *)self updateHeaderHeightConstraint];
  [(AVTPoseCaptureViewController *)self updatePaddingConstant];
  topAnchor = [(UIView *)self->_headerView topAnchor];
  view4 = [(AVTPoseCaptureViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:{-[AVTPoseCaptureViewController topPadding](self, "topPadding")}];
  [(AVTPoseCaptureViewController *)self setHeaderTopAnchor:v22];

  headerTopAnchor = [(AVTPoseCaptureViewController *)self headerTopAnchor];
  v61[0] = headerTopAnchor;
  leadingAnchor = [(UIView *)self->_headerView leadingAnchor];
  view5 = [(AVTPoseCaptureViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v61[1] = v54;
  trailingAnchor = [(UIView *)self->_headerView trailingAnchor];
  view6 = [(AVTPoseCaptureViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v61[2] = v50;
  headerHeightConstraint = [(AVTPoseCaptureViewController *)self headerHeightConstraint];
  v61[3] = headerHeightConstraint;
  heightAnchor = [(UIImageView *)self->_snapshotImageView heightAnchor];
  heightAnchor2 = [(UIView *)self->_headerView heightAnchor];
  v46 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v61[4] = v46;
  widthAnchor = [(UIImageView *)self->_snapshotImageView widthAnchor];
  widthAnchor2 = [(UIView *)self->_headerView widthAnchor];
  v24 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v61[5] = v24;
  centerXAnchor = [(UIImageView *)self->_snapshotImageView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_headerView centerXAnchor];
  v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v61[6] = v27;
  centerYAnchor = [(UIImageView *)self->_snapshotImageView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_headerView centerYAnchor];
  v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v61[7] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:8];

  [MEMORY[0x1E696ACD8] activateConstraints:v31];
  v32 = AVTUIIsFacetrackingSupported();
  self->_allowFacetracking = v32;
  if (v32)
  {
    [(AVTPoseCaptureViewController *)self setMode:1];
    [(UIBarButtonItem *)self->_doneButton setEnabled:0];
  }

  else
  {
    [(AVTPoseCaptureViewController *)self setMode:0];
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v35 = v34;
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 nativeScale];
  v38 = v37;

  if (v35 != v38)
  {
    v39 = objc_alloc(MEMORY[0x1E69DD250]);
    v40 = objc_opt_class();
    view7 = [(AVTPoseCaptureViewController *)self view];
    [view7 bounds];
    [v40 borderMaskRectForContentRect:?];
    v42 = [v39 initWithFrame:?];
    borderMaskView = self->_borderMaskView;
    self->_borderMaskView = v42;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)self->_borderMaskView setBackgroundColor:whiteColor];

    [(UIView *)self->_headerView setMaskView:self->_borderMaskView];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AVTPoseCaptureViewController;
  [(AVTPoseCaptureViewController *)&v4 viewWillAppear:appear];
  [(AVTPoseCaptureViewController *)self beginAVTViewSessionWithDidBeginBlock:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = AVTPoseCaptureViewController;
  [(AVTPoseCaptureViewController *)&v5 viewWillDisappear:disappear];
  avtViewSession = [(AVTPoseCaptureViewController *)self avtViewSession];
  [avtViewSession tearDownWithCompletionHandler:0];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTPoseCaptureViewController;
  [(AVTPoseCaptureViewController *)&v3 viewWillLayoutSubviews];
  [(AVTPoseCaptureViewController *)self updateHeaderHeightConstraint];
  [(AVTPoseCaptureViewController *)self updatePaddingConstant];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTPoseCaptureViewController;
  [(AVTPoseCaptureViewController *)&v3 viewDidLayoutSubviews];
  [(AVTPoseCaptureViewController *)self updateAVTViewContainerFrame];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = AVTPoseCaptureViewController;
  coordinatorCopy = coordinator;
  [(AVTPoseCaptureViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(AVTPoseCaptureViewController *)self updatePaddingConstant];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__AVTPoseCaptureViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7F3A9E0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __83__AVTPoseCaptureViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateHeaderHeightConstraint];
  [*(a1 + 32) updateAVTViewContainerFrame];
  v3 = [*(a1 + 32) avtViewSession];
  v2 = [v3 avtView];
  [v2 updateInterfaceOrientation];
}

- (void)updateHeaderHeightConstraint
{
  view = [(AVTPoseCaptureViewController *)self view];
  [view frame];
  v5 = v4;
  view2 = [(AVTPoseCaptureViewController *)self view];
  [view2 frame];
  v8 = v5 > v7;

  v9 = dbl_1BB4162C0[v8];
  headerHeightConstraint = [(AVTPoseCaptureViewController *)self headerHeightConstraint];

  if (headerHeightConstraint)
  {
    headerHeightConstraint2 = [(AVTPoseCaptureViewController *)self headerHeightConstraint];
    [headerHeightConstraint2 setConstant:v9];
  }

  else
  {
    headerHeightConstraint2 = [(UIView *)self->_headerView heightAnchor];
    v11 = [headerHeightConstraint2 constraintEqualToConstant:v9];
    [(AVTPoseCaptureViewController *)self setHeaderHeightConstraint:v11];
  }
}

- (void)updatePaddingConstant
{
  view = [(AVTPoseCaptureViewController *)self view];
  traitCollection = [view traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  view2 = [(AVTPoseCaptureViewController *)self view];
  [view2 frame];
  v8 = v7;

  v9 = v8 * 0.08;
  if (v8 * 0.08 < 20.0)
  {
    v9 = 20.0;
  }

  v10 = v8 * 0.15;
  if (v8 * 0.15 < 20.0)
  {
    v10 = 20.0;
  }

  if (horizontalSizeClass == 2)
  {
    v11 = 44.0;
  }

  else
  {
    v11 = v9;
  }

  if (horizontalSizeClass == 2)
  {
    v12 = 78.0;
  }

  else
  {
    v12 = v10;
  }

  view3 = [(AVTPoseCaptureViewController *)self view];
  [view3 frame];
  v15 = v14;
  view4 = [(AVTPoseCaptureViewController *)self view];
  [view4 frame];
  v18 = v17;

  v19 = v15 <= v18;
  if (v15 <= v18)
  {
    v20 = v12;
  }

  else
  {
    v20 = 20.0;
  }

  if (v19)
  {
    v21 = v11;
  }

  else
  {
    v21 = 20.0;
  }

  [(AVTPoseCaptureViewController *)self setTopPadding:v21];
  [(AVTPoseCaptureViewController *)self setBottomPadding:v20];
  topPadding = [(AVTPoseCaptureViewController *)self topPadding];
  view5 = [(AVTPoseCaptureViewController *)self view];
  [view5 safeAreaInsets];
  v25 = v24 + topPadding;
  headerTopAnchor = [(AVTPoseCaptureViewController *)self headerTopAnchor];
  [headerTopAnchor setConstant:v25];

  v27 = [(AVTPoseCaptureViewController *)self];
  captureButtonBottomAnchor = [(AVTPoseCaptureViewController *)self captureButtonBottomAnchor];
  [captureButtonBottomAnchor setConstant:v27];
}

- (void)updateAVTViewContainerFrame
{
  avtViewContainer = [(AVTPoseCaptureViewController *)self avtViewContainer];
  superview = [avtViewContainer superview];
  headerView = [(AVTPoseCaptureViewController *)self headerView];

  if (superview == headerView)
  {
    headerView2 = [(AVTPoseCaptureViewController *)self headerView];
    [headerView2 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    avtViewContainer2 = [(AVTPoseCaptureViewController *)self avtViewContainer];
    [avtViewContainer2 setFrame:{v7, v9, v11, v13}];
  }
}

- (void)setMode:(unint64_t)mode
{
  if (self->_mode == mode)
  {
    return;
  }

  self->_mode = mode;
  switch(mode)
  {
    case 2uLL:
      [(AVTPoseCaptureViewController *)self createCaptureButtonIfNeeded];
      [(AVTPoseCaptureViewController *)self createDiscardButtonIfNeeded];
      discardButton = [(AVTPoseCaptureViewController *)self discardButton];
      v5 = discardButton;
      v6 = 0;
      goto LABEL_9;
    case 1uLL:
      objc_initWeak(&location, self);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__AVTPoseCaptureViewController_setMode___block_invoke;
      v8[3] = &unk_1E7F3AA08;
      objc_copyWeak(&v9, &location);
      [(AVTPoseCaptureViewController *)self beginAVTViewSessionWithDidBeginBlock:v8];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
      return;
    case 0uLL:
      discardButton = [(AVTPoseCaptureViewController *)self discardButton];
      v5 = discardButton;
      v6 = 1;
LABEL_9:
      [discardButton setHidden:v6];

      captureButton = [(AVTPoseCaptureViewController *)self captureButton];
      [captureButton setHidden:1];

      break;
  }
}

void __40__AVTPoseCaptureViewController_setMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained mode] == 1)
  {
    [WeakRetained createCaptureButtonIfNeeded];
    v1 = [WeakRetained discardButton];
    [v1 setHidden:1];

    v2 = [WeakRetained captureButton];
    [v2 setHidden:0];
  }
}

- (void)beginAVTViewSessionWithDidBeginBlock:(id)block
{
  blockCopy = block;
  avtViewSession = [(AVTPoseCaptureViewController *)self avtViewSession];
  isActive = [avtViewSession isActive];

  if (isActive)
  {
    if (blockCopy)
    {
      avtViewSession2 = [(AVTPoseCaptureViewController *)self avtViewSession];
      blockCopy[2](blockCopy, avtViewSession2);
    }
  }

  else
  {
    postSessionDidBecomeActiveHandler = [(AVTPoseCaptureViewController *)self postSessionDidBecomeActiveHandler];

    if (postSessionDidBecomeActiveHandler)
    {
      postSessionDidBecomeActiveHandler2 = [(AVTPoseCaptureViewController *)self postSessionDidBecomeActiveHandler];
      postSessionDidBecomeActiveHandler2[2](postSessionDidBecomeActiveHandler2, 0);
    }

    [(AVTPoseCaptureViewController *)self setPostSessionDidBecomeActiveHandler:blockCopy];
    objc_initWeak(&location, self);
    avtViewSessionProvider = [(AVTPoseCaptureViewController *)self avtViewSessionProvider];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__AVTPoseCaptureViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke;
    v14[3] = &unk_1E7F3AA08;
    objc_copyWeak(&v15, &location);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__AVTPoseCaptureViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke_2;
    v12[3] = &unk_1E7F3AA30;
    objc_copyWeak(&v13, &location);
    v11 = [avtViewSessionProvider sessionWithDidBecomeActiveHandler:v14 tearDownHandler:v12];
    [(AVTPoseCaptureViewController *)self setAvtViewSession:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __69__AVTPoseCaptureViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained beginUsingAVTViewFromSession:v6];
  v4 = [WeakRetained postSessionDidBecomeActiveHandler];

  if (v4)
  {
    v5 = [WeakRetained postSessionDidBecomeActiveHandler];
    (v5)[2](v5, v6);
  }

  [WeakRetained setPostSessionDidBecomeActiveHandler:0];
}

void __69__AVTPoseCaptureViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v19 avtViewContainer];
  v8 = [WeakRetained tapGestureRecognizer];
  [v7 removeGestureRecognizer:v8];

  [WeakRetained setTapGestureRecognizer:0];
  v9 = [WeakRetained avtViewSessionProvider];
  v10 = [v9 faceTrackingManager];
  v11 = [v10 userInfoView];

  v12 = [v11 superview];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 superview];
    v15 = [WeakRetained headerView];

    if (v14 == v15)
    {
      [v11 setTranslatesAutoresizingMaskIntoConstraints:1];
      [v11 removeFromSuperview];
    }
  }

  v16 = [WeakRetained avtViewSessionProvider];
  v17 = [v16 faceTrackingManager];
  [v17 setDelegate:0];

  v18 = [v19 avtViewContainer];
  [v18 removeFromSuperview];

  [WeakRetained setAvtViewSession:0];
  v5[2](v5);
}

- (void)beginUsingAVTViewFromSession:(id)session
{
  sessionCopy = session;
  avtViewContainer = [sessionCopy avtViewContainer];
  [(AVTPoseCaptureViewController *)self setAvtViewContainer:avtViewContainer];

  avtViewContainer2 = [(AVTPoseCaptureViewController *)self avtViewContainer];
  [avtViewContainer2 setAlpha:1.0];

  headerView = [(AVTPoseCaptureViewController *)self headerView];
  avtViewContainer3 = [(AVTPoseCaptureViewController *)self avtViewContainer];
  [headerView addSubview:avtViewContainer3];

  [(AVTPoseCaptureViewController *)self updateAVTViewContainerFrame];
  avatarRecord = [(AVTPoseCaptureViewController *)self avatarRecord];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AVTPoseCaptureViewController_beginUsingAVTViewFromSession___block_invoke;
  v11[3] = &unk_1E7F3AA58;
  v11[4] = self;
  v12 = sessionCopy;
  v10 = sessionCopy;
  [(AVTPoseCaptureViewController *)self configureAVTViewSession:v10 withAvatarRecord:avatarRecord completionBlock:v11];
}

void __61__AVTPoseCaptureViewController_beginUsingAVTViewFromSession___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:*(a1 + 32) action:sel_didTapAvatarView_];
  [*(a1 + 32) setTapGestureRecognizer:v2];

  v3 = [*(a1 + 40) avtViewContainer];
  v4 = [*(a1 + 32) tapGestureRecognizer];
  [v3 addGestureRecognizer:v4];

  v5 = [*(a1 + 32) avtViewSessionProvider];
  v6 = [v5 faceTrackingManager];
  [v6 setFaceTrackingManagementPaused:0];

  v7 = *(a1 + 32);
  v8 = [v7 avtViewSessionProvider];
  v9 = [v8 faceTrackingManager];
  [v9 setDelegate:v7];

  v10 = [*(a1 + 32) avtViewSessionProvider];
  v11 = [v10 faceTrackingManager];
  [v11 resumeFaceTrackingIfNeededAnimated:0];

  [*(a1 + 32) configureUserInfoLabel];
  v12 = [*(a1 + 32) view];
  [v12 setNeedsLayout];
}

- (void)configureAVTViewSession:(id)session withAvatarRecord:(id)record completionBlock:(id)block
{
  sessionCopy = session;
  blockCopy = block;
  recordCopy = record;
  avtView = [sessionCopy avtView];
  [avtView updateInterfaceOrientation];

  v11 = AVTUIShowTrackingLostReticle_once();
  avtView2 = [sessionCopy avtView];
  [avtView2 setEnableReticle:v11];

  allowFacetracking = self->_allowFacetracking;
  avtView3 = [sessionCopy avtView];
  [avtView3 setEnableFaceTracking:allowFacetracking];

  backgroundColor = [(AVTPoseCaptureViewController *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(AVTPoseCaptureViewController *)self backgroundColor];
    avtView4 = [sessionCopy avtView];
    [avtView4 setBackgroundColor:backgroundColor2];
  }

  avtViewUpdater = [sessionCopy avtViewUpdater];
  [avtViewUpdater setAvatarRecord:recordCopy completionHandler:blockCopy];
}

- (void)configureUserInfoLabel
{
  v21[3] = *MEMORY[0x1E69E9840];
  if (![(AVTPoseCaptureViewController *)self shouldHideUserInfoView]&& self->_allowFacetracking)
  {
    avtViewSessionProvider = [(AVTPoseCaptureViewController *)self avtViewSessionProvider];
    faceTrackingManager = [avtViewSessionProvider faceTrackingManager];
    userInfoView = [faceTrackingManager userInfoView];

    [userInfoView setTranslatesAutoresizingMaskIntoConstraints:0];
    backgroundColor = [(AVTPoseCaptureViewController *)self backgroundColor];
    [userInfoView setContainerBackgroundColor:backgroundColor];

    headerView = [(AVTPoseCaptureViewController *)self headerView];
    [headerView addSubview:userInfoView];

    leadingAnchor = [userInfoView leadingAnchor];
    headerView2 = [(AVTPoseCaptureViewController *)self headerView];
    leadingAnchor2 = [headerView2 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v21[0] = v17;
    trailingAnchor = [userInfoView trailingAnchor];
    headerView3 = [(AVTPoseCaptureViewController *)self headerView];
    trailingAnchor2 = [headerView3 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v21[1] = v11;
    bottomAnchor = [userInfoView bottomAnchor];
    headerView4 = [(AVTPoseCaptureViewController *)self headerView];
    bottomAnchor2 = [headerView4 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v21[2] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];

    [MEMORY[0x1E696ACD8] activateConstraints:v16];
  }
}

- (void)didTapAvatarView:(id)view
{
  avtViewSession = [(AVTPoseCaptureViewController *)self avtViewSession];
  isActive = [avtViewSession isActive];

  if (isActive)
  {
    avtViewSessionProvider = [(AVTPoseCaptureViewController *)self avtViewSessionProvider];
    faceTrackingManager = [avtViewSessionProvider faceTrackingManager];
    [faceTrackingManager resumeFaceTrackingIfNeededAnimated:1];
  }
}

- (void)createCaptureButtonIfNeeded
{
  v32[4] = *MEMORY[0x1E69E9840];
  captureButton = [(AVTPoseCaptureViewController *)self captureButton];

  if (!captureButton)
  {
    v4 = objc_alloc_init(AVTRecordingButton);
    [(AVTPoseCaptureViewController *)self setCaptureButton:v4];

    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    captureButton2 = [(AVTPoseCaptureViewController *)self captureButton];
    [captureButton2 setCenterCircleColor:systemBlueColor];

    captureButton3 = [(AVTPoseCaptureViewController *)self captureButton];
    [captureButton3 setIgnoresLongPress:1];

    captureButton4 = [(AVTPoseCaptureViewController *)self captureButton];
    [captureButton4 addTarget:self action:sel_didTapCaptureButton_ forControlEvents:64];

    captureButton5 = [(AVTPoseCaptureViewController *)self captureButton];
    [captureButton5 setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(AVTPoseCaptureViewController *)self view];
    captureButton6 = [(AVTPoseCaptureViewController *)self captureButton];
    [view addSubview:captureButton6];

    captureButton7 = [(AVTPoseCaptureViewController *)self captureButton];
    bottomAnchor = [captureButton7 bottomAnchor];
    view2 = [(AVTPoseCaptureViewController *)self view];
    bottomAnchor2 = [view2 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:{--[AVTPoseCaptureViewController bottomPadding](self, "bottomPadding")}];
    [(AVTPoseCaptureViewController *)self setCaptureButtonBottomAnchor:v16];

    captureButton8 = [(AVTPoseCaptureViewController *)self captureButton];
    widthAnchor = [captureButton8 widthAnchor];
    v29 = [widthAnchor constraintEqualToConstant:79.0];
    v32[0] = v29;
    captureButton9 = [(AVTPoseCaptureViewController *)self captureButton];
    heightAnchor = [captureButton9 heightAnchor];
    captureButton10 = [(AVTPoseCaptureViewController *)self captureButton];
    widthAnchor2 = [captureButton10 widthAnchor];
    v19 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v32[1] = v19;
    captureButton11 = [(AVTPoseCaptureViewController *)self captureButton];
    centerXAnchor = [captureButton11 centerXAnchor];
    view3 = [(AVTPoseCaptureViewController *)self view];
    centerXAnchor2 = [view3 centerXAnchor];
    v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v32[2] = v24;
    captureButtonBottomAnchor = [(AVTPoseCaptureViewController *)self captureButtonBottomAnchor];
    v32[3] = captureButtonBottomAnchor;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v26];
  }
}

- (void)createDiscardButtonIfNeeded
{
  v33[4] = *MEMORY[0x1E69E9840];
  discardButton = [(AVTPoseCaptureViewController *)self discardButton];

  if (!discardButton)
  {
    v4 = [AVTCircularButton alloc];
    v5 = [(AVTCircularButton *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(AVTPoseCaptureViewController *)self setDiscardButton:v5];

    redColor = [MEMORY[0x1E69DC888] redColor];
    discardButton2 = [(AVTPoseCaptureViewController *)self discardButton];
    [discardButton2 setTintColor:redColor];

    v32 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:38.0];
    discardButton3 = [(AVTPoseCaptureViewController *)self discardButton];
    [discardButton3 setSymbolImageWithName:@"trash.fill" configuration:v32];

    discardButton4 = [(AVTPoseCaptureViewController *)self discardButton];
    [discardButton4 addTarget:self action:sel_didTapDiscardButton_ forControlEvents:64];

    discardButton5 = [(AVTPoseCaptureViewController *)self discardButton];
    [discardButton5 setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(AVTPoseCaptureViewController *)self view];
    discardButton6 = [(AVTPoseCaptureViewController *)self discardButton];
    [view addSubview:discardButton6];

    discardButton7 = [(AVTPoseCaptureViewController *)self discardButton];
    widthAnchor = [discardButton7 widthAnchor];
    v29 = [widthAnchor constraintEqualToConstant:69.0];
    v33[0] = v29;
    discardButton8 = [(AVTPoseCaptureViewController *)self discardButton];
    heightAnchor = [discardButton8 heightAnchor];
    discardButton9 = [(AVTPoseCaptureViewController *)self discardButton];
    widthAnchor2 = [discardButton9 widthAnchor];
    v24 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v33[1] = v24;
    discardButton10 = [(AVTPoseCaptureViewController *)self discardButton];
    centerXAnchor = [discardButton10 centerXAnchor];
    captureButton = [(AVTPoseCaptureViewController *)self captureButton];
    centerXAnchor2 = [captureButton centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v33[2] = v16;
    discardButton11 = [(AVTPoseCaptureViewController *)self discardButton];
    centerYAnchor = [discardButton11 centerYAnchor];
    captureButton2 = [(AVTPoseCaptureViewController *)self captureButton];
    centerYAnchor2 = [captureButton2 centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v33[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v22];
  }
}

- (void)didTapCaptureButton:(id)button
{
  v4 = MEMORY[0x1E698E2D8];
  avtViewSession = [(AVTPoseCaptureViewController *)self avtViewSession];
  avtView = [avtViewSession avtView];
  avtViewSession2 = [(AVTPoseCaptureViewController *)self avtViewSession];
  avtView2 = [avtViewSession2 avtView];
  v9 = [v4 snapshotAVTView:avtView matchingViewSize:avtView2 highQuality:1 logger:0];

  delegate = [(AVTPoseCaptureViewController *)self delegate];
  LOBYTE(avtView) = objc_opt_respondsToSelector();

  if (avtView)
  {
    delegate2 = [(AVTPoseCaptureViewController *)self delegate];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__AVTPoseCaptureViewController_didTapCaptureButton___block_invoke;
    v12[3] = &unk_1E7F3A658;
    v12[4] = self;
    [delegate2 poseCaptureViewController:self willCaptureAvatarImage:v9 completion:v12];
  }

  else
  {
    [(AVTPoseCaptureViewController *)self switchToReviewMode:v9];
  }
}

- (void)switchToReviewMode:(id)mode
{
  v22[1] = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  snapshotImageView = [(AVTPoseCaptureViewController *)self snapshotImageView];
  [snapshotImageView setImage:modeCopy];

  snapshotImageView2 = [(AVTPoseCaptureViewController *)self snapshotImageView];
  [snapshotImageView2 setHidden:0];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __51__AVTPoseCaptureViewController_switchToReviewMode___block_invoke;
  v20[3] = &unk_1E7F3A9B8;
  v20[4] = self;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__AVTPoseCaptureViewController_switchToReviewMode___block_invoke_2;
  v19[3] = &unk_1E7F3AA80;
  v19[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v20 animations:v19 completion:0.4];
  avtViewSession = [(AVTPoseCaptureViewController *)self avtViewSession];
  avtView = [avtViewSession avtView];
  avatar = [avtView avatar];
  physicsState = [avatar physicsState];

  v21 = @"memoji";
  v22[0] = physicsState;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v12 = objc_alloc(MEMORY[0x1E698E280]);
  avtViewSession2 = [(AVTPoseCaptureViewController *)self avtViewSession];
  avtView2 = [avtViewSession2 avtView];
  avatar2 = [avtView2 avatar];
  pose = [avatar2 pose];
  v17 = [v12 initWithPose:pose physicsStates:v11];

  v18 = [objc_alloc(MEMORY[0x1E698E2C0]) initWithName:@"custom_capture" pose:v17 props:0 shaders:0 camera:0 options:0];
  [(AVTPoseCaptureViewController *)self setAdHocConfiguration:v18];

  [(AVTPoseCaptureViewController *)self setMode:2];
  [(UIBarButtonItem *)self->_doneButton setEnabled:1];
}

void __51__AVTPoseCaptureViewController_switchToReviewMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) headerView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) snapshotImageView];
  [v3 setAlpha:1.0];
}

void __51__AVTPoseCaptureViewController_switchToReviewMode___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) headerView];
    [v2 setHidden:1];
  }
}

- (void)switchToCaptureMode
{
  [(AVTPoseCaptureViewController *)self setMode:1];
  [(UIBarButtonItem *)self->_doneButton setEnabled:0];
  headerView = [(AVTPoseCaptureViewController *)self headerView];
  [headerView setHidden:0];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AVTPoseCaptureViewController_switchToCaptureMode__block_invoke;
  v5[3] = &unk_1E7F3A9B8;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__AVTPoseCaptureViewController_switchToCaptureMode__block_invoke_2;
  v4[3] = &unk_1E7F3AA80;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v4 completion:0.4];
}

void __51__AVTPoseCaptureViewController_switchToCaptureMode__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) headerView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) snapshotImageView];
  [v3 setAlpha:0.0];
}

void __51__AVTPoseCaptureViewController_switchToCaptureMode__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) snapshotImageView];
    [v3 setImage:0];

    v4 = [*(a1 + 32) snapshotImageView];
    [v4 setHidden:1];
  }
}

- (void)didTapCancel:(id)cancel
{
  delegate = [(AVTPoseCaptureViewController *)self delegate];
  [delegate poseCaptureViewControllerDidCancel:self];
}

- (void)didTapDone:(id)done
{
  delegate = [(AVTPoseCaptureViewController *)self delegate];
  adHocConfiguration = [(AVTPoseCaptureViewController *)self adHocConfiguration];
  avatarRecord = [(AVTPoseCaptureViewController *)self avatarRecord];
  [delegate poseCaptureViewController:self didCapturePoseWithConfiguration:adHocConfiguration avatar:avatarRecord];
}

- (int64_t)interfaceOrientationForFaceTrackingManager:(id)manager
{
  view = [(AVTPoseCaptureViewController *)self view];
  window = [view window];
  _windowInterfaceOrientation = [window _windowInterfaceOrientation];

  return _windowInterfaceOrientation;
}

- (AVTPoseCaptureViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)avtViewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_avtViewContainer);

  return WeakRetained;
}

@end
@interface AVTPoseCaptureViewController
- (AVTPoseCaptureViewController)initWithSelectedRecord:(id)a3 avtViewSessionProvider:(id)a4;
- (AVTPoseCaptureViewControllerDelegate)delegate;
- (UIView)avtViewContainer;
- (int64_t)interfaceOrientationForFaceTrackingManager:(id)a3;
- (void)beginAVTViewSessionWithDidBeginBlock:(id)a3;
- (void)beginUsingAVTViewFromSession:(id)a3;
- (void)configureAVTViewSession:(id)a3 withAvatarRecord:(id)a4 completionBlock:(id)a5;
- (void)configureUserInfoLabel;
- (void)createCaptureButtonIfNeeded;
- (void)createDiscardButtonIfNeeded;
- (void)didTapAvatarView:(id)a3;
- (void)didTapCancel:(id)a3;
- (void)didTapCaptureButton:(id)a3;
- (void)didTapDone:(id)a3;
- (void)setMode:(unint64_t)a3;
- (void)switchToCaptureMode;
- (void)switchToReviewMode:(id)a3;
- (void)updateAVTViewContainerFrame;
- (void)updateHeaderHeightConstraint;
- (void)updatePaddingConstant;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AVTPoseCaptureViewController

- (AVTPoseCaptureViewController)initWithSelectedRecord:(id)a3 avtViewSessionProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVTPoseCaptureViewController;
  v9 = [(AVTPoseCaptureViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_avatarRecord, a3);
    objc_storeStrong(&v10->_avtViewSessionProvider, a4);
  }

  return v10;
}

- (void)viewDidLoad
{
  v61[8] = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = AVTPoseCaptureViewController;
  [(AVTPoseCaptureViewController *)&v60 viewDidLoad];
  v3 = [(AVTPoseCaptureViewController *)self backgroundColor];
  v4 = [(AVTPoseCaptureViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  headerView = self->_headerView;
  self->_headerView = v5;

  [(UIView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(AVTPoseCaptureViewController *)self view];
  [v7 addSubview:self->_headerView];

  v8 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)self->_headerView setBackgroundColor:v8];

  v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  snapshotImageView = self->_snapshotImageView;
  self->_snapshotImageView = v10;

  [(UIImageView *)self->_snapshotImageView setContentMode:1];
  [(UIImageView *)self->_snapshotImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_snapshotImageView setHidden:1];
  [(UIImageView *)self->_snapshotImageView setAlpha:0.0];
  v12 = [(AVTPoseCaptureViewController *)self view];
  [v12 addSubview:self->_snapshotImageView];

  v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_didTapCancel_];
  v14 = [(AVTPoseCaptureViewController *)self navigationItem];
  v59 = v13;
  [v14 setLeftBarButtonItem:v13];

  v15 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_didTapDone_];
  doneButton = self->_doneButton;
  self->_doneButton = v15;

  v17 = self->_doneButton;
  v18 = [(AVTPoseCaptureViewController *)self navigationItem];
  [v18 setRightBarButtonItem:v17];

  [(AVTPoseCaptureViewController *)self updateHeaderHeightConstraint];
  [(AVTPoseCaptureViewController *)self updatePaddingConstant];
  v19 = [(UIView *)self->_headerView topAnchor];
  v20 = [(AVTPoseCaptureViewController *)self view];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:{-[AVTPoseCaptureViewController topPadding](self, "topPadding")}];
  [(AVTPoseCaptureViewController *)self setHeaderTopAnchor:v22];

  v58 = [(AVTPoseCaptureViewController *)self headerTopAnchor];
  v61[0] = v58;
  v56 = [(UIView *)self->_headerView leadingAnchor];
  v57 = [(AVTPoseCaptureViewController *)self view];
  v55 = [v57 leadingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v61[1] = v54;
  v52 = [(UIView *)self->_headerView trailingAnchor];
  v53 = [(AVTPoseCaptureViewController *)self view];
  v51 = [v53 trailingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v61[2] = v50;
  v49 = [(AVTPoseCaptureViewController *)self headerHeightConstraint];
  v61[3] = v49;
  v48 = [(UIImageView *)self->_snapshotImageView heightAnchor];
  v47 = [(UIView *)self->_headerView heightAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v61[4] = v46;
  v45 = [(UIImageView *)self->_snapshotImageView widthAnchor];
  v23 = [(UIView *)self->_headerView widthAnchor];
  v24 = [v45 constraintEqualToAnchor:v23];
  v61[5] = v24;
  v25 = [(UIImageView *)self->_snapshotImageView centerXAnchor];
  v26 = [(UIView *)self->_headerView centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v61[6] = v27;
  v28 = [(UIImageView *)self->_snapshotImageView centerYAnchor];
  v29 = [(UIView *)self->_headerView centerYAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
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

  v33 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v33 scale];
  v35 = v34;
  v36 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v36 nativeScale];
  v38 = v37;

  if (v35 != v38)
  {
    v39 = objc_alloc(MEMORY[0x1E69DD250]);
    v40 = objc_opt_class();
    v41 = [(AVTPoseCaptureViewController *)self view];
    [v41 bounds];
    [v40 borderMaskRectForContentRect:?];
    v42 = [v39 initWithFrame:?];
    borderMaskView = self->_borderMaskView;
    self->_borderMaskView = v42;

    v44 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)self->_borderMaskView setBackgroundColor:v44];

    [(UIView *)self->_headerView setMaskView:self->_borderMaskView];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVTPoseCaptureViewController;
  [(AVTPoseCaptureViewController *)&v4 viewWillAppear:a3];
  [(AVTPoseCaptureViewController *)self beginAVTViewSessionWithDidBeginBlock:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AVTPoseCaptureViewController;
  [(AVTPoseCaptureViewController *)&v5 viewWillDisappear:a3];
  v4 = [(AVTPoseCaptureViewController *)self avtViewSession];
  [v4 tearDownWithCompletionHandler:0];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = AVTPoseCaptureViewController;
  v7 = a4;
  [(AVTPoseCaptureViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(AVTPoseCaptureViewController *)self updatePaddingConstant];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__AVTPoseCaptureViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7F3A9E0;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
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
  v3 = [(AVTPoseCaptureViewController *)self view];
  [v3 frame];
  v5 = v4;
  v6 = [(AVTPoseCaptureViewController *)self view];
  [v6 frame];
  v8 = v5 > v7;

  v9 = dbl_1BB4162C0[v8];
  v10 = [(AVTPoseCaptureViewController *)self headerHeightConstraint];

  if (v10)
  {
    v12 = [(AVTPoseCaptureViewController *)self headerHeightConstraint];
    [v12 setConstant:v9];
  }

  else
  {
    v12 = [(UIView *)self->_headerView heightAnchor];
    v11 = [v12 constraintEqualToConstant:v9];
    [(AVTPoseCaptureViewController *)self setHeaderHeightConstraint:v11];
  }
}

- (void)updatePaddingConstant
{
  v3 = [(AVTPoseCaptureViewController *)self view];
  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  v6 = [(AVTPoseCaptureViewController *)self view];
  [v6 frame];
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

  if (v5 == 2)
  {
    v11 = 44.0;
  }

  else
  {
    v11 = v9;
  }

  if (v5 == 2)
  {
    v12 = 78.0;
  }

  else
  {
    v12 = v10;
  }

  v13 = [(AVTPoseCaptureViewController *)self view];
  [v13 frame];
  v15 = v14;
  v16 = [(AVTPoseCaptureViewController *)self view];
  [v16 frame];
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
  v22 = [(AVTPoseCaptureViewController *)self topPadding];
  v23 = [(AVTPoseCaptureViewController *)self view];
  [v23 safeAreaInsets];
  v25 = v24 + v22;
  v26 = [(AVTPoseCaptureViewController *)self headerTopAnchor];
  [v26 setConstant:v25];

  v27 = [(AVTPoseCaptureViewController *)self];
  v28 = [(AVTPoseCaptureViewController *)self captureButtonBottomAnchor];
  [v28 setConstant:v27];
}

- (void)updateAVTViewContainerFrame
{
  v3 = [(AVTPoseCaptureViewController *)self avtViewContainer];
  v4 = [v3 superview];
  v5 = [(AVTPoseCaptureViewController *)self headerView];

  if (v4 == v5)
  {
    v15 = [(AVTPoseCaptureViewController *)self headerView];
    [v15 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(AVTPoseCaptureViewController *)self avtViewContainer];
    [v14 setFrame:{v7, v9, v11, v13}];
  }
}

- (void)setMode:(unint64_t)a3
{
  if (self->_mode == a3)
  {
    return;
  }

  self->_mode = a3;
  switch(a3)
  {
    case 2uLL:
      [(AVTPoseCaptureViewController *)self createCaptureButtonIfNeeded];
      [(AVTPoseCaptureViewController *)self createDiscardButtonIfNeeded];
      v4 = [(AVTPoseCaptureViewController *)self discardButton];
      v5 = v4;
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
      v4 = [(AVTPoseCaptureViewController *)self discardButton];
      v5 = v4;
      v6 = 1;
LABEL_9:
      [v4 setHidden:v6];

      v7 = [(AVTPoseCaptureViewController *)self captureButton];
      [v7 setHidden:1];

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

- (void)beginAVTViewSessionWithDidBeginBlock:(id)a3
{
  v4 = a3;
  v5 = [(AVTPoseCaptureViewController *)self avtViewSession];
  v6 = [v5 isActive];

  if (v6)
  {
    if (v4)
    {
      v7 = [(AVTPoseCaptureViewController *)self avtViewSession];
      v4[2](v4, v7);
    }
  }

  else
  {
    v8 = [(AVTPoseCaptureViewController *)self postSessionDidBecomeActiveHandler];

    if (v8)
    {
      v9 = [(AVTPoseCaptureViewController *)self postSessionDidBecomeActiveHandler];
      v9[2](v9, 0);
    }

    [(AVTPoseCaptureViewController *)self setPostSessionDidBecomeActiveHandler:v4];
    objc_initWeak(&location, self);
    v10 = [(AVTPoseCaptureViewController *)self avtViewSessionProvider];
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
    v11 = [v10 sessionWithDidBecomeActiveHandler:v14 tearDownHandler:v12];
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

- (void)beginUsingAVTViewFromSession:(id)a3
{
  v4 = a3;
  v5 = [v4 avtViewContainer];
  [(AVTPoseCaptureViewController *)self setAvtViewContainer:v5];

  v6 = [(AVTPoseCaptureViewController *)self avtViewContainer];
  [v6 setAlpha:1.0];

  v7 = [(AVTPoseCaptureViewController *)self headerView];
  v8 = [(AVTPoseCaptureViewController *)self avtViewContainer];
  [v7 addSubview:v8];

  [(AVTPoseCaptureViewController *)self updateAVTViewContainerFrame];
  v9 = [(AVTPoseCaptureViewController *)self avatarRecord];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AVTPoseCaptureViewController_beginUsingAVTViewFromSession___block_invoke;
  v11[3] = &unk_1E7F3AA58;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [(AVTPoseCaptureViewController *)self configureAVTViewSession:v10 withAvatarRecord:v9 completionBlock:v11];
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

- (void)configureAVTViewSession:(id)a3 withAvatarRecord:(id)a4 completionBlock:(id)a5
{
  v19 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v19 avtView];
  [v10 updateInterfaceOrientation];

  v11 = AVTUIShowTrackingLostReticle_once();
  v12 = [v19 avtView];
  [v12 setEnableReticle:v11];

  allowFacetracking = self->_allowFacetracking;
  v14 = [v19 avtView];
  [v14 setEnableFaceTracking:allowFacetracking];

  v15 = [(AVTPoseCaptureViewController *)self backgroundColor];

  if (v15)
  {
    v16 = [(AVTPoseCaptureViewController *)self backgroundColor];
    v17 = [v19 avtView];
    [v17 setBackgroundColor:v16];
  }

  v18 = [v19 avtViewUpdater];
  [v18 setAvatarRecord:v9 completionHandler:v8];
}

- (void)configureUserInfoLabel
{
  v21[3] = *MEMORY[0x1E69E9840];
  if (![(AVTPoseCaptureViewController *)self shouldHideUserInfoView]&& self->_allowFacetracking)
  {
    v3 = [(AVTPoseCaptureViewController *)self avtViewSessionProvider];
    v4 = [v3 faceTrackingManager];
    v5 = [v4 userInfoView];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(AVTPoseCaptureViewController *)self backgroundColor];
    [v5 setContainerBackgroundColor:v6];

    v7 = [(AVTPoseCaptureViewController *)self headerView];
    [v7 addSubview:v5];

    v19 = [v5 leadingAnchor];
    v20 = [(AVTPoseCaptureViewController *)self headerView];
    v18 = [v20 leadingAnchor];
    v17 = [v19 constraintEqualToAnchor:v18];
    v21[0] = v17;
    v8 = [v5 trailingAnchor];
    v9 = [(AVTPoseCaptureViewController *)self headerView];
    v10 = [v9 trailingAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    v21[1] = v11;
    v12 = [v5 bottomAnchor];
    v13 = [(AVTPoseCaptureViewController *)self headerView];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v21[2] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];

    [MEMORY[0x1E696ACD8] activateConstraints:v16];
  }
}

- (void)didTapAvatarView:(id)a3
{
  v4 = [(AVTPoseCaptureViewController *)self avtViewSession];
  v5 = [v4 isActive];

  if (v5)
  {
    v7 = [(AVTPoseCaptureViewController *)self avtViewSessionProvider];
    v6 = [v7 faceTrackingManager];
    [v6 resumeFaceTrackingIfNeededAnimated:1];
  }
}

- (void)createCaptureButtonIfNeeded
{
  v32[4] = *MEMORY[0x1E69E9840];
  v3 = [(AVTPoseCaptureViewController *)self captureButton];

  if (!v3)
  {
    v4 = objc_alloc_init(AVTRecordingButton);
    [(AVTPoseCaptureViewController *)self setCaptureButton:v4];

    v5 = [MEMORY[0x1E69DC888] systemBlueColor];
    v6 = [(AVTPoseCaptureViewController *)self captureButton];
    [v6 setCenterCircleColor:v5];

    v7 = [(AVTPoseCaptureViewController *)self captureButton];
    [v7 setIgnoresLongPress:1];

    v8 = [(AVTPoseCaptureViewController *)self captureButton];
    [v8 addTarget:self action:sel_didTapCaptureButton_ forControlEvents:64];

    v9 = [(AVTPoseCaptureViewController *)self captureButton];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(AVTPoseCaptureViewController *)self view];
    v11 = [(AVTPoseCaptureViewController *)self captureButton];
    [v10 addSubview:v11];

    v12 = [(AVTPoseCaptureViewController *)self captureButton];
    v13 = [v12 bottomAnchor];
    v14 = [(AVTPoseCaptureViewController *)self view];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15 constant:{--[AVTPoseCaptureViewController bottomPadding](self, "bottomPadding")}];
    [(AVTPoseCaptureViewController *)self setCaptureButtonBottomAnchor:v16];

    v31 = [(AVTPoseCaptureViewController *)self captureButton];
    v30 = [v31 widthAnchor];
    v29 = [v30 constraintEqualToConstant:79.0];
    v32[0] = v29;
    v28 = [(AVTPoseCaptureViewController *)self captureButton];
    v27 = [v28 heightAnchor];
    v17 = [(AVTPoseCaptureViewController *)self captureButton];
    v18 = [v17 widthAnchor];
    v19 = [v27 constraintEqualToAnchor:v18];
    v32[1] = v19;
    v20 = [(AVTPoseCaptureViewController *)self captureButton];
    v21 = [v20 centerXAnchor];
    v22 = [(AVTPoseCaptureViewController *)self view];
    v23 = [v22 centerXAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v32[2] = v24;
    v25 = [(AVTPoseCaptureViewController *)self captureButtonBottomAnchor];
    v32[3] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v26];
  }
}

- (void)createDiscardButtonIfNeeded
{
  v33[4] = *MEMORY[0x1E69E9840];
  v3 = [(AVTPoseCaptureViewController *)self discardButton];

  if (!v3)
  {
    v4 = [AVTCircularButton alloc];
    v5 = [(AVTCircularButton *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(AVTPoseCaptureViewController *)self setDiscardButton:v5];

    v6 = [MEMORY[0x1E69DC888] redColor];
    v7 = [(AVTPoseCaptureViewController *)self discardButton];
    [v7 setTintColor:v6];

    v32 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:38.0];
    v8 = [(AVTPoseCaptureViewController *)self discardButton];
    [v8 setSymbolImageWithName:@"trash.fill" configuration:v32];

    v9 = [(AVTPoseCaptureViewController *)self discardButton];
    [v9 addTarget:self action:sel_didTapDiscardButton_ forControlEvents:64];

    v10 = [(AVTPoseCaptureViewController *)self discardButton];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(AVTPoseCaptureViewController *)self view];
    v12 = [(AVTPoseCaptureViewController *)self discardButton];
    [v11 addSubview:v12];

    v31 = [(AVTPoseCaptureViewController *)self discardButton];
    v30 = [v31 widthAnchor];
    v29 = [v30 constraintEqualToConstant:69.0];
    v33[0] = v29;
    v28 = [(AVTPoseCaptureViewController *)self discardButton];
    v26 = [v28 heightAnchor];
    v27 = [(AVTPoseCaptureViewController *)self discardButton];
    v25 = [v27 widthAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v33[1] = v24;
    v23 = [(AVTPoseCaptureViewController *)self discardButton];
    v13 = [v23 centerXAnchor];
    v14 = [(AVTPoseCaptureViewController *)self captureButton];
    v15 = [v14 centerXAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v33[2] = v16;
    v17 = [(AVTPoseCaptureViewController *)self discardButton];
    v18 = [v17 centerYAnchor];
    v19 = [(AVTPoseCaptureViewController *)self captureButton];
    v20 = [v19 centerYAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v33[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v22];
  }
}

- (void)didTapCaptureButton:(id)a3
{
  v4 = MEMORY[0x1E698E2D8];
  v5 = [(AVTPoseCaptureViewController *)self avtViewSession];
  v6 = [v5 avtView];
  v7 = [(AVTPoseCaptureViewController *)self avtViewSession];
  v8 = [v7 avtView];
  v9 = [v4 snapshotAVTView:v6 matchingViewSize:v8 highQuality:1 logger:0];

  v10 = [(AVTPoseCaptureViewController *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v11 = [(AVTPoseCaptureViewController *)self delegate];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__AVTPoseCaptureViewController_didTapCaptureButton___block_invoke;
    v12[3] = &unk_1E7F3A658;
    v12[4] = self;
    [v11 poseCaptureViewController:self willCaptureAvatarImage:v9 completion:v12];
  }

  else
  {
    [(AVTPoseCaptureViewController *)self switchToReviewMode:v9];
  }
}

- (void)switchToReviewMode:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AVTPoseCaptureViewController *)self snapshotImageView];
  [v5 setImage:v4];

  v6 = [(AVTPoseCaptureViewController *)self snapshotImageView];
  [v6 setHidden:0];

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
  v7 = [(AVTPoseCaptureViewController *)self avtViewSession];
  v8 = [v7 avtView];
  v9 = [v8 avatar];
  v10 = [v9 physicsState];

  v21 = @"memoji";
  v22[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v12 = objc_alloc(MEMORY[0x1E698E280]);
  v13 = [(AVTPoseCaptureViewController *)self avtViewSession];
  v14 = [v13 avtView];
  v15 = [v14 avatar];
  v16 = [v15 pose];
  v17 = [v12 initWithPose:v16 physicsStates:v11];

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
  v3 = [(AVTPoseCaptureViewController *)self headerView];
  [v3 setHidden:0];

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

- (void)didTapCancel:(id)a3
{
  v4 = [(AVTPoseCaptureViewController *)self delegate];
  [v4 poseCaptureViewControllerDidCancel:self];
}

- (void)didTapDone:(id)a3
{
  v6 = [(AVTPoseCaptureViewController *)self delegate];
  v4 = [(AVTPoseCaptureViewController *)self adHocConfiguration];
  v5 = [(AVTPoseCaptureViewController *)self avatarRecord];
  [v6 poseCaptureViewController:self didCapturePoseWithConfiguration:v4 avatar:v5];
}

- (int64_t)interfaceOrientationForFaceTrackingManager:(id)a3
{
  v3 = [(AVTPoseCaptureViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 _windowInterfaceOrientation];

  return v5;
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
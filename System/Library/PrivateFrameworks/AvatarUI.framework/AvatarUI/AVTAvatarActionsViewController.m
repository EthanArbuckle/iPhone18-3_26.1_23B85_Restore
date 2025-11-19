@interface AVTAvatarActionsViewController
- (AVTAvatarActionsViewController)initWithAVTViewSessionProvider:(id)a3 actionsController:(id)a4 environment:(id)a5;
- (AVTAvatarActionsViewControllerDelegate)delegate;
- (AVTAvatarEditorViewController)editorViewController;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (double)deleteMoveInDelay;
- (double)deleteMoveInDuration;
- (double)duplicateScaleDelay;
- (double)duplicateScaleDuration;
- (id)actionsModel:(id)a3 recordUpdateForDeletingRecord:(id)a4;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (int64_t)interfaceOrientationForFaceTrackingManager:(id)a3;
- (void)actionsController:(id)a3 didAddRecord:(id)a4;
- (void)actionsController:(id)a3 didDeleteRecord:(id)a4 withRecordUpdate:(id)a5 completionBlock:(id)a6;
- (void)actionsController:(id)a3 didDuplicateToRecord:(id)a4 completionBlock:(id)a5;
- (void)actionsController:(id)a3 didEditRecord:(id)a4;
- (void)actionsControllerDidFinish:(id)a3;
- (void)applyLayout:(id)a3;
- (void)beginAVTViewSessionWithDidBeginBlock:(id)a3;
- (void)beginUsingAVTViewFromSession:(id)a3;
- (void)configureAVTViewSession:(id)a3 withAvatarRecord:(id)a4 completionBlock:(id)a5;
- (void)configureNavigationItems;
- (void)configureUserInfoLabel;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)controllerPresentationWillObstructView:(id)a3;
- (void)createTransitionImageViewIfNeeded;
- (void)didTapAvatarView:(id)a3;
- (void)didTapDone:(id)a3;
- (void)dismissEditorViewController:(id)a3 forActionsController:(id)a4 wasCreate:(BOOL)a5 didEdit:(BOOL)a6 animated:(BOOL)a7 completion:(id)a8;
- (void)layoutViewForActionsController;
- (void)loadView;
- (void)performEdit;
- (void)performTransitionAfterDeleteToRecord:(id)a3 fromLeft:(BOOL)a4 previousRecordImage:(id)a5 completionBlock:(id)a6;
- (void)performTransitionAfterDuplicateToRecord:(id)a3 previousRecordImage:(id)a4 completionBlock:(id)a5;
- (void)prepareForAnimatedTransitionWithLayout:(id)a3 completionBlock:(id)a4;
- (void)presentEditorViewController:(id)a3 forActionsController:(id)a4 isCreate:(BOOL)a5;
- (void)rebuildLayout;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willPresentAvatarRecord:(id)a3;
@end

@implementation AVTAvatarActionsViewController

- (AVTAvatarActionsViewController)initWithAVTViewSessionProvider:(id)a3 actionsController:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AVTAvatarActionsViewController;
  v12 = [(AVTAvatarActionsViewController *)&v15 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionProvider, a3);
    objc_storeStrong(&v13->_actionsController, a4);
    objc_storeStrong(&v13->_environment, a5);
    [v10 setDelegate:v13];
    v13->_allowFacetracking = AVTUIIsFacetrackingSupported();
  }

  return v13;
}

- (void)configureAVTViewSession:(id)a3 withAvatarRecord:(id)a4 completionBlock:(id)a5
{
  v20 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v20 avtView];
  [v10 updateInterfaceOrientation];

  v11 = AVTUIShowTrackingLostReticle_once();
  v12 = [v20 avtView];
  [v12 setEnableReticle:v11];

  if ((AVTUIForceCameraDisclosures_once() & 1) != 0 || AVTDeviceIsGreenTea())
  {
    v13 = AVTUIHasDisplayedCameraDisclosureSplashScreen();
  }

  else
  {
    v13 = 1;
  }

  v14 = [(AVTAvatarActionsViewController *)self allowFacetracking];
  v15 = [v20 avtView];
  [v15 setEnableFaceTracking:v14 & v13];

  v16 = [(AVTAvatarActionsViewController *)self view];
  v17 = [v16 backgroundColor];
  v18 = [v20 avtView];
  [v18 setBackgroundColor:v17];

  v19 = [v20 avtViewUpdater];
  [v19 setAvatarRecord:v9 completionHandler:v8];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  [(AVTAvatarActionsViewController *)self setView:v5];

  v6 = +[AVTUIColorRepository modalBackgroundColor];
  v7 = [(AVTAvatarActionsViewController *)self view];
  [v7 setBackgroundColor:v6];

  v8 = [AVTImageTransitioningContainerView alloc];
  v9 = [(AVTAvatarActionsViewController *)self view];
  [v9 bounds];
  v10 = [(AVTImageTransitioningContainerView *)v8 initWithFrame:1 layoutMode:?];
  [(AVTAvatarActionsViewController *)self setAvatarContainer:v10];

  v11 = [(AVTAvatarActionsViewController *)self sessionProvider];
  [v11 avtViewBackingSize];
  v13 = v12;
  v15 = v14;
  v16 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [v16 setAspectRatio:{v13, v15}];

  v18 = [(AVTAvatarActionsViewController *)self view];
  v17 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [v18 addSubview:v17];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AVTAvatarActionsViewController;
  [(AVTAvatarActionsViewController *)&v3 viewDidLoad];
  [(AVTAvatarActionsViewController *)self layoutViewForActionsController];
}

- (void)layoutViewForActionsController
{
  v3 = [(AVTAvatarActionsViewController *)self actionsController];
  v12 = [v3 inlineActionButtons];

  v4 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v12];
  [v4 setAxis:1];
  [v4 setDistribution:1];
  [v4 setSpacing:10.0];
  v5 = [(AVTAvatarActionsViewController *)self view];
  [v5 addSubview:v4];

  v6 = [(AVTAvatarActionsViewController *)self buttonsView];

  if (v6)
  {
    v7 = [(AVTAvatarActionsViewController *)self buttonsView];
    [v7 removeFromSuperview];
  }

  [(AVTAvatarActionsViewController *)self setButtonsView:v4];
  [(AVTAvatarActionsViewController *)self configureNavigationItems];
  v8 = [(AVTAvatarActionsViewController *)self currentLayout];
  v9 = [v8 buttonCount];
  v10 = [v12 count];

  if (v9 == v10)
  {
    v11 = [(AVTAvatarActionsViewController *)self currentLayout];
    [(AVTAvatarActionsViewController *)self applyLayout:v11];
  }

  else
  {
    [(AVTAvatarActionsViewController *)self rebuildLayout];
  }
}

- (void)configureNavigationItems
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [(AVTAvatarActionsViewController *)self environment];
  v4 = [v3 deviceIsMac];

  if (v4)
  {
    v5 = [AVTToolbarButton alloc];
    v6 = AVTAvatarUIBundle();
    v7 = [v6 localizedStringForKey:@"DONE" value:&stru_1F39618F0 table:@"Localized"];
    v8 = [(AVTToolbarButton *)v5 initWithTitle:v7 isDefault:1];

    v9 = [AVTToolBar alloc];
    v24[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v11 = [(AVTToolBar *)v9 initWithButtons:v10];

    v12 = [(AVTAvatarActionsViewController *)self view];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;

    +[AVTToolBar defaultToolBarHeight];
    [(AVTToolBar *)v11 setFrame:v14, v18 - v19, v16, v19];
    [(AVTToolBar *)v11 setAutoresizingMask:10];
    [(AVTToolBar *)v11 setDelegate:self];
    v20 = [(AVTAvatarActionsViewController *)self view];
    [v20 addSubview:v11];

    [(AVTAvatarActionsViewController *)self setToolbar:v11];
    v21 = [(AVTAvatarActionsViewController *)self navigationController];
    [v21 setNavigationBarHidden:1];
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_didTapDone_];
    v22 = [(AVTAvatarActionsViewController *)self navigationItem];
    [v22 setRightBarButtonItem:v23];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AVTAvatarActionsViewController;
  [(AVTAvatarActionsViewController *)&v5 viewWillAppear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  [(AVTAvatarActionsViewController *)self beginAVTViewSessionWithDidBeginBlock:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AVTAvatarActionsViewController;
  [(AVTAvatarActionsViewController *)&v6 viewWillDisappear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v5 = [(AVTAvatarActionsViewController *)self avtViewSession];
  [v5 tearDownWithCompletionHandler:0];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [(AVTAvatarActionsViewController *)self actionsController];
  [v4 updateForChangedContentCategorySize];

  [(AVTAvatarActionsViewController *)self layoutViewForActionsController];
}

- (void)beginAVTViewSessionWithDidBeginBlock:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarActionsViewController *)self avtViewSession];
  v6 = [v5 isActive];

  if (v6)
  {
    if (v4)
    {
      v7 = [(AVTAvatarActionsViewController *)self avtViewSession];
      v4[2](v4, v7);
    }
  }

  else
  {
    v8 = [(AVTAvatarActionsViewController *)self postSessionDidBecomeActiveHandler];

    if (v8)
    {
      v9 = [(AVTAvatarActionsViewController *)self postSessionDidBecomeActiveHandler];
      v9[2](v9, 0);
    }

    [(AVTAvatarActionsViewController *)self setPostSessionDidBecomeActiveHandler:v4];
    objc_initWeak(&location, self);
    v10 = [(AVTAvatarActionsViewController *)self sessionProvider];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__AVTAvatarActionsViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke;
    v14[3] = &unk_1E7F3AA08;
    objc_copyWeak(&v15, &location);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__AVTAvatarActionsViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke_2;
    v12[3] = &unk_1E7F3AA30;
    objc_copyWeak(&v13, &location);
    v11 = [v10 sessionWithDidBecomeActiveHandler:v14 tearDownHandler:v12];
    [(AVTAvatarActionsViewController *)self setAvtViewSession:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __71__AVTAvatarActionsViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke(uint64_t a1, void *a2)
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

void __71__AVTAvatarActionsViewController_beginAVTViewSessionWithDidBeginBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 avtViewContainer];

  v8 = [WeakRetained tapGestureRecognizer];
  [v7 removeGestureRecognizer:v8];

  [WeakRetained setTapGestureRecognizer:0];
  if (([WeakRetained shouldHideUserInfoView] & 1) == 0)
  {
    v9 = [WeakRetained sessionProvider];
    v10 = [v9 faceTrackingManager];
    v11 = [v10 userInfoView];
    [v11 removeFromSuperview];
  }

  v12 = [WeakRetained sessionProvider];
  v13 = [v12 faceTrackingManager];
  [v13 setDelegate:0];

  v14 = MEMORY[0x1E698E2D8];
  v15 = [WeakRetained avtViewSession];
  v16 = [v15 avtView];
  v17 = [WeakRetained avatarContainer];
  v18 = [WeakRetained environment];
  v19 = [v18 logger];
  v20 = [v14 snapshotAVTView:v16 matchingViewSize:v17 highQuality:1 logger:v19];

  v21 = [WeakRetained avatarContainer];
  [v21 setStaticImage:v20];

  v22 = [WeakRetained avatarContainer];
  [v22 setLiveView:0];

  v23 = [WeakRetained avatarContainer];
  [v23 transitionStaticViewToFront];

  [WeakRetained setAvtViewSession:0];
  v5[2](v5);
}

- (void)beginUsingAVTViewFromSession:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarActionsViewController *)self avatarContainer];
  v6 = [v4 avtViewContainer];
  [v5 setLiveView:v6];

  v7 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [v7 transitionLiveViewToFront];

  v8 = [(AVTAvatarActionsViewController *)self actionsController];
  v9 = [v8 actionsModel];
  v10 = [v9 avatarRecord];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__AVTAvatarActionsViewController_beginUsingAVTViewFromSession___block_invoke;
  v12[3] = &unk_1E7F3AA58;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  [(AVTAvatarActionsViewController *)self configureAVTViewSession:v11 withAvatarRecord:v10 completionBlock:v12];
}

void __63__AVTAvatarActionsViewController_beginUsingAVTViewFromSession___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:*(a1 + 32) action:sel_didTapAvatarView_];
  [*(a1 + 32) setTapGestureRecognizer:v2];

  v3 = [*(a1 + 40) avtViewContainer];
  v4 = [*(a1 + 32) tapGestureRecognizer];
  [v3 addGestureRecognizer:v4];

  if ([*(a1 + 32) allowFacetracking])
  {
    v5 = [*(a1 + 32) sessionProvider];
    v6 = [v5 faceTrackingManager];
    [v6 setFaceTrackingManagementPaused:0];

    v7 = *(a1 + 32);
    v8 = [v7 sessionProvider];
    v9 = [v8 faceTrackingManager];
    [v9 setDelegate:v7];

    v10 = [*(a1 + 32) sessionProvider];
    v11 = [v10 faceTrackingManager];
    [v11 resumeFaceTrackingIfNeededAnimated:0];

    v12 = [*(a1 + 40) avtView];
    [v12 transitionToFaceTrackingWithDuration:0 completionHandler:0.0];

    if (([*(a1 + 32) shouldHideUserInfoView] & 1) == 0)
    {
      [*(a1 + 32) configureUserInfoLabel];
      v13 = [*(a1 + 32) view];
      v14 = [*(a1 + 32) sessionProvider];
      v15 = [v14 faceTrackingManager];
      v16 = [v15 userInfoView];
      [v13 bringSubviewToFront:v16];
    }
  }

  v17 = [*(a1 + 32) view];
  [v17 setNeedsLayout];
}

- (void)configureUserInfoLabel
{
  v3 = [(AVTAvatarActionsViewController *)self sessionProvider];
  v4 = [v3 faceTrackingManager];
  v10 = [v4 userInfoView];

  v5 = [(AVTAvatarActionsViewController *)self currentLayout];

  if (v5)
  {
    v6 = [(AVTAvatarActionsViewController *)self currentLayout];
    [v6 userInfoFrame];
    [v10 setFrame:?];
  }

  v7 = [(AVTAvatarActionsViewController *)self view];
  v8 = [v7 backgroundColor];
  [v10 setContainerBackgroundColor:v8];

  v9 = [(AVTAvatarActionsViewController *)self view];
  [v9 addSubview:v10];
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  v3 = [(AVTAvatarActionsViewController *)self toolbar];
  if (v3)
  {
    v4 = [(AVTAvatarActionsViewController *)self toolbar];
    [v4 bounds];
    v6 = v5;

    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    v9 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v6 = *(MEMORY[0x1E69DDCE0] + 16);
    v7 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v10 = v9;
  v11 = v8;
  v12 = v6;
  v13 = v7;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (void)viewDidLayoutSubviews
{
  v30.receiver = self;
  v30.super_class = AVTAvatarActionsViewController;
  [(AVTAvatarActionsViewController *)&v30 viewDidLayoutSubviews];
  v3 = [(AVTAvatarActionsViewController *)self currentLayout];
  [v3 containerSize];
  v5 = v4;
  v7 = v6;
  v8 = [(AVTAvatarActionsViewController *)self view];
  [v8 bounds];
  if (v5 != v10 || v7 != v9)
  {

LABEL_6:
    [(AVTAvatarActionsViewController *)self rebuildLayout];
    return;
  }

  v12 = [(AVTAvatarActionsViewController *)self currentLayout];
  [v12 edgeInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(AVTAvatarActionsViewController *)self view];
  [v21 safeAreaInsets];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  if (v16 != v25 || v14 != v23 || v20 != v29 || v18 != v27)
  {
    goto LABEL_6;
  }
}

- (void)rebuildLayout
{
  v3 = [(AVTAvatarActionsViewController *)self environment];
  if ([v3 deviceIsPad])
  {

    v4 = off_1E7F398B0;
  }

  else
  {
    v5 = [(AVTAvatarActionsViewController *)self environment];
    v6 = [v5 deviceIsMac];

    v4 = off_1E7F398A8;
    if (v6)
    {
      v4 = off_1E7F398B0;
    }
  }

  v7 = objc_alloc(*v4);
  v8 = [(AVTAvatarActionsViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v13 = [(AVTAvatarActionsViewController *)self view];
  [v13 safeAreaInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(AVTAvatarActionsViewController *)self buttonsView];
  v23 = [v22 arrangedSubviews];
  v24 = [v23 count];
  v25 = [(AVTAvatarActionsViewController *)self sessionProvider];
  v26 = [v7 initWithContainerSize:v24 insets:v25 buttonCount:v10 avtViewLayoutInfo:{v12, v15, v17, v19, v21}];

  [(AVTAvatarActionsViewController *)self applyLayout:v26];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = AVTAvatarActionsViewController;
  v7 = a4;
  [(AVTAvatarActionsViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__AVTAvatarActionsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7F3A9E0;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __85__AVTAvatarActionsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) avtViewSession];
  v1 = [v2 avtView];
  [v1 updateInterfaceOrientation];
}

- (void)applyLayout:(id)a3
{
  v40 = a3;
  v4 = [(AVTAvatarActionsViewController *)self isAnimating];
  v5 = v40;
  if (v40 && (v4 & 1) == 0)
  {
    v6 = [(AVTAvatarActionsViewController *)self avtViewSession];
    v7 = [v6 isActive];

    if (v7)
    {
      [v40 avatarContainerViewFrame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(AVTAvatarActionsViewController *)self avatarContainer];
      [v16 setFrame:{v9, v11, v13, v15}];

      if (![(AVTAvatarActionsViewController *)self shouldHideUserInfoView])
      {
        [v40 userInfoFrame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = [(AVTAvatarActionsViewController *)self sessionProvider];
        v26 = [v25 faceTrackingManager];
        v27 = [v26 userInfoView];
        [v27 setFrame:{v18, v20, v22, v24}];
      }
    }

    [v40 actionButtonsViewAlpha];
    v29 = v28;
    v30 = [(AVTAvatarActionsViewController *)self buttonsView];
    [v30 setAlpha:v29];

    [v40 actionButtonsViewFrame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = [(AVTAvatarActionsViewController *)self buttonsView];
    [v39 setFrame:{v32, v34, v36, v38}];

    v4 = [(AVTAvatarActionsViewController *)self setCurrentLayout:v40];
    v5 = v40;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)createTransitionImageViewIfNeeded
{
  v3 = [(AVTAvatarActionsViewController *)self transitionImageView];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(AVTAvatarActionsViewController *)self setTransitionImageView:v4];

    v5 = [(AVTAvatarActionsViewController *)self transitionImageView];
    [v5 setContentMode:1];

    v6 = [(AVTAvatarActionsViewController *)self avtViewSession];
    v7 = [v6 isActive];

    if (v7)
    {
      v17 = [(AVTAvatarActionsViewController *)self avatarContainer];
      [v17 frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(AVTAvatarActionsViewController *)self transitionImageView];
      [v16 setFrame:{v9, v11, v13, v15}];
    }
  }
}

- (void)didTapAvatarView:(id)a3
{
  v4 = [(AVTAvatarActionsViewController *)self avtViewSession];
  v5 = [v4 isActive];

  if (v5)
  {
    v7 = [(AVTAvatarActionsViewController *)self sessionProvider];
    v6 = [v7 faceTrackingManager];
    [v6 resumeFaceTrackingIfNeededAnimated:1];
  }
}

- (void)didTapDone:(id)a3
{
  v4 = [(AVTAvatarActionsViewController *)self delegate];
  [v4 avatarActionsViewControllerDidFinish:self];
}

- (void)prepareForAnimatedTransitionWithLayout:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__AVTAvatarActionsViewController_prepareForAnimatedTransitionWithLayout_completionBlock___block_invoke;
  v10[3] = &unk_1E7F3C770;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(AVTAvatarActionsViewController *)self beginAVTViewSessionWithDidBeginBlock:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __89__AVTAvatarActionsViewController_prepareForAnimatedTransitionWithLayout_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained applyLayout:*(a1 + 32)];
  v2 = [WeakRetained view];
  [v2 layoutIfNeeded];

  (*(*(a1 + 40) + 16))();
}

- (void)presentEditorViewController:(id)a3 forActionsController:(id)a4 isCreate:(BOOL)a5
{
  v9 = a3;
  [(AVTAvatarActionsViewController *)self setEditorViewController:?];
  if (a5 || +[AVTAvatarEditorViewController shouldShowSplashScreen])
  {
    v7 = [[AVTTransparentNavigationController alloc] initWithRootViewController:v9];
    [(AVTAvatarActionsViewController *)self presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    v8 = [(AVTAvatarActionsViewController *)self navigationController];
    [v8 setDelegate:self];

    v7 = [(AVTAvatarActionsViewController *)self navigationController];
    [(AVTTransparentNavigationController *)v7 pushViewController:v9 animated:1];
  }
}

- (void)dismissEditorViewController:(id)a3 forActionsController:(id)a4 wasCreate:(BOOL)a5 didEdit:(BOOL)a6 animated:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v19 = a3;
  v14 = a4;
  v15 = a8;
  if (a5 || ([(AVTAvatarActionsViewController *)self presentedViewController], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    if (!a6)
    {
      [(AVTAvatarActionsViewController *)self dismissViewControllerAnimated:v9 completion:v15];
      goto LABEL_8;
    }
  }

  else
  {
    v17 = [(AVTAvatarActionsViewController *)self navigationController];
    v18 = [v17 popViewControllerAnimated:1];
  }

  if (v15)
  {
    v15[2](v15);
  }

LABEL_8:
  [(AVTAvatarActionsViewController *)self setEditorViewController:0];
}

- (void)actionsController:(id)a3 didAddRecord:(id)a4
{
  v8 = a4;
  v5 = [(AVTAvatarActionsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVTAvatarActionsViewController *)self delegate];
    [v7 avatarActionsViewController:self didPerformAction:3 withAvatarRecord:v8];
  }

  [(AVTAvatarActionsViewController *)self willPresentAvatarRecord:v8];
}

- (void)actionsController:(id)a3 didEditRecord:(id)a4
{
  v8 = a4;
  v5 = [(AVTAvatarActionsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVTAvatarActionsViewController *)self delegate];
    [v7 avatarActionsViewController:self didPerformAction:0 withAvatarRecord:v8];
  }

  [(AVTAvatarActionsViewController *)self willPresentAvatarRecord:v8];
}

- (void)willPresentAvatarRecord:(id)a3
{
  v7 = a3;
  v4 = [(AVTAvatarActionsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVTAvatarActionsViewController *)self delegate];
    [v6 avatarActionsViewController:self willPresentAvatarRecord:v7];
  }
}

- (void)actionsController:(id)a3 didDuplicateToRecord:(id)a4 completionBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(AVTAvatarActionsViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(AVTAvatarActionsViewController *)self delegate];
    [v11 avatarActionsViewController:self didPerformAction:3 withAvatarRecord:v7];
  }

  v12 = MEMORY[0x1E698E2D8];
  v13 = [(AVTAvatarActionsViewController *)self avtViewSession];
  v14 = [v13 avtView];
  v15 = [(AVTAvatarActionsViewController *)self avatarContainer];
  v16 = [(AVTAvatarActionsViewController *)self environment];
  v17 = [v16 logger];
  v18 = [v12 snapshotAVTView:v14 matchingViewSize:v15 highQuality:1 logger:v17];

  [(AVTAvatarActionsViewController *)self createTransitionImageViewIfNeeded];
  [(AVTAvatarActionsViewController *)self setIsAnimating:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__AVTAvatarActionsViewController_actionsController_didDuplicateToRecord_completionBlock___block_invoke;
  v20[3] = &unk_1E7F3ACA0;
  v20[4] = self;
  v21 = v8;
  v19 = v8;
  [(AVTAvatarActionsViewController *)self performTransitionAfterDuplicateToRecord:v7 previousRecordImage:v18 completionBlock:v20];
}

uint64_t __89__AVTAvatarActionsViewController_actionsController_didDuplicateToRecord_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsAnimating:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)actionsModel:(id)a3 recordUpdateForDeletingRecord:(id)a4
{
  v5 = a4;
  v6 = [(AVTAvatarActionsViewController *)self delegate];
  v7 = [v6 avatarActionsViewController:self recordUpdateForDeletingRecord:v5];

  return v7;
}

- (void)actionsController:(id)a3 didDeleteRecord:(id)a4 withRecordUpdate:(id)a5 completionBlock:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a5;
  v12 = [(AVTAvatarActionsViewController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(AVTAvatarActionsViewController *)self delegate];
    [v14 avatarActionsViewController:self didPerformAction:2 withAvatarRecord:v9];
  }

  v15 = [v11 avatarRecord];
  [(AVTAvatarActionsViewController *)self willPresentAvatarRecord:v15];

  v16 = MEMORY[0x1E698E2D8];
  v17 = [(AVTAvatarActionsViewController *)self avtViewSession];
  v18 = [v17 avtView];
  v19 = [(AVTAvatarActionsViewController *)self avtViewSession];
  v20 = [v19 avtView];
  v21 = [(AVTAvatarActionsViewController *)self environment];
  [v21 logger];
  v22 = v27 = v9;
  v23 = [v16 snapshotAVTView:v18 matchingViewSize:v20 highQuality:1 logger:v22];

  [(AVTAvatarActionsViewController *)self createTransitionImageViewIfNeeded];
  [(AVTAvatarActionsViewController *)self setIsAnimating:1];
  v24 = [v11 avatarRecord];
  v25 = [v11 fromLeft];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __101__AVTAvatarActionsViewController_actionsController_didDeleteRecord_withRecordUpdate_completionBlock___block_invoke;
  v28[3] = &unk_1E7F3ACA0;
  v28[4] = self;
  v29 = v10;
  v26 = v10;
  [(AVTAvatarActionsViewController *)self performTransitionAfterDeleteToRecord:v24 fromLeft:v25 previousRecordImage:v23 completionBlock:v28];
}

uint64_t __101__AVTAvatarActionsViewController_actionsController_didDeleteRecord_withRecordUpdate_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsAnimating:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)actionsControllerDidFinish:(id)a3
{
  v4 = [(AVTAvatarActionsViewController *)self delegate];
  [v4 avatarActionsViewControllerDidFinish:self];
}

- (double)duplicateScaleDuration
{
  v2 = +[AVTUIEnvironment defaultEnvironment];
  [v2 actionAnimationsMultiplier];
  v4 = v3 * 0.84 * 0.6;

  return v4;
}

- (double)duplicateScaleDelay
{
  v2 = +[AVTUIEnvironment defaultEnvironment];
  [v2 actionAnimationsMultiplier];
  v4 = v3 * 0.84 * 0.4;

  return v4;
}

- (void)performTransitionAfterDuplicateToRecord:(id)a3 previousRecordImage:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [v11 frame];
  v52 = CGRectInset(v51, 20.0, 20.0);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;

  v15 = [(AVTAvatarActionsViewController *)self environment];
  v16 = [v15 userInterfaceLayoutDirection];

  v17 = [(AVTAvatarActionsViewController *)self view];
  [v17 bounds];
  if (v16)
  {
    v19 = -v18;
  }

  else
  {
    v19 = v18;
  }

  memset(&v50, 0, sizeof(v50));
  CGAffineTransformMakeScale(&v50, 0.0, 0.0);
  v20 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [v20 setImage:v9];

  v21 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [v21 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [v30 setFrame:{v23, v25, v27, v29}];

  v31 = [(AVTAvatarActionsViewController *)self view];
  v32 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [v31 addSubview:v32];

  v49 = v50;
  v33 = [(AVTAvatarActionsViewController *)self avatarContainer];
  v48 = v49;
  [v33 setTransform:&v48];

  v34 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [v34 setAlpha:0.0];

  v35 = [(AVTAvatarActionsViewController *)self avtViewSession];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke;
  v38[3] = &unk_1E7F3C7E8;
  v40 = x;
  v41 = y;
  v42 = width;
  v43 = height;
  v44 = v19;
  v45 = y;
  v46 = width;
  v47 = height;
  v38[4] = self;
  v39 = v8;
  v36 = v8;
  [(AVTAvatarActionsViewController *)self configureAVTViewSession:v35 withAvatarRecord:v10 completionBlock:v38];
}

void __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69DD250];
    v4 = +[AVTUIEnvironment defaultEnvironment];
    [v4 actionAnimationsMultiplier];
    v6 = v5 * 0.84;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v7 = *(a1 + 64);
    v19 = *(a1 + 48);
    v20 = v7;
    v8 = *(a1 + 96);
    v21 = *(a1 + 80);
    v17[2] = __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke_2;
    v17[3] = &unk_1E7F3C7C0;
    v9 = *(a1 + 40);
    v18 = *(a1 + 32);
    v22 = v8;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke_6;
    v15[3] = &unk_1E7F3B960;
    v15[4] = v18;
    v16 = v9;
    [v3 animateKeyframesWithDuration:0 delay:v17 options:v15 animations:v6 completion:0.0];

    v10 = MEMORY[0x1E69DD250];
    [*(a1 + 32) duplicateScaleDuration];
    v12 = v11;
    [*(a1 + 32) duplicateScaleDelay];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke_7;
    v14[3] = &unk_1E7F3A9B8;
    v14[4] = *(a1 + 32);
    [v10 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v12 options:v13 animations:0.6 completion:0.0];
  }
}

uint64_t __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke_3;
  v7[3] = &unk_1E7F3C798;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v7 relativeDuration:0.0 animations:0.1];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke_4;
  v4[3] = &unk_1E7F3C798;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.2 animations:0.6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke_5;
  v3[3] = &unk_1E7F3A9B8;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.4 animations:0.5];
}

void __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) transitionImageView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) transitionImageView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) avatarContainer];
  [v1 setAlpha:1.0];
}

uint64_t __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke_6(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Duplicate transtion interrupted unexpectedly!" userInfo:0];
    [v3 raise];
  }

  v4 = [*(a1 + 32) transitionImageView];
  [v4 removeFromSuperview];

  v5 = [*(a1 + 32) transitionImageView];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 32) transitionImageView];
  [v6 setImage:0];

  v7 = [*(a1 + 32) avatarContainer];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [*(a1 + 32) transitionImageView];
  [v16 setFrame:{v9, v11, v13, v15}];

  result = *(a1 + 40);
  if (result)
  {
    v18 = *(result + 16);

    return v18();
  }

  return result;
}

void __110__AVTAvatarActionsViewController_performTransitionAfterDuplicateToRecord_previousRecordImage_completionBlock___block_invoke_7(uint64_t a1)
{
  v1 = [*(a1 + 32) avatarContainer];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v3[0] = *MEMORY[0x1E695EFD0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v1 setTransform:v3];
}

- (double)deleteMoveInDuration
{
  v2 = +[AVTUIEnvironment defaultEnvironment];
  [v2 actionAnimationsMultiplier];
  v4 = v3 * 0.84 * 0.5;

  return v4;
}

- (double)deleteMoveInDelay
{
  v2 = +[AVTUIEnvironment defaultEnvironment];
  [v2 actionAnimationsMultiplier];
  v4 = v3 * 0.84 * 0.5;

  return v4;
}

- (void)performTransitionAfterDeleteToRecord:(id)a3 fromLeft:(BOOL)a4 previousRecordImage:(id)a5 completionBlock:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [v13 frame];
  v63 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [v21 frame];
  v82 = CGRectInset(v81, -20.0, -20.0);
  y = v82.origin.y;
  x = v82.origin.x;
  height = v82.size.height;
  width = v82.size.width;

  v22 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [v22 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v57 = v26 + v30 * 0.5;
  v58 = v24 + v28 * 0.5;
  v31 = [(AVTAvatarActionsViewController *)self environment];
  v32 = [v31 userInterfaceLayoutDirection] != 0;

  if (v32 == v8)
  {
    v34 = [(AVTAvatarActionsViewController *)self view];
    [v34 bounds];
    MaxX = CGRectGetMaxX(v83);
  }

  else
  {
    MaxX = 0.0 - v18;
  }

  v35 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [v35 setImage:v12];

  v36 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [v36 frame];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [v45 setFrame:{v38, v40, v42, v44}];

  v46 = [(AVTAvatarActionsViewController *)self view];
  v47 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [v46 addSubview:v47];

  v48 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [v48 setFrame:{MaxX, v16, v18, v20}];

  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke;
  v67[3] = &unk_1E7F3C838;
  v67[4] = self;
  v69 = x;
  v70 = y;
  v71 = width;
  v72 = height;
  v73 = v58;
  v74 = v57;
  __asm { FMOV            V0.2D, #1.0 }

  v75 = _Q0;
  v54 = v11;
  v68 = v54;
  v80 = v10 != 0;
  v76 = v63;
  v77 = v16;
  v78 = v18;
  v79 = v20;
  v55 = MEMORY[0x1BFB0DE80](v67);
  v56 = v55;
  if (v10)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_8;
    block[3] = &unk_1E7F3C860;
    block[4] = self;
    v65 = v10;
    v66 = v56;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(v55 + 16))(v55, 1);
  }
}

void __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69DD250];
    v4 = +[AVTUIEnvironment defaultEnvironment];
    [v4 actionAnimationsMultiplier];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v5 = *(a1 + 64);
    v28 = *(a1 + 48);
    v29 = v5;
    v6 = *(a1 + 96);
    v30 = *(a1 + 80);
    v8 = v7 * 0.84;
    v26[2] = __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_2;
    v26[3] = &unk_1E7F3C7C0;
    v9 = *(a1 + 40);
    v27 = *(a1 + 32);
    v31 = v6;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_5;
    v23[3] = &unk_1E7F3C810;
    v23[4] = v27;
    v24 = v9;
    v25 = *(a1 + 144);
    [v3 animateKeyframesWithDuration:0 delay:v26 options:v23 animations:v8 completion:0.0];

    if (*(a1 + 144) == 1)
    {
      v10 = MEMORY[0x1E69DD250];
      [*(a1 + 32) deleteMoveInDuration];
      v12 = v11;
      [*(a1 + 32) deleteMoveInDelay];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v13 = *(a1 + 128);
      v21 = *(a1 + 112);
      v22 = v13;
      v20[2] = __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_6;
      v20[3] = &unk_1E7F3C798;
      v20[4] = *(a1 + 32);
      [v10 animateWithDuration:0 delay:v20 usingSpringWithDamping:0 initialSpringVelocity:v12 options:v14 animations:0.8 completion:0.0];
    }

    else
    {
      v15 = +[AVTUIEnvironment defaultEnvironment];
      [v15 actionAnimationsMultiplier];
      v17 = dispatch_time(0, (v16 * 0.84 * 0.2 * 1000000000.0));
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_7;
      v18[3] = &unk_1E7F3AFF8;
      v19 = *(a1 + 40);
      dispatch_after(v17, MEMORY[0x1E69E96A0], v18);
    }
  }
}

uint64_t __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_3;
  v7[3] = &unk_1E7F3C798;
  v7[4] = *(a1 + 32);
  v2 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v2;
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v7 relativeDuration:0.0 animations:0.1];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_4;
  v4[3] = &unk_1E7F3C798;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.2 animations:0.3];
}

void __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) transitionImageView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) transitionImageView];
  [v6 setFrame:{v2, v3, v4, v5}];

  v7 = [*(a1 + 32) transitionImageView];
  [v7 setAlpha:0.0];
}

uint64_t __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_5(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) transitionImageView];
    [v3 removeFromSuperview];

    v4 = [*(v2 + 32) transitionImageView];
    [v4 setAlpha:1.0];

    v5 = [*(v2 + 32) transitionImageView];
    [v5 setImage:0];

    v6 = [*(v2 + 32) avatarContainer];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [*(v2 + 32) transitionImageView];
    [v15 setFrame:{v8, v10, v12, v14}];

    result = *(v2 + 40);
    if (result)
    {
      if (*(v2 + 48) == 1)
      {
        v16 = *(result + 16);

        return v16();
      }
    }
  }

  return result;
}

void __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) avatarContainer];
  [v5 setFrame:{v1, v2, v3, v4}];
}

uint64_t __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_7(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 avtViewSession];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_9;
  v5[3] = &unk_1E7F3AC00;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 configureAVTViewSession:v3 withAvatarRecord:v4 completionBlock:v5];
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v8 = [(AVTAvatarActionsViewController *)self currentLayout:a3];
  if (v8)
  {
    v9 = [(AVTAvatarActionsViewController *)self currentLayout];
    [v9 userInfoFrame];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = off_1E7F39828;
  if (a4 != 1)
  {
    v12 = off_1E7F39868;
  }

  v13 = objc_alloc(*v12);
  v14 = [(AVTAvatarActionsViewController *)self sessionProvider];
  v15 = [(AVTAvatarActionsViewController *)self traitCollection];
  v16 = [v15 layoutDirection] == 1;
  v17 = [(AVTAvatarActionsViewController *)self environment];
  v18 = [v13 initWithAVTViewLayoutInfo:v14 userInfoViewHeight:v16 RTL:v17 environment:v11];

  return v18;
}

- (int64_t)interfaceOrientationForFaceTrackingManager:(id)a3
{
  v3 = [(AVTAvatarActionsViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 _windowInterfaceOrientation];

  return v5;
}

- (void)controllerPresentationWillObstructView:(id)a3
{
  v10 = a3;
  v4 = [(AVTAvatarActionsViewController *)self editorViewController];

  if (v4)
  {
    v5 = [(AVTAvatarActionsViewController *)self editorViewController];
    [v5 controllerPresentationWillObstructView:v10];
LABEL_3:

    goto LABEL_4;
  }

  v6 = [(AVTAvatarActionsViewController *)self presentedViewController];
  if (v6)
  {
    v7 = v6;
    v8 = [(AVTAvatarActionsViewController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [(AVTAvatarActionsViewController *)self presentedViewController];
      [v5 dismissViewControllerAnimated:0 completion:0];
      goto LABEL_3;
    }
  }

LABEL_4:
}

- (AVTAvatarActionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AVTAvatarEditorViewController)editorViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_editorViewController);

  return WeakRetained;
}

- (void)performEdit
{
  v3 = [(AVTAvatarActionsViewController *)self actionsController];
  v2 = [v3 actionsModel];
  [v2 didTapEdit];
}

@end
@interface AVTAvatarActionsViewController
- (AVTAvatarActionsViewController)initWithAVTViewSessionProvider:(id)provider actionsController:(id)controller environment:(id)environment;
- (AVTAvatarActionsViewControllerDelegate)delegate;
- (AVTAvatarEditorViewController)editorViewController;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (double)deleteMoveInDelay;
- (double)deleteMoveInDuration;
- (double)duplicateScaleDelay;
- (double)duplicateScaleDuration;
- (id)actionsModel:(id)model recordUpdateForDeletingRecord:(id)record;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (int64_t)interfaceOrientationForFaceTrackingManager:(id)manager;
- (void)actionsController:(id)controller didAddRecord:(id)record;
- (void)actionsController:(id)controller didDeleteRecord:(id)record withRecordUpdate:(id)update completionBlock:(id)block;
- (void)actionsController:(id)controller didDuplicateToRecord:(id)record completionBlock:(id)block;
- (void)actionsController:(id)controller didEditRecord:(id)record;
- (void)actionsControllerDidFinish:(id)finish;
- (void)applyLayout:(id)layout;
- (void)beginAVTViewSessionWithDidBeginBlock:(id)block;
- (void)beginUsingAVTViewFromSession:(id)session;
- (void)configureAVTViewSession:(id)session withAvatarRecord:(id)record completionBlock:(id)block;
- (void)configureNavigationItems;
- (void)configureUserInfoLabel;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)controllerPresentationWillObstructView:(id)view;
- (void)createTransitionImageViewIfNeeded;
- (void)didTapAvatarView:(id)view;
- (void)didTapDone:(id)done;
- (void)dismissEditorViewController:(id)controller forActionsController:(id)actionsController wasCreate:(BOOL)create didEdit:(BOOL)edit animated:(BOOL)animated completion:(id)completion;
- (void)layoutViewForActionsController;
- (void)loadView;
- (void)performEdit;
- (void)performTransitionAfterDeleteToRecord:(id)record fromLeft:(BOOL)left previousRecordImage:(id)image completionBlock:(id)block;
- (void)performTransitionAfterDuplicateToRecord:(id)record previousRecordImage:(id)image completionBlock:(id)block;
- (void)prepareForAnimatedTransitionWithLayout:(id)layout completionBlock:(id)block;
- (void)presentEditorViewController:(id)controller forActionsController:(id)actionsController isCreate:(BOOL)create;
- (void)rebuildLayout;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willPresentAvatarRecord:(id)record;
@end

@implementation AVTAvatarActionsViewController

- (AVTAvatarActionsViewController)initWithAVTViewSessionProvider:(id)provider actionsController:(id)controller environment:(id)environment
{
  providerCopy = provider;
  controllerCopy = controller;
  environmentCopy = environment;
  v15.receiver = self;
  v15.super_class = AVTAvatarActionsViewController;
  v12 = [(AVTAvatarActionsViewController *)&v15 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionProvider, provider);
    objc_storeStrong(&v13->_actionsController, controller);
    objc_storeStrong(&v13->_environment, environment);
    [controllerCopy setDelegate:v13];
    v13->_allowFacetracking = AVTUIIsFacetrackingSupported();
  }

  return v13;
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

  if ((AVTUIForceCameraDisclosures_once() & 1) != 0 || AVTDeviceIsGreenTea())
  {
    v13 = AVTUIHasDisplayedCameraDisclosureSplashScreen();
  }

  else
  {
    v13 = 1;
  }

  allowFacetracking = [(AVTAvatarActionsViewController *)self allowFacetracking];
  avtView3 = [sessionCopy avtView];
  [avtView3 setEnableFaceTracking:allowFacetracking & v13];

  view = [(AVTAvatarActionsViewController *)self view];
  backgroundColor = [view backgroundColor];
  avtView4 = [sessionCopy avtView];
  [avtView4 setBackgroundColor:backgroundColor];

  avtViewUpdater = [sessionCopy avtViewUpdater];
  [avtViewUpdater setAvatarRecord:recordCopy completionHandler:blockCopy];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = [v3 initWithFrame:?];
  [(AVTAvatarActionsViewController *)self setView:v5];

  v6 = +[AVTUIColorRepository modalBackgroundColor];
  view = [(AVTAvatarActionsViewController *)self view];
  [view setBackgroundColor:v6];

  v8 = [AVTImageTransitioningContainerView alloc];
  view2 = [(AVTAvatarActionsViewController *)self view];
  [view2 bounds];
  v10 = [(AVTImageTransitioningContainerView *)v8 initWithFrame:1 layoutMode:?];
  [(AVTAvatarActionsViewController *)self setAvatarContainer:v10];

  sessionProvider = [(AVTAvatarActionsViewController *)self sessionProvider];
  [sessionProvider avtViewBackingSize];
  v13 = v12;
  v15 = v14;
  avatarContainer = [(AVTAvatarActionsViewController *)self avatarContainer];
  [avatarContainer setAspectRatio:{v13, v15}];

  view3 = [(AVTAvatarActionsViewController *)self view];
  avatarContainer2 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [view3 addSubview:avatarContainer2];
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
  actionsController = [(AVTAvatarActionsViewController *)self actionsController];
  inlineActionButtons = [actionsController inlineActionButtons];

  v4 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:inlineActionButtons];
  [v4 setAxis:1];
  [v4 setDistribution:1];
  [v4 setSpacing:10.0];
  view = [(AVTAvatarActionsViewController *)self view];
  [view addSubview:v4];

  buttonsView = [(AVTAvatarActionsViewController *)self buttonsView];

  if (buttonsView)
  {
    buttonsView2 = [(AVTAvatarActionsViewController *)self buttonsView];
    [buttonsView2 removeFromSuperview];
  }

  [(AVTAvatarActionsViewController *)self setButtonsView:v4];
  [(AVTAvatarActionsViewController *)self configureNavigationItems];
  currentLayout = [(AVTAvatarActionsViewController *)self currentLayout];
  buttonCount = [currentLayout buttonCount];
  v10 = [inlineActionButtons count];

  if (buttonCount == v10)
  {
    currentLayout2 = [(AVTAvatarActionsViewController *)self currentLayout];
    [(AVTAvatarActionsViewController *)self applyLayout:currentLayout2];
  }

  else
  {
    [(AVTAvatarActionsViewController *)self rebuildLayout];
  }
}

- (void)configureNavigationItems
{
  v24[1] = *MEMORY[0x1E69E9840];
  environment = [(AVTAvatarActionsViewController *)self environment];
  deviceIsMac = [environment deviceIsMac];

  if (deviceIsMac)
  {
    v5 = [AVTToolbarButton alloc];
    v6 = AVTAvatarUIBundle();
    v7 = [v6 localizedStringForKey:@"DONE" value:&stru_1F39618F0 table:@"Localized"];
    v8 = [(AVTToolbarButton *)v5 initWithTitle:v7 isDefault:1];

    v9 = [AVTToolBar alloc];
    v24[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v11 = [(AVTToolBar *)v9 initWithButtons:v10];

    view = [(AVTAvatarActionsViewController *)self view];
    [view bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;

    +[AVTToolBar defaultToolBarHeight];
    [(AVTToolBar *)v11 setFrame:v14, v18 - v19, v16, v19];
    [(AVTToolBar *)v11 setAutoresizingMask:10];
    [(AVTToolBar *)v11 setDelegate:self];
    view2 = [(AVTAvatarActionsViewController *)self view];
    [view2 addSubview:v11];

    [(AVTAvatarActionsViewController *)self setToolbar:v11];
    navigationController = [(AVTAvatarActionsViewController *)self navigationController];
    [navigationController setNavigationBarHidden:1];
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_didTapDone_];
    navigationItem = [(AVTAvatarActionsViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v23];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = AVTAvatarActionsViewController;
  [(AVTAvatarActionsViewController *)&v5 viewWillAppear:appear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  [(AVTAvatarActionsViewController *)self beginAVTViewSessionWithDidBeginBlock:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = AVTAvatarActionsViewController;
  [(AVTAvatarActionsViewController *)&v6 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  avtViewSession = [(AVTAvatarActionsViewController *)self avtViewSession];
  [avtViewSession tearDownWithCompletionHandler:0];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  actionsController = [(AVTAvatarActionsViewController *)self actionsController];
  [actionsController updateForChangedContentCategorySize];

  [(AVTAvatarActionsViewController *)self layoutViewForActionsController];
}

- (void)beginAVTViewSessionWithDidBeginBlock:(id)block
{
  blockCopy = block;
  avtViewSession = [(AVTAvatarActionsViewController *)self avtViewSession];
  isActive = [avtViewSession isActive];

  if (isActive)
  {
    if (blockCopy)
    {
      avtViewSession2 = [(AVTAvatarActionsViewController *)self avtViewSession];
      blockCopy[2](blockCopy, avtViewSession2);
    }
  }

  else
  {
    postSessionDidBecomeActiveHandler = [(AVTAvatarActionsViewController *)self postSessionDidBecomeActiveHandler];

    if (postSessionDidBecomeActiveHandler)
    {
      postSessionDidBecomeActiveHandler2 = [(AVTAvatarActionsViewController *)self postSessionDidBecomeActiveHandler];
      postSessionDidBecomeActiveHandler2[2](postSessionDidBecomeActiveHandler2, 0);
    }

    [(AVTAvatarActionsViewController *)self setPostSessionDidBecomeActiveHandler:blockCopy];
    objc_initWeak(&location, self);
    sessionProvider = [(AVTAvatarActionsViewController *)self sessionProvider];
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
    v11 = [sessionProvider sessionWithDidBecomeActiveHandler:v14 tearDownHandler:v12];
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

- (void)beginUsingAVTViewFromSession:(id)session
{
  sessionCopy = session;
  avatarContainer = [(AVTAvatarActionsViewController *)self avatarContainer];
  avtViewContainer = [sessionCopy avtViewContainer];
  [avatarContainer setLiveView:avtViewContainer];

  avatarContainer2 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [avatarContainer2 transitionLiveViewToFront];

  actionsController = [(AVTAvatarActionsViewController *)self actionsController];
  actionsModel = [actionsController actionsModel];
  avatarRecord = [actionsModel avatarRecord];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__AVTAvatarActionsViewController_beginUsingAVTViewFromSession___block_invoke;
  v12[3] = &unk_1E7F3AA58;
  v12[4] = self;
  v13 = sessionCopy;
  v11 = sessionCopy;
  [(AVTAvatarActionsViewController *)self configureAVTViewSession:v11 withAvatarRecord:avatarRecord completionBlock:v12];
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
  sessionProvider = [(AVTAvatarActionsViewController *)self sessionProvider];
  faceTrackingManager = [sessionProvider faceTrackingManager];
  userInfoView = [faceTrackingManager userInfoView];

  currentLayout = [(AVTAvatarActionsViewController *)self currentLayout];

  if (currentLayout)
  {
    currentLayout2 = [(AVTAvatarActionsViewController *)self currentLayout];
    [currentLayout2 userInfoFrame];
    [userInfoView setFrame:?];
  }

  view = [(AVTAvatarActionsViewController *)self view];
  backgroundColor = [view backgroundColor];
  [userInfoView setContainerBackgroundColor:backgroundColor];

  view2 = [(AVTAvatarActionsViewController *)self view];
  [view2 addSubview:userInfoView];
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  toolbar = [(AVTAvatarActionsViewController *)self toolbar];
  if (toolbar)
  {
    toolbar2 = [(AVTAvatarActionsViewController *)self toolbar];
    [toolbar2 bounds];
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
  currentLayout = [(AVTAvatarActionsViewController *)self currentLayout];
  [currentLayout containerSize];
  v5 = v4;
  v7 = v6;
  view = [(AVTAvatarActionsViewController *)self view];
  [view bounds];
  if (v5 != v10 || v7 != v9)
  {

LABEL_6:
    [(AVTAvatarActionsViewController *)self rebuildLayout];
    return;
  }

  currentLayout2 = [(AVTAvatarActionsViewController *)self currentLayout];
  [currentLayout2 edgeInsets];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  view2 = [(AVTAvatarActionsViewController *)self view];
  [view2 safeAreaInsets];
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
  environment = [(AVTAvatarActionsViewController *)self environment];
  if ([environment deviceIsPad])
  {

    v4 = off_1E7F398B0;
  }

  else
  {
    environment2 = [(AVTAvatarActionsViewController *)self environment];
    deviceIsMac = [environment2 deviceIsMac];

    v4 = off_1E7F398A8;
    if (deviceIsMac)
    {
      v4 = off_1E7F398B0;
    }
  }

  v7 = objc_alloc(*v4);
  view = [(AVTAvatarActionsViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;
  view2 = [(AVTAvatarActionsViewController *)self view];
  [view2 safeAreaInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  buttonsView = [(AVTAvatarActionsViewController *)self buttonsView];
  arrangedSubviews = [buttonsView arrangedSubviews];
  v24 = [arrangedSubviews count];
  sessionProvider = [(AVTAvatarActionsViewController *)self sessionProvider];
  v26 = [v7 initWithContainerSize:v24 insets:sessionProvider buttonCount:v10 avtViewLayoutInfo:{v12, v15, v17, v19, v21}];

  [(AVTAvatarActionsViewController *)self applyLayout:v26];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = AVTAvatarActionsViewController;
  coordinatorCopy = coordinator;
  [(AVTAvatarActionsViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__AVTAvatarActionsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7F3A9E0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __85__AVTAvatarActionsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) avtViewSession];
  v1 = [v2 avtView];
  [v1 updateInterfaceOrientation];
}

- (void)applyLayout:(id)layout
{
  layoutCopy = layout;
  isAnimating = [(AVTAvatarActionsViewController *)self isAnimating];
  v5 = layoutCopy;
  if (layoutCopy && (isAnimating & 1) == 0)
  {
    avtViewSession = [(AVTAvatarActionsViewController *)self avtViewSession];
    isActive = [avtViewSession isActive];

    if (isActive)
    {
      [layoutCopy avatarContainerViewFrame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      avatarContainer = [(AVTAvatarActionsViewController *)self avatarContainer];
      [avatarContainer setFrame:{v9, v11, v13, v15}];

      if (![(AVTAvatarActionsViewController *)self shouldHideUserInfoView])
      {
        [layoutCopy userInfoFrame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        sessionProvider = [(AVTAvatarActionsViewController *)self sessionProvider];
        faceTrackingManager = [sessionProvider faceTrackingManager];
        userInfoView = [faceTrackingManager userInfoView];
        [userInfoView setFrame:{v18, v20, v22, v24}];
      }
    }

    [layoutCopy actionButtonsViewAlpha];
    v29 = v28;
    buttonsView = [(AVTAvatarActionsViewController *)self buttonsView];
    [buttonsView setAlpha:v29];

    [layoutCopy actionButtonsViewFrame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    buttonsView2 = [(AVTAvatarActionsViewController *)self buttonsView];
    [buttonsView2 setFrame:{v32, v34, v36, v38}];

    isAnimating = [(AVTAvatarActionsViewController *)self setCurrentLayout:layoutCopy];
    v5 = layoutCopy;
  }

  MEMORY[0x1EEE66BB8](isAnimating, v5);
}

- (void)createTransitionImageViewIfNeeded
{
  transitionImageView = [(AVTAvatarActionsViewController *)self transitionImageView];

  if (!transitionImageView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(AVTAvatarActionsViewController *)self setTransitionImageView:v4];

    transitionImageView2 = [(AVTAvatarActionsViewController *)self transitionImageView];
    [transitionImageView2 setContentMode:1];

    avtViewSession = [(AVTAvatarActionsViewController *)self avtViewSession];
    isActive = [avtViewSession isActive];

    if (isActive)
    {
      avatarContainer = [(AVTAvatarActionsViewController *)self avatarContainer];
      [avatarContainer frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      transitionImageView3 = [(AVTAvatarActionsViewController *)self transitionImageView];
      [transitionImageView3 setFrame:{v9, v11, v13, v15}];
    }
  }
}

- (void)didTapAvatarView:(id)view
{
  avtViewSession = [(AVTAvatarActionsViewController *)self avtViewSession];
  isActive = [avtViewSession isActive];

  if (isActive)
  {
    sessionProvider = [(AVTAvatarActionsViewController *)self sessionProvider];
    faceTrackingManager = [sessionProvider faceTrackingManager];
    [faceTrackingManager resumeFaceTrackingIfNeededAnimated:1];
  }
}

- (void)didTapDone:(id)done
{
  delegate = [(AVTAvatarActionsViewController *)self delegate];
  [delegate avatarActionsViewControllerDidFinish:self];
}

- (void)prepareForAnimatedTransitionWithLayout:(id)layout completionBlock:(id)block
{
  layoutCopy = layout;
  blockCopy = block;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__AVTAvatarActionsViewController_prepareForAnimatedTransitionWithLayout_completionBlock___block_invoke;
  v10[3] = &unk_1E7F3C770;
  objc_copyWeak(&v13, &location);
  v8 = layoutCopy;
  v11 = v8;
  v9 = blockCopy;
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

- (void)presentEditorViewController:(id)controller forActionsController:(id)actionsController isCreate:(BOOL)create
{
  controllerCopy = controller;
  [(AVTAvatarActionsViewController *)self setEditorViewController:?];
  if (create || +[AVTAvatarEditorViewController shouldShowSplashScreen])
  {
    navigationController2 = [[AVTTransparentNavigationController alloc] initWithRootViewController:controllerCopy];
    [(AVTAvatarActionsViewController *)self presentViewController:navigationController2 animated:1 completion:0];
  }

  else
  {
    navigationController = [(AVTAvatarActionsViewController *)self navigationController];
    [navigationController setDelegate:self];

    navigationController2 = [(AVTAvatarActionsViewController *)self navigationController];
    [(AVTTransparentNavigationController *)navigationController2 pushViewController:controllerCopy animated:1];
  }
}

- (void)dismissEditorViewController:(id)controller forActionsController:(id)actionsController wasCreate:(BOOL)create didEdit:(BOOL)edit animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  actionsControllerCopy = actionsController;
  completionCopy = completion;
  if (create || ([(AVTAvatarActionsViewController *)self presentedViewController], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    if (!edit)
    {
      [(AVTAvatarActionsViewController *)self dismissViewControllerAnimated:animatedCopy completion:completionCopy];
      goto LABEL_8;
    }
  }

  else
  {
    navigationController = [(AVTAvatarActionsViewController *)self navigationController];
    v18 = [navigationController popViewControllerAnimated:1];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_8:
  [(AVTAvatarActionsViewController *)self setEditorViewController:0];
}

- (void)actionsController:(id)controller didAddRecord:(id)record
{
  recordCopy = record;
  delegate = [(AVTAvatarActionsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AVTAvatarActionsViewController *)self delegate];
    [delegate2 avatarActionsViewController:self didPerformAction:3 withAvatarRecord:recordCopy];
  }

  [(AVTAvatarActionsViewController *)self willPresentAvatarRecord:recordCopy];
}

- (void)actionsController:(id)controller didEditRecord:(id)record
{
  recordCopy = record;
  delegate = [(AVTAvatarActionsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AVTAvatarActionsViewController *)self delegate];
    [delegate2 avatarActionsViewController:self didPerformAction:0 withAvatarRecord:recordCopy];
  }

  [(AVTAvatarActionsViewController *)self willPresentAvatarRecord:recordCopy];
}

- (void)willPresentAvatarRecord:(id)record
{
  recordCopy = record;
  delegate = [(AVTAvatarActionsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AVTAvatarActionsViewController *)self delegate];
    [delegate2 avatarActionsViewController:self willPresentAvatarRecord:recordCopy];
  }
}

- (void)actionsController:(id)controller didDuplicateToRecord:(id)record completionBlock:(id)block
{
  recordCopy = record;
  blockCopy = block;
  delegate = [(AVTAvatarActionsViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(AVTAvatarActionsViewController *)self delegate];
    [delegate2 avatarActionsViewController:self didPerformAction:3 withAvatarRecord:recordCopy];
  }

  v12 = MEMORY[0x1E698E2D8];
  avtViewSession = [(AVTAvatarActionsViewController *)self avtViewSession];
  avtView = [avtViewSession avtView];
  avatarContainer = [(AVTAvatarActionsViewController *)self avatarContainer];
  environment = [(AVTAvatarActionsViewController *)self environment];
  logger = [environment logger];
  v18 = [v12 snapshotAVTView:avtView matchingViewSize:avatarContainer highQuality:1 logger:logger];

  [(AVTAvatarActionsViewController *)self createTransitionImageViewIfNeeded];
  [(AVTAvatarActionsViewController *)self setIsAnimating:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__AVTAvatarActionsViewController_actionsController_didDuplicateToRecord_completionBlock___block_invoke;
  v20[3] = &unk_1E7F3ACA0;
  v20[4] = self;
  v21 = blockCopy;
  v19 = blockCopy;
  [(AVTAvatarActionsViewController *)self performTransitionAfterDuplicateToRecord:recordCopy previousRecordImage:v18 completionBlock:v20];
}

uint64_t __89__AVTAvatarActionsViewController_actionsController_didDuplicateToRecord_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsAnimating:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)actionsModel:(id)model recordUpdateForDeletingRecord:(id)record
{
  recordCopy = record;
  delegate = [(AVTAvatarActionsViewController *)self delegate];
  v7 = [delegate avatarActionsViewController:self recordUpdateForDeletingRecord:recordCopy];

  return v7;
}

- (void)actionsController:(id)controller didDeleteRecord:(id)record withRecordUpdate:(id)update completionBlock:(id)block
{
  recordCopy = record;
  blockCopy = block;
  updateCopy = update;
  delegate = [(AVTAvatarActionsViewController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(AVTAvatarActionsViewController *)self delegate];
    [delegate2 avatarActionsViewController:self didPerformAction:2 withAvatarRecord:recordCopy];
  }

  avatarRecord = [updateCopy avatarRecord];
  [(AVTAvatarActionsViewController *)self willPresentAvatarRecord:avatarRecord];

  v16 = MEMORY[0x1E698E2D8];
  avtViewSession = [(AVTAvatarActionsViewController *)self avtViewSession];
  avtView = [avtViewSession avtView];
  avtViewSession2 = [(AVTAvatarActionsViewController *)self avtViewSession];
  avtView2 = [avtViewSession2 avtView];
  environment = [(AVTAvatarActionsViewController *)self environment];
  [environment logger];
  v22 = v27 = recordCopy;
  v23 = [v16 snapshotAVTView:avtView matchingViewSize:avtView2 highQuality:1 logger:v22];

  [(AVTAvatarActionsViewController *)self createTransitionImageViewIfNeeded];
  [(AVTAvatarActionsViewController *)self setIsAnimating:1];
  avatarRecord2 = [updateCopy avatarRecord];
  fromLeft = [updateCopy fromLeft];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __101__AVTAvatarActionsViewController_actionsController_didDeleteRecord_withRecordUpdate_completionBlock___block_invoke;
  v28[3] = &unk_1E7F3ACA0;
  v28[4] = self;
  v29 = blockCopy;
  v26 = blockCopy;
  [(AVTAvatarActionsViewController *)self performTransitionAfterDeleteToRecord:avatarRecord2 fromLeft:fromLeft previousRecordImage:v23 completionBlock:v28];
}

uint64_t __101__AVTAvatarActionsViewController_actionsController_didDeleteRecord_withRecordUpdate_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsAnimating:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)actionsControllerDidFinish:(id)finish
{
  delegate = [(AVTAvatarActionsViewController *)self delegate];
  [delegate avatarActionsViewControllerDidFinish:self];
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

- (void)performTransitionAfterDuplicateToRecord:(id)record previousRecordImage:(id)image completionBlock:(id)block
{
  blockCopy = block;
  imageCopy = image;
  recordCopy = record;
  transitionImageView = [(AVTAvatarActionsViewController *)self transitionImageView];
  [transitionImageView frame];
  v52 = CGRectInset(v51, 20.0, 20.0);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;

  environment = [(AVTAvatarActionsViewController *)self environment];
  userInterfaceLayoutDirection = [environment userInterfaceLayoutDirection];

  view = [(AVTAvatarActionsViewController *)self view];
  [view bounds];
  if (userInterfaceLayoutDirection)
  {
    v19 = -v18;
  }

  else
  {
    v19 = v18;
  }

  memset(&v50, 0, sizeof(v50));
  CGAffineTransformMakeScale(&v50, 0.0, 0.0);
  transitionImageView2 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [transitionImageView2 setImage:imageCopy];

  avatarContainer = [(AVTAvatarActionsViewController *)self avatarContainer];
  [avatarContainer frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  transitionImageView3 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [transitionImageView3 setFrame:{v23, v25, v27, v29}];

  view2 = [(AVTAvatarActionsViewController *)self view];
  transitionImageView4 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [view2 addSubview:transitionImageView4];

  v49 = v50;
  avatarContainer2 = [(AVTAvatarActionsViewController *)self avatarContainer];
  v48 = v49;
  [avatarContainer2 setTransform:&v48];

  avatarContainer3 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [avatarContainer3 setAlpha:0.0];

  avtViewSession = [(AVTAvatarActionsViewController *)self avtViewSession];
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
  v39 = blockCopy;
  v36 = blockCopy;
  [(AVTAvatarActionsViewController *)self configureAVTViewSession:avtViewSession withAvatarRecord:recordCopy completionBlock:v38];
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

- (void)performTransitionAfterDeleteToRecord:(id)record fromLeft:(BOOL)left previousRecordImage:(id)image completionBlock:(id)block
{
  leftCopy = left;
  recordCopy = record;
  blockCopy = block;
  imageCopy = image;
  avatarContainer = [(AVTAvatarActionsViewController *)self avatarContainer];
  [avatarContainer frame];
  v63 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  transitionImageView = [(AVTAvatarActionsViewController *)self transitionImageView];
  [transitionImageView frame];
  v82 = CGRectInset(v81, -20.0, -20.0);
  y = v82.origin.y;
  x = v82.origin.x;
  height = v82.size.height;
  width = v82.size.width;

  transitionImageView2 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [transitionImageView2 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v57 = v26 + v30 * 0.5;
  v58 = v24 + v28 * 0.5;
  environment = [(AVTAvatarActionsViewController *)self environment];
  v32 = [environment userInterfaceLayoutDirection] != 0;

  if (v32 == leftCopy)
  {
    view = [(AVTAvatarActionsViewController *)self view];
    [view bounds];
    MaxX = CGRectGetMaxX(v83);
  }

  else
  {
    MaxX = 0.0 - v18;
  }

  transitionImageView3 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [transitionImageView3 setImage:imageCopy];

  avatarContainer2 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [avatarContainer2 frame];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  transitionImageView4 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [transitionImageView4 setFrame:{v38, v40, v42, v44}];

  view2 = [(AVTAvatarActionsViewController *)self view];
  transitionImageView5 = [(AVTAvatarActionsViewController *)self transitionImageView];
  [view2 addSubview:transitionImageView5];

  avatarContainer3 = [(AVTAvatarActionsViewController *)self avatarContainer];
  [avatarContainer3 setFrame:{MaxX, v16, v18, v20}];

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
  v54 = blockCopy;
  v68 = v54;
  v80 = recordCopy != 0;
  v76 = v63;
  v77 = v16;
  v78 = v18;
  v79 = v20;
  v55 = MEMORY[0x1BFB0DE80](v67);
  v56 = v55;
  if (recordCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __116__AVTAvatarActionsViewController_performTransitionAfterDeleteToRecord_fromLeft_previousRecordImage_completionBlock___block_invoke_8;
    block[3] = &unk_1E7F3C860;
    block[4] = self;
    v65 = recordCopy;
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

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  v8 = [(AVTAvatarActionsViewController *)self currentLayout:controller];
  if (v8)
  {
    currentLayout = [(AVTAvatarActionsViewController *)self currentLayout];
    [currentLayout userInfoFrame];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = off_1E7F39828;
  if (operation != 1)
  {
    v12 = off_1E7F39868;
  }

  v13 = objc_alloc(*v12);
  sessionProvider = [(AVTAvatarActionsViewController *)self sessionProvider];
  traitCollection = [(AVTAvatarActionsViewController *)self traitCollection];
  v16 = [traitCollection layoutDirection] == 1;
  environment = [(AVTAvatarActionsViewController *)self environment];
  v18 = [v13 initWithAVTViewLayoutInfo:sessionProvider userInfoViewHeight:v16 RTL:environment environment:v11];

  return v18;
}

- (int64_t)interfaceOrientationForFaceTrackingManager:(id)manager
{
  view = [(AVTAvatarActionsViewController *)self view];
  window = [view window];
  _windowInterfaceOrientation = [window _windowInterfaceOrientation];

  return _windowInterfaceOrientation;
}

- (void)controllerPresentationWillObstructView:(id)view
{
  viewCopy = view;
  editorViewController = [(AVTAvatarActionsViewController *)self editorViewController];

  if (editorViewController)
  {
    editorViewController2 = [(AVTAvatarActionsViewController *)self editorViewController];
    [editorViewController2 controllerPresentationWillObstructView:viewCopy];
LABEL_3:

    goto LABEL_4;
  }

  presentedViewController = [(AVTAvatarActionsViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v7 = presentedViewController;
    presentedViewController2 = [(AVTAvatarActionsViewController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      editorViewController2 = [(AVTAvatarActionsViewController *)self presentedViewController];
      [editorViewController2 dismissViewControllerAnimated:0 completion:0];
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
  actionsController = [(AVTAvatarActionsViewController *)self actionsController];
  actionsModel = [actionsController actionsModel];
  [actionsModel didTapEdit];
}

@end
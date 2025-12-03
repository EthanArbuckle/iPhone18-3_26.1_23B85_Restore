@interface AVTCarouselController
+ (id)displayingCarouselForRecordDataSource:(id)source;
+ (id)recordingCarouselForRecordDataSource:(id)source;
+ (id)sessionProviderForMode:(int64_t)mode environment:(id)environment;
- (AVTCarouselController)initWithMode:(int64_t)mode dataSource:(id)source;
- (AVTCarouselController)initWithMode:(int64_t)mode sessionProvider:(id)provider dataSource:(id)source environment:(id)environment;
- (AVTDisplayingCarouselControllerDelegate)displayingDelegate;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTRecordView)focusedRecordingView;
- (AVTRecordingCarouselControllerDelegate)recordingDelegate;
- (AVTView)focusedDisplayView;
- (BOOL)allowsCreate;
- (double)decelerationRate;
- (id)avatarActionsViewController:(id)controller recordUpdateForDeletingRecord:(id)record;
- (id)snapshotProviderFocusedOnRecordWithIdentifier:(id)identifier size:(CGSize)size;
- (void)avatarActionsViewControllerDidFinish:(id)finish;
- (void)avatarEditorViewController:(id)controller didFinishWithAvatarRecord:(id)record;
- (void)avatarEditorViewControllerDidCancel:(id)cancel;
- (void)beginAVTViewSession;
- (void)dataSource:(id)source didAddRecord:(id)record atIndex:(unint64_t)index;
- (void)dataSource:(id)source didEditRecord:(id)record atIndex:(unint64_t)index;
- (void)dataSource:(id)source didRemoveRecord:(id)record atIndex:(unint64_t)index;
- (void)didBeginFocus:(id)focus;
- (void)displayAvatarRecord:(id)record animated:(BOOL)animated;
- (void)displayAvatarRecordWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)displayingController:(id)controller didChangeCurrentRecord:(id)record;
- (void)displayingController:(id)controller didMoveTowardRecord:(id)record withFactor:(double)factor;
- (void)displayingControllerWantsToPresentEditorForCreation:(id)creation;
- (void)loadView;
- (void)notifyDelegateDidFocusRecord:(id)record avtView:(id)view;
- (void)notifyDelegateDidUpdateWithRecord:(id)record;
- (void)notifyDelegateNearnessFactorDidChange:(double)change towardRecord:(id)record;
- (void)notifyDelegateWillEndFocusOnRecord:(id)record avtView:(id)view;
- (void)presentActionsForAvatar:(id)avatar;
- (void)presentEditorForCreatingAvatar:(id)avatar;
- (void)reloadData;
- (void)reloadDataCenteringToAvatarRecord:(id)record;
- (void)setAllowsCreate:(BOOL)create;
- (void)setAllowsCreate:(BOOL)create animated:(BOOL)animated;
- (void)setDecelerationRate:(double)rate;
- (void)setIsPostponingBeginSession:(BOOL)session;
- (void)setSingleAvatarMode:(BOOL)mode;
- (void)setSingleAvatarMode:(BOOL)mode fillContainer:(BOOL)container animated:(BOOL)animated;
- (void)setupAVTView:(id)view;
- (void)showMultiAvatarControllerAnimated:(BOOL)animated;
- (void)showSingleAvatarControllerAnimated:(BOOL)animated;
- (void)significantRecordChangeInDataSource:(id)source;
- (void)viewWillAppear:(BOOL)appear;
- (void)willEndFocus:(id)focus;
- (void)wrapAndPresentViewController:(id)controller animated:(BOOL)animated;
@end

@implementation AVTCarouselController

+ (id)sessionProviderForMode:(int64_t)mode environment:(id)environment
{
  environmentCopy = environment;
  if (mode == 1)
  {
    +[AVTViewSessionProvider creatorForAVTRecordView];
  }

  else
  {
    +[AVTViewSessionProvider creatorForAVTView];
  }
  v6 = ;
  [AVTViewSessionProvider backingSizeForEnvironment:environmentCopy];
  v9 = [[AVTViewSessionProvider alloc] initWithAVTViewBackingSize:v6 viewCreator:environmentCopy environment:v7, v8];

  return v9;
}

+ (id)displayingCarouselForRecordDataSource:(id)source
{
  sourceCopy = source;
  v5 = [[self alloc] initWithMode:0 dataSource:sourceCopy];

  return v5;
}

+ (id)recordingCarouselForRecordDataSource:(id)source
{
  sourceCopy = source;
  v5 = [[self alloc] initWithMode:1 dataSource:sourceCopy];

  return v5;
}

- (AVTCarouselController)initWithMode:(int64_t)mode dataSource:(id)source
{
  sourceCopy = source;
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [objc_opt_class() sessionProviderForMode:mode environment:v7];
  v9 = [(AVTCarouselController *)self initWithMode:mode sessionProvider:v8 dataSource:sourceCopy environment:v7];

  return v9;
}

- (AVTCarouselController)initWithMode:(int64_t)mode sessionProvider:(id)provider dataSource:(id)source environment:(id)environment
{
  providerCopy = provider;
  sourceCopy = source;
  environmentCopy = environment;
  v19.receiver = self;
  v19.super_class = AVTCarouselController;
  v14 = [(AVTCarouselController *)&v19 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    v14->_mode = mode;
    objc_storeStrong(&v14->_avtViewSessionProvider, provider);
    objc_storeStrong(&v15->_dataSource, source);
    [(AVTAvatarRecordDataSource *)v15->_dataSource addPriorityObserver:v15];
    logger = [(AVTUIEnvironment *)environmentCopy logger];
    logger = v15->_logger;
    v15->_logger = logger;

    v15->_environment = environmentCopy;
    v15->_singleAvatarMode = 0;
  }

  return v15;
}

- (double)decelerationRate
{
  multiAvatarController = [(AVTCarouselController *)self multiAvatarController];
  [multiAvatarController decelerationRate];
  v4 = v3;

  return v4;
}

- (void)setDecelerationRate:(double)rate
{
  multiAvatarController = [(AVTCarouselController *)self multiAvatarController];
  [multiAvatarController setDecelerationRate:rate];
}

- (void)loadView
{
  avtViewSessionProvider = [(AVTCarouselController *)self avtViewSessionProvider];
  [avtViewSessionProvider avtViewBackingSize];
  v4 = [AVTViewCarouselLayout adaptativeLayoutWithAVTViewAspectRatio:?];
  [(AVTCarouselController *)self setAvtViewLayout:v4];

  v5 = objc_alloc(MEMORY[0x1E69DD250]);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v9 = [v5 initWithFrame:?];

  [(AVTCarouselController *)self setView:v9];
  if ([(AVTCarouselController *)self singleAvatarMode])
  {
    [(AVTCarouselController *)self showSingleAvatarControllerAnimated:0];
  }

  else
  {
    [(AVTCarouselController *)self showMultiAvatarControllerAnimated:0];
  }

  avatarDisplayingController = [(AVTCarouselController *)self avatarDisplayingController];
  avtViewLayout = [(AVTCarouselController *)self avtViewLayout];
  [avatarDisplayingController prepareViewWithLayout:avtViewLayout];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AVTCarouselController;
  [(AVTCarouselController *)&v4 viewWillAppear:appear];
  [(AVTCarouselController *)self beginAVTViewSession];
  [(AVTCarouselController *)self reloadData];
}

- (void)beginAVTViewSession
{
  if (![(AVTCarouselController *)self isPostponingBeginSession])
  {
    avtViewSession = [(AVTCarouselController *)self avtViewSession];

    if (!avtViewSession)
    {
      objc_initWeak(&location, self);
      avtViewSessionProvider = [(AVTCarouselController *)self avtViewSessionProvider];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __44__AVTCarouselController_beginAVTViewSession__block_invoke;
      v8[3] = &unk_1E7F3AA08;
      objc_copyWeak(&v9, &location);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __44__AVTCarouselController_beginAVTViewSession__block_invoke_2;
      v6[3] = &unk_1E7F3AA30;
      objc_copyWeak(&v7, &location);
      v5 = [avtViewSessionProvider sessionWithDidBecomeActiveHandler:v8 tearDownHandler:v6];
      [(AVTCarouselController *)self setAvtViewSession:v5];

      objc_destroyWeak(&v7);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __44__AVTCarouselController_beginAVTViewSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 avtView];
  [WeakRetained setupAVTView:v4];

  [WeakRetained setAvtViewSession:v3];
  v5 = [v3 avtViewContainer];
  [WeakRetained setAvtViewContainer:v5];

  v6 = [WeakRetained avatarDisplayingController];
  v7 = [WeakRetained avtViewLayout];
  [v6 useAVTViewFromSession:v3 withLayout:v7];

  v8 = [WeakRetained avtViewSessionProvider];
  v9 = [v8 faceTrackingManager];
  [v9 setFaceTrackingManagementPaused:1];
}

void __44__AVTCarouselController_beginAVTViewSession__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained avatarDisplayingController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AVTCarouselController_beginAVTViewSession__block_invoke_3;
  v8[3] = &unk_1E7F3B960;
  v8[4] = WeakRetained;
  v9 = v4;
  v7 = v4;
  [v6 stopUsingAVTViewSessionSynchronously:0 completionHandler:v8];
}

uint64_t __44__AVTCarouselController_beginAVTViewSession__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) avtViewContainer];
  [v2 setAlpha:1.0];

  [*(a1 + 32) setAvtViewContainer:0];
  [*(a1 + 32) setAvtViewSession:0];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)setupAVTView:(id)view
{
  viewCopy = view;
  [viewCopy setEnableFaceTracking:1];
  view = [(AVTCarouselController *)self view];
  backgroundColor = [view backgroundColor];
  [viewCopy setBackgroundColor:backgroundColor];

  if (AVTUIShowPerfHUD_once())
  {
    [viewCopy setShowPerfHUD:1];
  }

  [viewCopy setEnableReticle:1];
}

- (void)setIsPostponingBeginSession:(BOOL)session
{
  if (self->_isPostponingBeginSession != session)
  {
    self->_isPostponingBeginSession = session;
    if (!session)
    {
      [(AVTCarouselController *)self beginAVTViewSession];

      [(AVTCarouselController *)self reloadData];
    }
  }
}

- (void)reloadData
{
  currentAvatarRecord = [(AVTCarouselController *)self currentAvatarRecord];
  [(AVTCarouselController *)self reloadDataCenteringToAvatarRecord:currentAvatarRecord];
}

- (void)reloadDataCenteringToAvatarRecord:(id)record
{
  recordCopy = record;
  avatarDisplayingController = [(AVTCarouselController *)self avatarDisplayingController];
  [avatarDisplayingController reloadData];

  [(AVTCarouselController *)self displayAvatarRecord:recordCopy animated:0];
}

- (void)setSingleAvatarMode:(BOOL)mode
{
  modeCopy = mode;
  avtViewLayout = [(AVTCarouselController *)self avtViewLayout];
  -[AVTCarouselController setSingleAvatarMode:fillContainer:animated:](self, "setSingleAvatarMode:fillContainer:animated:", modeCopy, [avtViewLayout fillContainer], 0);
}

- (void)setSingleAvatarMode:(BOOL)mode fillContainer:(BOOL)container animated:(BOOL)animated
{
  animatedCopy = animated;
  containerCopy = container;
  modeCopy = mode;
  avtViewLayout = [(AVTCarouselController *)self avtViewLayout];
  [avtViewLayout setFillContainer:containerCopy];

  if (self->_singleAvatarMode != modeCopy)
  {
    self->_singleAvatarMode = modeCopy;
    logger = [(AVTCarouselController *)self logger];
    v11 = logger;
    if (modeCopy)
    {
      [logger logCarouselChangingToSingleMode];

      [(AVTCarouselController *)self showSingleAvatarControllerAnimated:animatedCopy];
    }

    else
    {
      [logger logCarouselChangingToMultiMode];

      [(AVTCarouselController *)self showMultiAvatarControllerAnimated:animatedCopy];
    }
  }
}

- (void)displayAvatarRecordWithIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  dataSource = [(AVTCarouselController *)self dataSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__AVTCarouselController_displayAvatarRecordWithIdentifier_animated___block_invoke;
  v14[3] = &unk_1E7F3B3B0;
  v8 = identifierCopy;
  v15 = v8;
  v9 = [dataSource indexesOfRecordsPassingTest:v14];

  if ([v9 count] == 1)
  {
    dataSource2 = [(AVTCarouselController *)self dataSource];
    environment = [dataSource2 recordAtIndex:{objc_msgSend(v9, "firstIndex")}];

    [(AVTCarouselController *)self displayAvatarRecord:environment animated:animatedCopy];
  }

  else
  {
    environment = [(AVTCarouselController *)self environment];
    logger = [environment logger];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't fetch record with ID %@, err: %@", v8, 0];
    [logger logErrorFetchingRecords:v13];
  }
}

uint64_t __68__AVTCarouselController_displayAvatarRecordWithIdentifier_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)displayAvatarRecord:(id)record animated:(BOOL)animated
{
  animatedCopy = animated;
  recordCopy = record;
  [(AVTCarouselController *)self setCurrentAvatarRecord:recordCopy];
  avatarDisplayingController = [(AVTCarouselController *)self avatarDisplayingController];
  [avatarDisplayingController displayAvatarForRecord:recordCopy animated:animatedCopy];
}

- (BOOL)allowsCreate
{
  multiAvatarController = [(AVTCarouselController *)self multiAvatarController];
  allowsCreate = [multiAvatarController allowsCreate];

  return allowsCreate;
}

- (void)setAllowsCreate:(BOOL)create
{
  createCopy = create;
  multiAvatarController = [(AVTCarouselController *)self multiAvatarController];
  [multiAvatarController setAllowsCreate:createCopy animated:0];
}

- (void)setAllowsCreate:(BOOL)create animated:(BOOL)animated
{
  animatedCopy = animated;
  createCopy = create;
  multiAvatarController = [(AVTCarouselController *)self multiAvatarController];
  [multiAvatarController setAllowsCreate:createCopy animated:animatedCopy];
}

- (void)showMultiAvatarControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  multiAvatarController = [(AVTCarouselController *)self multiAvatarController];

  if (!multiAvatarController)
  {
    v6 = [AVTMultiAvatarController alloc];
    dataSource = [(AVTCarouselController *)self dataSource];
    environment = [(AVTCarouselController *)self environment];
    v9 = [(AVTMultiAvatarController *)v6 initWithDataSource:dataSource environment:environment];

    [(AVTMultiAvatarController *)v9 setDelegate:self];
    view = [(AVTMultiAvatarController *)v9 view];
    [view setAutoresizingMask:18];

    [(AVTCarouselController *)self setMultiAvatarController:v9];
  }

  singleAvatarController = [(AVTCarouselController *)self singleAvatarController];

  view2 = [(AVTCarouselController *)self view];
  multiAvatarController2 = [(AVTCarouselController *)self multiAvatarController];
  view3 = [multiAvatarController2 view];
  if (singleAvatarController)
  {
    singleAvatarController2 = [(AVTCarouselController *)self singleAvatarController];
    view4 = [singleAvatarController2 view];
    [view2 insertSubview:view3 aboveSubview:view4];
  }

  else
  {
    [view2 insertSubview:view3 atIndex:0];
  }

  multiAvatarController3 = [(AVTCarouselController *)self multiAvatarController];
  [(AVTCarouselController *)self setAvatarDisplayingController:multiAvatarController3];

  view5 = [(AVTCarouselController *)self view];
  [view5 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  avatarDisplayingController = [(AVTCarouselController *)self avatarDisplayingController];
  view6 = [avatarDisplayingController view];
  [view6 setFrame:{v20, v22, v24, v26}];

  avatarDisplayingController2 = [(AVTCarouselController *)self avatarDisplayingController];
  [avatarDisplayingController2 reloadData];

  avatarDisplayingController3 = [(AVTCarouselController *)self avatarDisplayingController];
  currentAvatarRecord = [(AVTCarouselController *)self currentAvatarRecord];
  [avatarDisplayingController3 displayAvatarForRecord:currentAvatarRecord animated:0];

  singleAvatarController3 = [(AVTCarouselController *)self singleAvatarController];
  v49 = 0;
  [singleAvatarController3 prepareToTransitionToVisible:0 completionHandler:&v49];
  v33 = v49;

  multiAvatarController4 = [(AVTCarouselController *)self multiAvatarController];
  v48 = 0;
  [multiAvatarController4 prepareToTransitionToVisible:1 completionHandler:&v48];
  v35 = v48;

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __59__AVTCarouselController_showMultiAvatarControllerAnimated___block_invoke;
  v47[3] = &unk_1E7F3A9B8;
  v47[4] = self;
  v36 = MEMORY[0x1BFB0DE80](v47);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __59__AVTCarouselController_showMultiAvatarControllerAnimated___block_invoke_2;
  v44[3] = &unk_1E7F3C680;
  v37 = v33;
  v45 = v37;
  v38 = v35;
  v46 = v38;
  v44[4] = self;
  v39 = MEMORY[0x1BFB0DE80](v44);
  v40 = v39;
  if (animatedCopy)
  {
    v41 = MEMORY[0x1E69DD250];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __59__AVTCarouselController_showMultiAvatarControllerAnimated___block_invoke_3;
    v42[3] = &unk_1E7F3AC00;
    v43 = v39;
    [v41 animateWithDuration:v36 animations:v42 completion:0.3];
  }

  else
  {
    v36[2](v36);
    v40[2](v40);
  }
}

void __59__AVTCarouselController_showMultiAvatarControllerAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) avatarDisplayingController];
  v1 = [v2 view];
  [v1 setAlpha:1.0];
}

void __59__AVTCarouselController_showMultiAvatarControllerAnimated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = [*(a1 + 32) singleAvatarController];
  [v4 stopUsingAVTViewSessionSynchronously:1 completionHandler:0];

  v5 = [*(a1 + 32) avtViewSession];

  if (v5)
  {
    v6 = [*(a1 + 32) avatarDisplayingController];
    v7 = [*(a1 + 32) avtViewSession];
    v8 = [*(a1 + 32) avtViewLayout];
    [v6 useAVTViewFromSession:v7 withLayout:v8];
  }

  v9 = [*(a1 + 32) singleAvatarController];
  v10 = [v9 view];
  v11 = [v10 superview];
  v12 = [*(a1 + 32) view];

  if (v11 == v12)
  {
    v14 = [*(a1 + 32) singleAvatarController];
    v13 = [v14 view];
    [v13 removeFromSuperview];
  }
}

uint64_t __59__AVTCarouselController_showMultiAvatarControllerAnimated___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)showSingleAvatarControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  singleAvatarController = [(AVTCarouselController *)self singleAvatarController];

  if (!singleAvatarController)
  {
    v6 = [AVTSingleAvatarController alloc];
    dataSource = [(AVTCarouselController *)self dataSource];
    environment = [(AVTCarouselController *)self environment];
    v9 = [(AVTSingleAvatarController *)v6 initWithDataSource:dataSource environment:environment];

    [(AVTSingleAvatarController *)v9 setDelegate:self];
    view = [(AVTSingleAvatarController *)v9 view];
    [view setAutoresizingMask:18];

    [(AVTCarouselController *)self setSingleAvatarController:v9];
  }

  view2 = [(AVTCarouselController *)self view];
  singleAvatarController2 = [(AVTCarouselController *)self singleAvatarController];
  view3 = [singleAvatarController2 view];
  [view2 insertSubview:view3 atIndex:0];

  avatarDisplayingController = [(AVTCarouselController *)self avatarDisplayingController];
  [avatarDisplayingController stopUsingAVTViewSessionSynchronously:1 completionHandler:0];

  singleAvatarController3 = [(AVTCarouselController *)self singleAvatarController];
  [(AVTCarouselController *)self setAvatarDisplayingController:singleAvatarController3];

  view4 = [(AVTCarouselController *)self view];
  [view4 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  avatarDisplayingController2 = [(AVTCarouselController *)self avatarDisplayingController];
  view5 = [avatarDisplayingController2 view];
  [view5 setFrame:{v18, v20, v22, v24}];

  avatarDisplayingController3 = [(AVTCarouselController *)self avatarDisplayingController];
  [avatarDisplayingController3 reloadData];

  avatarDisplayingController4 = [(AVTCarouselController *)self avatarDisplayingController];
  currentAvatarRecord = [(AVTCarouselController *)self currentAvatarRecord];
  [avatarDisplayingController4 displayAvatarForRecord:currentAvatarRecord animated:0];

  multiAvatarController = [(AVTCarouselController *)self multiAvatarController];
  v53 = 0;
  [multiAvatarController prepareToTransitionToVisible:0 completionHandler:&v53];
  v31 = v53;

  singleAvatarController4 = [(AVTCarouselController *)self singleAvatarController];
  v52 = 0;
  [singleAvatarController4 prepareToTransitionToVisible:1 completionHandler:&v52];
  v33 = v52;

  avtViewSession = [(AVTCarouselController *)self avtViewSession];

  if (avtViewSession)
  {
    avatarDisplayingController5 = [(AVTCarouselController *)self avatarDisplayingController];
    avtViewSession2 = [(AVTCarouselController *)self avtViewSession];
    avtViewLayout = [(AVTCarouselController *)self avtViewLayout];
    [avatarDisplayingController5 useAVTViewFromSession:avtViewSession2 withLayout:avtViewLayout];
  }

  avatarDisplayingController6 = [(AVTCarouselController *)self avatarDisplayingController];
  view6 = [avatarDisplayingController6 view];
  [view6 setAlpha:1.0];

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __60__AVTCarouselController_showSingleAvatarControllerAnimated___block_invoke;
  v51[3] = &unk_1E7F3A9B8;
  v51[4] = self;
  v40 = MEMORY[0x1BFB0DE80](v51);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __60__AVTCarouselController_showSingleAvatarControllerAnimated___block_invoke_2;
  v48[3] = &unk_1E7F3C680;
  v41 = v31;
  v49 = v41;
  v42 = v33;
  v50 = v42;
  v48[4] = self;
  v43 = MEMORY[0x1BFB0DE80](v48);
  v44 = v43;
  if (animatedCopy)
  {
    v45 = MEMORY[0x1E69DD250];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __60__AVTCarouselController_showSingleAvatarControllerAnimated___block_invoke_3;
    v46[3] = &unk_1E7F3AC00;
    v47 = v43;
    [v45 animateWithDuration:v40 animations:v46 completion:0.3];
  }

  else
  {
    v40[2](v40);
    v44[2](v44);
  }
}

void __60__AVTCarouselController_showSingleAvatarControllerAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) multiAvatarController];
  v1 = [v2 view];
  [v1 setAlpha:0.0];
}

void __60__AVTCarouselController_showSingleAvatarControllerAnimated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = [*(a1 + 32) multiAvatarController];
  v5 = [v4 view];
  v6 = [v5 superview];
  v7 = [*(a1 + 32) view];

  if (v6 == v7)
  {
    v9 = [*(a1 + 32) multiAvatarController];
    v8 = [v9 view];
    [v8 removeFromSuperview];
  }
}

uint64_t __60__AVTCarouselController_showSingleAvatarControllerAnimated___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)presentEditorForCreatingAvatar:(id)avatar
{
  dataSource = [(AVTCarouselController *)self dataSource];
  internalRecordStore = [dataSource internalRecordStore];

  avtViewSessionProvider = [(AVTCarouselController *)self avtViewSessionProvider];
  v6 = [AVTAvatarEditorViewController viewControllerForCreatingAvatarInStore:internalRecordStore avtViewSessionProvider:avtViewSessionProvider];

  [v6 setDelegate:self];
  [(AVTCarouselController *)self wrapAndPresentViewController:v6 animated:1];
}

- (void)presentActionsForAvatar:(id)avatar
{
  avatarCopy = avatar;
  if (([avatarCopy isEditable] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Record %@ is not editable!", avatarCopy}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", avatarCopy}];
  }

  v17 = avatarCopy;
  v5 = [AVTAvatarActionsProvider alloc];
  dataSource = [(AVTCarouselController *)self dataSource];
  v7 = [(AVTAvatarActionsProvider *)v5 initWithAvatarRecord:v17 dataSource:dataSource allowCreate:0];

  v8 = [AVTAvatarInlineActionsController alloc];
  dataSource2 = [(AVTCarouselController *)self dataSource];
  avtViewSessionProvider = [(AVTCarouselController *)self avtViewSessionProvider];
  environment = [(AVTCarouselController *)self environment];
  v12 = [(AVTAvatarInlineActionsController *)v8 initWithDataSource:dataSource2 avtViewProvider:avtViewSessionProvider environment:environment];

  [(AVTAvatarInlineActionsController *)v12 updateWithActionsModel:v7];
  v13 = [AVTAvatarActionsViewController alloc];
  avtViewSessionProvider2 = [(AVTCarouselController *)self avtViewSessionProvider];
  environment2 = [(AVTCarouselController *)self environment];
  v16 = [(AVTAvatarActionsViewController *)v13 initWithAVTViewSessionProvider:avtViewSessionProvider2 actionsController:v12 environment:environment2];

  [(AVTAvatarActionsViewController *)v16 setDelegate:self];
  [(AVTCarouselController *)self wrapAndPresentViewController:v16 animated:1];
}

- (void)wrapAndPresentViewController:(id)controller animated:(BOOL)animated
{
  animated = [AVTUIControllerPresentation presentationWithWrappingForController:controller, animated];
  presenterDelegate = [(AVTCarouselController *)self presenterDelegate];
  [presenterDelegate presentAvatarUIController:animated animated:1];
}

- (void)didBeginFocus:(id)focus
{
  focusCopy = focus;
  avatarDisplayingController = [(AVTCarouselController *)self avatarDisplayingController];

  if (avatarDisplayingController == focusCopy)
  {
    environment = [(AVTCarouselController *)self environment];
    usageTrackingSession = [environment usageTrackingSession];
    currentAvatarRecord = [(AVTCarouselController *)self currentAvatarRecord];
    [usageTrackingSession didStartFaceTrackingInCarouselWithAvatar:currentAvatarRecord];

    currentAvatarRecord2 = [(AVTCarouselController *)self currentAvatarRecord];
    avtViewSession = [(AVTCarouselController *)self avtViewSession];
    avtView = [avtViewSession avtView];
    [(AVTCarouselController *)self notifyDelegateDidFocusRecord:currentAvatarRecord2 avtView:avtView];
  }
}

- (void)willEndFocus:(id)focus
{
  focusCopy = focus;
  avatarDisplayingController = [(AVTCarouselController *)self avatarDisplayingController];

  if (avatarDisplayingController == focusCopy)
  {
    environment = [(AVTCarouselController *)self environment];
    usageTrackingSession = [environment usageTrackingSession];
    [usageTrackingSession didStopFaceTrackingInCarousel];

    currentAvatarRecord = [(AVTCarouselController *)self currentAvatarRecord];
    avtViewSession = [(AVTCarouselController *)self avtViewSession];
    avtView = [avtViewSession avtView];
    [(AVTCarouselController *)self notifyDelegateWillEndFocusOnRecord:currentAvatarRecord avtView:avtView];
  }
}

- (void)displayingController:(id)controller didChangeCurrentRecord:(id)record
{
  recordCopy = record;
  controllerCopy = controller;
  avatarDisplayingController = [(AVTCarouselController *)self avatarDisplayingController];

  if (avatarDisplayingController == controllerCopy)
  {
    [(AVTCarouselController *)self setCurrentAvatarRecord:recordCopy];
    environment = [(AVTCarouselController *)self environment];
    usageTrackingSession = [environment usageTrackingSession];
    [usageTrackingSession didChangeCurrentAvatarInCarousel:recordCopy];

    [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:recordCopy];
  }
}

- (void)displayingControllerWantsToPresentEditorForCreation:(id)creation
{
  creationCopy = creation;
  avatarDisplayingController = [(AVTCarouselController *)self avatarDisplayingController];

  v5 = creationCopy;
  if (avatarDisplayingController == creationCopy)
  {
    view = [creationCopy view];
    [(AVTCarouselController *)self presentEditorForCreatingAvatar:view];

    v5 = creationCopy;
  }
}

- (void)displayingController:(id)controller didMoveTowardRecord:(id)record withFactor:(double)factor
{
  recordCopy = record;
  controllerCopy = controller;
  avatarDisplayingController = [(AVTCarouselController *)self avatarDisplayingController];

  if (avatarDisplayingController == controllerCopy)
  {
    [(AVTCarouselController *)self notifyDelegateNearnessFactorDidChange:recordCopy towardRecord:factor];
  }
}

- (void)notifyDelegateDidFocusRecord:(id)record avtView:(id)view
{
  recordCopy = record;
  viewCopy = view;
  environment = [(AVTCarouselController *)self environment];
  logger = [environment logger];
  v10 = [recordCopy description];
  [logger logCarouselDelegateDidFocusRecord:v10];

  mode = [(AVTCarouselController *)self mode];
  if (mode == 1)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__14;
    v31 = __Block_byref_object_dispose__14;
    v32 = 0;
    if (recordCopy)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __62__AVTCarouselController_notifyDelegateDidFocusRecord_avtView___block_invoke;
      v26[3] = &unk_1E7F3C6A8;
      v26[4] = &v27;
      [viewCopy downcastWithAVTViewHandler:0 recordViewHandler:v26];
    }

    recordingDelegate = [(AVTCarouselController *)self recordingDelegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      recordingDelegate2 = [(AVTCarouselController *)self recordingDelegate];
      [recordingDelegate2 carouselController:self didFocusOnRecordView:v28[5]];
    }

    recordingDelegate3 = [(AVTCarouselController *)self recordingDelegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      recordingDelegate4 = [(AVTCarouselController *)self recordingDelegate];
      [recordingDelegate4 carouselController:self didUpdateWithRecord:recordCopy];
    }

    _Block_object_dispose(&v27, 8);
  }

  else if (!mode)
  {
    if (recordCopy)
    {
      v12 = viewCopy;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    displayingDelegate = [(AVTCarouselController *)self displayingDelegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      displayingDelegate2 = [(AVTCarouselController *)self displayingDelegate];
      [displayingDelegate2 carouselController:self didFocusOnView:v13];
    }

    displayingDelegate3 = [(AVTCarouselController *)self displayingDelegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      displayingDelegate4 = [(AVTCarouselController *)self displayingDelegate];
      [displayingDelegate4 carouselController:self didUpdateWithRecord:recordCopy];
    }
  }
}

- (void)notifyDelegateWillEndFocusOnRecord:(id)record avtView:(id)view
{
  recordCopy = record;
  viewCopy = view;
  environment = [(AVTCarouselController *)self environment];
  logger = [environment logger];
  v10 = [recordCopy description];
  [logger logCarouselDelegateWillEndFocusRecord:v10];

  mode = [(AVTCarouselController *)self mode];
  if (mode == 1)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__14;
    v25 = __Block_byref_object_dispose__14;
    v26 = 0;
    if (recordCopy)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __68__AVTCarouselController_notifyDelegateWillEndFocusOnRecord_avtView___block_invoke;
      v20[3] = &unk_1E7F3C6A8;
      v20[4] = &v21;
      [viewCopy downcastWithAVTViewHandler:0 recordViewHandler:v20];
    }

    recordingDelegate = [(AVTCarouselController *)self recordingDelegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      recordingDelegate2 = [(AVTCarouselController *)self recordingDelegate];
      [recordingDelegate2 carouselController:self willEndFocusOnRecordView:v22[5]];
    }

    _Block_object_dispose(&v21, 8);
  }

  else if (!mode)
  {
    if (recordCopy)
    {
      v12 = viewCopy;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    displayingDelegate = [(AVTCarouselController *)self displayingDelegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      displayingDelegate2 = [(AVTCarouselController *)self displayingDelegate];
      [displayingDelegate2 carouselController:self willEndFocusOnView:v13];
    }
  }

  [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:recordCopy];
}

- (void)notifyDelegateNearnessFactorDidChange:(double)change towardRecord:(id)record
{
  recordCopy = record;
  environment = [(AVTCarouselController *)self environment];
  logger = [environment logger];
  [logger logCarouselDelegateNearnessFactorDidChange:recordCopy != 0 towardRecord:objc_msgSend(recordCopy editable:{"isEditable"), change}];

  mode = [(AVTCarouselController *)self mode];
  if (mode == 1)
  {
    recordingDelegate = [(AVTCarouselController *)self recordingDelegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      recordingDelegate2 = [(AVTCarouselController *)self recordingDelegate];
      [recordingDelegate2 carouselController:self didMoveTowardRecord:recordCopy withFactor:change];
    }

    recordingDelegate3 = [(AVTCarouselController *)self recordingDelegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      recordingDelegate4 = [(AVTCarouselController *)self recordingDelegate];
      goto LABEL_11;
    }
  }

  else if (!mode)
  {
    displayingDelegate = [(AVTCarouselController *)self displayingDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      displayingDelegate2 = [(AVTCarouselController *)self displayingDelegate];
      [displayingDelegate2 carouselController:self didMoveTowardRecord:recordCopy withFactor:change];
    }

    displayingDelegate3 = [(AVTCarouselController *)self displayingDelegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      recordingDelegate4 = [(AVTCarouselController *)self displayingDelegate];
LABEL_11:
      v20 = recordingDelegate4;
      [recordingDelegate4 carouselController:self didMoveToNearestRecord:recordCopy withFactor:change];
    }
  }
}

- (void)notifyDelegateDidUpdateWithRecord:(id)record
{
  recordCopy = record;
  environment = [(AVTCarouselController *)self environment];
  logger = [environment logger];
  v6 = [recordCopy description];
  [logger logCarouselDelegateDidUpdateRecord:v6];

  mode = [(AVTCarouselController *)self mode];
  if (mode == 1)
  {
    recordingDelegate = [(AVTCarouselController *)self recordingDelegate];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }

    recordingDelegate2 = [(AVTCarouselController *)self recordingDelegate];
    goto LABEL_7;
  }

  if (!mode)
  {
    displayingDelegate = [(AVTCarouselController *)self displayingDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      recordingDelegate2 = [(AVTCarouselController *)self displayingDelegate];
LABEL_7:
      v13 = recordingDelegate2;
      [recordingDelegate2 carouselController:self didUpdateWithRecord:recordCopy];
    }
  }

LABEL_8:
}

- (AVTRecordView)focusedRecordingView
{
  if (-[AVTCarouselController mode](self, "mode") == 1 && (-[AVTCarouselController avtViewSession](self, "avtViewSession"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isActive], v3, v4))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__14;
    v14 = __Block_byref_object_dispose__14;
    v15 = 0;
    avtViewSession = [(AVTCarouselController *)self avtViewSession];
    avtView = [avtViewSession avtView];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__AVTCarouselController_focusedRecordingView__block_invoke;
    v9[3] = &unk_1E7F3C6A8;
    v9[4] = &v10;
    [avtView downcastWithAVTViewHandler:0 recordViewHandler:v9];

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AVTView)focusedDisplayView
{
  if (-[AVTCarouselController mode](self, "mode") || (-[AVTCarouselController avtViewSession](self, "avtViewSession"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isActive], v3, !v4))
  {
    v7 = 0;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__14;
    v14 = __Block_byref_object_dispose__14;
    v15 = 0;
    avtViewSession = [(AVTCarouselController *)self avtViewSession];
    avtView = [avtViewSession avtView];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__AVTCarouselController_focusedDisplayView__block_invoke;
    v9[3] = &unk_1E7F3C6D0;
    v9[4] = &v10;
    [avtView downcastWithAVTViewHandler:v9 recordViewHandler:0];

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return v7;
}

- (void)dataSource:(id)source didAddRecord:(id)record atIndex:(unint64_t)index
{
  recordCopy = record;
  [(AVTCarouselController *)self reloadDataCenteringToAvatarRecord:recordCopy];
  [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:recordCopy];
}

- (void)dataSource:(id)source didEditRecord:(id)record atIndex:(unint64_t)index
{
  recordCopy = record;
  [(AVTCarouselController *)self reloadDataCenteringToAvatarRecord:recordCopy];
  [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:recordCopy];
}

- (void)dataSource:(id)source didRemoveRecord:(id)record atIndex:(unint64_t)index
{
  sourceCopy = source;
  dataSource = [(AVTCarouselController *)self dataSource];
  indexSetForEditableRecords = [dataSource indexSetForEditableRecords];

  if ([indexSetForEditableRecords count])
  {
    v9 = indexSetForEditableRecords;
  }

  else
  {
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];

    v9 = v10;
  }

  v13 = v9;
  v11 = [sourceCopy recordAtIndex:{objc_msgSend(v9, "closestIndexToIndex:greaterIndexesFirst:", index, 1)}];

  [(AVTCarouselController *)self reloadDataCenteringToAvatarRecord:v11];
  [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:v11];
}

- (void)significantRecordChangeInDataSource:(id)source
{
  dataSource = [(AVTCarouselController *)self dataSource];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__AVTCarouselController_significantRecordChangeInDataSource___block_invoke;
  v9[3] = &unk_1E7F3B3B0;
  v9[4] = self;
  v5 = [dataSource indexOfRecordPassingTest:v9];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  dataSource2 = [(AVTCarouselController *)self dataSource];
  v8 = [dataSource2 recordAtIndex:v6];

  [(AVTCarouselController *)self reloadDataCenteringToAvatarRecord:v8];
  [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:v8];
}

uint64_t __61__AVTCarouselController_significantRecordChangeInDataSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 currentAvatarRecord];
  v5 = [v4 identifier];
  v6 = [v3 identifier];

  v7 = [v5 isEqual:v6];
  return v7;
}

- (id)avatarActionsViewController:(id)controller recordUpdateForDeletingRecord:(id)record
{
  recordCopy = record;
  dataSource = [(AVTCarouselController *)self dataSource];
  v7 = [AVTAvatarActionsRecordUpdate recordUpdateForDeletingRecord:recordCopy withDataSource:dataSource];

  return v7;
}

- (void)avatarActionsViewControllerDidFinish:(id)finish
{
  presenterDelegate = [(AVTCarouselController *)self presenterDelegate];
  [presenterDelegate dismissAvatarUIControllerAnimated:1];

  [(AVTCarouselController *)self beginAVTViewSession];
}

- (void)avatarEditorViewController:(id)controller didFinishWithAvatarRecord:(id)record
{
  recordCopy = record;
  [(AVTCarouselController *)self reloadDataCenteringToAvatarRecord:recordCopy];
  [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:recordCopy];

  presenterDelegate = [(AVTCarouselController *)self presenterDelegate];
  [presenterDelegate dismissAvatarUIControllerAnimated:1];

  [(AVTCarouselController *)self beginAVTViewSession];
}

- (void)avatarEditorViewControllerDidCancel:(id)cancel
{
  presenterDelegate = [(AVTCarouselController *)self presenterDelegate];
  [presenterDelegate dismissAvatarUIControllerAnimated:1];

  [(AVTCarouselController *)self beginAVTViewSession];
}

- (id)snapshotProviderFocusedOnRecordWithIdentifier:(id)identifier size:(CGSize)size
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  avtViewSessionProvider = [(AVTCarouselController *)self avtViewSessionProvider];
  [avtViewSessionProvider avtViewBackingSize];
  v10 = v9;
  v12 = v11;
  dataSource = [(AVTCarouselController *)self dataSource];
  environment = [(AVTCarouselController *)self environment];
  v15 = [AVTMultiAvatarController snapshotProviderFocusedOnRecordWithIdentifier:identifierCopy size:dataSource avtViewAspectRatio:environment dataSource:width environment:height, v10, v12];

  return v15;
}

- (AVTPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presenterDelegate);

  return WeakRetained;
}

- (AVTDisplayingCarouselControllerDelegate)displayingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->displayingDelegate);

  return WeakRetained;
}

- (AVTRecordingCarouselControllerDelegate)recordingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->recordingDelegate);

  return WeakRetained;
}

@end
@interface AVTCarouselController
+ (id)displayingCarouselForRecordDataSource:(id)a3;
+ (id)recordingCarouselForRecordDataSource:(id)a3;
+ (id)sessionProviderForMode:(int64_t)a3 environment:(id)a4;
- (AVTCarouselController)initWithMode:(int64_t)a3 dataSource:(id)a4;
- (AVTCarouselController)initWithMode:(int64_t)a3 sessionProvider:(id)a4 dataSource:(id)a5 environment:(id)a6;
- (AVTDisplayingCarouselControllerDelegate)displayingDelegate;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTRecordView)focusedRecordingView;
- (AVTRecordingCarouselControllerDelegate)recordingDelegate;
- (AVTView)focusedDisplayView;
- (BOOL)allowsCreate;
- (double)decelerationRate;
- (id)avatarActionsViewController:(id)a3 recordUpdateForDeletingRecord:(id)a4;
- (id)snapshotProviderFocusedOnRecordWithIdentifier:(id)a3 size:(CGSize)a4;
- (void)avatarActionsViewControllerDidFinish:(id)a3;
- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4;
- (void)avatarEditorViewControllerDidCancel:(id)a3;
- (void)beginAVTViewSession;
- (void)dataSource:(id)a3 didAddRecord:(id)a4 atIndex:(unint64_t)a5;
- (void)dataSource:(id)a3 didEditRecord:(id)a4 atIndex:(unint64_t)a5;
- (void)dataSource:(id)a3 didRemoveRecord:(id)a4 atIndex:(unint64_t)a5;
- (void)didBeginFocus:(id)a3;
- (void)displayAvatarRecord:(id)a3 animated:(BOOL)a4;
- (void)displayAvatarRecordWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)displayingController:(id)a3 didChangeCurrentRecord:(id)a4;
- (void)displayingController:(id)a3 didMoveTowardRecord:(id)a4 withFactor:(double)a5;
- (void)displayingControllerWantsToPresentEditorForCreation:(id)a3;
- (void)loadView;
- (void)notifyDelegateDidFocusRecord:(id)a3 avtView:(id)a4;
- (void)notifyDelegateDidUpdateWithRecord:(id)a3;
- (void)notifyDelegateNearnessFactorDidChange:(double)a3 towardRecord:(id)a4;
- (void)notifyDelegateWillEndFocusOnRecord:(id)a3 avtView:(id)a4;
- (void)presentActionsForAvatar:(id)a3;
- (void)presentEditorForCreatingAvatar:(id)a3;
- (void)reloadData;
- (void)reloadDataCenteringToAvatarRecord:(id)a3;
- (void)setAllowsCreate:(BOOL)a3;
- (void)setAllowsCreate:(BOOL)a3 animated:(BOOL)a4;
- (void)setDecelerationRate:(double)a3;
- (void)setIsPostponingBeginSession:(BOOL)a3;
- (void)setSingleAvatarMode:(BOOL)a3;
- (void)setSingleAvatarMode:(BOOL)a3 fillContainer:(BOOL)a4 animated:(BOOL)a5;
- (void)setupAVTView:(id)a3;
- (void)showMultiAvatarControllerAnimated:(BOOL)a3;
- (void)showSingleAvatarControllerAnimated:(BOOL)a3;
- (void)significantRecordChangeInDataSource:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willEndFocus:(id)a3;
- (void)wrapAndPresentViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation AVTCarouselController

+ (id)sessionProviderForMode:(int64_t)a3 environment:(id)a4
{
  v5 = a4;
  if (a3 == 1)
  {
    +[AVTViewSessionProvider creatorForAVTRecordView];
  }

  else
  {
    +[AVTViewSessionProvider creatorForAVTView];
  }
  v6 = ;
  [AVTViewSessionProvider backingSizeForEnvironment:v5];
  v9 = [[AVTViewSessionProvider alloc] initWithAVTViewBackingSize:v6 viewCreator:v5 environment:v7, v8];

  return v9;
}

+ (id)displayingCarouselForRecordDataSource:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithMode:0 dataSource:v4];

  return v5;
}

+ (id)recordingCarouselForRecordDataSource:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithMode:1 dataSource:v4];

  return v5;
}

- (AVTCarouselController)initWithMode:(int64_t)a3 dataSource:(id)a4
{
  v6 = a4;
  v7 = +[AVTUIEnvironment defaultEnvironment];
  v8 = [objc_opt_class() sessionProviderForMode:a3 environment:v7];
  v9 = [(AVTCarouselController *)self initWithMode:a3 sessionProvider:v8 dataSource:v6 environment:v7];

  return v9;
}

- (AVTCarouselController)initWithMode:(int64_t)a3 sessionProvider:(id)a4 dataSource:(id)a5 environment:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = AVTCarouselController;
  v14 = [(AVTCarouselController *)&v19 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    v14->_mode = a3;
    objc_storeStrong(&v14->_avtViewSessionProvider, a4);
    objc_storeStrong(&v15->_dataSource, a5);
    [(AVTAvatarRecordDataSource *)v15->_dataSource addPriorityObserver:v15];
    v16 = [(AVTUIEnvironment *)v13 logger];
    logger = v15->_logger;
    v15->_logger = v16;

    v15->_environment = v13;
    v15->_singleAvatarMode = 0;
  }

  return v15;
}

- (double)decelerationRate
{
  v2 = [(AVTCarouselController *)self multiAvatarController];
  [v2 decelerationRate];
  v4 = v3;

  return v4;
}

- (void)setDecelerationRate:(double)a3
{
  v4 = [(AVTCarouselController *)self multiAvatarController];
  [v4 setDecelerationRate:a3];
}

- (void)loadView
{
  v3 = [(AVTCarouselController *)self avtViewSessionProvider];
  [v3 avtViewBackingSize];
  v4 = [AVTViewCarouselLayout adaptativeLayoutWithAVTViewAspectRatio:?];
  [(AVTCarouselController *)self setAvtViewLayout:v4];

  v5 = objc_alloc(MEMORY[0x1E69DD250]);
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 bounds];
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

  v7 = [(AVTCarouselController *)self avatarDisplayingController];
  v8 = [(AVTCarouselController *)self avtViewLayout];
  [v7 prepareViewWithLayout:v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVTCarouselController;
  [(AVTCarouselController *)&v4 viewWillAppear:a3];
  [(AVTCarouselController *)self beginAVTViewSession];
  [(AVTCarouselController *)self reloadData];
}

- (void)beginAVTViewSession
{
  if (![(AVTCarouselController *)self isPostponingBeginSession])
  {
    v3 = [(AVTCarouselController *)self avtViewSession];

    if (!v3)
    {
      objc_initWeak(&location, self);
      v4 = [(AVTCarouselController *)self avtViewSessionProvider];
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
      v5 = [v4 sessionWithDidBecomeActiveHandler:v8 tearDownHandler:v6];
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

- (void)setupAVTView:(id)a3
{
  v6 = a3;
  [v6 setEnableFaceTracking:1];
  v4 = [(AVTCarouselController *)self view];
  v5 = [v4 backgroundColor];
  [v6 setBackgroundColor:v5];

  if (AVTUIShowPerfHUD_once())
  {
    [v6 setShowPerfHUD:1];
  }

  [v6 setEnableReticle:1];
}

- (void)setIsPostponingBeginSession:(BOOL)a3
{
  if (self->_isPostponingBeginSession != a3)
  {
    self->_isPostponingBeginSession = a3;
    if (!a3)
    {
      [(AVTCarouselController *)self beginAVTViewSession];

      [(AVTCarouselController *)self reloadData];
    }
  }
}

- (void)reloadData
{
  v3 = [(AVTCarouselController *)self currentAvatarRecord];
  [(AVTCarouselController *)self reloadDataCenteringToAvatarRecord:v3];
}

- (void)reloadDataCenteringToAvatarRecord:(id)a3
{
  v5 = a3;
  v4 = [(AVTCarouselController *)self avatarDisplayingController];
  [v4 reloadData];

  [(AVTCarouselController *)self displayAvatarRecord:v5 animated:0];
}

- (void)setSingleAvatarMode:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTCarouselController *)self avtViewLayout];
  -[AVTCarouselController setSingleAvatarMode:fillContainer:animated:](self, "setSingleAvatarMode:fillContainer:animated:", v3, [v5 fillContainer], 0);
}

- (void)setSingleAvatarMode:(BOOL)a3 fillContainer:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = [(AVTCarouselController *)self avtViewLayout];
  [v9 setFillContainer:v6];

  if (self->_singleAvatarMode != v7)
  {
    self->_singleAvatarMode = v7;
    v10 = [(AVTCarouselController *)self logger];
    v11 = v10;
    if (v7)
    {
      [v10 logCarouselChangingToSingleMode];

      [(AVTCarouselController *)self showSingleAvatarControllerAnimated:v5];
    }

    else
    {
      [v10 logCarouselChangingToMultiMode];

      [(AVTCarouselController *)self showMultiAvatarControllerAnimated:v5];
    }
  }
}

- (void)displayAvatarRecordWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(AVTCarouselController *)self dataSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__AVTCarouselController_displayAvatarRecordWithIdentifier_animated___block_invoke;
  v14[3] = &unk_1E7F3B3B0;
  v8 = v6;
  v15 = v8;
  v9 = [v7 indexesOfRecordsPassingTest:v14];

  if ([v9 count] == 1)
  {
    v10 = [(AVTCarouselController *)self dataSource];
    v11 = [v10 recordAtIndex:{objc_msgSend(v9, "firstIndex")}];

    [(AVTCarouselController *)self displayAvatarRecord:v11 animated:v4];
  }

  else
  {
    v11 = [(AVTCarouselController *)self environment];
    v12 = [v11 logger];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't fetch record with ID %@, err: %@", v8, 0];
    [v12 logErrorFetchingRecords:v13];
  }
}

uint64_t __68__AVTCarouselController_displayAvatarRecordWithIdentifier_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)displayAvatarRecord:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(AVTCarouselController *)self setCurrentAvatarRecord:v6];
  v7 = [(AVTCarouselController *)self avatarDisplayingController];
  [v7 displayAvatarForRecord:v6 animated:v4];
}

- (BOOL)allowsCreate
{
  v2 = [(AVTCarouselController *)self multiAvatarController];
  v3 = [v2 allowsCreate];

  return v3;
}

- (void)setAllowsCreate:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVTCarouselController *)self multiAvatarController];
  [v4 setAllowsCreate:v3 animated:0];
}

- (void)setAllowsCreate:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(AVTCarouselController *)self multiAvatarController];
  [v6 setAllowsCreate:v5 animated:v4];
}

- (void)showMultiAvatarControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTCarouselController *)self multiAvatarController];

  if (!v5)
  {
    v6 = [AVTMultiAvatarController alloc];
    v7 = [(AVTCarouselController *)self dataSource];
    v8 = [(AVTCarouselController *)self environment];
    v9 = [(AVTMultiAvatarController *)v6 initWithDataSource:v7 environment:v8];

    [(AVTMultiAvatarController *)v9 setDelegate:self];
    v10 = [(AVTMultiAvatarController *)v9 view];
    [v10 setAutoresizingMask:18];

    [(AVTCarouselController *)self setMultiAvatarController:v9];
  }

  v11 = [(AVTCarouselController *)self singleAvatarController];

  v12 = [(AVTCarouselController *)self view];
  v13 = [(AVTCarouselController *)self multiAvatarController];
  v14 = [v13 view];
  if (v11)
  {
    v15 = [(AVTCarouselController *)self singleAvatarController];
    v16 = [v15 view];
    [v12 insertSubview:v14 aboveSubview:v16];
  }

  else
  {
    [v12 insertSubview:v14 atIndex:0];
  }

  v17 = [(AVTCarouselController *)self multiAvatarController];
  [(AVTCarouselController *)self setAvatarDisplayingController:v17];

  v18 = [(AVTCarouselController *)self view];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(AVTCarouselController *)self avatarDisplayingController];
  v28 = [v27 view];
  [v28 setFrame:{v20, v22, v24, v26}];

  v29 = [(AVTCarouselController *)self avatarDisplayingController];
  [v29 reloadData];

  v30 = [(AVTCarouselController *)self avatarDisplayingController];
  v31 = [(AVTCarouselController *)self currentAvatarRecord];
  [v30 displayAvatarForRecord:v31 animated:0];

  v32 = [(AVTCarouselController *)self singleAvatarController];
  v49 = 0;
  [v32 prepareToTransitionToVisible:0 completionHandler:&v49];
  v33 = v49;

  v34 = [(AVTCarouselController *)self multiAvatarController];
  v48 = 0;
  [v34 prepareToTransitionToVisible:1 completionHandler:&v48];
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
  if (v3)
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

- (void)showSingleAvatarControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTCarouselController *)self singleAvatarController];

  if (!v5)
  {
    v6 = [AVTSingleAvatarController alloc];
    v7 = [(AVTCarouselController *)self dataSource];
    v8 = [(AVTCarouselController *)self environment];
    v9 = [(AVTSingleAvatarController *)v6 initWithDataSource:v7 environment:v8];

    [(AVTSingleAvatarController *)v9 setDelegate:self];
    v10 = [(AVTSingleAvatarController *)v9 view];
    [v10 setAutoresizingMask:18];

    [(AVTCarouselController *)self setSingleAvatarController:v9];
  }

  v11 = [(AVTCarouselController *)self view];
  v12 = [(AVTCarouselController *)self singleAvatarController];
  v13 = [v12 view];
  [v11 insertSubview:v13 atIndex:0];

  v14 = [(AVTCarouselController *)self avatarDisplayingController];
  [v14 stopUsingAVTViewSessionSynchronously:1 completionHandler:0];

  v15 = [(AVTCarouselController *)self singleAvatarController];
  [(AVTCarouselController *)self setAvatarDisplayingController:v15];

  v16 = [(AVTCarouselController *)self view];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(AVTCarouselController *)self avatarDisplayingController];
  v26 = [v25 view];
  [v26 setFrame:{v18, v20, v22, v24}];

  v27 = [(AVTCarouselController *)self avatarDisplayingController];
  [v27 reloadData];

  v28 = [(AVTCarouselController *)self avatarDisplayingController];
  v29 = [(AVTCarouselController *)self currentAvatarRecord];
  [v28 displayAvatarForRecord:v29 animated:0];

  v30 = [(AVTCarouselController *)self multiAvatarController];
  v53 = 0;
  [v30 prepareToTransitionToVisible:0 completionHandler:&v53];
  v31 = v53;

  v32 = [(AVTCarouselController *)self singleAvatarController];
  v52 = 0;
  [v32 prepareToTransitionToVisible:1 completionHandler:&v52];
  v33 = v52;

  v34 = [(AVTCarouselController *)self avtViewSession];

  if (v34)
  {
    v35 = [(AVTCarouselController *)self avatarDisplayingController];
    v36 = [(AVTCarouselController *)self avtViewSession];
    v37 = [(AVTCarouselController *)self avtViewLayout];
    [v35 useAVTViewFromSession:v36 withLayout:v37];
  }

  v38 = [(AVTCarouselController *)self avatarDisplayingController];
  v39 = [v38 view];
  [v39 setAlpha:1.0];

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
  if (v3)
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

- (void)presentEditorForCreatingAvatar:(id)a3
{
  v4 = [(AVTCarouselController *)self dataSource];
  v7 = [v4 internalRecordStore];

  v5 = [(AVTCarouselController *)self avtViewSessionProvider];
  v6 = [AVTAvatarEditorViewController viewControllerForCreatingAvatarInStore:v7 avtViewSessionProvider:v5];

  [v6 setDelegate:self];
  [(AVTCarouselController *)self wrapAndPresentViewController:v6 animated:1];
}

- (void)presentActionsForAvatar:(id)a3
{
  v4 = a3;
  if (([v4 isEditable] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Record %@ is not editable!", v4}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v4}];
  }

  v17 = v4;
  v5 = [AVTAvatarActionsProvider alloc];
  v6 = [(AVTCarouselController *)self dataSource];
  v7 = [(AVTAvatarActionsProvider *)v5 initWithAvatarRecord:v17 dataSource:v6 allowCreate:0];

  v8 = [AVTAvatarInlineActionsController alloc];
  v9 = [(AVTCarouselController *)self dataSource];
  v10 = [(AVTCarouselController *)self avtViewSessionProvider];
  v11 = [(AVTCarouselController *)self environment];
  v12 = [(AVTAvatarInlineActionsController *)v8 initWithDataSource:v9 avtViewProvider:v10 environment:v11];

  [(AVTAvatarInlineActionsController *)v12 updateWithActionsModel:v7];
  v13 = [AVTAvatarActionsViewController alloc];
  v14 = [(AVTCarouselController *)self avtViewSessionProvider];
  v15 = [(AVTCarouselController *)self environment];
  v16 = [(AVTAvatarActionsViewController *)v13 initWithAVTViewSessionProvider:v14 actionsController:v12 environment:v15];

  [(AVTAvatarActionsViewController *)v16 setDelegate:self];
  [(AVTCarouselController *)self wrapAndPresentViewController:v16 animated:1];
}

- (void)wrapAndPresentViewController:(id)a3 animated:(BOOL)a4
{
  v6 = [AVTUIControllerPresentation presentationWithWrappingForController:a3, a4];
  v5 = [(AVTCarouselController *)self presenterDelegate];
  [v5 presentAvatarUIController:v6 animated:1];
}

- (void)didBeginFocus:(id)a3
{
  v4 = a3;
  v5 = [(AVTCarouselController *)self avatarDisplayingController];

  if (v5 == v4)
  {
    v6 = [(AVTCarouselController *)self environment];
    v7 = [v6 usageTrackingSession];
    v8 = [(AVTCarouselController *)self currentAvatarRecord];
    [v7 didStartFaceTrackingInCarouselWithAvatar:v8];

    v11 = [(AVTCarouselController *)self currentAvatarRecord];
    v9 = [(AVTCarouselController *)self avtViewSession];
    v10 = [v9 avtView];
    [(AVTCarouselController *)self notifyDelegateDidFocusRecord:v11 avtView:v10];
  }
}

- (void)willEndFocus:(id)a3
{
  v4 = a3;
  v5 = [(AVTCarouselController *)self avatarDisplayingController];

  if (v5 == v4)
  {
    v6 = [(AVTCarouselController *)self environment];
    v7 = [v6 usageTrackingSession];
    [v7 didStopFaceTrackingInCarousel];

    v10 = [(AVTCarouselController *)self currentAvatarRecord];
    v8 = [(AVTCarouselController *)self avtViewSession];
    v9 = [v8 avtView];
    [(AVTCarouselController *)self notifyDelegateWillEndFocusOnRecord:v10 avtView:v9];
  }
}

- (void)displayingController:(id)a3 didChangeCurrentRecord:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(AVTCarouselController *)self avatarDisplayingController];

  if (v7 == v6)
  {
    [(AVTCarouselController *)self setCurrentAvatarRecord:v10];
    v8 = [(AVTCarouselController *)self environment];
    v9 = [v8 usageTrackingSession];
    [v9 didChangeCurrentAvatarInCarousel:v10];

    [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:v10];
  }
}

- (void)displayingControllerWantsToPresentEditorForCreation:(id)a3
{
  v7 = a3;
  v4 = [(AVTCarouselController *)self avatarDisplayingController];

  v5 = v7;
  if (v4 == v7)
  {
    v6 = [v7 view];
    [(AVTCarouselController *)self presentEditorForCreatingAvatar:v6];

    v5 = v7;
  }
}

- (void)displayingController:(id)a3 didMoveTowardRecord:(id)a4 withFactor:(double)a5
{
  v10 = a4;
  v8 = a3;
  v9 = [(AVTCarouselController *)self avatarDisplayingController];

  if (v9 == v8)
  {
    [(AVTCarouselController *)self notifyDelegateNearnessFactorDidChange:v10 towardRecord:a5];
  }
}

- (void)notifyDelegateDidFocusRecord:(id)a3 avtView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTCarouselController *)self environment];
  v9 = [v8 logger];
  v10 = [v6 description];
  [v9 logCarouselDelegateDidFocusRecord:v10];

  v11 = [(AVTCarouselController *)self mode];
  if (v11 == 1)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__14;
    v31 = __Block_byref_object_dispose__14;
    v32 = 0;
    if (v6)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __62__AVTCarouselController_notifyDelegateDidFocusRecord_avtView___block_invoke;
      v26[3] = &unk_1E7F3C6A8;
      v26[4] = &v27;
      [v7 downcastWithAVTViewHandler:0 recordViewHandler:v26];
    }

    v20 = [(AVTCarouselController *)self recordingDelegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(AVTCarouselController *)self recordingDelegate];
      [v22 carouselController:self didFocusOnRecordView:v28[5]];
    }

    v23 = [(AVTCarouselController *)self recordingDelegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [(AVTCarouselController *)self recordingDelegate];
      [v25 carouselController:self didUpdateWithRecord:v6];
    }

    _Block_object_dispose(&v27, 8);
  }

  else if (!v11)
  {
    if (v6)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [(AVTCarouselController *)self displayingDelegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(AVTCarouselController *)self displayingDelegate];
      [v16 carouselController:self didFocusOnView:v13];
    }

    v17 = [(AVTCarouselController *)self displayingDelegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [(AVTCarouselController *)self displayingDelegate];
      [v19 carouselController:self didUpdateWithRecord:v6];
    }
  }
}

- (void)notifyDelegateWillEndFocusOnRecord:(id)a3 avtView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTCarouselController *)self environment];
  v9 = [v8 logger];
  v10 = [v6 description];
  [v9 logCarouselDelegateWillEndFocusRecord:v10];

  v11 = [(AVTCarouselController *)self mode];
  if (v11 == 1)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__14;
    v25 = __Block_byref_object_dispose__14;
    v26 = 0;
    if (v6)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __68__AVTCarouselController_notifyDelegateWillEndFocusOnRecord_avtView___block_invoke;
      v20[3] = &unk_1E7F3C6A8;
      v20[4] = &v21;
      [v7 downcastWithAVTViewHandler:0 recordViewHandler:v20];
    }

    v17 = [(AVTCarouselController *)self recordingDelegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [(AVTCarouselController *)self recordingDelegate];
      [v19 carouselController:self willEndFocusOnRecordView:v22[5]];
    }

    _Block_object_dispose(&v21, 8);
  }

  else if (!v11)
  {
    if (v6)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [(AVTCarouselController *)self displayingDelegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(AVTCarouselController *)self displayingDelegate];
      [v16 carouselController:self willEndFocusOnView:v13];
    }
  }

  [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:v6];
}

- (void)notifyDelegateNearnessFactorDidChange:(double)a3 towardRecord:(id)a4
{
  v21 = a4;
  v6 = [(AVTCarouselController *)self environment];
  v7 = [v6 logger];
  [v7 logCarouselDelegateNearnessFactorDidChange:v21 != 0 towardRecord:objc_msgSend(v21 editable:{"isEditable"), a3}];

  v8 = [(AVTCarouselController *)self mode];
  if (v8 == 1)
  {
    v15 = [(AVTCarouselController *)self recordingDelegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(AVTCarouselController *)self recordingDelegate];
      [v17 carouselController:self didMoveTowardRecord:v21 withFactor:a3];
    }

    v18 = [(AVTCarouselController *)self recordingDelegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v14 = [(AVTCarouselController *)self recordingDelegate];
      goto LABEL_11;
    }
  }

  else if (!v8)
  {
    v9 = [(AVTCarouselController *)self displayingDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(AVTCarouselController *)self displayingDelegate];
      [v11 carouselController:self didMoveTowardRecord:v21 withFactor:a3];
    }

    v12 = [(AVTCarouselController *)self displayingDelegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(AVTCarouselController *)self displayingDelegate];
LABEL_11:
      v20 = v14;
      [v14 carouselController:self didMoveToNearestRecord:v21 withFactor:a3];
    }
  }
}

- (void)notifyDelegateDidUpdateWithRecord:(id)a3
{
  v14 = a3;
  v4 = [(AVTCarouselController *)self environment];
  v5 = [v4 logger];
  v6 = [v14 description];
  [v5 logCarouselDelegateDidUpdateRecord:v6];

  v7 = [(AVTCarouselController *)self mode];
  if (v7 == 1)
  {
    v11 = [(AVTCarouselController *)self recordingDelegate];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }

    v10 = [(AVTCarouselController *)self recordingDelegate];
    goto LABEL_7;
  }

  if (!v7)
  {
    v8 = [(AVTCarouselController *)self displayingDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(AVTCarouselController *)self displayingDelegate];
LABEL_7:
      v13 = v10;
      [v10 carouselController:self didUpdateWithRecord:v14];
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
    v5 = [(AVTCarouselController *)self avtViewSession];
    v6 = [v5 avtView];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__AVTCarouselController_focusedRecordingView__block_invoke;
    v9[3] = &unk_1E7F3C6A8;
    v9[4] = &v10;
    [v6 downcastWithAVTViewHandler:0 recordViewHandler:v9];

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
    v5 = [(AVTCarouselController *)self avtViewSession];
    v6 = [v5 avtView];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__AVTCarouselController_focusedDisplayView__block_invoke;
    v9[3] = &unk_1E7F3C6D0;
    v9[4] = &v10;
    [v6 downcastWithAVTViewHandler:v9 recordViewHandler:0];

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return v7;
}

- (void)dataSource:(id)a3 didAddRecord:(id)a4 atIndex:(unint64_t)a5
{
  v6 = a4;
  [(AVTCarouselController *)self reloadDataCenteringToAvatarRecord:v6];
  [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:v6];
}

- (void)dataSource:(id)a3 didEditRecord:(id)a4 atIndex:(unint64_t)a5
{
  v6 = a4;
  [(AVTCarouselController *)self reloadDataCenteringToAvatarRecord:v6];
  [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:v6];
}

- (void)dataSource:(id)a3 didRemoveRecord:(id)a4 atIndex:(unint64_t)a5
{
  v7 = a3;
  v8 = [(AVTCarouselController *)self dataSource];
  v12 = [v8 indexSetForEditableRecords];

  if ([v12 count])
  {
    v9 = v12;
  }

  else
  {
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];

    v9 = v10;
  }

  v13 = v9;
  v11 = [v7 recordAtIndex:{objc_msgSend(v9, "closestIndexToIndex:greaterIndexesFirst:", a5, 1)}];

  [(AVTCarouselController *)self reloadDataCenteringToAvatarRecord:v11];
  [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:v11];
}

- (void)significantRecordChangeInDataSource:(id)a3
{
  v4 = [(AVTCarouselController *)self dataSource];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__AVTCarouselController_significantRecordChangeInDataSource___block_invoke;
  v9[3] = &unk_1E7F3B3B0;
  v9[4] = self;
  v5 = [v4 indexOfRecordPassingTest:v9];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = [(AVTCarouselController *)self dataSource];
  v8 = [v7 recordAtIndex:v6];

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

- (id)avatarActionsViewController:(id)a3 recordUpdateForDeletingRecord:(id)a4
{
  v5 = a4;
  v6 = [(AVTCarouselController *)self dataSource];
  v7 = [AVTAvatarActionsRecordUpdate recordUpdateForDeletingRecord:v5 withDataSource:v6];

  return v7;
}

- (void)avatarActionsViewControllerDidFinish:(id)a3
{
  v4 = [(AVTCarouselController *)self presenterDelegate];
  [v4 dismissAvatarUIControllerAnimated:1];

  [(AVTCarouselController *)self beginAVTViewSession];
}

- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4
{
  v5 = a4;
  [(AVTCarouselController *)self reloadDataCenteringToAvatarRecord:v5];
  [(AVTCarouselController *)self notifyDelegateDidUpdateWithRecord:v5];

  v6 = [(AVTCarouselController *)self presenterDelegate];
  [v6 dismissAvatarUIControllerAnimated:1];

  [(AVTCarouselController *)self beginAVTViewSession];
}

- (void)avatarEditorViewControllerDidCancel:(id)a3
{
  v4 = [(AVTCarouselController *)self presenterDelegate];
  [v4 dismissAvatarUIControllerAnimated:1];

  [(AVTCarouselController *)self beginAVTViewSession];
}

- (id)snapshotProviderFocusedOnRecordWithIdentifier:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(AVTCarouselController *)self avtViewSessionProvider];
  [v8 avtViewBackingSize];
  v10 = v9;
  v12 = v11;
  v13 = [(AVTCarouselController *)self dataSource];
  v14 = [(AVTCarouselController *)self environment];
  v15 = [AVTMultiAvatarController snapshotProviderFocusedOnRecordWithIdentifier:v7 size:v13 avtViewAspectRatio:v14 dataSource:width environment:height, v10, v12];

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
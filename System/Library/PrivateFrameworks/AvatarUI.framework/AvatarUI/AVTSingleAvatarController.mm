@interface AVTSingleAvatarController
- (AVTAdaptativeLayoutView)view;
- (AVTAvatarDisplayingControllerDelegate)delegate;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTSingleAvatarController)initWithDataSource:(id)source environment:(id)environment;
- (id)liveView;
- (void)displayAvatarForRecord:(id)record animated:(BOOL)animated;
- (void)loadView;
- (void)prepareViewWithLayout:(id)layout;
- (void)stopUsingAVTViewSessionSynchronously:(BOOL)synchronously completionHandler:(id)handler;
- (void)transitionLiveViewToFront;
- (void)transitionStaticViewToFront;
- (void)transitionToOtherDisplayedRecord;
- (void)transitionToShowingDisplayedRecordWithCompletionHandler:(id)handler;
- (void)updateImageViewWithAVTViewSnapshot;
- (void)updateImageViewWithDisplayedRecord;
- (void)useAVTViewFromSession:(id)session withLayout:(id)layout;
@end

@implementation AVTSingleAvatarController

- (AVTSingleAvatarController)initWithDataSource:(id)source environment:(id)environment
{
  environmentCopy = environment;
  v14.receiver = self;
  v14.super_class = AVTSingleAvatarController;
  v6 = [(AVTSingleAvatarController *)&v14 init];
  if (v6)
  {
    v7 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:environmentCopy];
    thumbnailRenderer = v6->_thumbnailRenderer;
    v6->_thumbnailRenderer = v7;

    v9 = +[AVTRenderingScope listControllerThumbnailScope];
    renderingScope = v6->_renderingScope;
    v6->_renderingScope = v9;

    logger = [environmentCopy logger];
    logger = v6->_logger;
    v6->_logger = logger;
  }

  return v6;
}

- (AVTAdaptativeLayoutView)view
{
  if (![(AVTSingleAvatarController *)self isViewLoaded])
  {
    [(AVTSingleAvatarController *)self loadView];
    [(AVTSingleAvatarController *)self viewDidLoad];
  }

  view = self->_view;

  return view;
}

- (void)loadView
{
  v3 = [[AVTImageTransitioningContainerView alloc] initWithFrame:0.0, 0.0, 200.0, 200.0];
  [(AVTSingleAvatarController *)self setTransitioningContainer:v3];

  v4 = [AVTAdaptativeLayoutView alloc];
  transitioningContainer = [(AVTSingleAvatarController *)self transitioningContainer];
  [transitioningContainer frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  transitioningContainer2 = [(AVTSingleAvatarController *)self transitioningContainer];
  v15 = [(AVTAdaptativeLayoutView *)v4 initWithFrame:transitioningContainer2 contentView:v7, v9, v11, v13];

  [(AVTSingleAvatarController *)self setView:v15];
}

- (void)prepareViewWithLayout:(id)layout
{
  layoutCopy = layout;
  if (![(AVTSingleAvatarController *)self isViewLoaded])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Hey, you haven't even loaded my view first"}];
  }

  view = [(AVTSingleAvatarController *)self view];
  [view setLayout:layoutCopy];
}

- (void)useAVTViewFromSession:(id)session withLayout:(id)layout
{
  layoutCopy = layout;
  sessionCopy = session;
  if (![(AVTSingleAvatarController *)self isViewLoaded])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Hey, you haven't even loaded my view first"}];
  }

  displayedRecord = [(AVTSingleAvatarController *)self displayedRecord];

  if (!displayedRecord)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't show an avatar if you don't give me one"];
  }

  logger = [(AVTSingleAvatarController *)self logger];
  avtView = [sessionCopy avtView];
  v11 = [avtView description];
  [logger logSingleModeControllerStartUsingLiveView:v11];

  [(AVTSingleAvatarController *)self setAvtViewSession:sessionCopy];
  [sessionCopy aspectRatio];
  v13 = v12;
  v15 = v14;
  transitioningContainer = [(AVTSingleAvatarController *)self transitioningContainer];
  [transitioningContainer setAspectRatio:{v13, v15}];

  view = [(AVTSingleAvatarController *)self view];
  [view setLayout:layoutCopy];

  transitioningContainer2 = [(AVTSingleAvatarController *)self transitioningContainer];
  avtViewContainer = [sessionCopy avtViewContainer];

  [transitioningContainer2 setLiveView:avtViewContainer];
  delegate = [(AVTSingleAvatarController *)self delegate];
  [delegate willBeginFocus:self];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__AVTSingleAvatarController_useAVTViewFromSession_withLayout___block_invoke;
  v21[3] = &unk_1E7F3AA80;
  v21[4] = self;
  [(AVTSingleAvatarController *)self transitionToShowingDisplayedRecordWithCompletionHandler:v21];
}

void __62__AVTSingleAvatarController_useAVTViewFromSession_withLayout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didBeginFocus:*(a1 + 32)];
}

- (void)stopUsingAVTViewSessionSynchronously:(BOOL)synchronously completionHandler:(id)handler
{
  handlerCopy = handler;
  logger = [(AVTSingleAvatarController *)self logger];
  liveView = [(AVTSingleAvatarController *)self liveView];
  v7 = [liveView description];
  [logger logSingleModeControllerStopUsingLiveView:v7];

  delegate = [(AVTSingleAvatarController *)self delegate];
  [delegate willEndFocus:self];

  delegate2 = [(AVTSingleAvatarController *)self delegate];
  [delegate2 didEndFocus:self];

  currentTransition = [(AVTSingleAvatarController *)self currentTransition];
  [currentTransition cancel];

  [(AVTSingleAvatarController *)self setCurrentTransition:0];
  [(AVTSingleAvatarController *)self updateImageViewWithAVTViewSnapshot];
  transitioningContainer = [(AVTSingleAvatarController *)self transitioningContainer];
  [transitioningContainer setLiveView:0];

  [(AVTSingleAvatarController *)self setAvtViewSession:0];
  v12 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
    v12 = handlerCopy;
  }
}

- (void)displayAvatarForRecord:(id)record animated:(BOOL)animated
{
  animatedCopy = animated;
  recordCopy = record;
  [(AVTSingleAvatarController *)self setDisplayedRecord:recordCopy];
  avtViewSession = [(AVTSingleAvatarController *)self avtViewSession];
  isActive = [avtViewSession isActive];

  if (isActive)
  {
    [(AVTSingleAvatarController *)self transitionToOtherDisplayedRecord];
  }

  v9 = MEMORY[0x1E69DD250];
  v12[1] = 3221225472;
  v12[0] = MEMORY[0x1E69E9820];
  v12[2] = __61__AVTSingleAvatarController_displayAvatarForRecord_animated___block_invoke;
  v12[3] = &unk_1E7F3AD60;
  if (animatedCopy)
  {
    v10 = 0.3;
  }

  else
  {
    v10 = 0.0;
  }

  v12[4] = self;
  v13 = recordCopy;
  v11 = recordCopy;
  [v9 animateWithDuration:v12 animations:v10];
}

void __61__AVTSingleAvatarController_displayAvatarForRecord_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 displayingController:*(a1 + 32) didMoveTowardRecord:*(a1 + 40) withFactor:1.0];
}

- (void)updateImageViewWithDisplayedRecord
{
  displayedRecord = [(AVTSingleAvatarController *)self displayedRecord];

  if (displayedRecord)
  {
    displayedRecord2 = [(AVTSingleAvatarController *)self displayedRecord];
    thumbnailRenderer = [(AVTSingleAvatarController *)self thumbnailRenderer];
    displayedRecord3 = [(AVTSingleAvatarController *)self displayedRecord];
    renderingScope = [(AVTSingleAvatarController *)self renderingScope];
    v8 = [thumbnailRenderer providerForRecord:displayedRecord3 scope:renderingScope];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__AVTSingleAvatarController_updateImageViewWithDisplayedRecord__block_invoke;
    v13[3] = &unk_1E7F3BF90;
    v13[4] = self;
    v14 = displayedRecord2;
    v9 = v8[2];
    v10 = displayedRecord2;
    v11 = v9(v8, v13, 1);
  }

  else
  {
    transitioningContainer = [(AVTSingleAvatarController *)self transitioningContainer];
    [transitioningContainer setStaticImage:0];
  }
}

void __63__AVTSingleAvatarController_updateImageViewWithDisplayedRecord__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) displayedRecord];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = [*(a1 + 32) transitioningContainer];
    [v5 setStaticImage:v6];
  }
}

- (void)updateImageViewWithAVTViewSnapshot
{
  transitioningContainer = [(AVTSingleAvatarController *)self transitioningContainer];
  staticView = [transitioningContainer staticView];
  window = [staticView window];

  if (window)
  {
    v6 = MEMORY[0x1E698E2D8];
    avtViewSession = [(AVTSingleAvatarController *)self avtViewSession];
    avtView = [avtViewSession avtView];
    transitioningContainer2 = [(AVTSingleAvatarController *)self transitioningContainer];
    staticView2 = [transitioningContainer2 staticView];
    logger = [(AVTSingleAvatarController *)self logger];
    logger2 = [v6 snapshotAVTView:avtView matchingViewSize:staticView2 highQuality:1 logger:logger];

    transitioningContainer3 = [(AVTSingleAvatarController *)self transitioningContainer];
    [transitioningContainer3 setStaticImage:logger2];

    transitioningContainer4 = [(AVTSingleAvatarController *)self transitioningContainer];
    [transitioningContainer4 transitionStaticViewToFront];
  }

  else
  {
    logger2 = [(AVTSingleAvatarController *)self logger];
    [logger2 logSingleModeCantSnapshotForLackOfWindow];
  }
}

- (void)transitionToOtherDisplayedRecord
{
  avtViewSession = [(AVTSingleAvatarController *)self avtViewSession];
  isActive = [avtViewSession isActive];

  if ((isActive & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't transition to other record without an AVTView"];
  }

  [(AVTSingleAvatarController *)self updateImageViewWithAVTViewSnapshot];
  avtViewSession2 = [(AVTSingleAvatarController *)self avtViewSession];
  avtViewUpdater = [avtViewSession2 avtViewUpdater];
  displayedRecord = [(AVTSingleAvatarController *)self displayedRecord];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__AVTSingleAvatarController_transitionToOtherDisplayedRecord__block_invoke;
  v8[3] = &unk_1E7F3AA80;
  v8[4] = self;
  [avtViewUpdater setAvatarRecord:displayedRecord completionHandler:v8];
}

void __61__AVTSingleAvatarController_transitionToOtherDisplayedRecord__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [v4 displayedRecord];
    [v3 displayingController:v4 didChangeCurrentRecord:v5];

    v6 = MEMORY[0x1E69DD250];
    v7 = [*(a1 + 32) transitioningContainer];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__AVTSingleAvatarController_transitionToOtherDisplayedRecord__block_invoke_2;
    v9[3] = &unk_1E7F3A9B8;
    v10 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__AVTSingleAvatarController_transitionToOtherDisplayedRecord__block_invoke_3;
    v8[3] = &unk_1E7F3AA80;
    v8[4] = v10;
    [v6 transitionWithView:v7 duration:0 options:v9 animations:v8 completion:0.3];
  }
}

void __61__AVTSingleAvatarController_transitionToOtherDisplayedRecord__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) transitioningContainer];
  [v1 transitionLiveViewToFront];
}

void __61__AVTSingleAvatarController_transitionToOtherDisplayedRecord__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) avtViewSession];
  v3 = [v2 avtView];
  v4 = [v3 enableFaceTracking];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 32);

    [v5 transitionToShowingDisplayedRecordWithCompletionHandler:0];
  }
}

- (void)transitionToShowingDisplayedRecordWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(AVTSingleAvatarController *)self isViewLoaded])
  {
    avtViewSession = [(AVTSingleAvatarController *)self avtViewSession];
    if (([avtViewSession isActive] & 1) == 0)
    {
LABEL_9:

      goto LABEL_10;
    }

    displayedRecord = [(AVTSingleAvatarController *)self displayedRecord];

    if (displayedRecord)
    {
      avtViewSession2 = [(AVTSingleAvatarController *)self avtViewSession];
      avtViewSession = [avtViewSession2 avtViewUpdater];

      avatarRecord = [avtViewSession avatarRecord];
      displayedRecord2 = [(AVTSingleAvatarController *)self displayedRecord];
      v10 = [avatarRecord isEqual:displayedRecord2];

      if (v10)
      {
        v11 = [AVTAvatarToLiveTransition alloc];
        logger = [(AVTSingleAvatarController *)self logger];
        v13 = [(AVTAvatarToLiveTransition *)v11 initWithModel:self animated:0 setupHandler:0 completionHandler:&__block_literal_global_33 logger:logger];

        [(AVTTransition *)v13 start];
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 1);
        }
      }

      else
      {
        [(AVTSingleAvatarController *)self updateImageViewWithDisplayedRecord];
        v21 = 0;
        v22 = &v21;
        v23 = 0x3042000000;
        v24 = __Block_byref_object_copy__23;
        v25 = __Block_byref_object_dispose__23;
        v26 = 0;
        v14 = [AVTAvatarToLiveTransition alloc];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __85__AVTSingleAvatarController_transitionToShowingDisplayedRecordWithCompletionHandler___block_invoke_17;
        v20[3] = &unk_1E7F3D5D8;
        v20[4] = self;
        v17 = MEMORY[0x1E69E9820];
        v19 = &v21;
        v18 = handlerCopy;
        v15 = [(AVTSingleAvatarController *)self logger:v17];
        v16 = [(AVTAvatarToLiveTransition *)v14 initWithModel:self animated:1 setupHandler:v20 completionHandler:&v17 logger:v15];

        objc_storeWeak(v22 + 5, v16);
        [(AVTSingleAvatarController *)self setCurrentTransition:v16];
        [(AVTTransition *)v16 start];

        _Block_object_dispose(&v21, 8);
        objc_destroyWeak(&v26);
      }

      goto LABEL_9;
    }
  }

LABEL_10:
}

void __85__AVTSingleAvatarController_transitionToShowingDisplayedRecordWithCompletionHandler___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) avtViewSession];
  v5 = [v4 avtViewUpdater];
  v6 = [*(a1 + 32) displayedRecord];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__AVTSingleAvatarController_transitionToShowingDisplayedRecordWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E7F3AC00;
  v9 = v3;
  v7 = v3;
  [v5 setAvatarRecord:v6 completionHandler:v8];
}

uint64_t __85__AVTSingleAvatarController_transitionToShowingDisplayedRecordWithCompletionHandler___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) transitioningContainer];
    [v3 setStaticImage:0];

    v4 = [*(a1 + 32) currentTransition];
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));

    if (v4 == WeakRetained)
    {
      [*(a1 + 32) setCurrentTransition:0];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)transitionStaticViewToFront
{
  transitioningContainer = [(AVTSingleAvatarController *)self transitioningContainer];
  [transitioningContainer transitionStaticViewToFront];
}

- (void)transitionLiveViewToFront
{
  transitioningContainer = [(AVTSingleAvatarController *)self transitioningContainer];
  [transitioningContainer transitionLiveViewToFront];
}

- (id)liveView
{
  avtViewSession = [(AVTSingleAvatarController *)self avtViewSession];
  avtView = [avtViewSession avtView];

  return avtView;
}

- (AVTAvatarDisplayingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (AVTPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presenterDelegate);

  return WeakRetained;
}

@end
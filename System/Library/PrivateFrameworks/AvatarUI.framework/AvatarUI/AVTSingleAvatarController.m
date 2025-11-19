@interface AVTSingleAvatarController
- (AVTAdaptativeLayoutView)view;
- (AVTAvatarDisplayingControllerDelegate)delegate;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTSingleAvatarController)initWithDataSource:(id)a3 environment:(id)a4;
- (id)liveView;
- (void)displayAvatarForRecord:(id)a3 animated:(BOOL)a4;
- (void)loadView;
- (void)prepareViewWithLayout:(id)a3;
- (void)stopUsingAVTViewSessionSynchronously:(BOOL)a3 completionHandler:(id)a4;
- (void)transitionLiveViewToFront;
- (void)transitionStaticViewToFront;
- (void)transitionToOtherDisplayedRecord;
- (void)transitionToShowingDisplayedRecordWithCompletionHandler:(id)a3;
- (void)updateImageViewWithAVTViewSnapshot;
- (void)updateImageViewWithDisplayedRecord;
- (void)useAVTViewFromSession:(id)a3 withLayout:(id)a4;
@end

@implementation AVTSingleAvatarController

- (AVTSingleAvatarController)initWithDataSource:(id)a3 environment:(id)a4
{
  v5 = a4;
  v14.receiver = self;
  v14.super_class = AVTSingleAvatarController;
  v6 = [(AVTSingleAvatarController *)&v14 init];
  if (v6)
  {
    v7 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:v5];
    thumbnailRenderer = v6->_thumbnailRenderer;
    v6->_thumbnailRenderer = v7;

    v9 = +[AVTRenderingScope listControllerThumbnailScope];
    renderingScope = v6->_renderingScope;
    v6->_renderingScope = v9;

    v11 = [v5 logger];
    logger = v6->_logger;
    v6->_logger = v11;
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
  v5 = [(AVTSingleAvatarController *)self transitioningContainer];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(AVTSingleAvatarController *)self transitioningContainer];
  v15 = [(AVTAdaptativeLayoutView *)v4 initWithFrame:v14 contentView:v7, v9, v11, v13];

  [(AVTSingleAvatarController *)self setView:v15];
}

- (void)prepareViewWithLayout:(id)a3
{
  v4 = a3;
  if (![(AVTSingleAvatarController *)self isViewLoaded])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Hey, you haven't even loaded my view first"}];
  }

  v5 = [(AVTSingleAvatarController *)self view];
  [v5 setLayout:v4];
}

- (void)useAVTViewFromSession:(id)a3 withLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (![(AVTSingleAvatarController *)self isViewLoaded])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Hey, you haven't even loaded my view first"}];
  }

  v8 = [(AVTSingleAvatarController *)self displayedRecord];

  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't show an avatar if you don't give me one"];
  }

  v9 = [(AVTSingleAvatarController *)self logger];
  v10 = [v7 avtView];
  v11 = [v10 description];
  [v9 logSingleModeControllerStartUsingLiveView:v11];

  [(AVTSingleAvatarController *)self setAvtViewSession:v7];
  [v7 aspectRatio];
  v13 = v12;
  v15 = v14;
  v16 = [(AVTSingleAvatarController *)self transitioningContainer];
  [v16 setAspectRatio:{v13, v15}];

  v17 = [(AVTSingleAvatarController *)self view];
  [v17 setLayout:v6];

  v18 = [(AVTSingleAvatarController *)self transitioningContainer];
  v19 = [v7 avtViewContainer];

  [v18 setLiveView:v19];
  v20 = [(AVTSingleAvatarController *)self delegate];
  [v20 willBeginFocus:self];

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

- (void)stopUsingAVTViewSessionSynchronously:(BOOL)a3 completionHandler:(id)a4
{
  v13 = a4;
  v5 = [(AVTSingleAvatarController *)self logger];
  v6 = [(AVTSingleAvatarController *)self liveView];
  v7 = [v6 description];
  [v5 logSingleModeControllerStopUsingLiveView:v7];

  v8 = [(AVTSingleAvatarController *)self delegate];
  [v8 willEndFocus:self];

  v9 = [(AVTSingleAvatarController *)self delegate];
  [v9 didEndFocus:self];

  v10 = [(AVTSingleAvatarController *)self currentTransition];
  [v10 cancel];

  [(AVTSingleAvatarController *)self setCurrentTransition:0];
  [(AVTSingleAvatarController *)self updateImageViewWithAVTViewSnapshot];
  v11 = [(AVTSingleAvatarController *)self transitioningContainer];
  [v11 setLiveView:0];

  [(AVTSingleAvatarController *)self setAvtViewSession:0];
  v12 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, 1);
    v12 = v13;
  }
}

- (void)displayAvatarForRecord:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(AVTSingleAvatarController *)self setDisplayedRecord:v6];
  v7 = [(AVTSingleAvatarController *)self avtViewSession];
  v8 = [v7 isActive];

  if (v8)
  {
    [(AVTSingleAvatarController *)self transitionToOtherDisplayedRecord];
  }

  v9 = MEMORY[0x1E69DD250];
  v12[1] = 3221225472;
  v12[0] = MEMORY[0x1E69E9820];
  v12[2] = __61__AVTSingleAvatarController_displayAvatarForRecord_animated___block_invoke;
  v12[3] = &unk_1E7F3AD60;
  if (v4)
  {
    v10 = 0.3;
  }

  else
  {
    v10 = 0.0;
  }

  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v9 animateWithDuration:v12 animations:v10];
}

void __61__AVTSingleAvatarController_displayAvatarForRecord_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 displayingController:*(a1 + 32) didMoveTowardRecord:*(a1 + 40) withFactor:1.0];
}

- (void)updateImageViewWithDisplayedRecord
{
  v3 = [(AVTSingleAvatarController *)self displayedRecord];

  if (v3)
  {
    v4 = [(AVTSingleAvatarController *)self displayedRecord];
    v5 = [(AVTSingleAvatarController *)self thumbnailRenderer];
    v6 = [(AVTSingleAvatarController *)self displayedRecord];
    v7 = [(AVTSingleAvatarController *)self renderingScope];
    v8 = [v5 providerForRecord:v6 scope:v7];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__AVTSingleAvatarController_updateImageViewWithDisplayedRecord__block_invoke;
    v13[3] = &unk_1E7F3BF90;
    v13[4] = self;
    v14 = v4;
    v9 = v8[2];
    v10 = v4;
    v11 = v9(v8, v13, 1);
  }

  else
  {
    v12 = [(AVTSingleAvatarController *)self transitioningContainer];
    [v12 setStaticImage:0];
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
  v3 = [(AVTSingleAvatarController *)self transitioningContainer];
  v4 = [v3 staticView];
  v5 = [v4 window];

  if (v5)
  {
    v6 = MEMORY[0x1E698E2D8];
    v7 = [(AVTSingleAvatarController *)self avtViewSession];
    v8 = [v7 avtView];
    v9 = [(AVTSingleAvatarController *)self transitioningContainer];
    v10 = [v9 staticView];
    v11 = [(AVTSingleAvatarController *)self logger];
    v14 = [v6 snapshotAVTView:v8 matchingViewSize:v10 highQuality:1 logger:v11];

    v12 = [(AVTSingleAvatarController *)self transitioningContainer];
    [v12 setStaticImage:v14];

    v13 = [(AVTSingleAvatarController *)self transitioningContainer];
    [v13 transitionStaticViewToFront];
  }

  else
  {
    v14 = [(AVTSingleAvatarController *)self logger];
    [v14 logSingleModeCantSnapshotForLackOfWindow];
  }
}

- (void)transitionToOtherDisplayedRecord
{
  v3 = [(AVTSingleAvatarController *)self avtViewSession];
  v4 = [v3 isActive];

  if ((v4 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't transition to other record without an AVTView"];
  }

  [(AVTSingleAvatarController *)self updateImageViewWithAVTViewSnapshot];
  v5 = [(AVTSingleAvatarController *)self avtViewSession];
  v6 = [v5 avtViewUpdater];
  v7 = [(AVTSingleAvatarController *)self displayedRecord];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__AVTSingleAvatarController_transitionToOtherDisplayedRecord__block_invoke;
  v8[3] = &unk_1E7F3AA80;
  v8[4] = self;
  [v6 setAvatarRecord:v7 completionHandler:v8];
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

- (void)transitionToShowingDisplayedRecordWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(AVTSingleAvatarController *)self isViewLoaded])
  {
    v5 = [(AVTSingleAvatarController *)self avtViewSession];
    if (([v5 isActive] & 1) == 0)
    {
LABEL_9:

      goto LABEL_10;
    }

    v6 = [(AVTSingleAvatarController *)self displayedRecord];

    if (v6)
    {
      v7 = [(AVTSingleAvatarController *)self avtViewSession];
      v5 = [v7 avtViewUpdater];

      v8 = [v5 avatarRecord];
      v9 = [(AVTSingleAvatarController *)self displayedRecord];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        v11 = [AVTAvatarToLiveTransition alloc];
        v12 = [(AVTSingleAvatarController *)self logger];
        v13 = [(AVTAvatarToLiveTransition *)v11 initWithModel:self animated:0 setupHandler:0 completionHandler:&__block_literal_global_33 logger:v12];

        [(AVTTransition *)v13 start];
        if (v4)
        {
          v4[2](v4, 1);
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
        v18 = v4;
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
  v2 = [(AVTSingleAvatarController *)self transitioningContainer];
  [v2 transitionStaticViewToFront];
}

- (void)transitionLiveViewToFront
{
  v2 = [(AVTSingleAvatarController *)self transitioningContainer];
  [v2 transitionLiveViewToFront];
}

- (id)liveView
{
  v2 = [(AVTSingleAvatarController *)self avtViewSession];
  v3 = [v2 avtView];

  return v3;
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
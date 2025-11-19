@interface LPFullScreenVideoController
- (LPFullScreenVideoController)initWithPlayer:(id)a3 sourceView:(id)a4;
- (void)didCompleteDismissal;
- (void)dismiss;
- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)prepareForDisplayWithCompletionHandler:(id)a3;
- (void)present;
- (void)setUpFullScreenVideoViewControllerIfNeeded;
@end

@implementation LPFullScreenVideoController

- (LPFullScreenVideoController)initWithPlayer:(id)a3 sourceView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = LPFullScreenVideoController;
  v9 = [(LPFullScreenVideoController *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceView, a4);
    objc_storeStrong(&v10->_player, a3);
    v11 = objc_alloc(MEMORY[0x1E6958630]);
    [v8 bounds];
    v13 = v12;
    [v8 bounds];
    v14 = [v11 initWithFrame:{0.0, 0.0, v13}];
    playerLayerView = v10->_playerLayerView;
    v10->_playerLayerView = v14;

    v16 = [(__AVPlayerLayerView *)v10->_playerLayerView layer];
    [v16 setMasksToBounds:1];

    v17 = [(__AVPlayerLayerView *)v10->_playerLayerView playerLayer];
    [v17 setPlayer:v7];

    v18 = v10;
  }

  return v10;
}

- (void)prepareForDisplayWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(LPFullScreenVideoController *)self setUpFullScreenVideoViewControllerIfNeeded];
  [(LPAVPlayerViewController *)self->_playerViewController prepareForDisplayWithCompletionHandler:v4];
}

- (void)setUpFullScreenVideoViewControllerIfNeeded
{
  if (!self->_playerController)
  {
    v4 = [objc_alloc(MEMORY[0x1E6958600]) initWithPlayer:self->_player];
    playerController = self->_playerController;
    self->_playerController = v4;

    v6 = objc_alloc_init(LPAVPlayerViewController);
    playerViewController = self->_playerViewController;
    self->_playerViewController = v6;

    [(LPAVPlayerViewController *)self->_playerViewController setPlayer:self->_player];
    [(LPAVPlayerViewController *)self->_playerViewController setDelegate:self];
    [(LPAVPlayerViewController *)self->_playerViewController setEntersFullScreenWhenPlaybackBegins:1];
    [(LPAVPlayerViewController *)self->_playerViewController setAllowsPictureInPicturePlayback:0];
    [(LPAVPlayerViewController *)self->_playerViewController setUpdatesNowPlayingInfoCenter:0];
    [(LPAVPlayerViewController *)self->_playerViewController setCanPausePlaybackWhenExitingFullScreen:0];
    [(LPAVPlayerViewController *)self->_playerViewController setPlayerController:self->_playerController];
    playerLayerView = self->_playerLayerView;
    v9 = self->_playerController;

    [(__AVPlayerLayerView *)playerLayerView setPlayerController:v9];
  }
}

- (void)present
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __38__LPFullScreenVideoController_present__block_invoke;
  v2[3] = &unk_1E7A35450;
  v2[4] = self;
  [(LPFullScreenVideoController *)self prepareForDisplayWithCompletionHandler:v2];
}

- (void)dismiss
{
  playerViewController = self->_playerViewController;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__LPFullScreenVideoController_dismiss__block_invoke;
  v3[3] = &unk_1E7A35450;
  v3[4] = self;
  [(LPAVPlayerViewController *)playerViewController dismissViewControllerAnimated:1 completion:v3];
}

- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v4[4] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __106__LPFullScreenVideoController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke;
  v5[3] = &unk_1E7A36720;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__LPFullScreenVideoController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2;
  v4[3] = &unk_1E7A36720;
  [a4 animateAlongsideTransition:v5 completion:v4];
}

void __106__LPFullScreenVideoController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v3 = [*(v1 + 8) configuration];
  [v3 fullScreenTransitionCornerRadius];
  [v2 _lp_setCornerRadius:?];
}

void __106__LPFullScreenVideoController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 24) _lp_setCornerRadius:0.0];
  if (([v3 isCancelled] & 1) == 0)
  {
    [*(a1 + 32) didCompleteDismissal];
  }
}

- (void)didCompleteDismissal
{
  [(LPVisualMediaView *)self->_sourceView fullScreenVideoWillDismiss];
  [(LPVisualMediaView *)self->_sourceView fullScreenVideoDidDismiss];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__LPFullScreenVideoController_didCompleteDismissal__block_invoke;
  block[3] = &unk_1E7A35450;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __51__LPFullScreenVideoController_didCompleteDismissal__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) setVolume:0.0];
  v2 = *(*(a1 + 32) + 40);

  return [v2 setMuted:0];
}

@end
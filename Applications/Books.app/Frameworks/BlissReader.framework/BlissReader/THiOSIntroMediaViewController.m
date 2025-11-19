@interface THiOSIntroMediaViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)p_isAtEnd;
- (BOOL)prefersStatusBarHidden;
- (CGSize)hostViewSizeForIntroMediaController:(id)a3;
- (THiOSIntroMediaViewController)initWithDocumentRoot:(id)a3;
- (double)playbackRate;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)movieGestureView;
- (void)audioPlaybackWillStart:(id)a3;
- (void)dealloc;
- (void)ensureReadyToPlay;
- (void)hideControls;
- (void)introMediaControllerShouldToggleControls;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_cancelUIFadeOutTimer;
- (void)p_configureCloseButton;
- (void)p_hideMovieControlsAnimated:(BOOL)a3;
- (void)p_nextPage;
- (void)p_playForBookOpen:(BOOL)a3;
- (void)p_playerDidPlayToEnd:(id)a3;
- (void)p_releaseOutlets;
- (void)p_removePlaybackNotifications;
- (void)p_resetMoviePlayer;
- (void)p_resetUIFadeOutTimer;
- (void)p_setupPlaybackNotifications;
- (void)p_showMovieControls;
- (void)p_unloadMoviePlayer;
- (void)p_updateFrameForSize:(CGSize)a3;
- (void)p_updateSetShowsDoneButton;
- (void)pause;
- (void)pauseAndDismissMoviePlayer;
- (void)playForIntroMediaBecomesVisible;
- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)prepareControlsForTOC;
- (void)prepareMovieForTOC;
- (void)showControls;
- (void)stop;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willResignActive:(id)a3;
@end

@implementation THiOSIntroMediaViewController

- (THiOSIntroMediaViewController)initWithDocumentRoot:(id)a3
{
  v7.receiver = self;
  v7.super_class = THiOSIntroMediaViewController;
  v4 = [(THiOSIntroMediaViewController *)&v7 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [[THWIntroMediaController alloc] initWithDocumentRoot:a3];
    v4->_introMediaController = v5;
    if (v5)
    {
      [(THWIntroMediaController *)v5 setDelegate:v4];
      [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v4 name:"didBecomeActive:" object:UIApplicationDidBecomeActiveNotification, 0];
      [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v4 name:"willResignActive:" object:UIApplicationWillResignActiveNotification, 0];
      [+[BCAudioMuxingCoordinator sharedInstance](BCAudioMuxingCoordinator addAudioMuxingObserver:"addAudioMuxingObserver:", v4];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [+[BCAudioMuxingCoordinator sharedInstance](BCAudioMuxingCoordinator removeAudioMuxingObserver:"removeAudioMuxingObserver:", self];
  [(THiOSIntroMediaViewController *)self p_removePlaybackNotifications];
  [(THiOSIntroMediaViewController *)self p_releaseOutlets];
  [(THiOSIntroMediaViewController *)self p_cancelUIFadeOutTimer];
  [(THWIntroMediaController *)self->_introMediaController setDelegate:0];

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  v3.receiver = self;
  v3.super_class = THiOSIntroMediaViewController;
  [(THiOSIntroMediaViewController *)&v3 dealloc];
}

- (void)p_releaseOutlets
{
  [(THiOSIntroMediaViewController *)self p_unloadMoviePlayer];
  [-[UITapGestureRecognizer view](self->mTapGesture "view")];
  [(UITapGestureRecognizer *)self->mTapGesture setDelegate:0];

  self->mTapGesture = 0;
  [(THiOSIntroMediaViewController *)self setImage:0];
  [(UIButton *)[(THiOSIntroMediaViewController *)self closeButton] removeFromSuperview];
  [(THiOSIntroMediaViewController *)self setCloseButton:0];
  [(THiOSIntroMediaViewController *)self setDelegate:0];

  [(THiOSIntroMediaViewController *)self setScrimView:0];
}

- (BOOL)prefersStatusBarHidden
{
  if ([(THWIntroMediaController *)self->_introMediaController isMovie])
  {
    return 1;
  }

  return [(THiOSIntroMediaViewController *)self controlsHidden];
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = THiOSIntroMediaViewController;
  [(THiOSIntroMediaViewController *)&v19 loadView];
  [-[THiOSIntroMediaViewController view](self "view")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [[THiOSIntroMediaView alloc] initWithFrame:v3, v5, v7, v9];
  [(THiOSIntroMediaView *)v11 setClipsToBounds:0];
  [(THiOSIntroMediaViewController *)self setView:v11];
  [-[THiOSIntroMediaViewController view](self "view")];
  [-[THiOSIntroMediaViewController view](self "view")];
  [(THiOSIntroMediaViewController *)self setMovieIsInAspectFitMode:1];
  [-[THiOSIntroMediaViewController view](self "view")];

  if (v8 >= v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = [[UIView alloc] initWithFrame:{v4, v6, v12 * 1.42, v12 * 1.42}];
  [v13 setBackgroundColor:{+[UIColor blackColor](UIColor, "blackColor")}];
  [-[THiOSIntroMediaViewController view](self "view")];
  [-[THiOSIntroMediaViewController view](self "view")];
  [v13 setCenter:?];
  [(THiOSIntroMediaViewController *)self setScrimView:v13];

  if (![(THWIntroMediaController *)self->_introMediaController isMovie])
  {
    v14 = [(THBookDescription *)[(THDocumentRoot *)[(THWIntroMediaController *)self->_introMediaController documentRoot] bookDescription] drmContext];
    if (v14)
    {
      v15 = [UIImage imageWithData:[(PFDContext *)v14 dataWithContentsOfFile:[(NSURL *)[(THWIntroMediaController *)self->_introMediaController url] path] error:0]];
    }

    else
    {
      v15 = [UIImage imageWithContentsOfFile:[(NSURL *)[(THWIntroMediaController *)self->_introMediaController url] path]];
    }

    [(THiOSIntroMediaViewController *)self setImage:v15];
    [-[THiOSIntroMediaViewController view](self "view")];
    v16 = [[UIImageView alloc] initWithImage:{-[THiOSIntroMediaViewController image](self, "image")}];
    [v16 setContentMode:1];
    [v16 setAutoresizingMask:18];
    [-[THiOSIntroMediaViewController view](self "view")];
    [v16 setFrame:?];
    [v16 setUserInteractionEnabled:0];
    [-[THiOSIntroMediaViewController view](self "view")];

    v17 = [UIButton buttonWithType:0];
    [(UIButton *)v17 setAdjustsImageWhenHighlighted:1];
    [(UIButton *)v17 addTarget:self action:"p_nextPage" forControlEvents:64];
    [(UIButton *)v17 setImage:[UIImage forState:"th_imageNamed:" th_imageNamed:?], 0];
    [(UIButton *)v17 sizeToFit];
    [(UIButton *)v17 setAlpha:0.0];
    [(THiOSIntroMediaViewController *)self setCloseButton:v17];
    [-[THiOSIntroMediaViewController view](self "view")];
    v18 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"introMediaControllerShouldToggleControls"];
    self->mTapGesture = v18;
    [(UITapGestureRecognizer *)v18 setDelegate:self];
    [-[THiOSIntroMediaViewController view](self "view")];
  }
}

- (void)willResignActive:(id)a3
{
  self->mIsResignedActive = 1;
  if ([(THiOSIntroMediaViewController *)self isPlaying])
  {

    [(THiOSIntroMediaViewController *)self pause];
  }

  else if ([(THiOSIntroMediaViewControllerDelegate *)[(THiOSIntroMediaViewController *)self delegate] introMediaControllerIsOffscreen])
  {
    self->mMovieNeedsUnloading = 1;

    [(THiOSIntroMediaViewController *)self p_unloadMoviePlayer];
  }
}

- (void)p_unloadMoviePlayer
{
  [(THiOSIntroMediaViewController *)self p_removePlaybackNotifications];
  [[(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player] pause];
  if ([(THiOSIntroMediaViewController *)self moviePlayerViewController])
  {
    v3 = self->_moviePlayerViewController;
    self->_moviePlayerViewController = 0;

    [(THiOSIntroMediaViewController *)self setMoviePlayerControllerIsLoaded:0];
  }
}

- (void)p_updateSetShowsDoneButton
{
  v2 = [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] childViewControllerForStatusBarHidden];
  if (objc_opt_respondsToSelector())
  {

    [v2 setShowsDoneButton:1];
  }
}

- (void)p_resetMoviePlayer
{
  if (![(THiOSIntroMediaViewController *)self moviePlayerViewController])
  {
    self->mMovieNeedsUnloading = 0;
    v3 = [[AVPlayer alloc] initWithPlayerItem:{+[AVPlayerItem playerItemWithURL:](AVPlayerItem, "playerItemWithURL:", -[THWIntroMediaController url](self->_introMediaController, "url"))}];
    v4 = [(THBookDescription *)[(THDocumentRoot *)[(THWIntroMediaController *)self->_introMediaController documentRoot] bookDescription] drmContext];
    [v3 setAllowsExternalPlayback:{-[PFDContext kiUanAfQBD5qIUraolUj](v4, "kiUanAfQBD5qIUraolUj") ^ 1}];
    if ([(PFDContext *)v4 kiUanAfQBD5qIUraolUj])
    {
      -[PFDContext authorizeAVPlayerItemForPlayback:](v4, "authorizeAVPlayerItemForPlayback:", [v3 currentItem]);
    }

    v5 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    [v3 seekToTime:&v5];
    self->_moviePlayerViewController = objc_alloc_init(AVPlayerViewController);
    [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] setAllowsPictureInPicturePlayback:0];
    [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] setDelegate:self];
    [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] setPlayer:v3];

    [(THiOSIntroMediaViewController *)self p_setupPlaybackNotifications];
    [(THiOSIntroMediaViewController *)self setMoviePlayerControllerIsLoaded:0];
    [(THiOSIntroMediaViewController *)self setMoviePlayerControllerIsShowing:0];
  }

  if (![(THiOSIntroMediaViewController *)self moviePlayerControllerIsShowing])
  {
    if (![(THiOSIntroMediaViewController *)self parentViewController])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] setShowsPlaybackControls:1];
    [(THiOSIntroMediaViewController *)self presentViewController:[(THiOSIntroMediaViewController *)self moviePlayerViewController] animated:1 completion:0];
    [(THiOSIntroMediaViewController *)self setMoviePlayerControllerIsShowing:1];
  }
}

- (void)p_setupPlaybackNotifications
{
  objc_sync_enter(self);
  if (![(THiOSIntroMediaViewController *)self moviePlayerViewController])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([[(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player] currentItem]&& ![(THiOSIntroMediaViewController *)self registeredForNotification])
  {
    v3 = [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player];
    [(AVPlayer *)v3 addObserver:self forKeyPath:@"status" options:1 context:off_562448];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"p_playerDidPlayToEnd:" object:AVPlayerItemDidPlayToEndTimeNotification, [[(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player] currentItem]];
    [(THiOSIntroMediaViewController *)self setRegisteredForNotification:1];
  }

  objc_sync_exit(self);
}

- (void)p_removePlaybackNotifications
{
  objc_sync_enter(self);
  if ([(THiOSIntroMediaViewController *)self moviePlayerViewController]&& [(THiOSIntroMediaViewController *)self registeredForNotification])
  {
    [[(AVPlayerViewController *)self->_moviePlayerViewController player] removeObserver:self forKeyPath:@"status"];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:AVPlayerItemDidPlayToEndTimeNotification, [[(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player] currentItem]];
    [(THiOSIntroMediaViewController *)self setRegisteredForNotification:0];
  }

  objc_sync_exit(self);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_562448 == a6 && [a3 isEqualToString:@"status"])
  {
    if ([[(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player] status]== &dword_0 + 1)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_FED24;
      v12[3] = &unk_45B188;
      v12[4] = self;
      [[(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player] prerollAtRate:v12 completionHandler:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0))];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = THiOSIntroMediaViewController;
    [(THiOSIntroMediaViewController *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
  }
}

- (void)pauseAndDismissMoviePlayer
{
  [(THiOSIntroMediaViewController *)self pause];
  [(THiOSIntroMediaViewController *)self p_unloadMoviePlayer];
  if ([(THiOSIntroMediaViewController *)self delegate])
  {
    v3 = [(THiOSIntroMediaViewController *)self delegate];

    [(THiOSIntroMediaViewControllerDelegate *)v3 introMediaControllerShouldAdvancePast:self];
  }

  else
  {

    [(THiOSIntroMediaViewController *)self prepareControlsForTOC];
  }
}

- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v4 = [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController:a3] player];

  [(AVPlayer *)v4 play];
}

- (void)audioPlaybackWillStart:(id)a3
{
  if (a3 != self)
  {
    [(THiOSIntroMediaViewController *)self pause];
  }
}

- (void)introMediaControllerShouldToggleControls
{
  if ([(THiOSIntroMediaViewController *)self areControlsHidden])
  {

    [(THiOSIntroMediaViewController *)self showControls];
  }

  else
  {

    [(THiOSIntroMediaViewController *)self hideControls];
  }
}

- (void)p_playerDidPlayToEnd:(id)a3
{
  if (!self->mIsResignedActive)
  {
    v4 = [(THiOSIntroMediaViewController *)self presentedViewController];
    if (v4 == [(THiOSIntroMediaViewController *)self moviePlayerViewController])
    {
      [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] dismissViewControllerAnimated:1 completion:0];
    }

    if ([(THiOSIntroMediaViewController *)self delegate])
    {
      [(THiOSIntroMediaViewControllerDelegate *)[(THiOSIntroMediaViewController *)self delegate] introMediaControllerShouldAdvancePast:self];
    }

    else
    {
      [(THiOSIntroMediaViewController *)self prepareControlsForTOC];
    }

    self->mMovieNeedsUnloading = 1;
  }
}

- (void)p_nextPage
{
  [(UIButton *)[(THiOSIntroMediaViewController *)self closeButton] setAlpha:0.0];
  v3 = [(THiOSIntroMediaViewController *)self delegate];

  [(THiOSIntroMediaViewControllerDelegate *)v3 introMediaControllerShouldAdvancePast:self];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  [a4 view];
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) == 0;
}

- (void)playForIntroMediaBecomesVisible
{
  [(THiOSIntroMediaViewController *)self p_updateSetShowsDoneButton];
  if ([(THWIntroMediaController *)self->_introMediaController isMovie])
  {
    v3 = [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player];
    if (v3 && ([(AVPlayer *)v3 currentTime], v4 > 0))
    {
      [(THiOSIntroMediaViewController *)self p_showMovieControls];
    }

    else
    {
      [(THiOSIntroMediaViewController *)self play];
      [(THiOSIntroMediaViewController *)self p_hideMovieControlsAnimated:1];
    }
  }

  else
  {

    [(THiOSIntroMediaViewController *)self showControls];
  }
}

- (BOOL)p_isAtEnd
{
  v3 = [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player];
  if (v3)
  {
    [(AVPlayer *)v3 currentTime];
  }

  v4 = [[(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController:0] player] currentItem];
  if (v4)
  {
    [(AVPlayerItem *)v4 duration];
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  return vabdd_f64(0, v5) < 0.00999999978 || v5 < 0;
}

- (void)p_playForBookOpen:(BOOL)a3
{
  v3 = a3;
  [(THiOSIntroMediaViewController *)self p_updateSetShowsDoneButton];
  [+[BCAudioMuxingCoordinator sharedInstance](BCAudioMuxingCoordinator notifyPlaybackWillStart:"notifyPlaybackWillStart:", self];
  if ([(THiOSIntroMediaViewController *)self p_isAtEnd])
  {
    v5 = [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player];
    v6 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    [(AVPlayer *)v5 seekToTime:&v6];
  }

  [[(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player] play];
  if (v3)
  {
    [(THiOSIntroMediaViewController *)self p_hideMovieControlsAnimated:1];
  }
}

- (void)pause
{
  v2 = [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player];

  [(AVPlayer *)v2 pause];
}

- (void)stop
{
  v2 = [(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player];

  [(AVPlayer *)v2 pause];
}

- (void)ensureReadyToPlay
{
  if ([(THWIntroMediaController *)self->_introMediaController isMovie]&& ![(THiOSIntroMediaViewController *)self isPlaying])
  {

    [(THiOSIntroMediaViewController *)self p_resetMoviePlayer];
  }
}

- (void)prepareControlsForTOC
{
  if ([(THiOSIntroMediaViewController *)self isViewLoaded]&& ![(THiOSIntroMediaViewController *)self controlsHidden])
  {
    if ([(THWIntroMediaController *)self->_introMediaController isMovie])
    {
      [(THiOSIntroMediaViewController *)self p_hideMovieControlsAnimated:0];
    }

    else
    {
      [(THiOSIntroMediaViewController *)self hideControls];
    }

    [(THiOSIntroMediaViewController *)self p_resetUIFadeOutTimer];
  }

  [(THiOSIntroMediaViewController *)self refreshStatusBarAppearance];
}

- (void)prepareMovieForTOC
{
  if ([(THiOSIntroMediaViewController *)self isViewLoaded]&& [(THWIntroMediaController *)self->_introMediaController isMovie]&& self->mMovieNeedsUnloading)
  {

    [(THiOSIntroMediaViewController *)self p_unloadMoviePlayer];
  }
}

- (double)playbackRate
{
  if (![(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player])
  {
    return 0.0;
  }

  [[(AVPlayerViewController *)[(THiOSIntroMediaViewController *)self moviePlayerViewController] player] rate];
  return v3;
}

- (void)showControls
{
  [(THiOSIntroMediaViewController *)self p_resetUIFadeOutTimer];
  if ([(THWIntroMediaController *)self->_introMediaController isMovie])
  {
    [(THiOSIntroMediaViewController *)self p_showMovieControls];

    [(THiOSIntroMediaViewController *)self refreshStatusBarAppearance];
  }

  else
  {
    if ([(THiOSIntroMediaViewControllerDelegate *)[(THiOSIntroMediaViewController *)self delegate] closeButtonIsNeeded])
    {
      [(THiOSIntroMediaViewController *)self p_configureCloseButton];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_FF558;
      v24 = &unk_45AE00;
      v25 = self;
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_FF5B4;
      v19 = &unk_45B188;
      v20 = self;
      v3 = 0.75;
      v4 = &v21;
      v5 = &v16;
    }

    else
    {
      [(UIButton *)[(THiOSIntroMediaViewController *)self closeButton] setAlpha:0.0];
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_FF5BC;
      v14 = &unk_45AE00;
      v15 = self;
      v6 = _NSConcreteStackBlock;
      v7 = 3221225472;
      v8 = sub_FF600;
      v9 = &unk_45B188;
      v10 = self;
      v3 = 0.75;
      v4 = &v11;
      v5 = &v6;
    }

    [UIView animateWithDuration:v4 animations:v5 completion:v3, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25];
  }
}

- (void)p_configureCloseButton
{
  if ([(THiOSIntroMediaViewController *)self controlsHidden])
  {
    [(UIImage *)[(THiOSIntroMediaViewController *)self image] size];
    v4 = v3;
    v6 = v5;
    [-[THiOSIntroMediaViewController view](self "view")];
    v8 = v7;
    [-[THiOSIntroMediaViewController view](self "view")];
    if (v4 <= v6)
    {
      v13 = v9;
      [-[THiOSIntroMediaViewController view](self "view")];
      if (v6 == 0.0)
      {
        v13 = v14 * 0.5;
      }

      else
      {
        v15 = v14 / v6;
        [-[THiOSIntroMediaViewController view](self "view")];
        v8 = (v16 - v4 * v15) * 0.5;
      }
    }

    else
    {
      [-[THiOSIntroMediaViewController view](self "view")];
      v11 = v10 / v4;
      [-[THiOSIntroMediaViewController view](self "view")];
      v13 = (v12 - v6 * v11) * 0.5;
    }

    [objc_msgSend(-[THiOSIntroMediaViewController view](self "view")];
    if (v13 >= v17)
    {
      v18 = v13;
    }

    else
    {
      v18 = v13 + v17;
    }

    [(UIButton *)[(THiOSIntroMediaViewController *)self closeButton] frame];
    v20 = v19;
    v22 = v21;
    v23 = [(THiOSIntroMediaViewController *)self closeButton];

    [(UIButton *)v23 setFrame:v8 + 4.0, v18 + 4.0, v20, v22];
  }
}

- (void)hideControls
{
  if ([(THWIntroMediaController *)self->_introMediaController isMovie])
  {

    [(THiOSIntroMediaViewController *)self p_hideMovieControlsAnimated:1];
  }

  else
  {
    [(THiOSIntroMediaViewController *)self p_cancelUIFadeOutTimer];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_FF868;
    v4[3] = &unk_45AE00;
    v4[4] = self;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_FF8E0;
    v3[3] = &unk_45B188;
    v3[4] = self;
    [UIView animateWithDuration:v4 animations:v3 completion:0.75];
  }
}

- (void)p_hideMovieControlsAnimated:(BOOL)a3
{
  if (![(THiOSIntroMediaViewController *)self controlsHidden])
  {
    [(THiOSIntroMediaViewController *)self setControlsHidden:1];

    [(THiOSIntroMediaViewController *)self refreshStatusBarAppearance];
  }
}

- (void)p_showMovieControls
{
  if ([(THiOSIntroMediaViewController *)self controlsHidden])
  {
    [(THiOSIntroMediaViewController *)self setControlsHidden:0];

    [(THiOSIntroMediaViewController *)self refreshStatusBarAppearance];
  }
}

- (id)movieGestureView
{
  if (![(THWIntroMediaController *)self->_introMediaController isMovie])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THWIntroMediaController *)self->_introMediaController isMovie])
  {
    return 0;
  }

  v3 = [-[AVPlayerViewController view](-[THiOSIntroMediaViewController moviePlayerViewController](self "moviePlayerViewController")];

  return [v3 superview];
}

- (CGSize)hostViewSizeForIntroMediaController:(id)a3
{
  [-[THiOSIntroMediaViewController view](self view];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)p_resetUIFadeOutTimer
{
  if (![(THWIntroMediaController *)self->_introMediaController isMovie])
  {
    [(THiOSIntroMediaViewController *)self p_cancelUIFadeOutTimer];
    v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"p_hideUITimerFired" selector:0 userInfo:0 repeats:5.0];

    [(THiOSIntroMediaViewController *)self setFadeoutTimer:v3];
  }
}

- (void)p_cancelUIFadeOutTimer
{
  [(NSTimer *)[(THiOSIntroMediaViewController *)self fadeoutTimer] invalidate];

  [(THiOSIntroMediaViewController *)self setFadeoutTimer:0];
}

- (void)p_updateFrameForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  y = CGRectZero.origin.y;
  [-[THiOSIntroMediaViewController view](self "view")];
  v19.origin.x = v7;
  v19.origin.y = v8;
  v19.size.width = v9;
  v19.size.height = v10;
  v18.origin.x = CGRectZero.origin.x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (!CGRectEqualToRect(v18, v19))
  {
    [-[THiOSIntroMediaViewController view](self "view")];
    if (width >= height)
    {
      v11 = width;
    }

    else
    {
      v11 = height;
    }

    [(UIView *)[(THiOSIntroMediaViewController *)self scrimView] setBounds:CGRectZero.origin.x, y, v11 * 1.42, v11 * 1.42];
    [-[THiOSIntroMediaViewController view](self "view")];
    v13 = v12;
    v15 = v14;
    v16 = [(THiOSIntroMediaViewController *)self scrimView];

    [(UIView *)v16 setCenter:v13, v15];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  [(THiOSIntroMediaViewController *)self p_updateFrameForSize:?];
  v8.receiver = self;
  v8.super_class = THiOSIntroMediaViewController;
  [(THiOSIntroMediaViewController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  if (![(THWIntroMediaController *)self->_introMediaController isMovie])
  {
    return 0;
  }

  return [(THiOSIntroMediaViewController *)self moviePlayerViewController];
}

@end
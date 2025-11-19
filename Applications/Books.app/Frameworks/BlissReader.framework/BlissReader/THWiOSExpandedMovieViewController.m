@interface THWiOSExpandedMovieViewController
- (CGRect)freeTransformControllerRectForCompletionAnimation:(id)a3;
- (CGRect)rectForCompletionAnimationWithRep:(id)a3;
- (CGSize)curtainSizeForFreeTransformController:(id)a3;
- (THWiOSExpandedMovieViewController)initWithDocumentRoot:(id)a3 expandableRep:(id)a4 delegate:(id)a5;
- (id)expandedRepSourceRep;
- (id)unmovingParentViewForFreeTransformController:(id)a3;
- (void)animationController:(id)a3 updateWhitePointAdaptivtyStyleWithDuration:(double)a4;
- (void)animationControllerDidPresent:(id)a3;
- (void)animationControllerDidPresentPostCommit:(id)a3;
- (void)animationControllerSetupTarget:(id)a3;
- (void)animationControllerWillPresent:(id)a3;
- (void)audioPlaybackWillStart:(id)a3;
- (void)bookViewDidAnimateRotationToSize:(CGSize)a3 withContext:(id)a4;
- (void)bookViewWillRotateTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)dealloc;
- (void)dismissExpandedAnimatedWithCompletionBlock:(id)a3;
- (void)freeTransformControllerDidBegin:(id)a3;
- (void)freeTransformControllerDidFinishFreeTransforming:(id)a3 passedThreshold:(BOOL)a4 completionBlock:(id)a5;
- (void)freeTransformDidBeginWithRep:(id)a3 expandableRep:(id)a4;
- (void)handleGesture:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_addViewToRoot;
- (void)p_completeDismiss;
- (void)p_dismissExpandedAnimatedWithCompletionBlock:(id)a3 freeTransformDidEnd:(BOOL)a4;
- (void)p_dismissExpandedImmediateWithCompletionBlock:(id)a3;
- (void)p_initializeMoviePlayerController;
- (void)p_moviePlayerPlaybackDidFinish:(id)a3;
- (void)p_removePlaybackNotifications;
- (void)p_setMoviePlayerBackgroundColor:(id)a3 animated:(BOOL)a4;
- (void)p_setupFTC;
- (void)p_setupFreeTransformController;
- (void)p_setupPlaybackNotifications;
- (void)p_unloadMoviePlayer;
- (void)pauseAndDismissMoviePlayer;
- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)presentExpandedAnimatedWithCompletionBlock:(id)a3;
- (void)teardown;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation THWiOSExpandedMovieViewController

- (THWiOSExpandedMovieViewController)initWithDocumentRoot:(id)a3 expandableRep:(id)a4 delegate:(id)a5
{
  objc_opt_class();
  [a4 expandedContentDrawableToPresent];
  v9 = TSUDynamicCast();
  if (!v9)
  {
    objc_opt_class();
    [a4 info];
    v10 = TSUDynamicCast();
    objc_opt_class();
    [v10 expandedStageDrawable];
    v9 = TSUDynamicCast();
  }

  v15.receiver = self;
  v15.super_class = THWiOSExpandedMovieViewController;
  v11 = [(THWiOSExpandedMovieViewController *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(THWiOSExpandedMovieViewController *)v11 setMovieInfo:v9];
    [(THWiOSExpandedMovieViewController *)v12 setDelegate:a5];
    v12->_documentRoot = a3;
    [-[THWiOSExpandedMovieViewController view](v12 "view")];
    [-[THWiOSExpandedMovieViewController view](v12 "view")];
    [(THWiOSExpandedMovieViewController *)v12 setModalPresentationStyle:0];
    [(THWiOSExpandedMovieViewController *)v12 setExpandedRepControllerState:0];
    v12->_animationDelegate = [[THWiOSExpandedMovieAnimationDelegate alloc] initWithMovieViewController:v12];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12->_dispatchQueue = dispatch_queue_create("com.apple.ibooks.expandedMovie", v13);
    objc_opt_class();
    [(THWiOSExpandedMovieViewController *)v12 expandedRepSourceRep];
    if (![TSUDynamicCast() moviePlayerViewController])
    {
      [(THWiOSExpandedMovieViewController *)v12 p_initializeMoviePlayerController];
      [(THWiOSExpandedMovieViewController *)v12 setIsFSOMovie:1];
    }

    [+[BCAudioMuxingCoordinator sharedInstance](BCAudioMuxingCoordinator addAudioMuxingObserver:"addAudioMuxingObserver:", v12];
  }

  return v12;
}

- (void)p_initializeMoviePlayerController
{
  v3 = [AVPlayerItem playerItemWithURL:[(THWMovieInfo *)[(THWiOSExpandedMovieViewController *)self movieInfo] movieRemoteURL]];
  v4 = [[AVPlayer alloc] initWithPlayerItem:v3];
  v5 = [(THWMovieInfo *)[(THWiOSExpandedMovieViewController *)self movieInfo] drmContext];
  [v4 setAllowsExternalPlayback:{objc_msgSend(v5, "kiUanAfQBD5qIUraolUj") ^ 1}];
  if ([v5 kiUanAfQBD5qIUraolUj])
  {
    [v5 authorizeAVPlayerItemForPlayback:v3];
  }

  self->_moviePlayerViewController = objc_alloc_init(AVPlayerViewController);
  [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] setDelegate:self];
  [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] setPlayer:v4];
  [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] setAllowsPictureInPicturePlayback:0];
  [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] setModalPresentationStyle:0];
  if ([(THWMovieInfo *)[(THWiOSExpandedMovieViewController *)self movieInfo] loopOption]== &dword_0 + 1)
  {
    [-[AVPlayerViewController playerController](-[THWiOSExpandedMovieViewController moviePlayerViewController](self "moviePlayerViewController")];
  }

  [(THWiOSExpandedMovieViewController *)self p_setupPlaybackNotifications];
  v6 = +[THWAVController sharedController];

  [v6 stopPlayer];
}

- (void)p_setupPlaybackNotifications
{
  objc_sync_enter(self);
  if (![(THWiOSExpandedMovieViewController *)self moviePlayerViewController])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([[(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player] currentItem]&& ![(THWiOSExpandedMovieViewController *)self registeredForNotification])
  {
    v3 = [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player];
    [(AVPlayer *)v3 addObserver:self forKeyPath:@"status" options:1 context:off_562E18];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"p_moviePlayerPlaybackDidFinish:" object:AVPlayerItemDidPlayToEndTimeNotification, [[(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player] currentItem]];
    [(THWiOSExpandedMovieViewController *)self setRegisteredForNotification:1];
  }

  [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] setDelegate:self];

  objc_sync_exit(self);
}

- (void)p_removePlaybackNotifications
{
  objc_sync_enter(self);
  if ([(THWiOSExpandedMovieViewController *)self moviePlayerViewController]&& [(THWiOSExpandedMovieViewController *)self registeredForNotification])
  {
    [[(AVPlayerViewController *)self->_moviePlayerViewController player] removeObserver:self forKeyPath:@"status"];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:AVPlayerItemDidPlayToEndTimeNotification, [[(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player] currentItem]];
    [(THWiOSExpandedMovieViewController *)self setRegisteredForNotification:0];
  }

  [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] setDelegate:0];

  objc_sync_exit(self);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_562E18 == a6 && [a3 isEqualToString:@"status"])
  {
    if ([[(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player] status]== &dword_0 + 1)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_13B854;
      v12[3] = &unk_45B188;
      v12[4] = self;
      [[(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player] prerollAtRate:v12 completionHandler:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0))];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = THWiOSExpandedMovieViewController;
    [(THWiOSExpandedMovieViewController *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
  }
}

- (void)p_unloadMoviePlayer
{
  if ([(THWiOSExpandedMovieViewController *)self moviePlayerViewController])
  {
    [(THWiOSExpandedMovieViewController *)self p_removePlaybackNotifications];
    [[(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player] pause];
    v3 = self->_moviePlayerViewController;
    self->_moviePlayerViewController = 0;
  }
}

- (void)dealloc
{
  [(THWiOSExpandedMovieViewController *)self teardown];
  v3.receiver = self;
  v3.super_class = THWiOSExpandedMovieViewController;
  [(THWiOSExpandedMovieViewController *)&v3 dealloc];
}

- (void)teardown
{
  [+[BCAudioMuxingCoordinator sharedInstance](BCAudioMuxingCoordinator removeAudioMuxingObserver:"removeAudioMuxingObserver:", self];
  [(THWiOSExpandedMovieViewController *)self setPresentCompletionBlock:0];

  self->_animationController = 0;
  [(THWiOSExpandedMovieViewController *)self p_unloadMoviePlayer];
  [(THWiOSExpandedMovieAnimationDelegate *)self->_animationDelegate setMovieViewController:0];

  self->_animationDelegate = 0;
  [(THWFreeTransformController *)self->_freeTransformController setDelegate:0];
  [(THWFreeTransformController *)self->_freeTransformController setTransformGR:0];
  [(THWFreeTransformController *)self->_freeTransformController setTargetLayer:0];

  self->_freeTransformController = 0;
  [(THWFreeTransformGestureRecognizer *)self->_freeTransformGestureRecognizer setFreeTransformDelegate:0];

  self->_freeTransformGestureRecognizer = 0;
  self->_documentRoot = 0;

  self->_rootBackgroundColor = 0;
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
    self->_dispatchQueue = 0;
  }

  [(THWiOSExpandedMovieViewController *)self setMoviePosterView:0];
}

- (id)expandedRepSourceRep
{
  v3 = [(THWiOSExpandedMovieViewController *)self delegate];
  v4 = [(THWiOSExpandedMovieViewController *)self movieInfo];

  return [(THWExpandedViewControllerDelegate *)v3 expandableRepForInfo:v4];
}

- (void)p_setupFreeTransformController
{
  if (![(THWiOSExpandedMovieViewController *)self freeTransformController])
  {
    [(THWiOSExpandedMovieViewController *)self setFreeTransformController:objc_alloc_init(THWFreeTransformController)];
    [(THWFreeTransformController *)[(THWiOSExpandedMovieViewController *)self freeTransformController] setDelegate:self];
    [(THWFreeTransformController *)[(THWiOSExpandedMovieViewController *)self freeTransformController] setTransformGR:[(THWiOSExpandedMovieViewController *)self freeTransformGestureRecognizer]];
    [(THWFreeTransformController *)[(THWiOSExpandedMovieViewController *)self freeTransformController] setTargetLayer:[(THWiOSExpandedMovieAnimationDelegate *)self->_animationDelegate animationLayer]];
    v3 = [(THWiOSExpandedMovieViewController *)self freeTransformController];

    [(THWFreeTransformController *)v3 setScaleThreshold:0.75];
  }
}

- (void)handleGesture:(id)a3
{
  if ([(THWiOSExpandedMovieViewController *)self freeTransformGestureRecognizer]== a3)
  {
    [(THWiOSExpandedMovieViewController *)self p_setupFreeTransformController];
    v4 = [(THWiOSExpandedMovieViewController *)self freeTransformController];
    v5 = [(THWiOSExpandedMovieViewController *)self freeTransformGestureRecognizer];

    [(THWFreeTransformController *)v4 transformGRChanged:v5];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v15.receiver = self;
  v15.super_class = THWiOSExpandedMovieViewController;
  [THWiOSExpandedMovieViewController viewWillTransitionToSize:"viewWillTransitionToSize:withTransitionCoordinator:" withTransitionCoordinator:?];
  if (a4)
  {
    [a4 targetTransform];
    if (CGAffineTransformIsIdentity(&v14))
    {
      [(THWiOSExpandedMovieViewController *)self bookViewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
      v8 = 0;
    }

    else
    {
      [(THWiOSExpandedMovieViewController *)self bookViewWillRotateTransitionToSize:a4 withTransitionCoordinator:width, height];
      v8 = 1;
    }

    v14.a = 0.0;
    *&v14.b = &v14;
    *&v14.c = 0x2020000000;
    LOBYTE(v14.d) = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_13BE80;
    v12[3] = &unk_45B470;
    v13 = v8;
    v12[4] = self;
    v12[5] = &v14;
    *&v12[6] = width;
    *&v12[7] = height;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_13BEB8;
    v10[3] = &unk_45B470;
    v11 = v8;
    v10[4] = self;
    v10[5] = &v14;
    *&v10[6] = width;
    *&v10[7] = height;
    v9 = [a4 animateAlongsideTransition:v12 completion:v10];
    *(*&v14.b + 24) = v9;
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    [(THWiOSExpandedMovieViewController *)self bookViewWillTransitionToSize:0 withTransitionCoordinator:width, height];
    [(THWiOSExpandedMovieViewController *)self bookViewDidTransitionToSize:0 withContext:width, height];
  }
}

- (void)bookViewWillRotateTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  [(THWiOSExpandedMovieViewController *)self setRotationScrim:[CALayer layer:a4]];
  -[CALayer setBackgroundColor:]([(THWiOSExpandedMovieViewController *)self rotationScrim], "setBackgroundColor:", [+[UIColor blackColor](UIColor CGColor]);
  [-[THWiOSExpandedMovieViewController view](self "view")];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [-[THWiOSExpandedMovieViewController view](self "view")];
  v14 = v13 * -0.707;
  [-[THWiOSExpandedMovieViewController view](self "view")];
  v16 = v15 * -0.707;
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  v21 = CGRectInset(v20, v14, v16);
  [(CALayer *)[(THWiOSExpandedMovieViewController *)self rotationScrim] setFrame:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
  [(CALayer *)[(THWiOSExpandedMovieViewController *)self rotationScrim] setZPosition:-32000.0];
  v17 = [-[THWiOSExpandedMovieViewController view](self "view")];
  v18 = [(THWiOSExpandedMovieViewController *)self rotationScrim];

  [v17 addSublayer:v18];
}

- (void)bookViewDidAnimateRotationToSize:(CGSize)a3 withContext:(id)a4
{
  [(CALayer *)[(THWiOSExpandedMovieViewController *)self rotationScrim:a4] removeFromSuperlayer];

  [(THWiOSExpandedMovieViewController *)self setRotationScrim:0];
}

- (void)pauseAndDismissMoviePlayer
{
  [[(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player] pause];
  v3 = [(THWiOSExpandedMovieViewController *)self moviePlayerViewController];

  [(AVPlayerViewController *)v3 setShowsPlaybackControls:0];
}

- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v4 = [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController:a3] player];

  [(AVPlayer *)v4 play];
}

- (void)animationControllerWillPresent:(id)a3
{
  v4 = [(THWiOSExpandedMovieViewController *)self isDismissing];
  v5 = [(THWiOSExpandedMovieViewController *)self delegate];
  if (v4)
  {

    [(THWExpandedViewControllerDelegate *)v5 expandedViewControllerWillDismiss:self];
  }

  else
  {
    [(THWExpandedViewControllerDelegate *)v5 expandedViewControllerWillPresent:self];
    v6 = [-[THWiOSExpandedMovieViewController p_curtainColor](self "p_curtainColor")];

    [(THWiOSExpandedMovieViewController *)self p_setMoviePlayerBackgroundColor:v6 animated:1];
  }
}

- (void)p_completeDismiss
{
  [(THWiOSExpandedMovieViewController *)self p_removePlaybackNotifications];
  objc_opt_class();
  [(THWiOSExpandedMovieViewController *)self expandedRepSourceRep];
  v3 = TSUDynamicCast();
  v4 = v3;
  if (!v3 || [v3 moviePlayerViewController] || (objc_msgSend(v4, "wantsFullscreenOnlyDisplay") & 1) != 0)
  {
    [[(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player] pause];
    [-[AVPlayerViewController view](-[THWiOSExpandedMovieViewController moviePlayerViewController](self "moviePlayerViewController")];
  }

  else
  {
    [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] removeFromParentViewController];
    [-[AVPlayerViewController view](-[THWiOSExpandedMovieViewController moviePlayerViewController](self "moviePlayerViewController")];
    [v4 setMoviePlayerViewController:{-[THWiOSExpandedMovieViewController moviePlayerViewController](self, "moviePlayerViewController")}];

    self->_moviePlayerViewController = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 expandableExpandedPresentationDidEnd];
  }

  [(THWiOSExpandedMovieViewController *)self removeFromParentViewController];
  [-[THWiOSExpandedMovieViewController view](self "view")];
  [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedMovieViewController delegate](self "delegate")];
  v5 = self;
  v6 = [(THWiOSExpandedMovieViewController *)self delegate];

  [(THWExpandedViewControllerDelegate *)v6 expandedViewControllerDidDismiss:self];
}

- (void)animationControllerDidPresent:(id)a3
{
  if ([(THWiOSExpandedMovieViewController *)self isDismissing])
  {

    [(THWiOSExpandedMovieViewController *)self p_completeDismiss];
  }

  else
  {
    [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedMovieViewController *)self delegate] expandedViewControllerDidPresent:self];
    objc_opt_class();
    [(THWiOSExpandedMovieViewController *)self expandedRepSourceRep];
    v4 = TSUDynamicCast();
    if ([v4 moviePlayerViewController])
    {
      -[THWiOSExpandedMovieViewController setMoviePlayerViewController:](self, "setMoviePlayerViewController:", [v4 moviePlayerViewController]);
      [v4 setMoviePlayerViewController:0];
      [-[THWiOSExpandedMovieViewController view](self "view")];
      [-[AVPlayerViewController view](-[THWiOSExpandedMovieViewController moviePlayerViewController](self "moviePlayerViewController")];
      [-[THWiOSExpandedMovieViewController view](self "view")];
      [(THWiOSExpandedMovieViewController *)self addChildViewController:[(THWiOSExpandedMovieViewController *)self moviePlayerViewController]];
      [(THWiOSExpandedMovieViewController *)self p_setupPlaybackNotifications];
      [-[AVPlayerViewController view](-[THWiOSExpandedMovieViewController moviePlayerViewController](self "moviePlayerViewController")];
      [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] setShowsPlaybackControls:1];
      -[THWiOSExpandedMovieViewController p_setMoviePlayerBackgroundColor:animated:](self, "p_setMoviePlayerBackgroundColor:animated:", [-[THWiOSExpandedMovieViewController p_curtainColor](self "p_curtainColor")], 0);
    }

    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, self);
    v9 = [(THWiOSExpandedMovieViewController *)self view];

    [v9 setNeedsUpdateConstraints];
  }
}

- (void)animationControllerDidPresentPostCommit:(id)a3
{
  [(THWiOSExpandedMovieViewController *)self setIsDismissing:0];
  if ([(THWiOSExpandedMovieViewController *)self expandedRepControllerState]== 1)
  {
    v5 = 2;
  }

  else
  {
    if ([(THWiOSExpandedMovieViewController *)self expandedRepControllerState]!= 3)
    {
      goto LABEL_6;
    }

    v5 = 4;
  }

  [(THWiOSExpandedMovieViewController *)self setExpandedRepControllerState:v5];
LABEL_6:
  [a3 removeObserver:self];
  if ([(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] view])
  {
    [-[THWiOSExpandedMovieViewController view](self "view")];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedMovieViewController delegate](self "delegate")];
    v42.origin.x = v14;
    v42.origin.y = v15;
    v42.size.width = v16;
    v42.size.height = v17;
    v40.origin.x = v7;
    v40.origin.y = v9;
    v40.size.width = v11;
    v40.size.height = v13;
    if (!CGRectEqualToRect(v40, v42))
    {
      [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedMovieViewController delegate](self "delegate")];
      [-[THWiOSExpandedMovieViewController view](self "view")];
    }

    [-[THWiOSExpandedMovieViewController view](self "view")];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [-[AVPlayerViewController view](-[THWiOSExpandedMovieViewController moviePlayerViewController](self "moviePlayerViewController")];
    v43.origin.x = v30;
    v43.origin.y = v31;
    v43.size.width = v32;
    v43.size.height = v33;
    v41.origin.x = v23;
    v41.origin.y = v25;
    v41.size.width = v27;
    v41.size.height = v29;
    if (!CGRectEqualToRect(v41, v43))
    {
      [-[THWiOSExpandedMovieViewController view](self "view")];
      [-[AVPlayerViewController view](-[THWiOSExpandedMovieViewController moviePlayerViewController](self "moviePlayerViewController")];
    }
  }

  v38 = [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] view];

  [v38 setAutoresizingMask:18];
}

- (void)p_moviePlayerPlaybackDidFinish:(id)a3
{
  v5 = [a3 object];
  if (v5 == -[AVPlayer currentItem](-[AVPlayerViewController player](-[THWiOSExpandedMovieViewController moviePlayerViewController](self, "moviePlayerViewController"), "player"), "currentItem") && [objc_msgSend(a3 "name")])
  {
    v6 = [(THWFreeTransformController *)[(THWiOSExpandedMovieViewController *)self freeTransformController] isFreeTransformInProgress];
    v7 = [(THWMovieInfo *)[(THWiOSExpandedMovieViewController *)self movieInfo] loopOption];
    v8 = v7;
    if (v6)
    {
      if (!v7)
      {
        v9 = [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player];
        v12 = *&kCMTimeZero.value;
        epoch = kCMTimeZero.epoch;
        [(AVPlayer *)v9 seekToTime:&v12];
        [[(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player] pause];
      }
    }

    else
    {
      v10 = [(THWiOSExpandedMovieViewController *)self moviePlayerViewController];
      if (v8 == &dword_0 + 1)
      {
        v11 = [(AVPlayerViewController *)v10 player];
        v12 = *&kCMTimeZero.value;
        epoch = kCMTimeZero.epoch;
        [(AVPlayer *)v11 seekToTime:&v12];
        [[(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player] play];
      }

      else
      {
        [(AVPlayerViewController *)v10 setShowsPlaybackControls:0];

        [(THWiOSExpandedMovieViewController *)self dismissExpandedAnimatedWithCompletionBlock:0];
      }
    }
  }
}

- (void)p_addViewToRoot
{
  if (![(THWiOSExpandedMovieViewController *)self view])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = [(THWiOSExpandedMovieViewController *)self view];
  v4 = *&CGAffineTransformIdentity.c;
  v13[0] = *&CGAffineTransformIdentity.a;
  v13[1] = v4;
  v13[2] = *&CGAffineTransformIdentity.tx;
  [v3 setTransform:v13];
  [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedMovieViewController delegate](self "delegate")];
  [-[THWiOSExpandedMovieViewController view](self "view")];
  [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedMovieViewController delegate](self "delegate")];
  [-[THWExpandedViewControllerDelegate rootSuperviewController](-[THWiOSExpandedMovieViewController delegate](self "delegate")];
  -[THWiOSExpandedMovieViewController setRootBackgroundColor:](self, "setRootBackgroundColor:", [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedMovieViewController delegate](self "delegate")]);
  if (![(THWiOSExpandedMovieViewController *)self isFSOMovie])
  {
    [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedMovieViewController delegate](self "delegate")];
  }

  if ([(THWiOSExpandedMovieViewController *)self moviePlayerViewController])
  {
    [-[THWiOSExpandedMovieViewController view](self "view")];
    [-[AVPlayerViewController view](-[THWiOSExpandedMovieViewController moviePlayerViewController](self "moviePlayerViewController")];
    [-[AVPlayerViewController view](-[THWiOSExpandedMovieViewController moviePlayerViewController](self "moviePlayerViewController")];
    [-[THWiOSExpandedMovieViewController view](self "view")];
    if ([(THWiOSExpandedMovieViewController *)self isFSOMovie])
    {
      [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] setShowsPlaybackControls:0];
    }
  }

  [-[THWiOSExpandedMovieViewController view](self "view")];
}

- (void)p_setupFTC
{
  [(THWiOSExpandedMovieViewController *)self setFreeTransformGestureRecognizer:[[THWFreeTransformGestureRecognizer alloc] initWithTarget:self action:"handleGesture:"]];
  [-[THWiOSExpandedMovieViewController view](self "view")];
  [(THWFreeTransformGestureRecognizer *)[(THWiOSExpandedMovieViewController *)self freeTransformGestureRecognizer] setUnmovingParentView:[(THWExpandedViewControllerDelegate *)[(THWiOSExpandedMovieViewController *)self delegate] rootSuperview]];
  v3 = [(THWiOSExpandedMovieViewController *)self freeTransformGestureRecognizer];

  [(THWFreeTransformGestureRecognizer *)v3 setFreeTransformDelegate:self];
}

- (void)animationControllerSetupTarget:(id)a3
{
  if (![(THWiOSExpandedMovieViewController *)self isDismissing])
  {
    v4 = [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] view];

    [v4 setAlpha:1.0];
  }
}

- (void)presentExpandedAnimatedWithCompletionBlock:(id)a3
{
  [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] setTransitioningDelegate:self];
  [[(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player] play];
  v5 = [(THWiOSExpandedMovieViewController *)self moviePlayerViewController];

  [(THWiOSExpandedMovieViewController *)self presentViewController:v5 withTransition:1 completion:a3];
}

- (void)dismissExpandedAnimatedWithCompletionBlock:(id)a3
{
  v5 = [(THWiOSExpandedMovieViewController *)self presentedViewController];
  if (v5 == [(THWiOSExpandedMovieViewController *)self moviePlayerViewController])
  {
    v7 = [(THWiOSExpandedMovieViewController *)self moviePlayerViewController];

    [(AVPlayerViewController *)v7 dismissViewControllerAnimated:1 completion:a3];
  }

  else if (a3)
  {
    v6 = *(a3 + 2);

    v6(a3);
  }
}

- (void)p_dismissExpandedImmediateWithCompletionBlock:(id)a3
{
  if (![(THWiOSExpandedMovieViewController *)self isDismissing])
  {
    [(THWiOSExpandedMovieViewController *)self setIsDismissing:1];
    [(THWiOSExpandedMovieViewController *)self setExpandedRepControllerState:3];
    [(THWiOSExpandedMovieViewController *)self refreshStatusBarAppearance];
    [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedMovieViewController *)self delegate] expandedViewControllerWillDismiss:self];
    [(THWiOSExpandedMovieViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
    if (a3)
    {
      (*(a3 + 2))(a3);
    }

    [(THWiOSExpandedMovieViewController *)self p_completeDismiss];
    [(THWiOSExpandedMovieViewController *)self setIsDismissing:0];

    [(THWiOSExpandedMovieViewController *)self setExpandedRepControllerState:4];
  }
}

- (void)p_dismissExpandedAnimatedWithCompletionBlock:(id)a3 freeTransformDidEnd:(BOOL)a4
{
  v4 = a4;
  if (![(THWiOSExpandedMovieViewController *)self isDismissing])
  {
    [(THWiOSExpandedMovieViewController *)self setIsDismissing:1];
    [(THWiOSExpandedMovieViewController *)self setExpandedRepControllerState:3];
    [(THWiOSExpandedMovieViewController *)self refreshStatusBarAppearance];
    v7 = [(THWiOSExpandedMovieViewController *)self expandedRepSourceRep];
    if (v4)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v9 = [objc_msgSend(objc_msgSend(v7 "hostICC")];
      v8 = [-[THWiOSExpandedMovieViewController view](self "view")];
      [(THWiOSExpandedMovieViewController *)self p_setMoviePlayerBackgroundColor:+[UIColor animated:"clearColor"], 0];
    }

    [(THWiOSExpandedMovieViewController *)self setAnimationController:objc_alloc_init(THAnimationController)];
    v10 = TSUProtocolCast();
    [(THAnimationController *)[(THWiOSExpandedMovieViewController *)self animationController] setSource:self->_animationDelegate];
    [(THAnimationController *)[(THWiOSExpandedMovieViewController *)self animationController] setDestination:v10];
    -[THAnimationController setHostLayer:](-[THWiOSExpandedMovieViewController animationController](self, "animationController"), "setHostLayer:", [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedMovieViewController delegate](self "delegate")]);
    [(THAnimationController *)[(THWiOSExpandedMovieViewController *)self animationController] setForegroundLayer:v9];
    [(THAnimationController *)[(THWiOSExpandedMovieViewController *)self animationController] setBackgroundLayer:v8];
    [(THAnimationController *)[(THWiOSExpandedMovieViewController *)self animationController] addObserver:self];
    [(THAnimationController *)[(THWiOSExpandedMovieViewController *)self animationController:_NSConcreteStackBlock] presentAnimationWithCompletionBlock:&v11 overshoot:v4];
  }
}

- (CGSize)curtainSizeForFreeTransformController:(id)a3
{
  [-[THWiOSExpandedMovieViewController view](self view];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)freeTransformControllerDidBegin:(id)a3
{
  [(THWiOSExpandedMovieViewController *)self p_setMoviePlayerBackgroundColor:+[UIColor animated:"clearColor"], 1];
  [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] setVideoGravity:AVLayerVideoGravityResizeAspect];
  v4 = [(THWiOSExpandedMovieViewController *)self moviePlayerViewController];

  [(AVPlayerViewController *)v4 setShowsPlaybackControls:0];
}

- (void)p_setMoviePlayerBackgroundColor:(id)a3 animated:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_13D0CC;
  v4[3] = &unk_45AE58;
  v4[4] = self;
  v4[5] = a3;
  if (a4)
  {
    [UIView animateWithDuration:v4 animations:0.25];
  }

  else
  {
    sub_13D0CC(v4);
  }
}

- (CGRect)freeTransformControllerRectForCompletionAnimation:(id)a3
{
  v3 = [-[THWiOSExpandedMovieViewController expandedRepSourceRep](self expandedRepSourceRep];

  [v3 frameInParent];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)freeTransformControllerDidFinishFreeTransforming:(id)a3 passedThreshold:(BOOL)a4 completionBlock:(id)a5
{
  if (a4 || [objc_msgSend(a3 "transformGR")] == &dword_4)
  {
    [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedMovieViewController *)self delegate] expandedViewControllerWillBeginDismissing:self];
    if ([objc_msgSend(a3 "transformGR")] == &dword_4)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_13D420;
      v10[3] = &unk_45AEA8;
      v10[4] = self;
      v10[5] = a5;
      [(THWiOSExpandedMovieViewController *)self p_dismissExpandedImmediateWithCompletionBlock:v10];
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_13D48C;
      v9[3] = &unk_45AEA8;
      v9[4] = self;
      v9[5] = a5;
      [(THWiOSExpandedMovieViewController *)self p_dismissExpandedAnimatedWithCompletionBlock:v9 freeTransformDidEnd:1];
    }
  }

  else
  {
    -[THWiOSExpandedMovieViewController p_setMoviePlayerBackgroundColor:animated:](self, "p_setMoviePlayerBackgroundColor:animated:", [-[THWiOSExpandedMovieViewController p_curtainColor](self "p_curtainColor")], 1);
    [(THWiOSExpandedMovieViewController *)self setAnimationController:objc_alloc_init(THAnimationController)];
    [(THAnimationController *)[(THWiOSExpandedMovieViewController *)self animationController] setSource:self->_animationDelegate];
    [(THAnimationController *)[(THWiOSExpandedMovieViewController *)self animationController] setDestination:self->_animationDelegate];
    -[THAnimationController setHostLayer:](-[THWiOSExpandedMovieViewController animationController](self, "animationController"), "setHostLayer:", [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedMovieViewController delegate](self "delegate")]);
    [(THAnimationController *)[(THWiOSExpandedMovieViewController *)self animationController:_NSConcreteStackBlock] presentAnimationWithCompletionBlock:&v8 overshoot:0];
  }
}

- (id)unmovingParentViewForFreeTransformController:(id)a3
{
  v3 = [(THWiOSExpandedMovieViewController *)self delegate];

  return [(THWExpandedViewControllerDelegate *)v3 rootSuperview];
}

- (CGRect)rectForCompletionAnimationWithRep:(id)a3
{
  v3 = [-[THWiOSExpandedMovieViewController expandedRepSourceRep](self expandedRepSourceRep];

  [v3 frameInParent];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)freeTransformDidBeginWithRep:(id)a3 expandableRep:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_13D690;
  v4[3] = &unk_45AE00;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:a4, 0.5];
}

- (void)animationController:(id)a3 updateWhitePointAdaptivtyStyleWithDuration:(double)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_13D718;
  v4[3] = &unk_45AE00;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:a4];
}

- (void)audioPlaybackWillStart:(id)a3
{
  if (a3 != self)
  {
    v5 = [(AVPlayerViewController *)[(THWiOSExpandedMovieViewController *)self moviePlayerViewController] player];

    [(AVPlayer *)v5 pause];
  }
}

@end
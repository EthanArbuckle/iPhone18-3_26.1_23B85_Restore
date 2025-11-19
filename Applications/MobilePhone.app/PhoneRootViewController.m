@interface PhoneRootViewController
- (BOOL)isIPad;
- (UIView)contentView;
- (double)_contentViewWidthForApplicationBoundsSize:(CGSize)a3;
- (void)_ensureProperPositionForContentView;
- (void)_getRotationContentSettings:(id *)a3;
- (void)displayUIAnimated:(BOOL)a3;
- (void)ensureBaseViewControllerIsShowing;
- (void)handleApplicationWillEnterForegroundNotification:(id)a3;
- (void)handleOrientationNotification:(id)a3;
- (void)hideContentViewAnimated:(BOOL)a3 completionBlock:(id)a4;
- (void)hideDetailsViewController;
- (void)loadView;
- (void)setContentViewHiddenPosition;
- (void)setContentViewNormalPosition;
- (void)setupContentViewFullSize;
- (void)setupContentViewSidebar;
- (void)showContentViewAnimated:(BOOL)a3 completionBlock:(id)a4;
- (void)showDetailsViewController;
- (void)updateVideoViewControllerWithOrientationMonitor:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PhoneRootViewController

- (BOOL)isIPad
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (UIView)contentView
{
  if ([(PhoneRootViewController *)self needsSplitView])
  {
    v3 = 0;
  }

  else
  {
    contentView = self->_contentView;
    if (!contentView)
    {
      [UIView setAnimationsEnabled:0];
      v5 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v6 = self->_contentView;
      self->_contentView = v5;

      [(UIView *)self->_contentView setContentMode:3];
      [(UIView *)self->_contentView setAutoresizesSubviews:1];
      if ([UIApp tabBarFillsScreen])
      {
        [(PhoneRootViewController *)self setupContentViewFullSize];
      }

      else
      {
        [(PhoneRootViewController *)self setupContentViewSidebar];
      }

      if ([UIApp userInterfaceStyle] == 1)
      {
        if (!self->_backdropView)
        {
          v7 = [_UIVisualEffectBackdropView alloc];
          [(UIView *)self->_contentView bounds];
          v8 = [v7 initWithFrame:?];
          backdropView = self->_backdropView;
          self->_backdropView = v8;

          [(_UIVisualEffectBackdropView *)self->_backdropView setAutoresizingMask:18];
          [(_UIVisualEffectBackdropView *)self->_backdropView setRenderMode:1];
          v10 = [(_UIVisualEffectBackdropView *)self->_backdropView captureGroup];
          [v10 setGroupName:@"RootControllerBackgroundBackdrop"];
        }

        if (!self->_backgroundBlurView)
        {
          v11 = [UIVisualEffectView alloc];
          v12 = [UIBlurEffect effectWithStyle:2];
          v13 = [v11 initWithEffect:v12];
          backgroundBlurView = self->_backgroundBlurView;
          self->_backgroundBlurView = v13;

          [(UIView *)self->_contentView bounds];
          [(UIVisualEffectView *)self->_backgroundBlurView setFrame:?];
          [(UIVisualEffectView *)self->_backgroundBlurView setAutoresizingMask:18];
          v15 = [(_UIVisualEffectBackdropView *)self->_backdropView captureGroup];
          v16 = [v15 groupName];
          [(UIVisualEffectView *)self->_backgroundBlurView _setGroupName:v16];

          [(UIVisualEffectView *)self->_backgroundBlurView _setCaptureView:self->_backdropView];
        }

        [(UIView *)self->_contentView addSubview:self->_backdropView];
        [(UIView *)self->_contentView addSubview:self->_backgroundBlurView];
      }

      if ([UIApp usesUnifiedInterface])
      {
        v17 = 0;
      }

      else
      {
        v18 = [(PhoneRootViewController *)self baseViewController];
        v17 = [v18 view];
      }

      v19 = [UIApp tabBarFillsScreen];
      [(UIView *)self->_contentView bounds];
      v21 = v20;
      if (v19)
      {
        [v17 setFrame:?];
      }

      else
      {
        [(UIView *)self->_contentView bounds];
        [v17 setBounds:{0.0, 0.0, v21}];
        [(UIView *)self->_contentView bounds];
        MaxX = CGRectGetMaxX(v31);
        [v17 bounds];
        v24 = MaxX - floor(v23 * 0.5);
        [(UIView *)self->_contentView bounds];
        [v17 setCenter:{v24, floor(v25 * 0.5)}];
      }

      [v17 setAutoresizingMask:18];
      v26 = [(PhoneRootViewController *)self detailsViewController];

      if (v26)
      {
        v27 = [(PhoneRootViewController *)self detailsViewController];
        [(PhoneRootViewController *)self addChildViewController:v27];

        [(UIView *)self->_contentView addSubview:v17];
        v28 = [(PhoneRootViewController *)self detailsViewController];
        [v28 didMoveToParentViewController:self];
      }

      else
      {
        [(UIView *)self->_contentView addSubview:v17];
      }

      [UIView setAnimationsEnabled:1];

      contentView = self->_contentView;
    }

    v3 = contentView;
  }

  return v3;
}

- (void)loadView
{
  v4 = objc_alloc_init(PhoneRootView);
  v3 = +[UIColor clearColor];
  [(PhoneRootView *)v4 setBackgroundColor:v3];

  [(PhoneRootView *)v4 setOpaque:0];
  [(PhoneRootViewController *)self setView:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __78__PhoneRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_100286028;
  v9[4] = self;
  v7 = a4;
  [v7 animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)_getRotationContentSettings:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v7 _getRotationContentSettings:?];
  v5 = [(PhoneRootViewController *)self baseViewController];
  v6 = [v5 shouldDisableEdgeClip];

  if (v6)
  {
    a3->var6 = 0;
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v6 viewDidDisappear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v3 viewWillDisappear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v4 viewDidAppear:a3];
  [(PhoneRootViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PhoneRootViewController *)self startPreviewIfNeeded];
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v12 viewWillAppear:a3];
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Observing foreground notifications via PhoneRootViewController viewWillAppear", v11, 2u);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"handleApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];

  if ([UIApp alwaysShowLocalVideo])
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Observing orientation notifications via PhoneRootViewController viewWillAppear", v11, 2u);
    }

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = +[PHOrientationMonitorKeys notificationEvent];
    [v7 addObserver:self selector:"handleOrientationNotification:" name:v8 object:0];

    v9 = objc_opt_new();
    v10 = [v9 compose];
    [v10 setOrientationEventsEnabled:1];
  }
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PhoneRootViewController;
  [(PhoneRootViewController *)&v2 viewDidLoad];
}

- (void)handleApplicationWillEnterForegroundNotification:(id)a3
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PhoneRootViewController handleApplicationWillEnterForegroundNotification", v5, 2u);
  }

  [(PhoneRootViewController *)self showFaceTimeFirstRunViewIfNeeded];
}

- (void)handleOrientationNotification:(id)a3
{
  v4 = [(PhoneRootViewController *)self view];
  v5 = [v4 _screen];

  v6 = +[UIScreen mainScreen];
  if ([UIApp alwaysShowLocalVideo])
  {
    v7 = v5 == v6;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PhoneRootViewController handleOrientationNotification", buf, 2u);
    }

    v9 = objc_opt_new();
    v10 = [v9 compose];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __57__PhoneRootViewController_handleOrientationNotification___block_invoke;
    v12[3] = &unk_1002852E0;
    v12[4] = self;
    v13 = v10;
    v11 = v10;
    [UIView animateWithDuration:v12 animations:0.300000012];
  }
}

- (void)updateVideoViewControllerWithOrientationMonitor:(id)a3
{
  if ([UIApp alwaysShowLocalVideo])
  {
    v4 = [(PhoneRootViewController *)self view];
    v5 = [v4 window];
    v6 = [v5 windowScene];

    if (!v6)
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to orient video view controller because there's no window scene to determine a valid fallback orientation", v8, 2u);
      }
    }
  }
}

- (void)_ensureProperPositionForContentView
{
  v3 = [UIApp tabBarFillsScreen];
  v4 = [(PhoneRootViewController *)self view];
  [v4 bounds];
  v9 = v7;
  v10 = v8;
  if (v3)
  {
    x = v5;
    y = v6;

    v13 = [(PhoneRootViewController *)self view];
    [v13 center];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    [(PhoneRootViewController *)self _contentViewWidthForApplicationBoundsSize:v7, v8];
    v9 = v18;

    v19 = [(PhoneRootViewController *)self view];
    [v19 bounds];
    v10 = v20;

    if ([UIApp userInterfaceLayoutDirection])
    {
      v21 = [(PhoneRootViewController *)self view];
      [v21 bounds];
      v15 = floor(v22 + v9 * -0.5);
    }

    else
    {
      v15 = floor(v9 * 0.5);
    }

    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    if ([(PhoneRootViewController *)self sideBarShouldBeFloating])
    {
      v15 = v15 + 10.0;
      v10 = v10 + -20.0;
    }

    v13 = [(PhoneRootViewController *)self view];
    [v13 bounds];
    v17 = floor(v23 * 0.5);
  }

  [(UIView *)self->_contentView setBounds:x, y, v9, v10];
  [(UIView *)self->_contentView setCenter:v15, v17];
  if ([(PhoneRootViewController *)self sideBarShouldBeFloating]&& ![(PhoneRootViewController *)self needsSplitView])
  {
    [(UIView *)self->_contentView bounds];
    [(UIVisualEffectView *)self->_backgroundBlurView setFrame:?];
    [(UIView *)self->_contentView bounds];
    backdropView = self->_backdropView;

    [(_UIVisualEffectBackdropView *)backdropView setFrame:?];
  }
}

- (double)_contentViewWidthForApplicationBoundsSize:(CGSize)a3
{
  if ([(PhoneRootViewController *)self isFaceTimeLaunchPageEnabled:a3.width])
  {
    return 400.0;
  }

  v4 = +[PHUIConfiguration contentViewSizeForFaceTime];
  if (v4 <= 2)
  {
    return dbl_1002089D8[v4];
  }

  return 320.0;
}

- (void)setupContentViewSidebar
{
  if (![(PhoneRootViewController *)self needsSplitView])
  {
    v3 = +[UIColor clearColor];
    [(UIView *)self->_contentView setBackgroundColor:v3];

    [(UIView *)self->_contentView setAutoresizingMask:20];
    [(PhoneRootViewController *)self _ensureProperPositionForContentView];
    if ([(PhoneRootViewController *)self sideBarShouldBeFloating])
    {
      v4 = [(UIView *)self->_contentView layer];
      [v4 setCornerRadius:10.0];

      v5 = [(UIView *)self->_contentView layer];
      [v5 setMasksToBounds:1];
    }

    if (([UIApp tabBarFillsScreen] & 1) == 0)
    {
      [(PhoneRootViewController *)self setContentViewHiddenPosition];
      contentView = self->_contentView;

      [(UIView *)contentView setHidden:1];
    }
  }
}

- (void)setupContentViewFullSize
{
  if (![(PhoneRootViewController *)self needsSplitView])
  {
    [(UIView *)self->_contentView setOpaque:0];
    v3 = +[UIColor clearColor];
    [(UIView *)self->_contentView setBackgroundColor:v3];

    [(UIView *)self->_contentView setAutoresizingMask:18];

    [(PhoneRootViewController *)self _ensureProperPositionForContentView];
  }
}

- (void)setContentViewNormalPosition
{
  if ([(PhoneRootViewController *)self isContentViewLoaded])
  {
    v3 = [(PhoneRootViewController *)self contentView];
    if ([UIApp contentViewAnimationsFadeInsteadOfMove])
    {
      [v3 setAlpha:1.0];
    }

    else
    {
      v4 = *&CGAffineTransformIdentity.c;
      v5[0] = *&CGAffineTransformIdentity.a;
      v5[1] = v4;
      v5[2] = *&CGAffineTransformIdentity.tx;
      [v3 setTransform:v5];
    }
  }
}

- (void)showContentViewAnimated:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v7 = a4;
  if (([UIApp tabBarCanSlide] & 1) == 0)
  {
    [PhoneRootViewController showContentViewAnimated:a2 completionBlock:self];
  }

  v8 = [(PhoneRootViewController *)self contentView];
  [v8 setHidden:0];
  v9 = [(PhoneRootViewController *)self view];
  v10 = [v8 superview];

  if (v10 != v9)
  {
    +[UIView disableAnimation];
    [(PhoneRootViewController *)self _ensureProperPositionForContentView];
    [v9 addSubview:v8];
    +[UIView enableAnimation];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __67__PhoneRootViewController_showContentViewAnimated_completionBlock___block_invoke;
  v17[3] = &unk_100286050;
  v18 = v8;
  v19 = v7;
  v11 = v7;
  v12 = v8;
  v13 = objc_retainBlock(v17);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __67__PhoneRootViewController_showContentViewAnimated_completionBlock___block_invoke_2;
  v16[3] = &unk_100284FD0;
  v16[4] = self;
  v14 = objc_retainBlock(v16);
  if (v4)
  {
    v15 = 0.300000012;
  }

  else
  {
    v15 = 0.0;
  }

  [UIView animateWithDuration:v14 animations:v13 completion:v15];
  [UIView animateWithDuration:0 delay:v14 options:v13 animations:v15 completion:0.0];
}

uint64_t __67__PhoneRootViewController_showContentViewAnimated_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  if (CGAffineTransformIsIdentity(&v6))
  {
    [*(a1 + 32) setHidden:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)setContentViewHiddenPosition
{
  if ([(PhoneRootViewController *)self isContentViewLoaded])
  {
    v3 = [(PhoneRootViewController *)self contentView];
    if ([UIApp contentViewAnimationsFadeInsteadOfMove])
    {
      [v3 setAlpha:0.0];
    }

    else
    {
      v4 = [UIApp userInterfaceLayoutDirection];
      v5 = [UIApp contentViewOffscreenEdge];
      [v3 bounds];
      if (v5 == 1)
      {
        Height = CGRectGetHeight(*&v6);
        v11 = Height;
      }

      else
      {
        Height = CGRectGetWidth(*&v6);
        v11 = 0.0;
      }

      if (v4 != 1)
      {
        Height = -Height;
      }

      memset(&v13.c, 0, 32);
      if (v5 == 1)
      {
        Height = 0.0;
      }

      *&v13.a = 0uLL;
      CGAffineTransformMakeTranslation(&v13, Height, v11);
      v12 = v13;
      [v3 setTransform:&v12];
    }
  }
}

- (void)hideContentViewAnimated:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v7 = a4;
  if (([UIApp tabBarCanSlide] & 1) == 0)
  {
    [PhoneRootViewController hideContentViewAnimated:a2 completionBlock:self];
  }

  if ([(PhoneRootViewController *)self isContentViewLoaded])
  {

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __67__PhoneRootViewController_hideContentViewAnimated_completionBlock___block_invoke;
    v12[3] = &unk_100286050;
    v12[4] = self;
    v13 = v7;
    v8 = objc_retainBlock(v12);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __67__PhoneRootViewController_hideContentViewAnimated_completionBlock___block_invoke_2;
    v11[3] = &unk_100284FD0;
    v11[4] = self;
    v9 = objc_retainBlock(v11);
    v10 = 0.300000012;
    if (!v4)
    {
      v10 = 0.0;
    }

    [UIView animateWithDuration:0 delay:v9 options:v8 animations:v10 completion:?];
  }
}

void __67__PhoneRootViewController_hideContentViewAnimated_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) contentView];
  v5 = v4;
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  if (!CGAffineTransformIsIdentity(&v7))
  {
    [v5 setHidden:1];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }
}

- (void)showDetailsViewController
{
  if ([UIApp userInterfaceStyle] == 1)
  {
    v8 = [(PhoneRootViewController *)self detailsViewController];
    v3 = [v8 presentedViewController];
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      faceTimeRegistrationViewIsShowing = self->_faceTimeRegistrationViewIsShowing;

      if (faceTimeRegistrationViewIsShowing)
      {
        return;
      }

      v6 = [(PhoneRootViewController *)self detailsViewController];
      v7 = [v6 isViewLoaded];

      if (!v7)
      {
        return;
      }

      v8 = [(PhoneRootViewController *)self detailsViewController];
      v4 = [v8 view];
      [v4 setAlpha:1.0];
    }
  }
}

- (void)hideDetailsViewController
{
  if ([UIApp userInterfaceStyle] == 1)
  {
    v4 = [(PhoneRootViewController *)self detailsViewController];
    v3 = [v4 view];
    [v3 setAlpha:0.0];
  }
}

- (void)ensureBaseViewControllerIsShowing
{
  if (!-[PhoneRootViewController needsSplitView](self, "needsSplitView") && ([UIApp alwaysShowLocalVideo] & 1) == 0)
  {
    v6 = [(PhoneRootViewController *)self view];
    v3 = [(PhoneRootViewController *)self contentView];
    v4 = [(PhoneRootViewController *)self baseViewController];
    [v4 resetViewController];

    v5 = [v3 superview];

    if (v5 != v6)
    {
      [(PhoneRootViewController *)self _ensureProperPositionForContentView];
      [v6 addSubview:v3];
    }
  }
}

- (void)displayUIAnimated:(BOOL)a3
{
  if ([UIApp tabBarCanSlide])
  {
    [(PhoneRootViewController *)self showContentViewAnimated:0 completionBlock:0];
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v5 = "Showing contents view of PhoneRootViewController.";
      v6 = &v8;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = "Skipping showing contents view of PhoneRootViewController.";
      v6 = &v7;
      goto LABEL_6;
    }
  }
}

- (void)showContentViewAnimated:(uint64_t)a1 completionBlock:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PhoneRootViewController.m" lineNumber:689 description:@"Requested tab bar slide animation when not supported"];
}

- (void)hideContentViewAnimated:(uint64_t)a1 completionBlock:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PhoneRootViewController.m" lineNumber:757 description:@"Requested tab bar slide animation when not supported"];
}

@end
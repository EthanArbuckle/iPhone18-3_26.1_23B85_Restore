@interface BKLibraryBookCoverViewController
- (BKClassicScrubberTrack)progressTrack;
- (BKLibraryBookCoverViewController)initWithCoverImage:(id)a3 shadowImage:(id)a4;
- (BKLibraryBookCoverViewControllerDelegate)delegate;
- (BOOL)isNightMode;
- (BOOL)navigationBar:(id)a3 shouldPopItem:(id)a4;
- (BOOL)prefersStatusBarHidden;
- (CGRect)coverAnimationSourceFrame;
- (NSLayoutConstraint)imageBottomConstraint;
- (NSLayoutConstraint)imageLeadingConstraint;
- (NSLayoutConstraint)imageTopConstraint;
- (NSLayoutConstraint)imageTrailingConstraint;
- (NSLayoutConstraint)progressTrackBottomConstraint;
- (NSLayoutConstraint)progressTrackLeadingConstraint;
- (NSLayoutConstraint)progressTrackTrailingConstraint;
- (UIImageView)imageView;
- (UIViewController)statusBarOverrideViewController;
- (id)coverAnimationHostTopViewsToFadeOut;
- (id)coverAnimationSourceImage;
- (int64_t)preferredStatusBarStyle;
- (void)_adjustShadowForCurrentCoverBounds;
- (void)_setupShadowEffects;
- (void)_updateBackButtonAnimated:(BOOL)a3;
- (void)_updateImage:(id)a3;
- (void)_updateProgress;
- (void)bookOpenRevealDidEnd;
- (void)coverAnimationSourceFinalize;
- (void)coverAnimationSourcePrepare;
- (void)dealloc;
- (void)navigationBar:(id)a3 didPopItem:(id)a4;
- (void)setProgressValue:(id)a3;
- (void)setShowBackButton:(BOOL)a3;
- (void)setStatusBarOverrideViewController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillLayoutSubviews;
@end

@implementation BKLibraryBookCoverViewController

- (BKLibraryBookCoverViewController)initWithCoverImage:(id)a3 shadowImage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BKLibraryBookCoverViewController;
  v9 = [(BKLibraryBookCoverViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coverImage, a3);
    objc_storeStrong(&v10->_shadowImage, a4);
    v11 = +[UIColor systemBackgroundColor];
    backgroundColor = v10->_backgroundColor;
    v10->_backgroundColor = v11;
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BKLibraryBookCoverViewController;
  [(BKLibraryBookCoverViewController *)&v2 dealloc];
}

- (BOOL)isNightMode
{
  v2 = [(BKLibraryBookCoverViewController *)self traitCollection];
  v3 = [v2 bc_userInterfaceStyleDark];

  return v3;
}

- (void)_updateImage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_imageView);
  [WeakRetained setImage:v4];

  v6 = objc_loadWeakRetained(&self->_imageView);
  v7 = [v6 image];
  [v7 size];
  v9 = v8;
  v11 = v10;

  v12 = [(BKLibraryBookCoverViewController *)self view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;

  if (v9 / v11 <= v14 / v16)
  {
    if (v9 / v11 < v14 / v16)
    {
      v14 = v9 * (v16 / v11);
    }
  }

  else
  {
    v16 = v11 * (v14 / v9);
  }

  [(BKLibraryBookCoverViewController *)self setPreferredContentSize:v14, v16];
}

- (void)_adjustShadowForCurrentCoverBounds
{
  v3 = [(BKLibraryBookCoverViewController *)self shadowImage];

  if (v3)
  {
    shadowImage = self->_shadowImage;
    v14 = [(BKLibraryBookCoverViewController *)self imageView];
    [v14 frame];
    [(UIImage *)shadowImage bk_frameForImageFittedInFrame:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(BKLibraryBookCoverViewController *)self shadowImageView];
    [v13 setFrame:{v6, v8, v10, v12}];
  }
}

- (void)_setupShadowEffects
{
  v3 = [(BKLibraryBookCoverViewController *)self shadowImageView];
  [BKBookBloomOpenAnimator setBlurRadius:v3 forView:60.0];

  v4 = [(BKLibraryBookCoverViewController *)self shadowImageView];
  [BKBookBloomOpenAnimator setBrightnessFilter:v4 forView:-0.6];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = BKLibraryBookCoverViewController;
  [(BKLibraryBookCoverViewController *)&v5 viewDidAppear:?];
  [(BKLibraryBookCoverViewController *)self _updateBackButtonAnimated:v3];
}

- (void)viewDidLoad
{
  v48.receiver = self;
  v48.super_class = BKLibraryBookCoverViewController;
  [(BKLibraryBookCoverViewController *)&v48 viewDidLoad];
  v3 = +[UIColor labelColor];
  v4 = [[UIViewController alloc] initWithNibName:0 bundle:0];
  coverImageViewController = self->_coverImageViewController;
  self->_coverImageViewController = v4;

  v6 = [[UIImageView alloc] initWithImage:self->_shadowImage];
  shadowImageView = self->_shadowImageView;
  self->_shadowImageView = v6;

  [(UIImageView *)self->_shadowImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BKLibraryBookCoverViewController *)self _setupShadowEffects];
  v8 = [(BKLibraryBookCoverViewController *)self view];
  v9 = [(BKLibraryBookCoverViewController *)self shadowImageView];
  v10 = [(BKLibraryBookCoverViewController *)self imageView];
  [v8 insertSubview:v9 belowSubview:v10];

  v11 = [(BKLibraryBookCoverViewController *)self progressTrackBottomConstraint];
  [v11 constant];
  [(BKLibraryBookCoverViewController *)self setProgressTrackBottomSpecDistance:?];

  v12 = [(BKLibraryBookCoverViewController *)self progressTrackLeadingConstraint];
  [v12 constant];
  [(BKLibraryBookCoverViewController *)self setProgressTrackLeadingSpecDistance:?];

  v13 = [(BKLibraryBookCoverViewController *)self progressTrackTrailingConstraint];
  [v13 constant];
  [(BKLibraryBookCoverViewController *)self setProgressTrackTrailingSpecDistance:?];

  v14 = +[BKBookBloomOpenAnimator backgroundColorForZoomedBookCover];
  v15 = [(BKLibraryBookCoverViewController *)self view];
  [v15 setBackgroundColor:v14];

  if (self->_coverImage || self->_fallbackImage)
  {
    [(BKLibraryBookCoverViewController *)self _updateImage:?];
  }

  [(BKLibraryBookCoverViewController *)self _updateShadowImage:self->_shadowImage];
  v16 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [v16 setLoadingProgress:1.0];

  v17 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [v17 setReadingProgress:0.0];

  v18 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [v18 setAlpha:0.0];

  v19 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [v19 setThickness:3.0];

  v20 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [v20 setRoundEndCaps:1];

  v21 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [v21 setTrackForegroundColor:v3];

  v22 = [UIColor colorWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.2];
  v23 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.2];
  v24 = [UIColor bc_dynamicColorWithLightColor:v22 darkColor:v23];

  v25 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [v25 setTrackBackgroundColor:v24];

  [(BKLibraryBookCoverViewController *)self _updateProgress];
  v26 = objc_alloc_init(UINavigationBar);
  v27 = objc_opt_new();
  [v26 setBackgroundImage:v27 forBarMetrics:0];

  [v26 setTranslucent:1];
  [v26 setTintColor:v3];
  [v26 _setHidesShadow:1];
  [v26 setDelegate:self];
  [v26 setAlpha:0.0];
  v28 = [(BKLibraryBookCoverViewController *)self view];
  [v28 addSubview:v26];

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [v26 leftAnchor];
  v30 = [(BKLibraryBookCoverViewController *)self view];
  v31 = [v30 leftAnchor];
  v32 = [v29 constraintLessThanOrEqualToAnchor:v31];
  [v32 setActive:1];

  v33 = [v26 rightAnchor];
  v34 = [(BKLibraryBookCoverViewController *)self view];
  v35 = [v34 rightAnchor];
  v36 = [v33 constraintLessThanOrEqualToAnchor:v35];
  [v36 setActive:1];

  v37 = [v26 topAnchor];
  v38 = [(BKLibraryBookCoverViewController *)self view];
  v39 = [v38 safeAreaLayoutGuide];
  v40 = [v39 topAnchor];
  v41 = [v37 constraintLessThanOrEqualToAnchor:v40];
  [v41 setActive:1];

  v42 = [(BKLibraryBookCoverViewController *)self navBarBackItem];

  if (v42)
  {
    v43 = [(BKLibraryBookCoverViewController *)self navBarBackItem];
    v49[0] = v43;
    v44 = objc_opt_new();
    v49[1] = v44;
    v45 = [NSArray arrayWithObjects:v49 count:2];
    [v26 setItems:v45 animated:0];
  }

  if (![(BKLibraryBookCoverViewController *)self showBackChevron])
  {
    v46 = objc_opt_new();
    [v26 setBackIndicatorImage:v46];

    v47 = objc_opt_new();
    [v26 setBackIndicatorTransitionMaskImage:v47];
  }

  [(BKLibraryBookCoverViewController *)self setNavBarForBackButton:v26];
}

- (void)viewWillLayoutSubviews
{
  v51.receiver = self;
  v51.super_class = BKLibraryBookCoverViewController;
  [(BKLibraryBookCoverViewController *)&v51 viewWillLayoutSubviews];
  [(BKLibraryBookCoverViewController *)self coverAnimationSourceFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BKLibraryBookCoverViewController *)self view];
  [v11 frame];
  v13 = v12;
  v15 = v14;

  v52.origin.x = v4;
  v52.origin.y = v6;
  v52.size.width = v8;
  v52.size.height = v10;
  v16 = v15 - CGRectGetMaxY(v52);
  v53.origin.x = v4;
  v53.origin.y = v6;
  v53.size.width = v8;
  v53.size.height = v10;
  v17 = v13 - CGRectGetMaxX(v53);
  v18 = [(BKLibraryBookCoverViewController *)self imageTopConstraint];
  [v18 setConstant:v6];

  v19 = [(BKLibraryBookCoverViewController *)self imageBottomConstraint];
  [v19 setConstant:v16];

  v20 = [(BKLibraryBookCoverViewController *)self imageLeadingConstraint];
  [v20 setConstant:v4];

  v21 = [(BKLibraryBookCoverViewController *)self imageTrailingConstraint];
  [v21 setConstant:v17];

  v22 = [(BKLibraryBookCoverViewController *)self traitCollection];
  v23 = [v22 horizontalSizeClass];

  if (v23 == 2)
  {
    v24 = (v13 + -320.0) * 0.5;
    [(BKLibraryBookCoverViewController *)self progressTrackBottomSpecDistance];
    v26 = v16 + v25 + -32.0;
    v27 = [(BKLibraryBookCoverViewController *)self progressTrackBottomConstraint];
    [v27 setConstant:v26];

    [(BKLibraryBookCoverViewController *)self progressTrackLeadingSpecDistance];
    v29 = v24 + v28;
    v30 = [(BKLibraryBookCoverViewController *)self progressTrackLeadingConstraint];
    [v30 setConstant:v29];

    [(BKLibraryBookCoverViewController *)self progressTrackTrailingSpecDistance];
    v32 = v24 + v31;
  }

  else
  {
    [(BKLibraryBookCoverViewController *)self progressTrackBottomSpecDistance];
    v34 = v16 + v33 + -24.0;
    v35 = [(BKLibraryBookCoverViewController *)self progressTrackBottomConstraint];
    [v35 setConstant:v34];

    [(BKLibraryBookCoverViewController *)self progressTrackLeadingSpecDistance];
    v37 = v4 + v36 + 1.0;
    v38 = [(BKLibraryBookCoverViewController *)self progressTrackLeadingConstraint];
    [v38 setConstant:v37];

    [(BKLibraryBookCoverViewController *)self progressTrackTrailingSpecDistance];
    v32 = v17 + v39 + 1.0;
  }

  v40 = [(BKLibraryBookCoverViewController *)self progressTrackTrailingConstraint];
  [v40 setConstant:v32];

  [(BKLibraryBookCoverViewController *)self coverAnimationSourceFrame];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [(BKLibraryBookCoverViewController *)self coverImageViewController];
  v50 = [v49 view];
  [v50 setFrame:{v42, v44, v46, v48}];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v18.receiver = self;
  v18.super_class = BKLibraryBookCoverViewController;
  [(BKLibraryBookCoverViewController *)&v18 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_imageView);
    v8 = [WeakRetained image];
    [v8 size];
    v10 = v9;
    v12 = v11;

    [v6 bounds];
    v14 = v13;
    v16 = v15;
    v17 = v13 / v15;
    if (v10 / v12 <= v17)
    {
      if (v10 / v12 < v17)
      {
        v14 = v10 * (v16 / v12);
      }
    }

    else
    {
      v16 = v12 * (v13 / v10);
    }

    [(BKLibraryBookCoverViewController *)self setPreferredContentSize:v14, v16, v10 / v12];
  }
}

- (BOOL)navigationBar:(id)a3 shouldPopItem:(id)a4
{
  v4 = [(BKLibraryBookCoverViewController *)self navBarForBackButton:a3];
  [v4 setAlpha:0.0];

  return 1;
}

- (void)navigationBar:(id)a3 didPopItem:(id)a4
{
  if ([(BKLibraryBookCoverViewController *)self showBackChevron:a3])
  {

    [(BKLibraryBookCoverViewController *)self im_dismissAnimated:1];
  }

  else
  {
    v5 = [(BKLibraryBookCoverViewController *)self delegate];
    [v5 dismissLibraryBookCoverViewController:self animated:1];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKLibraryBookCoverViewController;
  [(BKLibraryBookCoverViewController *)&v3 viewDidLayoutSubviews];
  [(BKLibraryBookCoverViewController *)self _adjustShadowForCurrentCoverBounds];
}

- (void)_updateProgress
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001562A0;
  v2[3] = &unk_100A033C8;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.1];
}

- (void)setProgressValue:(id)a3
{
  v8 = a3;
  [v8 floatValue];
  v6 = v5;
  [(NSNumber *)self->_progressValue floatValue];
  if (v6 != v7 || !v8 || !self->_progressValue)
  {
    objc_storeStrong(&self->_progressValue, a3);
    [(BKLibraryBookCoverViewController *)self _updateProgress];
  }
}

- (void)setShowBackButton:(BOOL)a3
{
  if (self->_showBackButton != a3)
  {
    self->_showBackButton = a3;
    [(BKLibraryBookCoverViewController *)self _updateBackButtonAnimated:1];
    showBackButton = self->_showBackButton;
    v5 = [(BKLibraryBookCoverViewController *)self navBarForBackButton];
    [v5 setAccessibilityElementsHidden:!showBackButton];
  }
}

- (void)_updateBackButtonAnimated:(BOOL)a3
{
  v3 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100156548;
  v6[3] = &unk_100A033C8;
  v6[4] = self;
  v4 = objc_retainBlock(v6);
  v5 = v4;
  if (v3)
  {
    [UIView animateWithDuration:v4 animations:0.2];
  }

  else
  {
    (v4[2])(v4);
  }
}

- (void)setStatusBarOverrideViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarOverrideViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_statusBarOverrideViewController, obj);
    [(BKLibraryBookCoverViewController *)self setNeedsStatusBarAppearanceUpdate];
    [(BKLibraryBookCoverViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
    v5 = obj;
  }
}

- (BOOL)prefersStatusBarHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarOverrideViewController);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained prefersStatusBarHidden];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)preferredStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarOverrideViewController);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained preferredStatusBarStyle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)coverAnimationHostTopViewsToFadeOut
{
  [(BKLibraryBookCoverViewController *)self loadViewIfNeeded];
  v3 = [(BKLibraryBookCoverViewController *)self progressTrack];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (CGRect)coverAnimationSourceFrame
{
  v3 = [(BKLibraryBookCoverViewController *)self imageView];
  v4 = [v3 image];
  [v4 size];
  v6 = v5;
  v8 = v7;

  if (([(BKLibraryBookCoverViewController *)self im_isCompactWidth]& 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = [(BKLibraryBookCoverViewController *)self im_isCompactHeight];
  }

  v10 = [(BKLibraryBookCoverViewController *)self view];
  [v10 bounds];
  [BKBookBloomOpenAnimator zoomedFrameForCoverWithSize:v9 isCompact:v6 containerViewBounds:v8, v11, v12, v13, v14];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)coverAnimationSourceImage
{
  v2 = [(BKLibraryBookCoverViewController *)self imageView];
  v3 = [v2 image];

  return v3;
}

- (void)coverAnimationSourcePrepare
{
  v3 = [(BKLibraryBookCoverViewController *)self imageView];
  [v3 setHidden:1];

  v4 = [(BKLibraryBookCoverViewController *)self shadowImageView];
  [v4 setHidden:1];
}

- (void)coverAnimationSourceFinalize
{
  v3 = [(BKLibraryBookCoverViewController *)self imageView];
  [v3 setHidden:0];

  v4 = [(BKLibraryBookCoverViewController *)self shadowImageView];
  [v4 setHidden:0];
}

- (void)bookOpenRevealDidEnd
{
  v4 = +[UIColor clearColor];
  v3 = [(BKLibraryBookCoverViewController *)self view];
  [v3 setBackgroundColor:v4];
}

- (BKLibraryBookCoverViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIImageView)imageView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  return WeakRetained;
}

- (UIViewController)statusBarOverrideViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarOverrideViewController);

  return WeakRetained;
}

- (NSLayoutConstraint)imageTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_imageTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)imageTrailingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_imageTrailingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)imageLeadingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_imageLeadingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)imageBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_imageBottomConstraint);

  return WeakRetained;
}

- (BKClassicScrubberTrack)progressTrack
{
  WeakRetained = objc_loadWeakRetained(&self->_progressTrack);

  return WeakRetained;
}

- (NSLayoutConstraint)progressTrackBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_progressTrackBottomConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)progressTrackTrailingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_progressTrackTrailingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)progressTrackLeadingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_progressTrackLeadingConstraint);

  return WeakRetained;
}

@end
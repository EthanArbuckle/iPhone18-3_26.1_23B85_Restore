@interface BKLibraryBookCoverViewController
- (BKClassicScrubberTrack)progressTrack;
- (BKLibraryBookCoverViewController)initWithCoverImage:(id)image shadowImage:(id)shadowImage;
- (BKLibraryBookCoverViewControllerDelegate)delegate;
- (BOOL)isNightMode;
- (BOOL)navigationBar:(id)bar shouldPopItem:(id)item;
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
- (void)_updateBackButtonAnimated:(BOOL)animated;
- (void)_updateImage:(id)image;
- (void)_updateProgress;
- (void)bookOpenRevealDidEnd;
- (void)coverAnimationSourceFinalize;
- (void)coverAnimationSourcePrepare;
- (void)dealloc;
- (void)navigationBar:(id)bar didPopItem:(id)item;
- (void)setProgressValue:(id)value;
- (void)setShowBackButton:(BOOL)button;
- (void)setStatusBarOverrideViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation BKLibraryBookCoverViewController

- (BKLibraryBookCoverViewController)initWithCoverImage:(id)image shadowImage:(id)shadowImage
{
  imageCopy = image;
  shadowImageCopy = shadowImage;
  v14.receiver = self;
  v14.super_class = BKLibraryBookCoverViewController;
  v9 = [(BKLibraryBookCoverViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coverImage, image);
    objc_storeStrong(&v10->_shadowImage, shadowImage);
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
  traitCollection = [(BKLibraryBookCoverViewController *)self traitCollection];
  bc_userInterfaceStyleDark = [traitCollection bc_userInterfaceStyleDark];

  return bc_userInterfaceStyleDark;
}

- (void)_updateImage:(id)image
{
  imageCopy = image;
  WeakRetained = objc_loadWeakRetained(&self->_imageView);
  [WeakRetained setImage:imageCopy];

  v6 = objc_loadWeakRetained(&self->_imageView);
  image = [v6 image];
  [image size];
  v9 = v8;
  v11 = v10;

  view = [(BKLibraryBookCoverViewController *)self view];
  [view bounds];
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
  shadowImage = [(BKLibraryBookCoverViewController *)self shadowImage];

  if (shadowImage)
  {
    shadowImage = self->_shadowImage;
    imageView = [(BKLibraryBookCoverViewController *)self imageView];
    [imageView frame];
    [(UIImage *)shadowImage bk_frameForImageFittedInFrame:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    shadowImageView = [(BKLibraryBookCoverViewController *)self shadowImageView];
    [shadowImageView setFrame:{v6, v8, v10, v12}];
  }
}

- (void)_setupShadowEffects
{
  shadowImageView = [(BKLibraryBookCoverViewController *)self shadowImageView];
  [BKBookBloomOpenAnimator setBlurRadius:shadowImageView forView:60.0];

  shadowImageView2 = [(BKLibraryBookCoverViewController *)self shadowImageView];
  [BKBookBloomOpenAnimator setBrightnessFilter:shadowImageView2 forView:-0.6];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = BKLibraryBookCoverViewController;
  [(BKLibraryBookCoverViewController *)&v5 viewDidAppear:?];
  [(BKLibraryBookCoverViewController *)self _updateBackButtonAnimated:appearCopy];
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
  view = [(BKLibraryBookCoverViewController *)self view];
  shadowImageView = [(BKLibraryBookCoverViewController *)self shadowImageView];
  imageView = [(BKLibraryBookCoverViewController *)self imageView];
  [view insertSubview:shadowImageView belowSubview:imageView];

  progressTrackBottomConstraint = [(BKLibraryBookCoverViewController *)self progressTrackBottomConstraint];
  [progressTrackBottomConstraint constant];
  [(BKLibraryBookCoverViewController *)self setProgressTrackBottomSpecDistance:?];

  progressTrackLeadingConstraint = [(BKLibraryBookCoverViewController *)self progressTrackLeadingConstraint];
  [progressTrackLeadingConstraint constant];
  [(BKLibraryBookCoverViewController *)self setProgressTrackLeadingSpecDistance:?];

  progressTrackTrailingConstraint = [(BKLibraryBookCoverViewController *)self progressTrackTrailingConstraint];
  [progressTrackTrailingConstraint constant];
  [(BKLibraryBookCoverViewController *)self setProgressTrackTrailingSpecDistance:?];

  v14 = +[BKBookBloomOpenAnimator backgroundColorForZoomedBookCover];
  view2 = [(BKLibraryBookCoverViewController *)self view];
  [view2 setBackgroundColor:v14];

  if (self->_coverImage || self->_fallbackImage)
  {
    [(BKLibraryBookCoverViewController *)self _updateImage:?];
  }

  [(BKLibraryBookCoverViewController *)self _updateShadowImage:self->_shadowImage];
  progressTrack = [(BKLibraryBookCoverViewController *)self progressTrack];
  [progressTrack setLoadingProgress:1.0];

  progressTrack2 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [progressTrack2 setReadingProgress:0.0];

  progressTrack3 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [progressTrack3 setAlpha:0.0];

  progressTrack4 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [progressTrack4 setThickness:3.0];

  progressTrack5 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [progressTrack5 setRoundEndCaps:1];

  progressTrack6 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [progressTrack6 setTrackForegroundColor:v3];

  v22 = [UIColor colorWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.2];
  v23 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.2];
  v24 = [UIColor bc_dynamicColorWithLightColor:v22 darkColor:v23];

  progressTrack7 = [(BKLibraryBookCoverViewController *)self progressTrack];
  [progressTrack7 setTrackBackgroundColor:v24];

  [(BKLibraryBookCoverViewController *)self _updateProgress];
  v26 = objc_alloc_init(UINavigationBar);
  v27 = objc_opt_new();
  [v26 setBackgroundImage:v27 forBarMetrics:0];

  [v26 setTranslucent:1];
  [v26 setTintColor:v3];
  [v26 _setHidesShadow:1];
  [v26 setDelegate:self];
  [v26 setAlpha:0.0];
  view3 = [(BKLibraryBookCoverViewController *)self view];
  [view3 addSubview:v26];

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  leftAnchor = [v26 leftAnchor];
  view4 = [(BKLibraryBookCoverViewController *)self view];
  leftAnchor2 = [view4 leftAnchor];
  v32 = [leftAnchor constraintLessThanOrEqualToAnchor:leftAnchor2];
  [v32 setActive:1];

  rightAnchor = [v26 rightAnchor];
  view5 = [(BKLibraryBookCoverViewController *)self view];
  rightAnchor2 = [view5 rightAnchor];
  v36 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2];
  [v36 setActive:1];

  topAnchor = [v26 topAnchor];
  view6 = [(BKLibraryBookCoverViewController *)self view];
  safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v41 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2];
  [v41 setActive:1];

  navBarBackItem = [(BKLibraryBookCoverViewController *)self navBarBackItem];

  if (navBarBackItem)
  {
    navBarBackItem2 = [(BKLibraryBookCoverViewController *)self navBarBackItem];
    v49[0] = navBarBackItem2;
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
  view = [(BKLibraryBookCoverViewController *)self view];
  [view frame];
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
  imageTopConstraint = [(BKLibraryBookCoverViewController *)self imageTopConstraint];
  [imageTopConstraint setConstant:v6];

  imageBottomConstraint = [(BKLibraryBookCoverViewController *)self imageBottomConstraint];
  [imageBottomConstraint setConstant:v16];

  imageLeadingConstraint = [(BKLibraryBookCoverViewController *)self imageLeadingConstraint];
  [imageLeadingConstraint setConstant:v4];

  imageTrailingConstraint = [(BKLibraryBookCoverViewController *)self imageTrailingConstraint];
  [imageTrailingConstraint setConstant:v17];

  traitCollection = [(BKLibraryBookCoverViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    v24 = (v13 + -320.0) * 0.5;
    [(BKLibraryBookCoverViewController *)self progressTrackBottomSpecDistance];
    v26 = v16 + v25 + -32.0;
    progressTrackBottomConstraint = [(BKLibraryBookCoverViewController *)self progressTrackBottomConstraint];
    [progressTrackBottomConstraint setConstant:v26];

    [(BKLibraryBookCoverViewController *)self progressTrackLeadingSpecDistance];
    v29 = v24 + v28;
    progressTrackLeadingConstraint = [(BKLibraryBookCoverViewController *)self progressTrackLeadingConstraint];
    [progressTrackLeadingConstraint setConstant:v29];

    [(BKLibraryBookCoverViewController *)self progressTrackTrailingSpecDistance];
    v32 = v24 + v31;
  }

  else
  {
    [(BKLibraryBookCoverViewController *)self progressTrackBottomSpecDistance];
    v34 = v16 + v33 + -24.0;
    progressTrackBottomConstraint2 = [(BKLibraryBookCoverViewController *)self progressTrackBottomConstraint];
    [progressTrackBottomConstraint2 setConstant:v34];

    [(BKLibraryBookCoverViewController *)self progressTrackLeadingSpecDistance];
    v37 = v4 + v36 + 1.0;
    progressTrackLeadingConstraint2 = [(BKLibraryBookCoverViewController *)self progressTrackLeadingConstraint];
    [progressTrackLeadingConstraint2 setConstant:v37];

    [(BKLibraryBookCoverViewController *)self progressTrackTrailingSpecDistance];
    v32 = v17 + v39 + 1.0;
  }

  progressTrackTrailingConstraint = [(BKLibraryBookCoverViewController *)self progressTrackTrailingConstraint];
  [progressTrackTrailingConstraint setConstant:v32];

  [(BKLibraryBookCoverViewController *)self coverAnimationSourceFrame];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  coverImageViewController = [(BKLibraryBookCoverViewController *)self coverImageViewController];
  view2 = [coverImageViewController view];
  [view2 setFrame:{v42, v44, v46, v48}];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v18.receiver = self;
  v18.super_class = BKLibraryBookCoverViewController;
  [(BKLibraryBookCoverViewController *)&v18 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_imageView);
    image = [WeakRetained image];
    [image size];
    v10 = v9;
    v12 = v11;

    [windowCopy bounds];
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

- (BOOL)navigationBar:(id)bar shouldPopItem:(id)item
{
  v4 = [(BKLibraryBookCoverViewController *)self navBarForBackButton:bar];
  [v4 setAlpha:0.0];

  return 1;
}

- (void)navigationBar:(id)bar didPopItem:(id)item
{
  if ([(BKLibraryBookCoverViewController *)self showBackChevron:bar])
  {

    [(BKLibraryBookCoverViewController *)self im_dismissAnimated:1];
  }

  else
  {
    delegate = [(BKLibraryBookCoverViewController *)self delegate];
    [delegate dismissLibraryBookCoverViewController:self animated:1];
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

- (void)setProgressValue:(id)value
{
  valueCopy = value;
  [valueCopy floatValue];
  v6 = v5;
  [(NSNumber *)self->_progressValue floatValue];
  if (v6 != v7 || !valueCopy || !self->_progressValue)
  {
    objc_storeStrong(&self->_progressValue, value);
    [(BKLibraryBookCoverViewController *)self _updateProgress];
  }
}

- (void)setShowBackButton:(BOOL)button
{
  if (self->_showBackButton != button)
  {
    self->_showBackButton = button;
    [(BKLibraryBookCoverViewController *)self _updateBackButtonAnimated:1];
    showBackButton = self->_showBackButton;
    navBarForBackButton = [(BKLibraryBookCoverViewController *)self navBarForBackButton];
    [navBarForBackButton setAccessibilityElementsHidden:!showBackButton];
  }
}

- (void)_updateBackButtonAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100156548;
  v6[3] = &unk_100A033C8;
  v6[4] = self;
  v4 = objc_retainBlock(v6);
  v5 = v4;
  if (animatedCopy)
  {
    [UIView animateWithDuration:v4 animations:0.2];
  }

  else
  {
    (v4[2])(v4);
  }
}

- (void)setStatusBarOverrideViewController:(id)controller
{
  obj = controller;
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
    prefersStatusBarHidden = [WeakRetained prefersStatusBarHidden];
  }

  else
  {
    prefersStatusBarHidden = 1;
  }

  return prefersStatusBarHidden;
}

- (int64_t)preferredStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarOverrideViewController);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    preferredStatusBarStyle = [WeakRetained preferredStatusBarStyle];
  }

  else
  {
    preferredStatusBarStyle = 0;
  }

  return preferredStatusBarStyle;
}

- (id)coverAnimationHostTopViewsToFadeOut
{
  [(BKLibraryBookCoverViewController *)self loadViewIfNeeded];
  progressTrack = [(BKLibraryBookCoverViewController *)self progressTrack];
  v6 = progressTrack;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (CGRect)coverAnimationSourceFrame
{
  imageView = [(BKLibraryBookCoverViewController *)self imageView];
  image = [imageView image];
  [image size];
  v6 = v5;
  v8 = v7;

  if (([(BKLibraryBookCoverViewController *)self im_isCompactWidth]& 1) != 0)
  {
    im_isCompactHeight = 1;
  }

  else
  {
    im_isCompactHeight = [(BKLibraryBookCoverViewController *)self im_isCompactHeight];
  }

  view = [(BKLibraryBookCoverViewController *)self view];
  [view bounds];
  [BKBookBloomOpenAnimator zoomedFrameForCoverWithSize:im_isCompactHeight isCompact:v6 containerViewBounds:v8, v11, v12, v13, v14];
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
  imageView = [(BKLibraryBookCoverViewController *)self imageView];
  image = [imageView image];

  return image;
}

- (void)coverAnimationSourcePrepare
{
  imageView = [(BKLibraryBookCoverViewController *)self imageView];
  [imageView setHidden:1];

  shadowImageView = [(BKLibraryBookCoverViewController *)self shadowImageView];
  [shadowImageView setHidden:1];
}

- (void)coverAnimationSourceFinalize
{
  imageView = [(BKLibraryBookCoverViewController *)self imageView];
  [imageView setHidden:0];

  shadowImageView = [(BKLibraryBookCoverViewController *)self shadowImageView];
  [shadowImageView setHidden:0];
}

- (void)bookOpenRevealDidEnd
{
  v4 = +[UIColor clearColor];
  view = [(BKLibraryBookCoverViewController *)self view];
  [view setBackgroundColor:v4];
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
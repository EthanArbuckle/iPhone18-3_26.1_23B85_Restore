@interface ASCAdLockupView
- (ASCAdLockupView)initWithCoder:(id)coder;
- (ASCAdLockupView)initWithFrame:(CGRect)frame;
- (ASCAdLockupViewDelegate)delegate;
- (ASCLockup)lockup;
- (ASCLockupRequest)request;
- (ASCLockupViewGroup)group;
- (BOOL)accessibilityActivate;
- (BOOL)automaticallyGeneratesAppearMetrics;
- (BOOL)isHighlighted;
- (BOOL)isVideoLoopingEnabled;
- (BOOL)isVideoMuted;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityUserRating;
- (NSString)description;
- (UIViewController)presentingViewController;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)appearMetricsActivity;
- (id)context;
- (id)metricsActivityForPresentingProductDetails;
- (id)metricsParametersForPresentingProductDetails;
- (id)metricsParametersFromMetricsActivity:(id)activity;
- (id)offerTheme;
- (unint64_t)accessibilityTraits;
- (void)didMoveToWindow;
- (void)invalidateIntrinsicContentSize;
- (void)layoutAdContentView;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)lockupMediaPresenterDidBeginScreenshotsFetchRequest;
- (void)lockupMediaPresenterDidCancelScreenshotsFetchRequest;
- (void)lockupMediaPresenterDidFinishScreenshotsFetchRequest;
- (void)lockupMediaPresenterVideoStateDidChange:(int64_t)change;
- (void)lockupPresenterDidBeginRequest;
- (void)lockupPresenterDidFailRequestWithError:(id)error;
- (void)lockupPresenterDidFinishRequest;
- (void)offerPresenterDidObserveChangeToState:(id)state;
- (void)offerPresenterPreprocessOffer:(id)offer inState:(id)state completionBlock:(id)block;
- (void)offerPresenterWillPerformActionOfOffer:(id)offer inState:(id)state withActivity:(id *)activity inContext:(id *)context withPaymentSheetView:(id)view;
- (void)performAdTransparencyAction;
- (void)performLockupAction;
- (void)performOfferAction;
- (void)presentProductDetailsViewController;
- (void)presentingViewController;
- (void)setAdMarkerHidden:(BOOL)hidden;
- (void)setAdTransparencyButtonHidden:(BOOL)hidden;
- (void)setAppearMetricsActivity:(id)activity;
- (void)setAutomaticallyGeneratesAppearMetrics:(BOOL)metrics;
- (void)setDelegate:(id)delegate;
- (void)setDeveloperName:(id)name;
- (void)setGroup:(id)group;
- (void)setHidden:(BOOL)hidden;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
- (void)setLockup:(id)lockup;
- (void)setOfferTheme:(id)theme;
- (void)setRequest:(id)request;
- (void)setVideoLoopingEnabled:(BOOL)enabled;
- (void)setVideoMuted:(BOOL)muted;
- (void)updateLayoutMarginsForContext:(id)context;
- (void)updateVisibility:(int64_t)visibility;
@end

@implementation ASCAdLockupView

- (NSString)accessibilityUserRating
{
  v3 = MEMORY[0x277CCACA8];
  v4 = ASCLocalizedFormatString(@"AX_USER_RATINGS");
  lockup = [(ASCAdLockupView *)self lockup];
  productRatingBadge = [lockup productRatingBadge];
  v7 = [v3 localizedStringWithFormat:v4, productRatingBadge];

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = ASCAdLockupView;
  v3 = *MEMORY[0x277D76548] | [(ASCAdLockupView *)&v8 accessibilityTraits];
  contentView = [(ASCAdLockupView *)self contentView];
  isEnabled = [contentView isEnabled];

  v6 = *MEMORY[0x277D76580];
  if (isEnabled)
  {
    v6 = 0;
  }

  return v3 | v6;
}

- (id)accessibilityLabel
{
  contentView = [(ASCAdLockupView *)self contentView];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:6];
  accessibilityAdvertisement = [(ASCAdLockupView *)self accessibilityAdvertisement];
  [v4 addObject:accessibilityAdvertisement];

  headingLabelIfLoaded = [contentView headingLabelIfLoaded];

  if (headingLabelIfLoaded)
  {
    headingLabelIfLoaded2 = [contentView headingLabelIfLoaded];
    [v4 addObject:headingLabelIfLoaded2];
  }

  titleLabel = [contentView titleLabel];
  [v4 addObject:titleLabel];

  subtitleLabel = [contentView subtitleLabel];
  [v4 addObject:subtitleLabel];

  offerStatusLabelIfLoaded = [contentView offerStatusLabelIfLoaded];

  if (offerStatusLabelIfLoaded)
  {
    offerStatusLabelIfLoaded2 = [contentView offerStatusLabelIfLoaded];
    [v4 addObject:offerStatusLabelIfLoaded2];
  }

  v12 = ASCAXLabelForElements(v4);

  return v12;
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v13[1] = *MEMORY[0x277D85DE8];
  accessibilityAdvertisement = [(ASCAdLockupView *)self accessibilityAdvertisement];
  adTransparencyContainer = [(ASCAdLockupView *)self adTransparencyContainer];
  adTransparencyButton = [adTransparencyContainer adTransparencyButton];
  [adTransparencyButton setAccessibilityLabel:accessibilityAdvertisement];

  v6 = *MEMORY[0x277D76548];
  adTransparencyContainer2 = [(ASCAdLockupView *)self adTransparencyContainer];
  adTransparencyButton2 = [adTransparencyContainer2 adTransparencyButton];
  [adTransparencyButton2 setAccessibilityTraits:v6];

  adTransparencyContainer3 = [(ASCAdLockupView *)self adTransparencyContainer];
  adTransparencyButton3 = [adTransparencyContainer3 adTransparencyButton];
  v13[0] = adTransparencyButton3;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  return v11;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v8[2] = *MEMORY[0x277D85DE8];
  contentView = [(ASCAdLockupView *)self contentView];
  offerButton = [contentView offerButton];
  v8[0] = offerButton;
  mediaView = [(ASCAdLockupView *)self mediaView];
  v8[1] = mediaView;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

- (BOOL)accessibilityActivate
{
  contentView = [(ASCAdLockupView *)self contentView];
  isEnabled = [contentView isEnabled];

  if (!isEnabled)
  {
    return 0;
  }

  contentView2 = [(ASCAdLockupView *)self contentView];
  [contentView2 sendActionsForControlEvents:64];

  return [(ASCAdLockupView *)self automaticallyPresentsProductDetails];
}

- (id)accessibilityIdentifier
{
  lockup = [(ASCAdLockupView *)self lockup];
  v4 = [lockup id];
  stringValue = [v4 stringValue];

  v6 = MEMORY[0x277CCACA8];
  if (stringValue)
  {
    lockup2 = [(ASCAdLockupView *)self lockup];
    v8 = [lockup2 id];
    stringValue2 = [v8 stringValue];
    v10 = [v6 stringWithFormat:@"AdLockup[id=%@]", stringValue2];
    v11 = ASCAXIdentifierWithSuffix(v10);
  }

  else
  {
    lockup2 = [MEMORY[0x277CCACA8] stringWithFormat:@"AdLockup"];
    v11 = ASCAXIdentifierWithSuffix(lockup2);
  }

  return v11;
}

- (ASCAdLockupView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v40[1] = *MEMORY[0x277D85DE8];
  +[ASCEligibility assertCurrentProcessEligibility];
  v39.receiver = self;
  v39.super_class = ASCAdLockupView;
  height = [(ASCAdLockupView *)&v39 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    height->_automaticallyPresentsProductDetails = 1;
    v10 = [ASCLockupContentView alloc];
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v14 = *(MEMORY[0x277CBF3A0] + 24);
    v15 = [(ASCLockupContentView *)v10 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
    contentView = v9->_contentView;
    v9->_contentView = v15;

    v17 = [[ASCOfferPresenter alloc] initWithView:v9->_contentView];
    offerPresenter = v9->_offerPresenter;
    v9->_offerPresenter = v17;

    v19 = [[ASCAppearMetricsPresenter alloc] initWithView:v9];
    metricsPresenter = v9->_metricsPresenter;
    v9->_metricsPresenter = v19;

    v21 = [[ASCLockupPresenter alloc] initWithView:v9->_contentView offerPresenter:v9->_offerPresenter metricsPresenter:v9->_metricsPresenter];
    lockupPresenter = v9->_lockupPresenter;
    v9->_lockupPresenter = v21;

    v23 = [[ASCAdLockupPresenter alloc] initWithView:v9 lockupPresenter:v9->_lockupPresenter];
    adLockupPresenter = v9->_adLockupPresenter;
    v9->_adLockupPresenter = v23;

    v25 = [[ASCAdTransparencyContainerView alloc] initWithFrame:v11, v12, v13, v14];
    adTransparencyContainer = v9->_adTransparencyContainer;
    v9->_adTransparencyContainer = v25;

    v27 = [[ASCLockupMediaView alloc] initWithFrame:v11, v12, v13, v14];
    mediaView = v9->_mediaView;
    v9->_mediaView = v27;

    v29 = [[ASCLockupMediaPresenter alloc] initWithView:v9->_mediaView lockupPresenter:v9->_lockupPresenter];
    lockupMediaPresenter = v9->_lockupMediaPresenter;
    v9->_lockupMediaPresenter = v29;

    [(ASCLockupPresenter *)v9->_lockupPresenter setObserver:v9];
    [(ASCOfferPresenter *)v9->_offerPresenter setObserver:v9];
    [(ASCLockupMediaPresenter *)v9->_lockupMediaPresenter setObserver:v9];
    [(ASCAdLockupView *)v9 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(ASCAdLockupView *)v9 setInsetsLayoutMarginsFromSafeArea:0];
    v31 = +[ASCSemanticColor tint];
    [(ASCAdLockupView *)v9 setTintColor:v31];

    [(ASCAdLockupView *)v9 addSubview:v9->_mediaView];
    [(ASCAdLockupView *)v9 addSubview:v9->_adTransparencyContainer];
    [(ASCAdLockupView *)v9 addSubview:v9->_contentView];
    [(ASCAdTransparencyContainerView *)v9->_adTransparencyContainer setHidden:1];
    v32 = +[ASCOfferTheme adTheme];
    [(ASCLockupContentView *)v9->_contentView setOfferTheme:v32];

    [(ASCLockupContentView *)v9->_contentView setLockupSize:0x2827A4498];
    [(ASCLockupContentView *)v9->_contentView addOfferTarget:v9 action:sel_performOfferAction];
    [(ASCAdTransparencyContainerView *)v9->_adTransparencyContainer addAdTransparencyTarget:v9 action:sel_performAdTransparencyAction];
    v33 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v9 action:sel_performLockupAction];
    tapGestureRecognizer = v9->_tapGestureRecognizer;
    v9->_tapGestureRecognizer = v33;

    [(UITapGestureRecognizer *)v9->_tapGestureRecognizer setDelegate:v9];
    [(ASCAdLockupView *)v9 addGestureRecognizer:v9->_tapGestureRecognizer];
    [(ASCLockupMediaView *)v9->_mediaView addTarget:v9 action:sel_performLockupAction forControlEvents:64];
    v35 = objc_opt_self();
    v40[0] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    v37 = [(ASCAdLockupView *)v9 registerForTraitChanges:v36 withAction:sel_setNeedsLayout];
  }

  return v9;
}

- (ASCAdLockupView)initWithCoder:(id)coder
{
  [(ASCAdLockupView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UIViewController)presentingViewController
{
  v11 = *MEMORY[0x277D85DE8];
  delegate = [(ASCAdLockupView *)self delegate];
  v4 = [delegate presentingViewControllerForAdLockupView:self];

  if (v4)
  {
    rootViewController = v4;
  }

  else
  {
    window = [(ASCAdLockupView *)self window];
    rootViewController = [window rootViewController];

    if (rootViewController)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Lockup view %@ is presenting from root view controller", &v9, 0xCu);
      }

      v7 = rootViewController;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(ASCAdLockupView *)self presentingViewController];
    }
  }

  return rootViewController;
}

- (void)setAdMarkerHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_adMarkerHidden = hidden;
  adTransparencyContainer = [(ASCAdLockupView *)self adTransparencyContainer];
  [adTransparencyContainer setHidden:hiddenCopy];

  request = [(ASCAdLockupView *)self request];
  context = [request context];
  [(ASCAdLockupView *)self updateLayoutMarginsForContext:context];

  [(ASCAdLockupView *)self setNeedsLayout];

  [(ASCAdLockupView *)self invalidateIntrinsicContentSize];
}

- (ASCLockup)lockup
{
  lockupPresenter = [(ASCAdLockupView *)self lockupPresenter];
  lockup = [lockupPresenter lockup];

  return lockup;
}

- (void)setLockup:(id)lockup
{
  lockupCopy = lockup;
  lockupPresenter = [(ASCAdLockupView *)self lockupPresenter];
  [lockupPresenter setLockup:lockupCopy];
}

- (ASCLockupViewGroup)group
{
  lockupPresenter = [(ASCAdLockupView *)self lockupPresenter];
  group = [lockupPresenter group];

  return group;
}

- (void)setGroup:(id)group
{
  groupCopy = group;
  lockupPresenter = [(ASCAdLockupView *)self lockupPresenter];
  [lockupPresenter setGroup:groupCopy];
}

- (ASCLockupRequest)request
{
  lockupPresenter = [(ASCAdLockupView *)self lockupPresenter];
  request = [lockupPresenter request];

  return request;
}

- (void)setRequest:(id)request
{
  requestCopy = request;
  request = [(ASCAdLockupView *)self request];
  context = [request context];

  context2 = [requestCopy context];
  mediaView = [(ASCAdLockupView *)self mediaView];
  [mediaView setContext:context2];

  context3 = [requestCopy context];
  LOBYTE(mediaView) = [context3 isEqualToString:context];

  if ((mediaView & 1) == 0)
  {
    context4 = [requestCopy context];
    [(ASCAdLockupView *)self updateLayoutMarginsForContext:context4];
  }

  context5 = [requestCopy context];
  IsAdMaterialContext = ASCLockupContextIsAdMaterialContext(context5);

  if (IsAdMaterialContext)
  {
    materialBackgroundView = [(ASCAdLockupView *)self materialBackgroundView];

    if (!materialBackgroundView)
    {
      v13 = [ASCMaterialBackgroundView alloc];
      v14 = [(ASCMaterialBackgroundView *)v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      materialBackgroundView = self->_materialBackgroundView;
      self->_materialBackgroundView = v14;

      v16 = self->_materialBackgroundView;
      lockupMediaPresenter = [(ASCAdLockupView *)self lockupMediaPresenter];
      [lockupMediaPresenter setBackgroundView:v16];

      [(ASCAdLockupView *)self insertSubview:self->_materialBackgroundView atIndex:0];
    }

    adTransparencyContainer = [(ASCAdLockupView *)self adTransparencyContainer];
    [adTransparencyContainer setBackgroundHidden:1];

    materialBackgroundView2 = [(ASCAdLockupView *)self materialBackgroundView];
    [materialBackgroundView2 setHidden:0];

    gradientBackgroundView = [(ASCAdLockupView *)self gradientBackgroundView];
    [gradientBackgroundView setHidden:1];

    v21 = +[ASCStaticLockupTheme adTheme];
LABEL_11:
    contentView2 = v21;
    contentView = [(ASCAdLockupView *)self contentView];
    [contentView setLockupTheme:contentView2];

    goto LABEL_13;
  }

  context6 = [requestCopy context];
  IsAdGridContext = ASCLockupContextIsAdGridContext(context6);

  if (IsAdGridContext)
  {
    gradientBackgroundView2 = [(ASCAdLockupView *)self gradientBackgroundView];

    if (!gradientBackgroundView2)
    {
      v25 = [ASCGradientBackgroundView alloc];
      v26 = [(ASCGradientBackgroundView *)v25 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      gradientBackgroundView = self->_gradientBackgroundView;
      self->_gradientBackgroundView = v26;

      v28 = self->_gradientBackgroundView;
      mediaView2 = [(ASCAdLockupView *)self mediaView];
      [(ASCAdLockupView *)self insertSubview:v28 aboveSubview:mediaView2];
    }

    adTransparencyContainer2 = [(ASCAdLockupView *)self adTransparencyContainer];
    [adTransparencyContainer2 setBackgroundHidden:0];

    materialBackgroundView3 = [(ASCAdLockupView *)self materialBackgroundView];
    [materialBackgroundView3 setHidden:1];

    gradientBackgroundView3 = [(ASCAdLockupView *)self gradientBackgroundView];
    [gradientBackgroundView3 setHidden:0];

    v21 = +[ASCStaticLockupTheme adWhiteTheme];
    goto LABEL_11;
  }

  adTransparencyContainer3 = [(ASCAdLockupView *)self adTransparencyContainer];
  [adTransparencyContainer3 setBackgroundHidden:1];

  materialBackgroundView4 = [(ASCAdLockupView *)self materialBackgroundView];
  [materialBackgroundView4 setHidden:1];

  gradientBackgroundView4 = [(ASCAdLockupView *)self gradientBackgroundView];
  [gradientBackgroundView4 setHidden:1];

  contentView2 = [(ASCAdLockupView *)self contentView];
  [contentView2 setLockupTheme:0];
LABEL_13:

  lockupPresenter = [(ASCAdLockupView *)self lockupPresenter];
  [lockupPresenter setRequest:requestCopy];
}

- (id)context
{
  request = [(ASCAdLockupView *)self request];
  context = [request context];

  return context;
}

- (void)setAdTransparencyButtonHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  isAdMarkerHidden = [(ASCAdLockupView *)self isAdMarkerHidden];
  adTransparencyContainer = [(ASCAdLockupView *)self adTransparencyContainer];
  [adTransparencyContainer setHidden:isAdMarkerHidden | hiddenCopy];

  [(ASCAdLockupView *)self setNeedsLayout];
}

- (void)setDeveloperName:(id)name
{
  nameCopy = name;
  adTransparencyContainer = [(ASCAdLockupView *)self adTransparencyContainer];
  [adTransparencyContainer setDeveloperName:nameCopy];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v4 = delegateCopy;
  if (delegateCopy)
  {
    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFDF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFBF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 128;
    }

    else
    {
      v11 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFF7F | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFEFF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 512;
    }

    else
    {
      v13 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFDFF | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 1024;
    }

    else
    {
      v14 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFBFF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 2048;
    }

    else
    {
      v15 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xF7FF | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 4096;
    }

    else
    {
      v16 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xEFFF | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 0x2000;
    }

    else
    {
      v17 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xDFFF | v17;
    v18 = (objc_opt_respondsToSelector() & 1) == 0;
    v4 = delegateCopy;
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = 0x4000;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xBFFF | v19;
  }

  else
  {
    *&self->_delegateRespondsTo &= 0x8000u;
  }
}

- (BOOL)isHighlighted
{
  contentView = [(ASCAdLockupView *)self contentView];
  isHighlighted = [contentView isHighlighted];

  return isHighlighted;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  contentView = [(ASCAdLockupView *)self contentView];
  [contentView setHighlighted:highlightedCopy];
}

- (BOOL)automaticallyGeneratesAppearMetrics
{
  metricsPresenter = [(ASCAdLockupView *)self metricsPresenter];
  isEnabled = [metricsPresenter isEnabled];

  return isEnabled;
}

- (void)setAutomaticallyGeneratesAppearMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  metricsPresenter = [(ASCAdLockupView *)self metricsPresenter];
  [metricsPresenter setEnabled:metricsCopy];
}

- (id)appearMetricsActivity
{
  metricsPresenter = [(ASCAdLockupView *)self metricsPresenter];
  activity = [metricsPresenter activity];

  return activity;
}

- (void)setAppearMetricsActivity:(id)activity
{
  activityCopy = activity;
  metricsPresenter = [(ASCAdLockupView *)self metricsPresenter];
  [metricsPresenter setActivity:activityCopy];
}

- (id)offerTheme
{
  contentView = [(ASCAdLockupView *)self contentView];
  offerTheme = [contentView offerTheme];

  return offerTheme;
}

- (void)setOfferTheme:(id)theme
{
  themeCopy = theme;
  contentView = [(ASCAdLockupView *)self contentView];
  [contentView setOfferTheme:themeCopy];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = ASCAdLockupView;
  [(ASCAdLockupView *)&v3 layoutMarginsDidChange];
  [(ASCAdLockupView *)self setNeedsLayout];
  [(ASCAdLockupView *)self invalidateIntrinsicContentSize];
}

- (void)setLayoutMargins:(UIEdgeInsets)margins
{
  v6.receiver = self;
  v6.super_class = ASCAdLockupView;
  [(ASCAdLockupView *)&v6 setLayoutMargins:margins.top, margins.left, margins.bottom, margins.right];
  request = [(ASCAdLockupView *)self request];
  context = [request context];
  [(ASCAdLockupView *)self updateLayoutMarginsForContext:context];
}

- (void)updateLayoutMarginsForContext:(id)context
{
  contextCopy = context;
  [(ASCAdLockupView *)self layoutMargins];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (![(ASCAdLockupView *)self isAdMarkerHidden])
  {
    v6 = 0.0;
  }

  IsAdGridContext = ASCLockupContextIsAdGridContext(contextCopy);

  if (!IsAdGridContext)
  {
    v10 = 0.0;
  }

  [(ASCAdLockupView *)self layoutMargins];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  contentView = [(ASCAdLockupView *)self contentView];
  [contentView setLayoutMargins:{v6, v8, v10, v12}];

  mediaView = [(ASCAdLockupView *)self mediaView];
  [mediaView setLayoutMargins:{0.0, v15, v17, v19}];
}

- (void)setHidden:(BOOL)hidden
{
  v5.receiver = self;
  v5.super_class = ASCAdLockupView;
  [(ASCAdLockupView *)&v5 setHidden:hidden];
  metricsPresenter = [(ASCAdLockupView *)self metricsPresenter];
  [metricsPresenter viewDidSetHidden];
}

- (void)updateVisibility:(int64_t)visibility
{
  if ((visibility - 1) >= 2)
  {
    if (visibility)
    {
      return;
    }

    mediaView = [(ASCAdLockupView *)self mediaView];
    videoView = [mediaView videoView];
    [videoView playVideo];
  }

  else
  {
    mediaView = [(ASCAdLockupView *)self mediaView];
    videoView = [mediaView videoView];
    [videoView pauseVideo];
  }
}

- (BOOL)isVideoLoopingEnabled
{
  mediaView = [(ASCAdLockupView *)self mediaView];
  isVideoLoopingEnabled = [mediaView isVideoLoopingEnabled];

  return isVideoLoopingEnabled;
}

- (void)setVideoLoopingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mediaView = [(ASCAdLockupView *)self mediaView];
  [mediaView setVideoLoopingEnabled:enabledCopy];
}

- (BOOL)isVideoMuted
{
  mediaView = [(ASCAdLockupView *)self mediaView];
  isVideoMuted = [mediaView isVideoMuted];

  return isVideoMuted;
}

- (void)setVideoMuted:(BOOL)muted
{
  mutedCopy = muted;
  mediaView = [(ASCAdLockupView *)self mediaView];
  [mediaView setVideoMuted:mutedCopy];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = ASCAdLockupView;
  [(ASCAdLockupView *)&v4 didMoveToWindow];
  metricsPresenter = [(ASCAdLockupView *)self metricsPresenter];
  [metricsPresenter viewDidMoveToWindow];
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = ASCAdLockupView;
  [(ASCAdLockupView *)&v4 invalidateIntrinsicContentSize];
  if ((*&self->_delegateRespondsTo & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained adLockupViewDidInvalidateIntrinsicContentSize:self];
  }
}

- (CGSize)intrinsicContentSize
{
  contentView = [(ASCAdLockupView *)self contentView];
  [(ASCAdLockupView *)self bounds];
  [contentView sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  mediaView = [(ASCAdLockupView *)self mediaView];
  [mediaView intrinsicContentSize];
  v12 = v11;

  if (v12 > 2.22044605e-16)
  {
    objc_opt_self();
    v12 = v12 + 10.0;
  }

  v13 = v9 + v12;
  if (![(ASCAdLockupView *)self isAdMarkerHidden])
  {
    [(ASCAdLockupView *)self layoutMargins];
    v15 = v14;
    +[ASCAdLockupView topContentViewSpacing];
    v13 = v13 + v15 + v16;
    if (![(ASCAdLockupView *)self isLargeSizeClass])
    {
      adTransparencyContainer = [(ASCAdLockupView *)self adTransparencyContainer];
      [(ASCAdLockupView *)self bounds];
      [adTransparencyContainer sizeThatFits:{v18, v19}];
      v21 = v20;

      v13 = v13 + v21;
    }
  }

  v22 = v7;
  v23 = v13;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  contentView = [(ASCAdLockupView *)self contentView];
  [contentView sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  mediaView = [(ASCAdLockupView *)self mediaView];
  [mediaView sizeThatFits:{width, height}];
  v13 = v12;

  if (v13 > 2.22044605e-16)
  {
    objc_opt_self();
    v13 = v13 + 10.0;
  }

  v14 = v10 + v13;
  if (![(ASCAdLockupView *)self isAdMarkerHidden])
  {
    [(ASCAdLockupView *)self layoutMargins];
    v16 = v15;
    +[ASCAdLockupView topContentViewSpacing];
    v14 = v14 + v16 + v17;
    if (![(ASCAdLockupView *)self isLargeSizeClass])
    {
      adTransparencyContainer = [(ASCAdLockupView *)self adTransparencyContainer];
      [(ASCAdLockupView *)self bounds];
      [adTransparencyContainer sizeThatFits:{v19, v20}];
      v22 = v21;

      v14 = v14 + v22;
    }
  }

  v23 = v8;
  v24 = v14;
  result.height = v24;
  result.width = v23;
  return result;
}

- (void)layoutAdContentView
{
  [(ASCAdLockupView *)self bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  IsEmpty = CGRectIsEmpty(v21);
  contentView = [(ASCAdLockupView *)self contentView];
  v19 = contentView;
  if (IsEmpty)
  {
    v9 = x;
    v10 = y;
    v11 = width;
    v12 = height;
  }

  else
  {
    [contentView sizeThatFits:{width, height}];
    v14 = v13;
    v16 = v15;

    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    if (vabdd_f64(CGRectGetWidth(v22), v14) > 1.0 || (v23.origin.x = x, v23.origin.y = y, v23.size.width = width, v23.size.height = height, vabdd_f64(CGRectGetHeight(v23), v16) > 1.0))
    {
      if (layoutAdContentView_onceToken != -1)
      {
        [ASCAdLockupView layoutAdContentView];
      }
    }

    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    MinX = CGRectGetMinX(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v18 = floor(CGRectGetMidY(v25) + v16 * -0.5);
    contentView = [(ASCAdLockupView *)self contentView];
    v19 = contentView;
    v9 = MinX;
    v10 = v18;
    v11 = v14;
    v12 = v16;
  }

  [contentView setFrame:{v9, v10, v11, v12}];
}

void __38__ASCAdLockupView_layoutAdContentView__block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = 136446210;
    v1 = "[ASCAdLockupView layoutAdContentView]_block_invoke";
    _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "*** %{public}s: Frame size does not match intrinsicContentSize, break on _ASCLockupView_incorrectFrameSize to debug", &v0, 0xCu);
  }
}

- (void)layoutSubviews
{
  v61.receiver = self;
  v61.super_class = ASCAdLockupView;
  [(ASCAdLockupView *)&v61 layoutSubviews];
  [(ASCAdLockupView *)self layoutAdContentView];
  [(ASCAdLockupView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v60 = v5;
  if ([(ASCAdLockupView *)self isAdMarkerHidden])
  {
    v11 = v4;
    v12 = 0.0;
  }

  else
  {
    adTransparencyContainer = [(ASCAdLockupView *)self adTransparencyContainer];
    v58 = v10;
    [adTransparencyContainer sizeThatFits:{v8, v10}];
    v15 = v14;

    [(ASCAdLockupView *)self layoutMargins];
    v17 = v8 * 0.5 - v16;
    if ([(ASCAdLockupView *)self isLargeSizeClass])
    {
      contentView = [(ASCAdLockupView *)self contentView];
      lockupSize = [contentView lockupSize];
      traitCollection = [(ASCAdLockupView *)self traitCollection];
      v21 = ASCLockupViewSizeGetIconSize(lockupSize, [traitCollection horizontalSizeClass]) * 0.5;

      v17 = v17 - (v21 + 15.0);
    }

    [(ASCAdLockupView *)self layoutMargins];
    v23 = v22;
    [(ASCAdLockupView *)self layoutMargins];
    v25 = v24;
    asc_layoutTraitEnvironment = [(UIView *)self asc_layoutTraitEnvironment];
    v27 = v15;
    v56 = v15;
    v11 = v4;
    [__ASCLayoutProxy rectWithLayoutDirectionForRect:asc_layoutTraitEnvironment inTraitEnvironment:v23 relativeTo:v25, v17, v27, v4, v6, v8, v58];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    adTransparencyContainer2 = [(ASCAdLockupView *)self adTransparencyContainer];
    [adTransparencyContainer2 setFrame:{v29, v31, v33, v35}];

    if ([(ASCAdLockupView *)self isLargeSizeClass])
    {
      [(ASCAdLockupView *)self layoutMargins];
    }

    else
    {
      v62.origin.x = v23;
      v62.origin.y = v25;
      v62.size.width = v55;
      v62.size.height = v56;
      MaxY = CGRectGetMaxY(v62);
    }

    v38 = MaxY;
    +[ASCAdLockupView topContentViewSpacing];
    v12 = v38 + v39;
    v10 = v58;
  }

  contentView2 = [(ASCAdLockupView *)self contentView];
  [contentView2 sizeThatFits:{v8, v10}];
  v59 = v41;
  v43 = v42;

  request = [(ASCAdLockupView *)self request];
  context = [request context];
  IsAdGridContext = ASCLockupContextIsAdGridContext(context);

  if (IsAdGridContext)
  {
    v63.origin.x = v11;
    v47 = v60;
    v63.origin.y = v60;
    v63.size.width = v8;
    v63.size.height = v10;
    v12 = CGRectGetMaxY(v63) - v43;
    v48 = 0.0;
    v57 = v10;
  }

  else
  {
    objc_opt_self();
    v49 = v10 - v43 + -10.0;
    if (v49 < 0.0)
    {
      v49 = 0.0;
    }

    v57 = v49;
    v48 = v12 + v43 + 10.0;
    v47 = v60;
  }

  contentView3 = [(ASCAdLockupView *)self contentView];
  [contentView3 setFrame:{0.0, v12, v59, v43}];

  mediaView = [(ASCAdLockupView *)self mediaView];
  [mediaView setFrame:{0.0, v48, v8, v57}];

  materialBackgroundView = [(ASCAdLockupView *)self materialBackgroundView];
  [materialBackgroundView setFrame:{v11, v47, v8, v10}];

  gradientBackgroundView = [(ASCAdLockupView *)self gradientBackgroundView];
  [gradientBackgroundView setFrame:{v11, v47, v8, v10}];

  lockupMediaPresenter = [(ASCAdLockupView *)self lockupMediaPresenter];
  [lockupMediaPresenter viewDidLayoutSubviews];
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  adTransparencyContainer = [(ASCAdLockupView *)self adTransparencyContainer];
  [(ASCDescriber *)v3 addObject:adTransparencyContainer withName:@"adTransparencyContainer"];

  contentView = [(ASCAdLockupView *)self contentView];
  [(ASCDescriber *)v3 addObject:contentView withName:@"contentView"];

  mediaView = [(ASCAdLockupView *)self mediaView];
  [(ASCDescriber *)v3 addObject:mediaView withName:@"mediaView"];

  offerPresenter = [(ASCAdLockupView *)self offerPresenter];
  [(ASCDescriber *)v3 addObject:offerPresenter withName:@"offerPresenter"];

  lockupPresenter = [(ASCAdLockupView *)self lockupPresenter];
  [(ASCDescriber *)v3 addObject:lockupPresenter withName:@"lockupPresenter"];

  adLockupPresenter = [(ASCAdLockupView *)self adLockupPresenter];
  [(ASCDescriber *)v3 addObject:adLockupPresenter withName:@"adLockupPresenter"];

  lockupMediaPresenter = [(ASCAdLockupView *)self lockupMediaPresenter];
  [(ASCDescriber *)v3 addObject:lockupMediaPresenter withName:@"lockupMediaPresenter"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ASCAdLockupView isAdMarkerHidden](self, "isAdMarkerHidden")}];
  [(ASCDescriber *)v3 addObject:v11 withName:@"adMarkerHidden"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (void)presentProductDetailsViewController
{
  lockup = [(ASCAdLockupView *)self lockup];
  if (lockup)
  {
    metricsParametersForPresentingProductDetails = [(ASCAdLockupView *)self metricsParametersForPresentingProductDetails];
    presentingViewController = [(ASCAdLockupView *)self presentingViewController];
    if (presentingViewController)
    {
      v6 = [ASCLockupProductDetails alloc];
      storeSheetHostBundleID = [(ASCAdLockupView *)self storeSheetHostBundleID];
      storeSheetUsageContext = [(ASCAdLockupView *)self storeSheetUsageContext];
      v9 = [(ASCLockupProductDetails *)v6 initWithLockup:lockup storeSheetHostBundleID:storeSheetHostBundleID storeSheetUsageContext:storeSheetUsageContext parameters:metricsParametersForPresentingProductDetails];

      objc_initWeak(&location, self);
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __54__ASCAdLockupView_presentProductDetailsViewController__block_invoke;
      v14 = &unk_2781CCA70;
      objc_copyWeak(&v15, &location);
      [(ASCLockupProductDetails *)v9 presentFromViewController:presentingViewController animated:1 completion:&v11];
      v10 = [(ASCAdLockupView *)self metricsPresenter:v11];
      [v10 viewDidAction];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __54__ASCAdLockupView_presentProductDetailsViewController__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((WeakRetained[204] & 0x80) != 0 && a3)
  {
    v7 = WeakRetained;
    v6 = [WeakRetained delegate];
    [v6 adLockupView:v7 didPresentProductDetails:a2];

    WeakRetained = v7;
  }
}

- (void)performLockupAction
{
  lockupPresenter = [(ASCAdLockupView *)self lockupPresenter];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__ASCAdLockupView_performLockupAction__block_invoke;
  v4[3] = &unk_2781CCA98;
  v4[4] = self;
  [lockupPresenter retryRequestIfNeeded:v4];
}

uint64_t __38__ASCAdLockupView_performLockupAction__block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    result = [*(result + 32) automaticallyPresentsProductDetails];
    if (result)
    {
      v3 = *(v2 + 32);

      return [v3 presentProductDetailsViewController];
    }
  }

  return result;
}

- (void)performOfferAction
{
  offerPresenter = [(ASCAdLockupView *)self offerPresenter];
  [offerPresenter performOfferAction];
}

- (void)performAdTransparencyAction
{
  if ((*&self->_delegateRespondsTo & 0x200) != 0)
  {
    delegate = [(ASCAdLockupView *)self delegate];
    [delegate adLockupViewDidSelectAdMarker:self];
  }
}

- (id)metricsActivityForPresentingProductDetails
{
  if ((*&self->_delegateRespondsTo & 0x10) != 0)
  {
    delegate = [(ASCAdLockupView *)self delegate];
    offerPresenter = [(ASCAdLockupView *)self offerPresenter];
    mostRecentAppState = [offerPresenter mostRecentAppState];
    v2 = [delegate metricsActivityForPresentingProductDetailsOfAdLockupView:self inState:mostRecentAppState];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)metricsParametersFromMetricsActivity:(id)activity
{
  v22 = *MEMORY[0x277D85DE8];
  fields = [activity fields];
  v4 = [fields objectForKeyedSubscript:@"redirectUrlParameters"];

  if (v4)
  {
    v5 = [@"https://?" stringByAppendingString:v4];
    v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v5];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    queryItems = [v6 queryItems];
    v9 = [queryItems countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(queryItems);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          value = [v13 value];
          name = [v13 name];
          [dictionary setObject:value forKeyedSubscript:name];
        }

        v10 = [queryItems countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (id)metricsParametersForPresentingProductDetails
{
  metricsActivityForPresentingProductDetails = [(ASCAdLockupView *)self metricsActivityForPresentingProductDetails];
  v4 = [(ASCAdLockupView *)self metricsParametersFromMetricsActivity:metricsActivityForPresentingProductDetails];

  return v4;
}

- (void)lockupPresenterDidBeginRequest
{
  if (*&self->_delegateRespondsTo)
  {
    delegate = [(ASCAdLockupView *)self delegate];
    [delegate adLockupViewDidBeginRequest:self];
  }
}

- (void)lockupPresenterDidFinishRequest
{
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    delegate = [(ASCAdLockupView *)self delegate];
    [delegate adLockupViewDidFinishRequest:self];
  }
}

- (void)lockupPresenterDidFailRequestWithError:(id)error
{
  if ((*&self->_delegateRespondsTo & 4) != 0)
  {
    errorCopy = error;
    delegate = [(ASCAdLockupView *)self delegate];
    [delegate adLockupView:self didFailRequestWithError:errorCopy];
  }
}

- (void)offerPresenterDidObserveChangeToState:(id)state
{
  if ((*&self->_delegateRespondsTo & 8) != 0)
  {
    stateCopy = state;
    delegate = [(ASCAdLockupView *)self delegate];
    [delegate adLockupView:self appStateDidChange:stateCopy];
  }
}

- (void)offerPresenterWillPerformActionOfOffer:(id)offer inState:(id)state withActivity:(id *)activity inContext:(id *)context withPaymentSheetView:(id)view
{
  offerCopy = offer;
  stateCopy = state;
  viewCopy = view;
  delegateRespondsTo = self->_delegateRespondsTo;
  if ((delegateRespondsTo & 0x20) != 0)
  {
    delegate = [(ASCAdLockupView *)self delegate];
    *activity = [delegate metricsActivityForAdLockupView:self toPerformActionOfOffer:offerCopy inState:stateCopy];

    delegateRespondsTo = self->_delegateRespondsTo;
  }

  if ((delegateRespondsTo & 0x100) != 0)
  {
    delegate2 = [(ASCAdLockupView *)self delegate];
    [delegate2 adLockupView:self didSelectOfferWithState:stateCopy];
  }
}

- (void)offerPresenterPreprocessOffer:(id)offer inState:(id)state completionBlock:(id)block
{
  offerCopy = offer;
  stateCopy = state;
  blockCopy = block;
  v11 = blockCopy;
  if ((*&self->_delegateRespondsTo & 0x2000) != 0)
  {
    delegate = [(ASCAdLockupView *)self delegate];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__ASCAdLockupView_offerPresenterPreprocessOffer_inState_completionBlock___block_invoke;
    v13[3] = &unk_2781CC480;
    v14 = v11;
    [delegate adLockupView:self preprocessOffer:offerCopy inState:stateCopy completionBlock:v13];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

- (void)lockupMediaPresenterDidBeginScreenshotsFetchRequest
{
  if ((*&self->_delegateRespondsTo & 0x400) != 0)
  {
    delegate = [(ASCAdLockupView *)self delegate];
    [delegate adLockupViewDidBeginScreenshotsFetchRequest:self];
  }
}

- (void)lockupMediaPresenterDidCancelScreenshotsFetchRequest
{
  if ((*&self->_delegateRespondsTo & 0x800) != 0)
  {
    delegate = [(ASCAdLockupView *)self delegate];
    [delegate adLockupViewDidCancelScreenshotsFetchRequest:self];
  }
}

- (void)lockupMediaPresenterDidFinishScreenshotsFetchRequest
{
  if ((*&self->_delegateRespondsTo & 0x1000) != 0)
  {
    delegate = [(ASCAdLockupView *)self delegate];
    [delegate adLockupViewDidFinishScreenshotsFetchRequest:self];
  }
}

- (void)lockupMediaPresenterVideoStateDidChange:(int64_t)change
{
  if ((*&self->_delegateRespondsTo & 0x4000) != 0)
  {
    delegate = [(ASCAdLockupView *)self delegate];
    [delegate adLockupView:self videoStateDidChange:change];
  }
}

- (ASCAdLockupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)presentingViewController
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Lockup view %@ could not find view controller to present from.", &v1, 0xCu);
}

@end
@interface ASCAdLockupView
- (ASCAdLockupView)initWithCoder:(id)a3;
- (ASCAdLockupView)initWithFrame:(CGRect)a3;
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
- (CGSize)sizeThatFits:(CGSize)a3;
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
- (id)metricsParametersFromMetricsActivity:(id)a3;
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
- (void)lockupMediaPresenterVideoStateDidChange:(int64_t)a3;
- (void)lockupPresenterDidBeginRequest;
- (void)lockupPresenterDidFailRequestWithError:(id)a3;
- (void)lockupPresenterDidFinishRequest;
- (void)offerPresenterDidObserveChangeToState:(id)a3;
- (void)offerPresenterPreprocessOffer:(id)a3 inState:(id)a4 completionBlock:(id)a5;
- (void)offerPresenterWillPerformActionOfOffer:(id)a3 inState:(id)a4 withActivity:(id *)a5 inContext:(id *)a6 withPaymentSheetView:(id)a7;
- (void)performAdTransparencyAction;
- (void)performLockupAction;
- (void)performOfferAction;
- (void)presentProductDetailsViewController;
- (void)presentingViewController;
- (void)setAdMarkerHidden:(BOOL)a3;
- (void)setAdTransparencyButtonHidden:(BOOL)a3;
- (void)setAppearMetricsActivity:(id)a3;
- (void)setAutomaticallyGeneratesAppearMetrics:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setDeveloperName:(id)a3;
- (void)setGroup:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLayoutMargins:(UIEdgeInsets)a3;
- (void)setLockup:(id)a3;
- (void)setOfferTheme:(id)a3;
- (void)setRequest:(id)a3;
- (void)setVideoLoopingEnabled:(BOOL)a3;
- (void)setVideoMuted:(BOOL)a3;
- (void)updateLayoutMarginsForContext:(id)a3;
- (void)updateVisibility:(int64_t)a3;
@end

@implementation ASCAdLockupView

- (NSString)accessibilityUserRating
{
  v3 = MEMORY[0x277CCACA8];
  v4 = ASCLocalizedFormatString(@"AX_USER_RATINGS");
  v5 = [(ASCAdLockupView *)self lockup];
  v6 = [v5 productRatingBadge];
  v7 = [v3 localizedStringWithFormat:v4, v6];

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = ASCAdLockupView;
  v3 = *MEMORY[0x277D76548] | [(ASCAdLockupView *)&v8 accessibilityTraits];
  v4 = [(ASCAdLockupView *)self contentView];
  v5 = [v4 isEnabled];

  v6 = *MEMORY[0x277D76580];
  if (v5)
  {
    v6 = 0;
  }

  return v3 | v6;
}

- (id)accessibilityLabel
{
  v3 = [(ASCAdLockupView *)self contentView];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:6];
  v5 = [(ASCAdLockupView *)self accessibilityAdvertisement];
  [v4 addObject:v5];

  v6 = [v3 headingLabelIfLoaded];

  if (v6)
  {
    v7 = [v3 headingLabelIfLoaded];
    [v4 addObject:v7];
  }

  v8 = [v3 titleLabel];
  [v4 addObject:v8];

  v9 = [v3 subtitleLabel];
  [v4 addObject:v9];

  v10 = [v3 offerStatusLabelIfLoaded];

  if (v10)
  {
    v11 = [v3 offerStatusLabelIfLoaded];
    [v4 addObject:v11];
  }

  v12 = ASCAXLabelForElements(v4);

  return v12;
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [(ASCAdLockupView *)self accessibilityAdvertisement];
  v4 = [(ASCAdLockupView *)self adTransparencyContainer];
  v5 = [v4 adTransparencyButton];
  [v5 setAccessibilityLabel:v3];

  v6 = *MEMORY[0x277D76548];
  v7 = [(ASCAdLockupView *)self adTransparencyContainer];
  v8 = [v7 adTransparencyButton];
  [v8 setAccessibilityTraits:v6];

  v9 = [(ASCAdLockupView *)self adTransparencyContainer];
  v10 = [v9 adTransparencyButton];
  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  return v11;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [(ASCAdLockupView *)self contentView];
  v4 = [v3 offerButton];
  v8[0] = v4;
  v5 = [(ASCAdLockupView *)self mediaView];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

- (BOOL)accessibilityActivate
{
  v3 = [(ASCAdLockupView *)self contentView];
  v4 = [v3 isEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ASCAdLockupView *)self contentView];
  [v5 sendActionsForControlEvents:64];

  return [(ASCAdLockupView *)self automaticallyPresentsProductDetails];
}

- (id)accessibilityIdentifier
{
  v3 = [(ASCAdLockupView *)self lockup];
  v4 = [v3 id];
  v5 = [v4 stringValue];

  v6 = MEMORY[0x277CCACA8];
  if (v5)
  {
    v7 = [(ASCAdLockupView *)self lockup];
    v8 = [v7 id];
    v9 = [v8 stringValue];
    v10 = [v6 stringWithFormat:@"AdLockup[id=%@]", v9];
    v11 = ASCAXIdentifierWithSuffix(v10);
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"AdLockup"];
    v11 = ASCAXIdentifierWithSuffix(v7);
  }

  return v11;
}

- (ASCAdLockupView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v40[1] = *MEMORY[0x277D85DE8];
  +[ASCEligibility assertCurrentProcessEligibility];
  v39.receiver = self;
  v39.super_class = ASCAdLockupView;
  v8 = [(ASCAdLockupView *)&v39 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    v8->_automaticallyPresentsProductDetails = 1;
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

- (ASCAdLockupView)initWithCoder:(id)a3
{
  [(ASCAdLockupView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UIViewController)presentingViewController
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(ASCAdLockupView *)self delegate];
  v4 = [v3 presentingViewControllerForAdLockupView:self];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(ASCAdLockupView *)self window];
    v5 = [v6 rootViewController];

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = self;
        _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Lockup view %@ is presenting from root view controller", &v9, 0xCu);
      }

      v7 = v5;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(ASCAdLockupView *)self presentingViewController];
    }
  }

  return v5;
}

- (void)setAdMarkerHidden:(BOOL)a3
{
  v3 = a3;
  self->_adMarkerHidden = a3;
  v5 = [(ASCAdLockupView *)self adTransparencyContainer];
  [v5 setHidden:v3];

  v6 = [(ASCAdLockupView *)self request];
  v7 = [v6 context];
  [(ASCAdLockupView *)self updateLayoutMarginsForContext:v7];

  [(ASCAdLockupView *)self setNeedsLayout];

  [(ASCAdLockupView *)self invalidateIntrinsicContentSize];
}

- (ASCLockup)lockup
{
  v2 = [(ASCAdLockupView *)self lockupPresenter];
  v3 = [v2 lockup];

  return v3;
}

- (void)setLockup:(id)a3
{
  v4 = a3;
  v5 = [(ASCAdLockupView *)self lockupPresenter];
  [v5 setLockup:v4];
}

- (ASCLockupViewGroup)group
{
  v2 = [(ASCAdLockupView *)self lockupPresenter];
  v3 = [v2 group];

  return v3;
}

- (void)setGroup:(id)a3
{
  v4 = a3;
  v5 = [(ASCAdLockupView *)self lockupPresenter];
  [v5 setGroup:v4];
}

- (ASCLockupRequest)request
{
  v2 = [(ASCAdLockupView *)self lockupPresenter];
  v3 = [v2 request];

  return v3;
}

- (void)setRequest:(id)a3
{
  v39 = a3;
  v4 = [(ASCAdLockupView *)self request];
  v5 = [v4 context];

  v6 = [v39 context];
  v7 = [(ASCAdLockupView *)self mediaView];
  [v7 setContext:v6];

  v8 = [v39 context];
  LOBYTE(v7) = [v8 isEqualToString:v5];

  if ((v7 & 1) == 0)
  {
    v9 = [v39 context];
    [(ASCAdLockupView *)self updateLayoutMarginsForContext:v9];
  }

  v10 = [v39 context];
  IsAdMaterialContext = ASCLockupContextIsAdMaterialContext(v10);

  if (IsAdMaterialContext)
  {
    v12 = [(ASCAdLockupView *)self materialBackgroundView];

    if (!v12)
    {
      v13 = [ASCMaterialBackgroundView alloc];
      v14 = [(ASCMaterialBackgroundView *)v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      materialBackgroundView = self->_materialBackgroundView;
      self->_materialBackgroundView = v14;

      v16 = self->_materialBackgroundView;
      v17 = [(ASCAdLockupView *)self lockupMediaPresenter];
      [v17 setBackgroundView:v16];

      [(ASCAdLockupView *)self insertSubview:self->_materialBackgroundView atIndex:0];
    }

    v18 = [(ASCAdLockupView *)self adTransparencyContainer];
    [v18 setBackgroundHidden:1];

    v19 = [(ASCAdLockupView *)self materialBackgroundView];
    [v19 setHidden:0];

    v20 = [(ASCAdLockupView *)self gradientBackgroundView];
    [v20 setHidden:1];

    v21 = +[ASCStaticLockupTheme adTheme];
LABEL_11:
    v33 = v21;
    v34 = [(ASCAdLockupView *)self contentView];
    [v34 setLockupTheme:v33];

    goto LABEL_13;
  }

  v22 = [v39 context];
  IsAdGridContext = ASCLockupContextIsAdGridContext(v22);

  if (IsAdGridContext)
  {
    v24 = [(ASCAdLockupView *)self gradientBackgroundView];

    if (!v24)
    {
      v25 = [ASCGradientBackgroundView alloc];
      v26 = [(ASCGradientBackgroundView *)v25 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      gradientBackgroundView = self->_gradientBackgroundView;
      self->_gradientBackgroundView = v26;

      v28 = self->_gradientBackgroundView;
      v29 = [(ASCAdLockupView *)self mediaView];
      [(ASCAdLockupView *)self insertSubview:v28 aboveSubview:v29];
    }

    v30 = [(ASCAdLockupView *)self adTransparencyContainer];
    [v30 setBackgroundHidden:0];

    v31 = [(ASCAdLockupView *)self materialBackgroundView];
    [v31 setHidden:1];

    v32 = [(ASCAdLockupView *)self gradientBackgroundView];
    [v32 setHidden:0];

    v21 = +[ASCStaticLockupTheme adWhiteTheme];
    goto LABEL_11;
  }

  v35 = [(ASCAdLockupView *)self adTransparencyContainer];
  [v35 setBackgroundHidden:1];

  v36 = [(ASCAdLockupView *)self materialBackgroundView];
  [v36 setHidden:1];

  v37 = [(ASCAdLockupView *)self gradientBackgroundView];
  [v37 setHidden:1];

  v33 = [(ASCAdLockupView *)self contentView];
  [v33 setLockupTheme:0];
LABEL_13:

  v38 = [(ASCAdLockupView *)self lockupPresenter];
  [v38 setRequest:v39];
}

- (id)context
{
  v2 = [(ASCAdLockupView *)self request];
  v3 = [v2 context];

  return v3;
}

- (void)setAdTransparencyButtonHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(ASCAdLockupView *)self isAdMarkerHidden];
  v6 = [(ASCAdLockupView *)self adTransparencyContainer];
  [v6 setHidden:v5 | v3];

  [(ASCAdLockupView *)self setNeedsLayout];
}

- (void)setDeveloperName:(id)a3
{
  v4 = a3;
  v5 = [(ASCAdLockupView *)self adTransparencyContainer];
  [v5 setDeveloperName:v4];
}

- (void)setDelegate:(id)a3
{
  v20 = a3;
  objc_storeWeak(&self->_delegate, v20);
  v4 = v20;
  if (v20)
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
    v4 = v20;
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
  v2 = [(ASCAdLockupView *)self contentView];
  v3 = [v2 isHighlighted];

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v4 = [(ASCAdLockupView *)self contentView];
  [v4 setHighlighted:v3];
}

- (BOOL)automaticallyGeneratesAppearMetrics
{
  v2 = [(ASCAdLockupView *)self metricsPresenter];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)setAutomaticallyGeneratesAppearMetrics:(BOOL)a3
{
  v3 = a3;
  v4 = [(ASCAdLockupView *)self metricsPresenter];
  [v4 setEnabled:v3];
}

- (id)appearMetricsActivity
{
  v2 = [(ASCAdLockupView *)self metricsPresenter];
  v3 = [v2 activity];

  return v3;
}

- (void)setAppearMetricsActivity:(id)a3
{
  v4 = a3;
  v5 = [(ASCAdLockupView *)self metricsPresenter];
  [v5 setActivity:v4];
}

- (id)offerTheme
{
  v2 = [(ASCAdLockupView *)self contentView];
  v3 = [v2 offerTheme];

  return v3;
}

- (void)setOfferTheme:(id)a3
{
  v4 = a3;
  v5 = [(ASCAdLockupView *)self contentView];
  [v5 setOfferTheme:v4];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = ASCAdLockupView;
  [(ASCAdLockupView *)&v3 layoutMarginsDidChange];
  [(ASCAdLockupView *)self setNeedsLayout];
  [(ASCAdLockupView *)self invalidateIntrinsicContentSize];
}

- (void)setLayoutMargins:(UIEdgeInsets)a3
{
  v6.receiver = self;
  v6.super_class = ASCAdLockupView;
  [(ASCAdLockupView *)&v6 setLayoutMargins:a3.top, a3.left, a3.bottom, a3.right];
  v4 = [(ASCAdLockupView *)self request];
  v5 = [v4 context];
  [(ASCAdLockupView *)self updateLayoutMarginsForContext:v5];
}

- (void)updateLayoutMarginsForContext:(id)a3
{
  v4 = a3;
  [(ASCAdLockupView *)self layoutMargins];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (![(ASCAdLockupView *)self isAdMarkerHidden])
  {
    v6 = 0.0;
  }

  IsAdGridContext = ASCLockupContextIsAdGridContext(v4);

  if (!IsAdGridContext)
  {
    v10 = 0.0;
  }

  [(ASCAdLockupView *)self layoutMargins];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(ASCAdLockupView *)self contentView];
  [v20 setLayoutMargins:{v6, v8, v10, v12}];

  v21 = [(ASCAdLockupView *)self mediaView];
  [v21 setLayoutMargins:{0.0, v15, v17, v19}];
}

- (void)setHidden:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ASCAdLockupView;
  [(ASCAdLockupView *)&v5 setHidden:a3];
  v4 = [(ASCAdLockupView *)self metricsPresenter];
  [v4 viewDidSetHidden];
}

- (void)updateVisibility:(int64_t)a3
{
  if ((a3 - 1) >= 2)
  {
    if (a3)
    {
      return;
    }

    v4 = [(ASCAdLockupView *)self mediaView];
    v3 = [v4 videoView];
    [v3 playVideo];
  }

  else
  {
    v4 = [(ASCAdLockupView *)self mediaView];
    v3 = [v4 videoView];
    [v3 pauseVideo];
  }
}

- (BOOL)isVideoLoopingEnabled
{
  v2 = [(ASCAdLockupView *)self mediaView];
  v3 = [v2 isVideoLoopingEnabled];

  return v3;
}

- (void)setVideoLoopingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(ASCAdLockupView *)self mediaView];
  [v4 setVideoLoopingEnabled:v3];
}

- (BOOL)isVideoMuted
{
  v2 = [(ASCAdLockupView *)self mediaView];
  v3 = [v2 isVideoMuted];

  return v3;
}

- (void)setVideoMuted:(BOOL)a3
{
  v3 = a3;
  v4 = [(ASCAdLockupView *)self mediaView];
  [v4 setVideoMuted:v3];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = ASCAdLockupView;
  [(ASCAdLockupView *)&v4 didMoveToWindow];
  v3 = [(ASCAdLockupView *)self metricsPresenter];
  [v3 viewDidMoveToWindow];
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
  v3 = [(ASCAdLockupView *)self contentView];
  [(ASCAdLockupView *)self bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  v10 = [(ASCAdLockupView *)self mediaView];
  [v10 intrinsicContentSize];
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
      v17 = [(ASCAdLockupView *)self adTransparencyContainer];
      [(ASCAdLockupView *)self bounds];
      [v17 sizeThatFits:{v18, v19}];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ASCAdLockupView *)self contentView];
  [v6 sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = [(ASCAdLockupView *)self mediaView];
  [v11 sizeThatFits:{width, height}];
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
      v18 = [(ASCAdLockupView *)self adTransparencyContainer];
      [(ASCAdLockupView *)self bounds];
      [v18 sizeThatFits:{v19, v20}];
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
  v8 = [(ASCAdLockupView *)self contentView];
  v19 = v8;
  if (IsEmpty)
  {
    v9 = x;
    v10 = y;
    v11 = width;
    v12 = height;
  }

  else
  {
    [v8 sizeThatFits:{width, height}];
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
    v8 = [(ASCAdLockupView *)self contentView];
    v19 = v8;
    v9 = MinX;
    v10 = v18;
    v11 = v14;
    v12 = v16;
  }

  [v8 setFrame:{v9, v10, v11, v12}];
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
    v13 = [(ASCAdLockupView *)self adTransparencyContainer];
    v58 = v10;
    [v13 sizeThatFits:{v8, v10}];
    v15 = v14;

    [(ASCAdLockupView *)self layoutMargins];
    v17 = v8 * 0.5 - v16;
    if ([(ASCAdLockupView *)self isLargeSizeClass])
    {
      v18 = [(ASCAdLockupView *)self contentView];
      v19 = [v18 lockupSize];
      v20 = [(ASCAdLockupView *)self traitCollection];
      v21 = ASCLockupViewSizeGetIconSize(v19, [v20 horizontalSizeClass]) * 0.5;

      v17 = v17 - (v21 + 15.0);
    }

    [(ASCAdLockupView *)self layoutMargins];
    v23 = v22;
    [(ASCAdLockupView *)self layoutMargins];
    v25 = v24;
    v26 = [(UIView *)self asc_layoutTraitEnvironment];
    v27 = v15;
    v56 = v15;
    v11 = v4;
    [__ASCLayoutProxy rectWithLayoutDirectionForRect:v26 inTraitEnvironment:v23 relativeTo:v25, v17, v27, v4, v6, v8, v58];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = [(ASCAdLockupView *)self adTransparencyContainer];
    [v36 setFrame:{v29, v31, v33, v35}];

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

  v40 = [(ASCAdLockupView *)self contentView];
  [v40 sizeThatFits:{v8, v10}];
  v59 = v41;
  v43 = v42;

  v44 = [(ASCAdLockupView *)self request];
  v45 = [v44 context];
  IsAdGridContext = ASCLockupContextIsAdGridContext(v45);

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

  v50 = [(ASCAdLockupView *)self contentView];
  [v50 setFrame:{0.0, v12, v59, v43}];

  v51 = [(ASCAdLockupView *)self mediaView];
  [v51 setFrame:{0.0, v48, v8, v57}];

  v52 = [(ASCAdLockupView *)self materialBackgroundView];
  [v52 setFrame:{v11, v47, v8, v10}];

  v53 = [(ASCAdLockupView *)self gradientBackgroundView];
  [v53 setFrame:{v11, v47, v8, v10}];

  v54 = [(ASCAdLockupView *)self lockupMediaPresenter];
  [v54 viewDidLayoutSubviews];
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCAdLockupView *)self adTransparencyContainer];
  [(ASCDescriber *)v3 addObject:v4 withName:@"adTransparencyContainer"];

  v5 = [(ASCAdLockupView *)self contentView];
  [(ASCDescriber *)v3 addObject:v5 withName:@"contentView"];

  v6 = [(ASCAdLockupView *)self mediaView];
  [(ASCDescriber *)v3 addObject:v6 withName:@"mediaView"];

  v7 = [(ASCAdLockupView *)self offerPresenter];
  [(ASCDescriber *)v3 addObject:v7 withName:@"offerPresenter"];

  v8 = [(ASCAdLockupView *)self lockupPresenter];
  [(ASCDescriber *)v3 addObject:v8 withName:@"lockupPresenter"];

  v9 = [(ASCAdLockupView *)self adLockupPresenter];
  [(ASCDescriber *)v3 addObject:v9 withName:@"adLockupPresenter"];

  v10 = [(ASCAdLockupView *)self lockupMediaPresenter];
  [(ASCDescriber *)v3 addObject:v10 withName:@"lockupMediaPresenter"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ASCAdLockupView isAdMarkerHidden](self, "isAdMarkerHidden")}];
  [(ASCDescriber *)v3 addObject:v11 withName:@"adMarkerHidden"];

  v12 = [(ASCDescriber *)v3 finalizeDescription];

  return v12;
}

- (void)presentProductDetailsViewController
{
  v3 = [(ASCAdLockupView *)self lockup];
  if (v3)
  {
    v4 = [(ASCAdLockupView *)self metricsParametersForPresentingProductDetails];
    v5 = [(ASCAdLockupView *)self presentingViewController];
    if (v5)
    {
      v6 = [ASCLockupProductDetails alloc];
      v7 = [(ASCAdLockupView *)self storeSheetHostBundleID];
      v8 = [(ASCAdLockupView *)self storeSheetUsageContext];
      v9 = [(ASCLockupProductDetails *)v6 initWithLockup:v3 storeSheetHostBundleID:v7 storeSheetUsageContext:v8 parameters:v4];

      objc_initWeak(&location, self);
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __54__ASCAdLockupView_presentProductDetailsViewController__block_invoke;
      v14 = &unk_2781CCA70;
      objc_copyWeak(&v15, &location);
      [(ASCLockupProductDetails *)v9 presentFromViewController:v5 animated:1 completion:&v11];
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
  v3 = [(ASCAdLockupView *)self lockupPresenter];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__ASCAdLockupView_performLockupAction__block_invoke;
  v4[3] = &unk_2781CCA98;
  v4[4] = self;
  [v3 retryRequestIfNeeded:v4];
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
  v2 = [(ASCAdLockupView *)self offerPresenter];
  [v2 performOfferAction];
}

- (void)performAdTransparencyAction
{
  if ((*&self->_delegateRespondsTo & 0x200) != 0)
  {
    v4 = [(ASCAdLockupView *)self delegate];
    [v4 adLockupViewDidSelectAdMarker:self];
  }
}

- (id)metricsActivityForPresentingProductDetails
{
  if ((*&self->_delegateRespondsTo & 0x10) != 0)
  {
    v4 = [(ASCAdLockupView *)self delegate];
    v5 = [(ASCAdLockupView *)self offerPresenter];
    v6 = [v5 mostRecentAppState];
    v2 = [v4 metricsActivityForPresentingProductDetailsOfAdLockupView:self inState:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)metricsParametersFromMetricsActivity:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a3 fields];
  v4 = [v3 objectForKeyedSubscript:@"redirectUrlParameters"];

  if (v4)
  {
    v5 = [@"https://?" stringByAppendingString:v4];
    v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v5];
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v6 queryItems];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 value];
          v15 = [v13 name];
          [v7 setObject:v14 forKeyedSubscript:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)metricsParametersForPresentingProductDetails
{
  v3 = [(ASCAdLockupView *)self metricsActivityForPresentingProductDetails];
  v4 = [(ASCAdLockupView *)self metricsParametersFromMetricsActivity:v3];

  return v4;
}

- (void)lockupPresenterDidBeginRequest
{
  if (*&self->_delegateRespondsTo)
  {
    v4 = [(ASCAdLockupView *)self delegate];
    [v4 adLockupViewDidBeginRequest:self];
  }
}

- (void)lockupPresenterDidFinishRequest
{
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    v4 = [(ASCAdLockupView *)self delegate];
    [v4 adLockupViewDidFinishRequest:self];
  }
}

- (void)lockupPresenterDidFailRequestWithError:(id)a3
{
  if ((*&self->_delegateRespondsTo & 4) != 0)
  {
    v5 = a3;
    v6 = [(ASCAdLockupView *)self delegate];
    [v6 adLockupView:self didFailRequestWithError:v5];
  }
}

- (void)offerPresenterDidObserveChangeToState:(id)a3
{
  if ((*&self->_delegateRespondsTo & 8) != 0)
  {
    v5 = a3;
    v6 = [(ASCAdLockupView *)self delegate];
    [v6 adLockupView:self appStateDidChange:v5];
  }
}

- (void)offerPresenterWillPerformActionOfOffer:(id)a3 inState:(id)a4 withActivity:(id *)a5 inContext:(id *)a6 withPaymentSheetView:(id)a7
{
  v16 = a3;
  v11 = a4;
  v12 = a7;
  delegateRespondsTo = self->_delegateRespondsTo;
  if ((delegateRespondsTo & 0x20) != 0)
  {
    v14 = [(ASCAdLockupView *)self delegate];
    *a5 = [v14 metricsActivityForAdLockupView:self toPerformActionOfOffer:v16 inState:v11];

    delegateRespondsTo = self->_delegateRespondsTo;
  }

  if ((delegateRespondsTo & 0x100) != 0)
  {
    v15 = [(ASCAdLockupView *)self delegate];
    [v15 adLockupView:self didSelectOfferWithState:v11];
  }
}

- (void)offerPresenterPreprocessOffer:(id)a3 inState:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if ((*&self->_delegateRespondsTo & 0x2000) != 0)
  {
    v12 = [(ASCAdLockupView *)self delegate];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__ASCAdLockupView_offerPresenterPreprocessOffer_inState_completionBlock___block_invoke;
    v13[3] = &unk_2781CC480;
    v14 = v11;
    [v12 adLockupView:self preprocessOffer:v8 inState:v9 completionBlock:v13];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (void)lockupMediaPresenterDidBeginScreenshotsFetchRequest
{
  if ((*&self->_delegateRespondsTo & 0x400) != 0)
  {
    v4 = [(ASCAdLockupView *)self delegate];
    [v4 adLockupViewDidBeginScreenshotsFetchRequest:self];
  }
}

- (void)lockupMediaPresenterDidCancelScreenshotsFetchRequest
{
  if ((*&self->_delegateRespondsTo & 0x800) != 0)
  {
    v4 = [(ASCAdLockupView *)self delegate];
    [v4 adLockupViewDidCancelScreenshotsFetchRequest:self];
  }
}

- (void)lockupMediaPresenterDidFinishScreenshotsFetchRequest
{
  if ((*&self->_delegateRespondsTo & 0x1000) != 0)
  {
    v4 = [(ASCAdLockupView *)self delegate];
    [v4 adLockupViewDidFinishScreenshotsFetchRequest:self];
  }
}

- (void)lockupMediaPresenterVideoStateDidChange:(int64_t)a3
{
  if ((*&self->_delegateRespondsTo & 0x4000) != 0)
  {
    v6 = [(ASCAdLockupView *)self delegate];
    [v6 adLockupView:self videoStateDidChange:a3];
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
  v2 = a1;
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Lockup view %@ could not find view controller to present from.", &v1, 0xCu);
}

@end
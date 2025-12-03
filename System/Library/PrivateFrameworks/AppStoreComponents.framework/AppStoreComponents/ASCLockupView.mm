@interface ASCLockupView
- (ASCLockup)lockup;
- (ASCLockupRequest)request;
- (ASCLockupView)initWithCoder:(id)coder;
- (ASCLockupView)initWithFrame:(CGRect)frame;
- (ASCLockupViewDelegate)delegate;
- (ASCLockupViewGroup)group;
- (ASCMetricsActivity)appearMetricsActivity;
- (ASCOfferTheme)offerTheme;
- (BOOL)accessibilityActivate;
- (BOOL)automaticallyGeneratesAppearMetrics;
- (BOOL)isHighlighted;
- (BOOL)showsPlaceholderContent;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)description;
- (NSString)lockupSize;
- (NSString)presentingSceneBundleIdentifier;
- (NSString)presentingSceneIdentifier;
- (UIViewController)presentingViewController;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)preferredProductDetailsPresentationContext;
- (unint64_t)accessibilityTraits;
- (void)didMoveToWindow;
- (void)invalidateIntrinsicContentSize;
- (void)layoutContentView;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)lockupPresenterDidBeginRequest;
- (void)lockupPresenterDidFailRequestWithError:(id)error;
- (void)lockupPresenterDidFinishRequest;
- (void)offerPresenterDidObserveChangeToState:(id)state;
- (void)offerPresenterPreprocessOffer:(id)offer inState:(id)state completionBlock:(id)block;
- (void)offerPresenterWillPerformActionOfOffer:(id)offer inState:(id)state withActivity:(id *)activity inContext:(id *)context withPaymentSheetView:(id)view;
- (void)performLockupAction;
- (void)presentProductDetailsViewController;
- (void)presentingViewController;
- (void)productDetailsUserDidInteractWithApp:(id)app interactionType:(id)type;
- (void)setAppearMetricsActivity:(id)activity;
- (void)setAutomaticallyGeneratesAppearMetrics:(BOOL)metrics;
- (void)setCampaignToken:(id)token;
- (void)setDelegate:(id)delegate;
- (void)setGroup:(id)group;
- (void)setHidden:(BOOL)hidden;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
- (void)setLockup:(id)lockup;
- (void)setLockupSize:(id)size;
- (void)setOfferTheme:(id)theme;
- (void)setProviderToken:(id)token;
- (void)setRequest:(id)request;
- (void)setShowsPlaceholderContent:(BOOL)content;
- (void)setViewRenderSpanProvider:(id)provider;
@end

@implementation ASCLockupView

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = ASCLockupView;
  v3 = *MEMORY[0x277D76548] | [(ASCLockupView *)&v8 accessibilityTraits];
  contentView = [(ASCLockupView *)self contentView];
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
  contentView = [(ASCLockupView *)self contentView];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  if ([contentView isOfferButtonOnlyLockup])
  {
    offerButton = [contentView offerButton];
LABEL_7:
    v10 = offerButton;
    [v3 addObject:offerButton];

    goto LABEL_8;
  }

  headingLabelIfLoaded = [contentView headingLabelIfLoaded];

  if (headingLabelIfLoaded)
  {
    headingLabelIfLoaded2 = [contentView headingLabelIfLoaded];
    [v3 addObject:headingLabelIfLoaded2];
  }

  titleLabel = [contentView titleLabel];
  [v3 addObject:titleLabel];

  subtitleLabel = [contentView subtitleLabel];
  [v3 addObject:subtitleLabel];

  offerStatusLabelIfLoaded = [contentView offerStatusLabelIfLoaded];

  if (offerStatusLabelIfLoaded)
  {
    offerButton = [contentView offerStatusLabelIfLoaded];
    goto LABEL_7;
  }

LABEL_8:
  v11 = ASCAXLabelForElements(v3);

  return v11;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v8[1] = *MEMORY[0x277D85DE8];
  contentView = [(ASCLockupView *)self contentView];
  if ([contentView isOfferButtonOnlyLockup])
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  else
  {
    contentView2 = [(ASCLockupView *)self contentView];
    offerButton = [contentView2 offerButton];
    v8[0] = offerButton;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  return v4;
}

- (BOOL)accessibilityActivate
{
  contentView = [(ASCLockupView *)self contentView];
  isEnabled = [contentView isEnabled];

  if (!isEnabled)
  {
    return 0;
  }

  contentView2 = [(ASCLockupView *)self contentView];
  isOfferButtonOnlyLockup = [contentView2 isOfferButtonOnlyLockup];

  contentView3 = [(ASCLockupView *)self contentView];
  v8 = contentView3;
  if (isOfferButtonOnlyLockup)
  {
    offerButton = [contentView3 offerButton];
    [offerButton sendActionsForControlEvents:64];

    return 1;
  }

  else
  {
    [contentView3 sendActionsForControlEvents:64];

    return [(ASCLockupView *)self automaticallyPresentsProductDetails];
  }
}

- (id)accessibilityIdentifier
{
  lockup = [(ASCLockupView *)self lockup];
  v4 = [lockup id];
  stringValue = [v4 stringValue];

  v6 = MEMORY[0x277CCACA8];
  if (stringValue)
  {
    lockup2 = [(ASCLockupView *)self lockup];
    v8 = [lockup2 id];
    stringValue2 = [v8 stringValue];
    v10 = [v6 stringWithFormat:@"Lockup[id=%@]", stringValue2];
    v11 = ASCAXIdentifierWithSuffix(v10);
  }

  else
  {
    lockup2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Lockup"];
    v11 = ASCAXIdentifierWithSuffix(lockup2);
  }

  return v11;
}

- (ASCLockupView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  +[ASCEligibility assertCurrentProcessEligibility];
  v22.receiver = self;
  v22.super_class = ASCLockupView;
  height = [(ASCLockupView *)&v22 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    height->_automaticallyPresentsProductDetails = 1;
    v10 = [ASCLockupContentView alloc];
    v11 = [(ASCLockupContentView *)v10 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    contentView = v9->_contentView;
    v9->_contentView = v11;

    v13 = [[ASCOfferPresenter alloc] initWithView:v9->_contentView];
    offerPresenter = v9->_offerPresenter;
    v9->_offerPresenter = v13;

    v15 = [[ASCAppearMetricsPresenter alloc] initWithView:v9];
    metricsPresenter = v9->_metricsPresenter;
    v9->_metricsPresenter = v15;

    v17 = [[ASCCustomLockupContentProvider alloc] initWithLockupView:v9];
    v18 = [[ASCLockupPresenter alloc] initWithView:v9->_contentView customContentProvider:v17 offerPresenter:v9->_offerPresenter metricsPresenter:v9->_metricsPresenter];
    lockupPresenter = v9->_lockupPresenter;
    v9->_lockupPresenter = v18;

    [(ASCLockupPresenter *)v9->_lockupPresenter setObserver:v9];
    [(ASCOfferPresenter *)v9->_offerPresenter setObserver:v9];
    [(ASCLockupView *)v9 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(ASCLockupView *)v9 setInsetsLayoutMarginsFromSafeArea:0];
    v20 = +[ASCSemanticColor tint];
    [(ASCLockupView *)v9 setTintColor:v20];

    [(ASCLockupContentView *)v9->_contentView addOfferTarget:v9->_offerPresenter action:sel_performOfferAction];
    [(ASCLockupContentView *)v9->_contentView addTarget:v9 action:sel_performLockupAction forControlEvents:64];
    [(ASCLockupView *)v9 addSubview:v9->_contentView];
  }

  return v9;
}

- (ASCLockupView)initWithCoder:(id)coder
{
  [(ASCLockupView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UIViewController)presentingViewController
{
  v11 = *MEMORY[0x277D85DE8];
  delegate = [(ASCLockupView *)self delegate];
  v4 = [delegate presentingViewControllerForLockupView:self];

  if (v4)
  {
    rootViewController = v4;
  }

  else
  {
    window = [(ASCLockupView *)self window];
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
      [ASCLockupView presentingViewController];
    }
  }

  return rootViewController;
}

- (NSString)lockupSize
{
  contentView = [(ASCLockupView *)self contentView];
  lockupSize = [contentView lockupSize];

  return lockupSize;
}

- (void)setLockupSize:(id)size
{
  sizeCopy = size;
  if (([ASCEligibility currentClientIsEligibleToUseLockupViewSize:sizeCopy]& 1) == 0)
  {
    sizeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Current process is not eligible to use %@ lockup view size", sizeCopy];
    v6 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v6 initWithName:*MEMORY[0x277CBE658] reason:sizeCopy userInfo:0]);
  }

  contentView = [(ASCLockupView *)self contentView];
  [contentView setLockupSize:sizeCopy];

  [(ASCLockupView *)self setNeedsLayout];
}

- (ASCLockup)lockup
{
  lockupPresenter = [(ASCLockupView *)self lockupPresenter];
  lockup = [lockupPresenter lockup];

  return lockup;
}

- (void)setLockup:(id)lockup
{
  lockupCopy = lockup;
  lockupPresenter = [(ASCLockupView *)self lockupPresenter];
  [lockupPresenter setLockup:lockupCopy];
}

- (ASCLockupViewGroup)group
{
  lockupPresenter = [(ASCLockupView *)self lockupPresenter];
  group = [lockupPresenter group];

  return group;
}

- (void)setGroup:(id)group
{
  groupCopy = group;
  lockupPresenter = [(ASCLockupView *)self lockupPresenter];
  [lockupPresenter setGroup:groupCopy];
}

- (ASCLockupRequest)request
{
  lockupPresenter = [(ASCLockupView *)self lockupPresenter];
  request = [lockupPresenter request];

  return request;
}

- (void)setRequest:(id)request
{
  requestCopy = request;
  context = [requestCopy context];
  IsWebBrowserContext = ASCLockupContextIsWebBrowserContext(context, v6);

  if (IsWebBrowserContext)
  {
    contentView2 = +[ASCStaticLockupTheme webBrowserTheme];
    contentView = [(ASCLockupView *)self contentView];
    [contentView setLockupTheme:contentView2];
  }

  else
  {
    contentView2 = [(ASCLockupView *)self contentView];
    [contentView2 setLockupTheme:0];
  }

  lockupPresenter = [(ASCLockupView *)self lockupPresenter];
  [lockupPresenter setRequest:requestCopy];
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
    v15 = (objc_opt_respondsToSelector() & 1) == 0;
    v4 = delegateCopy;
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2048;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xF7FF | v16;
  }

  else
  {
    *&self->_delegateRespondsTo &= 0xF000u;
  }
}

- (BOOL)isHighlighted
{
  contentView = [(ASCLockupView *)self contentView];
  isHighlighted = [contentView isHighlighted];

  return isHighlighted;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  contentView = [(ASCLockupView *)self contentView];
  [contentView setHighlighted:highlightedCopy];
}

- (BOOL)automaticallyGeneratesAppearMetrics
{
  metricsPresenter = [(ASCLockupView *)self metricsPresenter];
  isEnabled = [metricsPresenter isEnabled];

  return isEnabled;
}

- (void)setAutomaticallyGeneratesAppearMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  metricsPresenter = [(ASCLockupView *)self metricsPresenter];
  [metricsPresenter setEnabled:metricsCopy];
}

- (ASCMetricsActivity)appearMetricsActivity
{
  metricsPresenter = [(ASCLockupView *)self metricsPresenter];
  activity = [metricsPresenter activity];

  return activity;
}

- (void)setAppearMetricsActivity:(id)activity
{
  activityCopy = activity;
  metricsPresenter = [(ASCLockupView *)self metricsPresenter];
  [metricsPresenter setActivity:activityCopy];
}

- (ASCOfferTheme)offerTheme
{
  contentView = [(ASCLockupView *)self contentView];
  offerTheme = [contentView offerTheme];

  return offerTheme;
}

- (void)setOfferTheme:(id)theme
{
  themeCopy = theme;
  contentView = [(ASCLockupView *)self contentView];
  [contentView setOfferTheme:themeCopy];
}

- (void)setShowsPlaceholderContent:(BOOL)content
{
  contentCopy = content;
  lockupPresenter = [(ASCLockupView *)self lockupPresenter];
  [lockupPresenter setShowsPlaceholderContent:contentCopy];
}

- (BOOL)showsPlaceholderContent
{
  lockupPresenter = [(ASCLockupView *)self lockupPresenter];
  showsPlaceholderContent = [lockupPresenter showsPlaceholderContent];

  return showsPlaceholderContent;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = ASCLockupView;
  [(ASCLockupView *)&v3 layoutMarginsDidChange];
  [(ASCLockupView *)self setNeedsLayout];
  [(ASCLockupView *)self invalidateIntrinsicContentSize];
}

- (void)setLayoutMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  contentView = [(ASCLockupView *)self contentView];
  [contentView setLayoutMargins:{top, left, bottom, right}];

  v9.receiver = self;
  v9.super_class = ASCLockupView;
  [(ASCLockupView *)&v9 setLayoutMargins:top, left, bottom, right];
}

- (void)setHidden:(BOOL)hidden
{
  v5.receiver = self;
  v5.super_class = ASCLockupView;
  [(ASCLockupView *)&v5 setHidden:hidden];
  metricsPresenter = [(ASCLockupView *)self metricsPresenter];
  [metricsPresenter viewDidSetHidden];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = ASCLockupView;
  [(ASCLockupView *)&v4 didMoveToWindow];
  metricsPresenter = [(ASCLockupView *)self metricsPresenter];
  [metricsPresenter viewDidMoveToWindow];
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = ASCLockupView;
  [(ASCLockupView *)&v4 invalidateIntrinsicContentSize];
  if ((*&self->_delegateRespondsTo & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained lockupViewDidInvalidateIntrinsicContentSize:self];
  }
}

- (CGSize)intrinsicContentSize
{
  contentView = [(ASCLockupView *)self contentView];
  [contentView intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  contentView = [(ASCLockupView *)self contentView];
  [contentView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutContentView
{
  [(ASCLockupView *)self bounds];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  IsEmpty = CGRectIsEmpty(v22);
  contentView = [(ASCLockupView *)self contentView];
  v9 = contentView;
  if (IsEmpty)
  {
    v10 = x;
    v11 = y;
    v12 = width;
    v13 = height;
  }

  else
  {
    [contentView sizeThatFits:{width, height}];
    v15 = v14;
    v17 = v16;

    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (vabdd_f64(CGRectGetWidth(v23), v15) > 1.0 || (v24.origin.x = x, v24.origin.y = y, v24.size.width = width, v24.size.height = height, vabdd_f64(CGRectGetHeight(v24), v17) > 1.0))
    {
      if (layoutContentView_onceToken != -1)
      {
        [ASCLockupView layoutContentView];
      }
    }

    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinX = CGRectGetMinX(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v19 = floor(CGRectGetMidY(v26) + v17 * -0.5);
    contentView = [(ASCLockupView *)self contentView];
    v9 = contentView;
    v10 = MinX;
    v11 = v19;
    v12 = v15;
    v13 = v17;
  }

  [contentView setFrame:{v10, v11, v12, v13}];

  contentView2 = [(ASCLockupView *)self contentView];
  [contentView2 layoutSubviews];
}

void __34__ASCLockupView_layoutContentView__block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = 136446210;
    v1 = "[ASCLockupView layoutContentView]_block_invoke";
    _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "*** %{public}s: Frame size does not match intrinsicContentSize, break on _ASCLockupView_incorrectFrameSize to debug", &v0, 0xCu);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ASCLockupView;
  [(ASCLockupView *)&v3 layoutSubviews];
  [(ASCLockupView *)self layoutContentView];
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  contentView = [(ASCLockupView *)self contentView];
  [(ASCDescriber *)v3 addObject:contentView withName:@"contentView"];

  offerPresenter = [(ASCLockupView *)self offerPresenter];
  [(ASCDescriber *)v3 addObject:offerPresenter withName:@"offerPresenter"];

  lockupPresenter = [(ASCLockupView *)self lockupPresenter];
  [(ASCDescriber *)v3 addObject:lockupPresenter withName:@"lockupPresenter"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (id)preferredProductDetailsPresentationContext
{
  if ((*&self->_delegateRespondsTo & 0x100) != 0)
  {
    delegate = [(ASCLockupView *)self delegate];
    v2 = [delegate productDetailsPresentationContextForLockupView:self];
  }

  else
  {
    v2 = +[ASCLockupProductDetailsPresentationContext defaultPresentationContext];
  }

  return v2;
}

- (void)presentProductDetailsViewController
{
  lockup = [(ASCLockupView *)self lockup];
  if (lockup)
  {
    preferredProductDetailsPresentationContext = [(ASCLockupView *)self preferredProductDetailsPresentationContext];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ASCLockupView presentProductDetailsViewController];
    }

    if ([preferredProductDetailsPresentationContext presentationStyle])
    {
      v5 = [ASCLockupProductDetails alloc];
      storeSheetHostBundleID = [(ASCLockupView *)self storeSheetHostBundleID];
      storeSheetUsageContext = [(ASCLockupView *)self storeSheetUsageContext];
      presentingViewController = [(ASCLockupProductDetails *)v5 initWithLockup:lockup storeSheetHostBundleID:storeSheetHostBundleID storeSheetUsageContext:storeSheetUsageContext];

      [(ASCLockupProductDetails *)presentingViewController present:0];
      metricsPresenter = [(ASCLockupView *)self metricsPresenter];
      [(ASCLockupProductDetails *)metricsPresenter viewDidAction];
    }

    else
    {
      presentingViewController = [(ASCLockupView *)self presentingViewController];
      if (!presentingViewController)
      {
LABEL_9:

        goto LABEL_10;
      }

      v10 = [ASCLockupProductDetails alloc];
      storeSheetHostBundleID2 = [(ASCLockupView *)self storeSheetHostBundleID];
      storeSheetUsageContext2 = [(ASCLockupView *)self storeSheetUsageContext];
      metricsPresenter = [(ASCLockupProductDetails *)v10 initWithLockup:lockup storeSheetHostBundleID:storeSheetHostBundleID2 storeSheetUsageContext:storeSheetUsageContext2];

      request = [(ASCLockupView *)self request];
      context = [request context];
      IsWebBrowserContext = ASCLockupContextIsWebBrowserContext(context, v15);

      [(ASCLockupProductDetails *)metricsPresenter setOpenAppCallbackEnabled:IsWebBrowserContext];
      [(ASCLockupProductDetails *)metricsPresenter setWebBrowser:IsWebBrowserContext];
      [(ASCLockupProductDetails *)metricsPresenter setObserver:self];
      [(ASCLockupProductDetails *)metricsPresenter presentFromViewController:presentingViewController animated:1 completion:0];
      [(ASCLockupView *)self setLockupProductDetails:metricsPresenter];
      metricsPresenter2 = [(ASCLockupView *)self metricsPresenter];
      [metricsPresenter2 viewDidAction];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)performLockupAction
{
  lockupPresenter = [(ASCLockupView *)self lockupPresenter];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__ASCLockupView_performLockupAction__block_invoke;
  v4[3] = &unk_2781CCA98;
  v4[4] = self;
  [lockupPresenter retryRequestIfNeeded:v4];
}

void __36__ASCLockupView_performLockupAction__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if ([*(a1 + 32) automaticallyPresentsProductDetails] && (objc_msgSend(*(a1 + 32), "offerPresenter"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "viewAppForAppDistributionOffer"), v3, v4))
    {
      v6 = [*(a1 + 32) metricsPresenter];
      [v6 viewDidAction];
    }

    else if ([*(a1 + 32) automaticallyPresentsProductDetails])
    {
      v5 = *(a1 + 32);

      [v5 presentProductDetailsViewController];
    }
  }
}

- (void)lockupPresenterDidBeginRequest
{
  if (*&self->_delegateRespondsTo)
  {
    delegate = [(ASCLockupView *)self delegate];
    [delegate lockupViewDidBeginRequest:self];
  }
}

- (void)lockupPresenterDidFinishRequest
{
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    delegate = [(ASCLockupView *)self delegate];
    [delegate lockupViewDidFinishRequest:self];
  }
}

- (void)lockupPresenterDidFailRequestWithError:(id)error
{
  if ((*&self->_delegateRespondsTo & 4) != 0)
  {
    errorCopy = error;
    delegate = [(ASCLockupView *)self delegate];
    [delegate lockupView:self didFailRequestWithError:errorCopy];
  }
}

- (void)offerPresenterDidObserveChangeToState:(id)state
{
  if ((*&self->_delegateRespondsTo & 8) != 0)
  {
    stateCopy = state;
    delegate = [(ASCLockupView *)self delegate];
    [delegate lockupView:self appStateDidChange:stateCopy];
  }
}

- (void)offerPresenterWillPerformActionOfOffer:(id)offer inState:(id)state withActivity:(id *)activity inContext:(id *)context withPaymentSheetView:(id)view
{
  offerCopy = offer;
  stateCopy = state;
  viewCopy = view;
  delegateRespondsTo = self->_delegateRespondsTo;
  if ((delegateRespondsTo & 0x10) != 0)
  {
    delegate = [(ASCLockupView *)self delegate];
    *activity = [delegate metricsActivityForLockupView:self toPerformActionOfOffer:offerCopy];

    delegateRespondsTo = self->_delegateRespondsTo;
  }

  if ((delegateRespondsTo & 0x20) != 0)
  {
    delegate2 = [(ASCLockupView *)self delegate];
    v18 = [delegate2 lockupViewPerformAdAttributionForState:stateCopy];
    v17 = 4 * (v18 != 0);

    if ((*&self->_delegateRespondsTo & 0x80) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    if ((delegateRespondsTo & 0x80) != 0)
    {
LABEL_5:
      delegate3 = [(ASCLockupView *)self delegate];
      v20 = [delegate3 lockupViewShouldSupportDSIDLessInstalls:self];

      goto LABEL_8;
    }
  }

  v20 = 0;
LABEL_8:
  v22 = *context;
  presentingSceneIdentifier = [(ASCLockupView *)self presentingSceneIdentifier];
  presentingSceneBundleIdentifier = [(ASCLockupView *)self presentingSceneBundleIdentifier];
  *context = [v22 offerContextWithPresentingSceneIdentifier:presentingSceneIdentifier presentingSceneBundleIdentifier:presentingSceneBundleIdentifier externalDeepLinkURL:v18];

  v25 = [*context offerContextByAddingFlags:v17];
  *context = v25;
  *context = [v25 offerContextByAddingFlags:v20];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(ASCLockupView *)context offerPresenterWillPerformActionOfOffer:v26 inState:v27 withActivity:v28 inContext:v29 withPaymentSheetView:v30, v31, v32];
  }
}

- (void)offerPresenterPreprocessOffer:(id)offer inState:(id)state completionBlock:(id)block
{
  offerCopy = offer;
  stateCopy = state;
  blockCopy = block;
  v11 = blockCopy;
  if ((*&self->_delegateRespondsTo & 0x200) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ASCLockupView offerPresenterPreprocessOffer:inState:completionBlock:];
    }

    delegate = [(ASCLockupView *)self delegate];
    [delegate lockupView:self preprocessOffer:offerCopy inState:stateCopy completionBlock:v11];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

- (NSString)presentingSceneIdentifier
{
  presentingSceneIdentifier = self->_presentingSceneIdentifier;
  if (presentingSceneIdentifier)
  {
    _sceneIdentifier = presentingSceneIdentifier;
  }

  else
  {
    window = [(ASCLockupView *)self window];
    windowScene = [window windowScene];
    _sceneIdentifier = [windowScene _sceneIdentifier];
  }

  return _sceneIdentifier;
}

- (NSString)presentingSceneBundleIdentifier
{
  presentingSceneBundleIdentifier = self->_presentingSceneBundleIdentifier;
  if (presentingSceneBundleIdentifier)
  {
    bundleIdentifier = presentingSceneBundleIdentifier;
  }

  else
  {
    asc_realMainBundle = [MEMORY[0x277CCA8D8] asc_realMainBundle];
    bundleIdentifier = [asc_realMainBundle bundleIdentifier];
  }

  return bundleIdentifier;
}

- (void)productDetailsUserDidInteractWithApp:(id)app interactionType:(id)type
{
  appCopy = app;
  typeCopy = type;
  if ((*&self->_delegateRespondsTo & 0x800) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ASCLockupView productDetailsUserDidInteractWithApp:interactionType:];
    }

    delegate = [(ASCLockupView *)self delegate];
    [delegate productDetailsUserDidInteractWithApp:self interactionType:typeCopy];
  }

  if ([typeCopy isEqualToString:@"dismissed"])
  {
    [(ASCLockupView *)self setLockupProductDetails:0];
  }
}

- (ASCLockupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setViewRenderSpanProvider:(id)provider
{
  providerCopy = provider;
  lockupPresenter = [(ASCLockupView *)self lockupPresenter];
  [lockupPresenter setViewRenderSpanProvider:providerCopy];
}

- (void)setCampaignToken:(id)token
{
  tokenCopy = token;
  if (_campaignToken != tokenCopy)
  {
    v5 = tokenCopy;
    objc_storeStrong(&_campaignToken, token);
    tokenCopy = v5;
  }
}

- (void)setProviderToken:(id)token
{
  tokenCopy = token;
  if (_providerToken != tokenCopy)
  {
    v5 = tokenCopy;
    objc_storeStrong(&_providerToken, token);
    tokenCopy = v5;
  }
}

- (void)presentingViewController
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Lockup view %@ could not find view controller to present from.", v0, 0xCu);
}

- (void)offerPresenterPreprocessOffer:inState:completionBlock:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v2 = 2112;
  v3 = v0;
  _os_log_debug_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Requesting delegate to preprocess offer: %@, in state: %@", v1, 0x16u);
}

@end
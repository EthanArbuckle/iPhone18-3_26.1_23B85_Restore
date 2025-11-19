@interface ASCLockupView
- (ASCLockup)lockup;
- (ASCLockupRequest)request;
- (ASCLockupView)initWithCoder:(id)a3;
- (ASCLockupView)initWithFrame:(CGRect)a3;
- (ASCLockupViewDelegate)delegate;
- (ASCLockupViewGroup)group;
- (ASCMetricsActivity)appearMetricsActivity;
- (ASCOfferTheme)offerTheme;
- (BOOL)accessibilityActivate;
- (BOOL)automaticallyGeneratesAppearMetrics;
- (BOOL)isHighlighted;
- (BOOL)showsPlaceholderContent;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
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
- (void)lockupPresenterDidFailRequestWithError:(id)a3;
- (void)lockupPresenterDidFinishRequest;
- (void)offerPresenterDidObserveChangeToState:(id)a3;
- (void)offerPresenterPreprocessOffer:(id)a3 inState:(id)a4 completionBlock:(id)a5;
- (void)offerPresenterWillPerformActionOfOffer:(id)a3 inState:(id)a4 withActivity:(id *)a5 inContext:(id *)a6 withPaymentSheetView:(id)a7;
- (void)performLockupAction;
- (void)presentProductDetailsViewController;
- (void)presentingViewController;
- (void)productDetailsUserDidInteractWithApp:(id)a3 interactionType:(id)a4;
- (void)setAppearMetricsActivity:(id)a3;
- (void)setAutomaticallyGeneratesAppearMetrics:(BOOL)a3;
- (void)setCampaignToken:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setGroup:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLayoutMargins:(UIEdgeInsets)a3;
- (void)setLockup:(id)a3;
- (void)setLockupSize:(id)a3;
- (void)setOfferTheme:(id)a3;
- (void)setProviderToken:(id)a3;
- (void)setRequest:(id)a3;
- (void)setShowsPlaceholderContent:(BOOL)a3;
- (void)setViewRenderSpanProvider:(id)a3;
@end

@implementation ASCLockupView

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = ASCLockupView;
  v3 = *MEMORY[0x277D76548] | [(ASCLockupView *)&v8 accessibilityTraits];
  v4 = [(ASCLockupView *)self contentView];
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
  v2 = [(ASCLockupView *)self contentView];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  if ([v2 isOfferButtonOnlyLockup])
  {
    v4 = [v2 offerButton];
LABEL_7:
    v10 = v4;
    [v3 addObject:v4];

    goto LABEL_8;
  }

  v5 = [v2 headingLabelIfLoaded];

  if (v5)
  {
    v6 = [v2 headingLabelIfLoaded];
    [v3 addObject:v6];
  }

  v7 = [v2 titleLabel];
  [v3 addObject:v7];

  v8 = [v2 subtitleLabel];
  [v3 addObject:v8];

  v9 = [v2 offerStatusLabelIfLoaded];

  if (v9)
  {
    v4 = [v2 offerStatusLabelIfLoaded];
    goto LABEL_7;
  }

LABEL_8:
  v11 = ASCAXLabelForElements(v3);

  return v11;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [(ASCLockupView *)self contentView];
  if ([v3 isOfferButtonOnlyLockup])
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v5 = [(ASCLockupView *)self contentView];
    v6 = [v5 offerButton];
    v8[0] = v6;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  return v4;
}

- (BOOL)accessibilityActivate
{
  v3 = [(ASCLockupView *)self contentView];
  v4 = [v3 isEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ASCLockupView *)self contentView];
  v6 = [v5 isOfferButtonOnlyLockup];

  v7 = [(ASCLockupView *)self contentView];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 offerButton];
    [v9 sendActionsForControlEvents:64];

    return 1;
  }

  else
  {
    [v7 sendActionsForControlEvents:64];

    return [(ASCLockupView *)self automaticallyPresentsProductDetails];
  }
}

- (id)accessibilityIdentifier
{
  v3 = [(ASCLockupView *)self lockup];
  v4 = [v3 id];
  v5 = [v4 stringValue];

  v6 = MEMORY[0x277CCACA8];
  if (v5)
  {
    v7 = [(ASCLockupView *)self lockup];
    v8 = [v7 id];
    v9 = [v8 stringValue];
    v10 = [v6 stringWithFormat:@"Lockup[id=%@]", v9];
    v11 = ASCAXIdentifierWithSuffix(v10);
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Lockup"];
    v11 = ASCAXIdentifierWithSuffix(v7);
  }

  return v11;
}

- (ASCLockupView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  +[ASCEligibility assertCurrentProcessEligibility];
  v22.receiver = self;
  v22.super_class = ASCLockupView;
  v8 = [(ASCLockupView *)&v22 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    v8->_automaticallyPresentsProductDetails = 1;
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

- (ASCLockupView)initWithCoder:(id)a3
{
  [(ASCLockupView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UIViewController)presentingViewController
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(ASCLockupView *)self delegate];
  v4 = [v3 presentingViewControllerForLockupView:self];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(ASCLockupView *)self window];
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
      [ASCLockupView presentingViewController];
    }
  }

  return v5;
}

- (NSString)lockupSize
{
  v2 = [(ASCLockupView *)self contentView];
  v3 = [v2 lockupSize];

  return v3;
}

- (void)setLockupSize:(id)a3
{
  v7 = a3;
  if (([ASCEligibility currentClientIsEligibleToUseLockupViewSize:v7]& 1) == 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current process is not eligible to use %@ lockup view size", v7];
    v6 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v6 initWithName:*MEMORY[0x277CBE658] reason:v5 userInfo:0]);
  }

  v4 = [(ASCLockupView *)self contentView];
  [v4 setLockupSize:v7];

  [(ASCLockupView *)self setNeedsLayout];
}

- (ASCLockup)lockup
{
  v2 = [(ASCLockupView *)self lockupPresenter];
  v3 = [v2 lockup];

  return v3;
}

- (void)setLockup:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupView *)self lockupPresenter];
  [v5 setLockup:v4];
}

- (ASCLockupViewGroup)group
{
  v2 = [(ASCLockupView *)self lockupPresenter];
  v3 = [v2 group];

  return v3;
}

- (void)setGroup:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupView *)self lockupPresenter];
  [v5 setGroup:v4];
}

- (ASCLockupRequest)request
{
  v2 = [(ASCLockupView *)self lockupPresenter];
  v3 = [v2 request];

  return v3;
}

- (void)setRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  IsWebBrowserContext = ASCLockupContextIsWebBrowserContext(v5, v6);

  if (IsWebBrowserContext)
  {
    v8 = +[ASCStaticLockupTheme webBrowserTheme];
    v9 = [(ASCLockupView *)self contentView];
    [v9 setLockupTheme:v8];
  }

  else
  {
    v8 = [(ASCLockupView *)self contentView];
    [v8 setLockupTheme:0];
  }

  v10 = [(ASCLockupView *)self lockupPresenter];
  [v10 setRequest:v4];
}

- (void)setDelegate:(id)a3
{
  v17 = a3;
  objc_storeWeak(&self->_delegate, v17);
  v4 = v17;
  if (v17)
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
    v4 = v17;
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
  v2 = [(ASCLockupView *)self contentView];
  v3 = [v2 isHighlighted];

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v4 = [(ASCLockupView *)self contentView];
  [v4 setHighlighted:v3];
}

- (BOOL)automaticallyGeneratesAppearMetrics
{
  v2 = [(ASCLockupView *)self metricsPresenter];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)setAutomaticallyGeneratesAppearMetrics:(BOOL)a3
{
  v3 = a3;
  v4 = [(ASCLockupView *)self metricsPresenter];
  [v4 setEnabled:v3];
}

- (ASCMetricsActivity)appearMetricsActivity
{
  v2 = [(ASCLockupView *)self metricsPresenter];
  v3 = [v2 activity];

  return v3;
}

- (void)setAppearMetricsActivity:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupView *)self metricsPresenter];
  [v5 setActivity:v4];
}

- (ASCOfferTheme)offerTheme
{
  v2 = [(ASCLockupView *)self contentView];
  v3 = [v2 offerTheme];

  return v3;
}

- (void)setOfferTheme:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupView *)self contentView];
  [v5 setOfferTheme:v4];
}

- (void)setShowsPlaceholderContent:(BOOL)a3
{
  v3 = a3;
  v4 = [(ASCLockupView *)self lockupPresenter];
  [v4 setShowsPlaceholderContent:v3];
}

- (BOOL)showsPlaceholderContent
{
  v2 = [(ASCLockupView *)self lockupPresenter];
  v3 = [v2 showsPlaceholderContent];

  return v3;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = ASCLockupView;
  [(ASCLockupView *)&v3 layoutMarginsDidChange];
  [(ASCLockupView *)self setNeedsLayout];
  [(ASCLockupView *)self invalidateIntrinsicContentSize];
}

- (void)setLayoutMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(ASCLockupView *)self contentView];
  [v8 setLayoutMargins:{top, left, bottom, right}];

  v9.receiver = self;
  v9.super_class = ASCLockupView;
  [(ASCLockupView *)&v9 setLayoutMargins:top, left, bottom, right];
}

- (void)setHidden:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ASCLockupView;
  [(ASCLockupView *)&v5 setHidden:a3];
  v4 = [(ASCLockupView *)self metricsPresenter];
  [v4 viewDidSetHidden];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = ASCLockupView;
  [(ASCLockupView *)&v4 didMoveToWindow];
  v3 = [(ASCLockupView *)self metricsPresenter];
  [v3 viewDidMoveToWindow];
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
  v2 = [(ASCLockupView *)self contentView];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(ASCLockupView *)self contentView];
  [v5 sizeThatFits:{width, height}];
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
  v8 = [(ASCLockupView *)self contentView];
  v9 = v8;
  if (IsEmpty)
  {
    v10 = x;
    v11 = y;
    v12 = width;
    v13 = height;
  }

  else
  {
    [v8 sizeThatFits:{width, height}];
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
    v8 = [(ASCLockupView *)self contentView];
    v9 = v8;
    v10 = MinX;
    v11 = v19;
    v12 = v15;
    v13 = v17;
  }

  [v8 setFrame:{v10, v11, v12, v13}];

  v20 = [(ASCLockupView *)self contentView];
  [v20 layoutSubviews];
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
  v4 = [(ASCLockupView *)self contentView];
  [(ASCDescriber *)v3 addObject:v4 withName:@"contentView"];

  v5 = [(ASCLockupView *)self offerPresenter];
  [(ASCDescriber *)v3 addObject:v5 withName:@"offerPresenter"];

  v6 = [(ASCLockupView *)self lockupPresenter];
  [(ASCDescriber *)v3 addObject:v6 withName:@"lockupPresenter"];

  v7 = [(ASCDescriber *)v3 finalizeDescription];

  return v7;
}

- (id)preferredProductDetailsPresentationContext
{
  if ((*&self->_delegateRespondsTo & 0x100) != 0)
  {
    v4 = [(ASCLockupView *)self delegate];
    v2 = [v4 productDetailsPresentationContextForLockupView:self];
  }

  else
  {
    v2 = +[ASCLockupProductDetailsPresentationContext defaultPresentationContext];
  }

  return v2;
}

- (void)presentProductDetailsViewController
{
  v3 = [(ASCLockupView *)self lockup];
  if (v3)
  {
    v4 = [(ASCLockupView *)self preferredProductDetailsPresentationContext];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ASCLockupView presentProductDetailsViewController];
    }

    if ([v4 presentationStyle])
    {
      v5 = [ASCLockupProductDetails alloc];
      v6 = [(ASCLockupView *)self storeSheetHostBundleID];
      v7 = [(ASCLockupView *)self storeSheetUsageContext];
      v8 = [(ASCLockupProductDetails *)v5 initWithLockup:v3 storeSheetHostBundleID:v6 storeSheetUsageContext:v7];

      [(ASCLockupProductDetails *)v8 present:0];
      v9 = [(ASCLockupView *)self metricsPresenter];
      [(ASCLockupProductDetails *)v9 viewDidAction];
    }

    else
    {
      v8 = [(ASCLockupView *)self presentingViewController];
      if (!v8)
      {
LABEL_9:

        goto LABEL_10;
      }

      v10 = [ASCLockupProductDetails alloc];
      v11 = [(ASCLockupView *)self storeSheetHostBundleID];
      v12 = [(ASCLockupView *)self storeSheetUsageContext];
      v9 = [(ASCLockupProductDetails *)v10 initWithLockup:v3 storeSheetHostBundleID:v11 storeSheetUsageContext:v12];

      v13 = [(ASCLockupView *)self request];
      v14 = [v13 context];
      IsWebBrowserContext = ASCLockupContextIsWebBrowserContext(v14, v15);

      [(ASCLockupProductDetails *)v9 setOpenAppCallbackEnabled:IsWebBrowserContext];
      [(ASCLockupProductDetails *)v9 setWebBrowser:IsWebBrowserContext];
      [(ASCLockupProductDetails *)v9 setObserver:self];
      [(ASCLockupProductDetails *)v9 presentFromViewController:v8 animated:1 completion:0];
      [(ASCLockupView *)self setLockupProductDetails:v9];
      v17 = [(ASCLockupView *)self metricsPresenter];
      [v17 viewDidAction];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)performLockupAction
{
  v3 = [(ASCLockupView *)self lockupPresenter];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__ASCLockupView_performLockupAction__block_invoke;
  v4[3] = &unk_2781CCA98;
  v4[4] = self;
  [v3 retryRequestIfNeeded:v4];
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
    v4 = [(ASCLockupView *)self delegate];
    [v4 lockupViewDidBeginRequest:self];
  }
}

- (void)lockupPresenterDidFinishRequest
{
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    v4 = [(ASCLockupView *)self delegate];
    [v4 lockupViewDidFinishRequest:self];
  }
}

- (void)lockupPresenterDidFailRequestWithError:(id)a3
{
  if ((*&self->_delegateRespondsTo & 4) != 0)
  {
    v5 = a3;
    v6 = [(ASCLockupView *)self delegate];
    [v6 lockupView:self didFailRequestWithError:v5];
  }
}

- (void)offerPresenterDidObserveChangeToState:(id)a3
{
  if ((*&self->_delegateRespondsTo & 8) != 0)
  {
    v5 = a3;
    v6 = [(ASCLockupView *)self delegate];
    [v6 lockupView:self appStateDidChange:v5];
  }
}

- (void)offerPresenterWillPerformActionOfOffer:(id)a3 inState:(id)a4 withActivity:(id *)a5 inContext:(id *)a6 withPaymentSheetView:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  delegateRespondsTo = self->_delegateRespondsTo;
  if ((delegateRespondsTo & 0x10) != 0)
  {
    v16 = [(ASCLockupView *)self delegate];
    *a5 = [v16 metricsActivityForLockupView:self toPerformActionOfOffer:v12];

    delegateRespondsTo = self->_delegateRespondsTo;
  }

  if ((delegateRespondsTo & 0x20) != 0)
  {
    v21 = [(ASCLockupView *)self delegate];
    v18 = [v21 lockupViewPerformAdAttributionForState:v13];
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
      v19 = [(ASCLockupView *)self delegate];
      v20 = [v19 lockupViewShouldSupportDSIDLessInstalls:self];

      goto LABEL_8;
    }
  }

  v20 = 0;
LABEL_8:
  v22 = *a6;
  v23 = [(ASCLockupView *)self presentingSceneIdentifier];
  v24 = [(ASCLockupView *)self presentingSceneBundleIdentifier];
  *a6 = [v22 offerContextWithPresentingSceneIdentifier:v23 presentingSceneBundleIdentifier:v24 externalDeepLinkURL:v18];

  v25 = [*a6 offerContextByAddingFlags:v17];
  *a6 = v25;
  *a6 = [v25 offerContextByAddingFlags:v20];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(ASCLockupView *)a6 offerPresenterWillPerformActionOfOffer:v26 inState:v27 withActivity:v28 inContext:v29 withPaymentSheetView:v30, v31, v32];
  }
}

- (void)offerPresenterPreprocessOffer:(id)a3 inState:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if ((*&self->_delegateRespondsTo & 0x200) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ASCLockupView offerPresenterPreprocessOffer:inState:completionBlock:];
    }

    v12 = [(ASCLockupView *)self delegate];
    [v12 lockupView:self preprocessOffer:v8 inState:v9 completionBlock:v11];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (NSString)presentingSceneIdentifier
{
  presentingSceneIdentifier = self->_presentingSceneIdentifier;
  if (presentingSceneIdentifier)
  {
    v3 = presentingSceneIdentifier;
  }

  else
  {
    v4 = [(ASCLockupView *)self window];
    v5 = [v4 windowScene];
    v3 = [v5 _sceneIdentifier];
  }

  return v3;
}

- (NSString)presentingSceneBundleIdentifier
{
  presentingSceneBundleIdentifier = self->_presentingSceneBundleIdentifier;
  if (presentingSceneBundleIdentifier)
  {
    v3 = presentingSceneBundleIdentifier;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] asc_realMainBundle];
    v3 = [v4 bundleIdentifier];
  }

  return v3;
}

- (void)productDetailsUserDidInteractWithApp:(id)a3 interactionType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*&self->_delegateRespondsTo & 0x800) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ASCLockupView productDetailsUserDidInteractWithApp:interactionType:];
    }

    v8 = [(ASCLockupView *)self delegate];
    [v8 productDetailsUserDidInteractWithApp:self interactionType:v7];
  }

  if ([v7 isEqualToString:@"dismissed"])
  {
    [(ASCLockupView *)self setLockupProductDetails:0];
  }
}

- (ASCLockupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setViewRenderSpanProvider:(id)a3
{
  v4 = a3;
  v5 = [(ASCLockupView *)self lockupPresenter];
  [v5 setViewRenderSpanProvider:v4];
}

- (void)setCampaignToken:(id)a3
{
  v4 = a3;
  if (_campaignToken != v4)
  {
    v5 = v4;
    objc_storeStrong(&_campaignToken, a3);
    v4 = v5;
  }
}

- (void)setProviderToken:(id)a3
{
  v4 = a3;
  if (_providerToken != v4)
  {
    v5 = v4;
    objc_storeStrong(&_providerToken, a3);
    v4 = v5;
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
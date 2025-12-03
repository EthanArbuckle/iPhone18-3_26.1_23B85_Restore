@interface _SFBrowserView
- (CGPoint)pinnableBannerOffset;
- (CGRect)unscaledWebViewBounds;
- (SFBrowserViewDelegate)delegate;
- (UIEdgeInsets)obscuredInsets;
- (UIView)currentWebViewContainerView;
- (WKWebView)currentWebView;
- (_SFBrowserView)initWithFrame:(CGRect)frame;
- (double)maximumHeightObscuredByBottomBar;
- (double)previewScaleFactor;
- (id)accessibilityIdentifier;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_addWebView:(id)view webViewContainerView:(id)containerView;
- (void)_scaleContentInset;
- (void)addWebViewController:(id)controller;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAppInfoOverlay:(id)overlay;
- (void)setBottomBarOffset:(double)offset;
- (void)setContentReadyForDisplay;
- (void)setCrashBanner:(id)banner;
- (void)setCrashBannerOffset:(double)offset;
- (void)setMinimalUITopOffset:(double)offset;
- (void)setNanoDomainContainerView:(id)view;
- (void)setNavigationBar:(id)bar;
- (void)setObscuredInsets:(UIEdgeInsets)insets;
- (void)setPinnableBanner:(id)banner;
- (void)setPinnableBannerOffset:(CGPoint)offset;
- (void)setPreviewHeader:(id)header;
- (void)setQuickLookDocumentView:(id)view;
- (void)setShouldUseScrollToTopView:(BOOL)view;
- (void)setStatusBarBackgroundView:(id)view;
- (void)setToolbar:(id)toolbar;
- (void)setTopBarHeight:(double)height;
- (void)setUnscaledWebViewWidth:(double)width;
- (void)updateDismissButtonStyle:(int64_t)style;
- (void)updatePreviewHeaderWithURLString:(id)string;
@end

@implementation _SFBrowserView

- (_SFBrowserView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _SFBrowserView;
  v3 = [(_SFBrowserView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    contentContainerView = v3->_contentContainerView;
    v3->_contentContainerView = v5;

    [(_SFBrowserView *)v3 addSubview:v3->_contentContainerView];
    v3->_topBarHeight = 44.0;
    v3->_contentReadyForDisplay = 0;
    [(_SFBrowserView *)v3 setHidden:1];
    v7 = v3;
  }

  return v3;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
  [WeakRetained removeObserver:self forKeyPath:@"fullscreenState" context:kvoContext];

  v4.receiver = self;
  v4.super_class = _SFBrowserView;
  [(_SFBrowserView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v86.receiver = self;
  v86.super_class = _SFBrowserView;
  [(_SFBrowserView *)&v86 layoutSubviews];
  [(_SFBrowserView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_contentContainerView setFrame:?];
  if ([(_SFToolbar *)self->_toolbar placement]== 1)
  {
    [(_SFToolbar *)self->_toolbar sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v12 = v11;
    [(_SFBrowserView *)self _sf_bottomUnsafeAreaFrameForToolbar];
    rect_8 = CGRectGetHeight(v87);
    v88.origin.x = v4;
    v88.origin.y = v6;
    v88.size.width = v8;
    v88.size.height = v10;
    Height = CGRectGetHeight(v88);
    bottomBarOffset = self->_bottomBarOffset;
    v89.origin.x = v4;
    v89.origin.y = v6;
    v89.size.width = v8;
    v89.size.height = v10;
    Width = CGRectGetWidth(v89);
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      if (self->_useNarrowBottomToolbarInsets)
      {
        v16 = -10.0;
      }

      else
      {
        v16 = 7.0;
      }

      if (self->_useNarrowBottomToolbarInsets)
      {
        v17 = 10.0;
      }

      else
      {
        v17 = 28.0;
      }

      v90.origin.x = v4;
      v90.origin.y = v6;
      v90.size.width = v8;
      v90.size.height = v10;
      v91.origin.y = self->_bottomBarOffset + CGRectGetHeight(v90) - v12 - v17;
      v91.origin.x = 0.0;
      v91.size.width = Width;
      v91.size.height = v12;
      v92 = CGRectInset(v91, v16, 0.0);
      Width = v92.size.width;
      v12 = v92.size.height;
    }

    else
    {
      v92.origin.y = Height - v12 - rect_8 + bottomBarOffset;
      v92.origin.x = 0.0;
    }

    [(_SFToolbar *)self->_toolbar setFrame:v92.origin.x, v92.origin.y, Width, v12];
  }

  [(_SFBrowserView *)self safeAreaInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(_SFNavigationBar *)self->_navigationBar defaultHeight];
  navigationBarBehavior = self->_navigationBarBehavior;
  rect_8 = v6;
  rect_16 = v10;
  if (navigationBarBehavior == 1)
  {
    v26 = self->_topBarHeight - v24;
    topBarHeight = v24;
  }

  else
  {
    v26 = v6;
    topBarHeight = v10;
    if (!navigationBarBehavior)
    {
      topBarHeight = self->_topBarHeight;
      v26 = v19;
    }
  }

  [(_SFNavigationBar *)self->_navigationBar setMaximumHeight:?];
  [(_SFNavigationBar *)self->_navigationBar setContentUnderStatusBarHeight:v19];
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v29 = v4 + v21;
  v30 = v8 - (v21 + v23);
  if (!isSolariumEnabled)
  {
    v29 = v4;
  }

  recta = v29;
  if (isSolariumEnabled)
  {
    v31 = v26 + 0.0;
  }

  else
  {
    v31 = v26;
  }

  if (isSolariumEnabled)
  {
    v32 = v30;
  }

  else
  {
    v32 = v8;
  }

  [(_SFNavigationBar *)self->_navigationBar setFrame:?];
  v93.origin.x = v4;
  v76 = v19;
  v93.origin.y = rect_8;
  v93.size.width = v8;
  v93.size.height = rect_16;
  [(SFNanoDomainContainerView *)self->_nanoDomainContainerView setFrame:0.0, v19, CGRectGetWidth(v93), self->_minimalUITopOffset];
  minimalUITopOffset = self->_minimalUITopOffset;
  [(_SFLinkPreviewHeader *)self->_previewHeader systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)];
  v77 = v34;
  v78 = minimalUITopOffset;
  [(_SFLinkPreviewHeader *)self->_previewHeader setFrame:v4, minimalUITopOffset, v8];
  [(SFPinnableBanner *)self->_pinnableBanner sizeThatFits:v8, rect_16];
  [(SFPinnableBanner *)self->_pinnableBanner setFrame:self->_pinnableBannerOffset.x, self->_pinnableBannerOffset.y, v35, v36];
  [(SFCrashBanner *)self->_crashBanner sizeThatFits:v32, topBarHeight];
  v38 = v37;
  v40 = v39;
  v94.origin.x = recta;
  v94.origin.y = v31;
  v94.size.width = v32;
  v80 = topBarHeight;
  v94.size.height = topBarHeight;
  [(SFCrashBanner *)self->_crashBanner setFrame:recta, CGRectGetMaxY(v94) + self->_crashBannerOffset, v38, v40];
  [(UIView *)self->_statusBarBackgroundView setFrame:v4, rect_8, v8, v19];
  v95.origin.x = v4;
  v95.origin.y = rect_8;
  v41 = v8;
  v95.size.width = v8;
  v95.size.height = rect_16;
  [(UIView *)self->_scrollToTopView setFrame:0.0, 0.0, CGRectGetWidth(v95), 20.0];
  v79 = v31;
  if (self->_scrollToTopView)
  {
    v96.origin.x = recta;
    v96.origin.y = v31;
    v42 = v32;
    v96.size.width = v32;
    v96.size.height = topBarHeight;
    MaxY = CGRectGetMaxY(v96);
    [(_SFBrowserView *)self bounds];
    v44 = MaxY <= CGRectGetMinY(v97);
  }

  else
  {
    v42 = v32;
    v44 = 0;
  }

  [(_SFNavigationBar *)self->_navigationBar setHidden:v44, *&v76];
  [(_SFBrowserView *)self setHidden:!self->_contentReadyForDisplay];
  v45 = v41;
  v46 = 0.0;
  if ([(_SFToolbar *)self->_toolbar placement]== 1)
  {
    v98.origin.x = v4;
    v98.origin.y = rect_8;
    v98.size.width = v45;
    v98.size.height = rect_16;
    v47 = CGRectGetHeight(v98);
    [(_SFToolbar *)self->_toolbar frame];
    v46 = v47 - CGRectGetMinY(v99);
  }

  v100.size.height = topBarHeight;
  v100.origin.x = recta;
  v100.origin.y = v79;
  v48 = v42;
  v100.size.width = v42;
  v49 = CGRectGetMaxY(v100);
  v101.origin.x = v4;
  v101.size.height = v77;
  v101.origin.y = v78;
  v101.size.width = v45;
  v50 = CGRectGetMaxY(v101);
  if (v49 <= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v49;
  }

  [(UIView *)self->_quickLookDocumentView setFrame:v4 + 0.0, rect_8 + v51, v45, rect_16 - (v46 + v51)];
  [(UIView *)self->_contentContainerView bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  WeakRetained = objc_loadWeakRetained(&self->_currentWebViewContainerView);
  v61 = WeakRetained;
  if (self->_unscaledWebViewWidth == 0.0)
  {
    v65 = *(MEMORY[0x1E695EFD0] + 16);
    *&rect_24.a = *MEMORY[0x1E695EFD0];
    *&rect_24.c = v65;
    *&rect_24.tx = *(MEMORY[0x1E695EFD0] + 32);
    [WeakRetained setTransform:&rect_24];
    [v61 setFrame:{v53, v55, v57, v59}];
  }

  else
  {
    [(_SFBrowserView *)self previewScaleFactor];
    v63 = v62;
    [v61 setFrame:{v53, v55, v57, v59}];
    [(_SFBrowserView *)self unscaledWebViewBounds];
    [v61 setBounds:?];
    UIRectGetCenter();
    [v61 setCenter:v64 + v63 * self->_obscuredInsets.left * -0.5];
    CGAffineTransformMakeScale(&v85, v63, v63);
    rect_24 = v85;
    [v61 setTransform:&rect_24];
    [(_SFBrowserView *)self _scaleContentInset];
  }

  v66 = objc_loadWeakRetained(&self->_currentWebView);
  scrollView = [v66 scrollView];
  [scrollView bounds];
  v69 = v68;
  v71 = v70;
  v73 = v72;

  x = self->_pinnableBannerOffset.x;
  v102.size.height = v80;
  v102.origin.x = recta;
  v102.origin.y = v79;
  v102.size.width = v48;
  v75 = CGRectGetMaxY(v102);
  [(UIView *)self->_appInfoOverlay setFrame:x + 0.0, v69 + v75 + self->_pinnableBannerOffset.y, v71, v73 - (v46 + v75 + self->_pinnableBannerOffset.y)];
}

- (void)setContentReadyForDisplay
{
  if (!self->_contentReadyForDisplay)
  {
    self->_contentReadyForDisplay = 1;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setPreviewHeader:(id)header
{
  headerCopy = header;
  previewHeader = self->_previewHeader;
  v7 = headerCopy;
  if (previewHeader != headerCopy)
  {
    [(_SFLinkPreviewHeader *)previewHeader removeFromSuperview];
    objc_storeStrong(&self->_previewHeader, header);
    [(_SFBrowserView *)self addSubview:self->_previewHeader];
  }
}

- (void)setStatusBarBackgroundView:(id)view
{
  viewCopy = view;
  statusBarBackgroundView = self->_statusBarBackgroundView;
  v7 = viewCopy;
  if (statusBarBackgroundView != viewCopy)
  {
    [(UIView *)statusBarBackgroundView removeFromSuperview];
    objc_storeStrong(&self->_statusBarBackgroundView, view);
    [(_SFBrowserView *)self addSubview:self->_statusBarBackgroundView];
  }
}

- (void)setToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  [(_SFToolbar *)self->_toolbar removeFromSuperview];
  objc_storeStrong(&self->_toolbar, toolbar);
  [(_SFBrowserView *)self addSubview:self->_toolbar];
}

- (void)setNavigationBar:(id)bar
{
  barCopy = bar;
  [(_SFNavigationBar *)self->_navigationBar removeFromSuperview];
  objc_storeStrong(&self->_navigationBar, bar);
  [(_SFBrowserView *)self addSubview:self->_navigationBar];
}

- (void)updateDismissButtonStyle:(int64_t)style
{
  navigationBar = [(_SFBrowserView *)self navigationBar];
  [navigationBar setDismissButtonStyle:style animated:self->_contentReadyForDisplay];
}

- (void)setBottomBarOffset:(double)offset
{
  if (self->_bottomBarOffset != offset)
  {
    self->_bottomBarOffset = offset;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setTopBarHeight:(double)height
{
  if (self->_topBarHeight != height)
  {
    self->_topBarHeight = height;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)addWebViewController:(id)controller
{
  controllerCopy = controller;
  webView = [controllerCopy webView];
  view = [controllerCopy view];
  [(_SFBrowserView *)self _addWebView:webView webViewContainerView:view];
}

- (void)_addWebView:(id)view webViewContainerView:(id)containerView
{
  obj = view;
  containerViewCopy = containerView;
  WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
  scrollView = [WeakRetained scrollView];
  [scrollView setDelegate:0];

  v9 = objc_loadWeakRetained(&self->_currentWebViewContainerView);
  [v9 removeFromSuperview];

  [WeakRetained removeObserver:self forKeyPath:@"fullscreenState" context:kvoContext];
  objc_storeWeak(&self->_currentWebView, obj);
  objc_storeWeak(&self->_currentWebViewContainerView, containerViewCopy);
  [(UIView *)self->_contentContainerView bounds];
  [containerViewCopy setFrame:?];
  [(UIView *)self->_contentContainerView addSubview:containerViewCopy];
  [obj addObserver:self forKeyPath:@"fullscreenState" options:1 context:kvoContext];
  if (self->_pinnableBanner)
  {
    scrollView2 = [obj scrollView];
    [scrollView2 addSubview:self->_pinnableBanner];
  }
}

- (double)previewScaleFactor
{
  unscaledWebViewWidth = self->_unscaledWebViewWidth;
  left = self->_obscuredInsets.left;
  right = self->_obscuredInsets.right;
  [(UIView *)self->_contentContainerView bounds];
  Width = CGRectGetWidth(v8);
  result = 1.0;
  if (Width != 0.0 && self->_unscaledWebViewWidth != 0.0)
  {
    result = Width / (unscaledWebViewWidth - left - right);
    if (result > 1.0)
    {
      return 1.0;
    }
  }

  return result;
}

- (CGRect)unscaledWebViewBounds
{
  [(UIView *)self->_contentContainerView bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  if (CGRectGetWidth(v14) == 0.0 || (unscaledWebViewWidth = self->_unscaledWebViewWidth, unscaledWebViewWidth - self->_obscuredInsets.left - self->_obscuredInsets.right == 0.0))
  {
    [(_SFBrowserView *)self bounds];
    unscaledWebViewWidth = v12;
  }

  else
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    CGRectGetHeight(v15);
    _SFCeilingFloatToPixels();
    v9 = v8;
    v10 = 0.0;
    v11 = 0.0;
  }

  v13 = unscaledWebViewWidth;
  result.size.height = v9;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)_scaleContentInset
{
  WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
  [(_SFLinkPreviewHeader *)self->_previewHeader bounds];
  v4 = v3;
  [(_SFBrowserView *)self previewScaleFactor];
  v6 = v5;
  left = self->_obscuredInsets.left;
  right = self->_obscuredInsets.right;
  scrollView = [WeakRetained scrollView];
  v10 = v4 / v6;
  [scrollView _sf_setContentInsetAdjustments:{v10, left, 0.0, right}];
  [scrollView setScrollIndicatorInsets:{v10, left, 0.0, right}];
  [WeakRetained _setObscuredInsets:{v10, left, 0.0, right}];
  [WeakRetained bounds];
  v12 = v11;
  v14 = v13 - (left + right);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bounds];
    [WeakRetained _overrideLayoutParametersWithMinimumLayoutSize:v14 minimumUnobscuredSizeOverride:v12 - (v10 + 0.0) maximumUnobscuredSizeOverride:{v14, v12 - (v10 + 0.0), v15, v16}];
  }

  else
  {
    [WeakRetained bounds];
    [WeakRetained _overrideLayoutParametersWithMinimumLayoutSize:v14 maximumUnobscuredSizeOverride:v12 - (v10 + 0.0)];
  }
}

- (void)updatePreviewHeaderWithURLString:(id)string
{
  stringCopy = string;
  previewHeader = [(_SFBrowserView *)self previewHeader];
  if (previewHeader)
  {
    v5 = [stringCopy safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];
    [previewHeader setDomain:v5];
  }
}

- (void)setShouldUseScrollToTopView:(BOOL)view
{
  if (self->_shouldUseScrollToTopView != view)
  {
    v13 = v3;
    self->_shouldUseScrollToTopView = view;
    scrollToTopView = self->_scrollToTopView;
    if (view)
    {
      if (!scrollToTopView)
      {
        v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v10 = self->_scrollToTopView;
        self->_scrollToTopView = v9;

        [(_SFBrowserView *)self addSubview:self->_scrollToTopView];
      }
    }

    else if (scrollToTopView)
    {
      [(UIView *)scrollToTopView removeFromSuperview];
      v11 = self->_scrollToTopView;
      self->_scrollToTopView = 0;
    }

    [(_SFBrowserView *)self bounds:v4];
    v12 = self->_scrollToTopView;

    [(UIView *)v12 setFrame:0.0, 0.0];
  }
}

- (void)setCrashBanner:(id)banner
{
  bannerCopy = banner;
  [(SFCrashBanner *)self->_crashBanner removeFromSuperview];
  objc_storeStrong(&self->_crashBanner, banner);
  [(_SFBrowserView *)self insertSubview:self->_crashBanner belowSubview:self->_navigationBar];
  [(_SFBrowserView *)self setNeedsLayout];
}

- (void)setCrashBannerOffset:(double)offset
{
  if (self->_crashBannerOffset != offset)
  {
    self->_crashBannerOffset = offset;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setPinnableBanner:(id)banner
{
  bannerCopy = banner;
  [(SFPinnableBanner *)self->_pinnableBanner removeFromSuperview];
  objc_storeStrong(&self->_pinnableBanner, banner);
  if (bannerCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
    scrollView = [WeakRetained scrollView];
    [scrollView addSubview:bannerCopy];

    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setPinnableBannerOffset:(CGPoint)offset
{
  if (self->_pinnableBannerOffset.x != offset.x || self->_pinnableBannerOffset.y != offset.y)
  {
    self->_pinnableBannerOffset = offset;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setAppInfoOverlay:(id)overlay
{
  overlayCopy = overlay;
  appInfoOverlay = self->_appInfoOverlay;
  v9 = overlayCopy;
  if (appInfoOverlay != overlayCopy)
  {
    [(UIView *)appInfoOverlay removeFromSuperview];
    objc_storeStrong(&self->_appInfoOverlay, overlay);
    [(SFPinnableBanner *)self->_pinnableBanner setHidden:self->_appInfoOverlay != 0];
    if (v9)
    {
      WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
      scrollView = [WeakRetained scrollView];
      [scrollView addSubview:self->_appInfoOverlay];
    }

    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (![eventCopy type])
  {
    if (!self->_hasReceivedTouchEvents)
    {
      self->_hasReceivedTouchEvents = 1;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserViewDidReceiveTouchEvent:self];
    }
  }

  previewHeader = self->_previewHeader;
  if (!previewHeader)
  {
    v13.receiver = self;
    v13.super_class = _SFBrowserView;
    v10 = [(_SFBrowserView *)&v13 hitTest:eventCopy withEvent:x, y];
    goto LABEL_11;
  }

  [(_SFLinkPreviewHeader *)previewHeader frame];
  v15.x = x;
  v15.y = y;
  if (CGRectContainsPoint(v16, v15))
  {
    v10 = [(_SFLinkPreviewHeader *)self->_previewHeader hitTest:eventCopy withEvent:x, y];
LABEL_11:
    v11 = v10;
    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)setQuickLookDocumentView:(id)view
{
  viewCopy = view;
  quickLookDocumentView = self->_quickLookDocumentView;
  if (quickLookDocumentView)
  {
    [(UIView *)quickLookDocumentView removeFromSuperview];
  }

  objc_storeStrong(&self->_quickLookDocumentView, view);
  if (self->_quickLookDocumentView)
  {
    [(UIView *)self->_contentContainerView addSubview:viewCopy];
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setMinimalUITopOffset:(double)offset
{
  if (self->_minimalUITopOffset != offset)
  {
    self->_minimalUITopOffset = offset;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setNanoDomainContainerView:(id)view
{
  viewCopy = view;
  nanoDomainContainerView = self->_nanoDomainContainerView;
  v7 = viewCopy;
  if (nanoDomainContainerView != viewCopy)
  {
    [(SFNanoDomainContainerView *)nanoDomainContainerView removeFromSuperview];
    objc_storeStrong(&self->_nanoDomainContainerView, view);
    [(_SFBrowserView *)self addSubview:self->_nanoDomainContainerView];
  }
}

- (void)setUnscaledWebViewWidth:(double)width
{
  if (self->_unscaledWebViewWidth != width)
  {
    self->_unscaledWebViewWidth = width;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setObscuredInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_obscuredInsets.top), vceqq_f64(v4, *&self->_obscuredInsets.bottom)))) & 1) == 0)
  {
    self->_obscuredInsets = insets;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (id)accessibilityIdentifier
{
  v11[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
  v4 = WeakRetained;
  if (self->_contentReadyForDisplay)
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v10[0] = @"IsPageLoaded";
  v10[1] = @"WebViewProcessID";
  v11[0] = v5;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(WeakRetained, "_webProcessIdentifier")];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = WBSMakeAccessibilityIdentifier();

  return v8;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (kvoContext == context)
  {
    if ([pathCopy isEqualToString:@"fullscreenState"])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained browserViewFullscreenStateDidChange:self];
      }
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _SFBrowserView;
    [(_SFBrowserView *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (double)maximumHeightObscuredByBottomBar
{
  [(_SFToolbar *)self->_toolbar sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v4 = v3;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    Height = 28.0;
    if (self->_useNarrowBottomToolbarInsets)
    {
      Height = 10.0;
    }
  }

  else
  {
    [(_SFBrowserView *)self _sf_bottomUnsafeAreaFrameForToolbar];
    Height = CGRectGetHeight(v7);
  }

  return v4 + Height;
}

- (WKWebView)currentWebView
{
  WeakRetained = objc_loadWeakRetained(&self->_currentWebView);

  return WeakRetained;
}

- (CGPoint)pinnableBannerOffset
{
  x = self->_pinnableBannerOffset.x;
  y = self->_pinnableBannerOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (SFBrowserViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)obscuredInsets
{
  top = self->_obscuredInsets.top;
  left = self->_obscuredInsets.left;
  bottom = self->_obscuredInsets.bottom;
  right = self->_obscuredInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIView)currentWebViewContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_currentWebViewContainerView);

  return WeakRetained;
}

@end
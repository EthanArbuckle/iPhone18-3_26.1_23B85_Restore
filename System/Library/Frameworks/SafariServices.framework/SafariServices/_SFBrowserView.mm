@interface _SFBrowserView
- (CGPoint)pinnableBannerOffset;
- (CGRect)unscaledWebViewBounds;
- (SFBrowserViewDelegate)delegate;
- (UIEdgeInsets)obscuredInsets;
- (UIView)currentWebViewContainerView;
- (WKWebView)currentWebView;
- (_SFBrowserView)initWithFrame:(CGRect)a3;
- (double)maximumHeightObscuredByBottomBar;
- (double)previewScaleFactor;
- (id)accessibilityIdentifier;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_addWebView:(id)a3 webViewContainerView:(id)a4;
- (void)_scaleContentInset;
- (void)addWebViewController:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAppInfoOverlay:(id)a3;
- (void)setBottomBarOffset:(double)a3;
- (void)setContentReadyForDisplay;
- (void)setCrashBanner:(id)a3;
- (void)setCrashBannerOffset:(double)a3;
- (void)setMinimalUITopOffset:(double)a3;
- (void)setNanoDomainContainerView:(id)a3;
- (void)setNavigationBar:(id)a3;
- (void)setObscuredInsets:(UIEdgeInsets)a3;
- (void)setPinnableBanner:(id)a3;
- (void)setPinnableBannerOffset:(CGPoint)a3;
- (void)setPreviewHeader:(id)a3;
- (void)setQuickLookDocumentView:(id)a3;
- (void)setShouldUseScrollToTopView:(BOOL)a3;
- (void)setStatusBarBackgroundView:(id)a3;
- (void)setToolbar:(id)a3;
- (void)setTopBarHeight:(double)a3;
- (void)setUnscaledWebViewWidth:(double)a3;
- (void)updateDismissButtonStyle:(int64_t)a3;
- (void)updatePreviewHeaderWithURLString:(id)a3;
@end

@implementation _SFBrowserView

- (_SFBrowserView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _SFBrowserView;
  v3 = [(_SFBrowserView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v28 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v29 = v4 + v21;
  v30 = v8 - (v21 + v23);
  if (!v28)
  {
    v29 = v4;
  }

  recta = v29;
  if (v28)
  {
    v31 = v26 + 0.0;
  }

  else
  {
    v31 = v26;
  }

  if (v28)
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
  v67 = [v66 scrollView];
  [v67 bounds];
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

- (void)setPreviewHeader:(id)a3
{
  v5 = a3;
  previewHeader = self->_previewHeader;
  v7 = v5;
  if (previewHeader != v5)
  {
    [(_SFLinkPreviewHeader *)previewHeader removeFromSuperview];
    objc_storeStrong(&self->_previewHeader, a3);
    [(_SFBrowserView *)self addSubview:self->_previewHeader];
  }
}

- (void)setStatusBarBackgroundView:(id)a3
{
  v5 = a3;
  statusBarBackgroundView = self->_statusBarBackgroundView;
  v7 = v5;
  if (statusBarBackgroundView != v5)
  {
    [(UIView *)statusBarBackgroundView removeFromSuperview];
    objc_storeStrong(&self->_statusBarBackgroundView, a3);
    [(_SFBrowserView *)self addSubview:self->_statusBarBackgroundView];
  }
}

- (void)setToolbar:(id)a3
{
  v5 = a3;
  [(_SFToolbar *)self->_toolbar removeFromSuperview];
  objc_storeStrong(&self->_toolbar, a3);
  [(_SFBrowserView *)self addSubview:self->_toolbar];
}

- (void)setNavigationBar:(id)a3
{
  v5 = a3;
  [(_SFNavigationBar *)self->_navigationBar removeFromSuperview];
  objc_storeStrong(&self->_navigationBar, a3);
  [(_SFBrowserView *)self addSubview:self->_navigationBar];
}

- (void)updateDismissButtonStyle:(int64_t)a3
{
  v5 = [(_SFBrowserView *)self navigationBar];
  [v5 setDismissButtonStyle:a3 animated:self->_contentReadyForDisplay];
}

- (void)setBottomBarOffset:(double)a3
{
  if (self->_bottomBarOffset != a3)
  {
    self->_bottomBarOffset = a3;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setTopBarHeight:(double)a3
{
  if (self->_topBarHeight != a3)
  {
    self->_topBarHeight = a3;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)addWebViewController:(id)a3
{
  v6 = a3;
  v4 = [v6 webView];
  v5 = [v6 view];
  [(_SFBrowserView *)self _addWebView:v4 webViewContainerView:v5];
}

- (void)_addWebView:(id)a3 webViewContainerView:(id)a4
{
  obj = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
  v8 = [WeakRetained scrollView];
  [v8 setDelegate:0];

  v9 = objc_loadWeakRetained(&self->_currentWebViewContainerView);
  [v9 removeFromSuperview];

  [WeakRetained removeObserver:self forKeyPath:@"fullscreenState" context:kvoContext];
  objc_storeWeak(&self->_currentWebView, obj);
  objc_storeWeak(&self->_currentWebViewContainerView, v6);
  [(UIView *)self->_contentContainerView bounds];
  [v6 setFrame:?];
  [(UIView *)self->_contentContainerView addSubview:v6];
  [obj addObserver:self forKeyPath:@"fullscreenState" options:1 context:kvoContext];
  if (self->_pinnableBanner)
  {
    v10 = [obj scrollView];
    [v10 addSubview:self->_pinnableBanner];
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
  v9 = [WeakRetained scrollView];
  v10 = v4 / v6;
  [v9 _sf_setContentInsetAdjustments:{v10, left, 0.0, right}];
  [v9 setScrollIndicatorInsets:{v10, left, 0.0, right}];
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

- (void)updatePreviewHeaderWithURLString:(id)a3
{
  v6 = a3;
  v4 = [(_SFBrowserView *)self previewHeader];
  if (v4)
  {
    v5 = [v6 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];
    [v4 setDomain:v5];
  }
}

- (void)setShouldUseScrollToTopView:(BOOL)a3
{
  if (self->_shouldUseScrollToTopView != a3)
  {
    v13 = v3;
    self->_shouldUseScrollToTopView = a3;
    scrollToTopView = self->_scrollToTopView;
    if (a3)
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

- (void)setCrashBanner:(id)a3
{
  v5 = a3;
  [(SFCrashBanner *)self->_crashBanner removeFromSuperview];
  objc_storeStrong(&self->_crashBanner, a3);
  [(_SFBrowserView *)self insertSubview:self->_crashBanner belowSubview:self->_navigationBar];
  [(_SFBrowserView *)self setNeedsLayout];
}

- (void)setCrashBannerOffset:(double)a3
{
  if (self->_crashBannerOffset != a3)
  {
    self->_crashBannerOffset = a3;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setPinnableBanner:(id)a3
{
  v7 = a3;
  [(SFPinnableBanner *)self->_pinnableBanner removeFromSuperview];
  objc_storeStrong(&self->_pinnableBanner, a3);
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
    v6 = [WeakRetained scrollView];
    [v6 addSubview:v7];

    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setPinnableBannerOffset:(CGPoint)a3
{
  if (self->_pinnableBannerOffset.x != a3.x || self->_pinnableBannerOffset.y != a3.y)
  {
    self->_pinnableBannerOffset = a3;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setAppInfoOverlay:(id)a3
{
  v5 = a3;
  appInfoOverlay = self->_appInfoOverlay;
  v9 = v5;
  if (appInfoOverlay != v5)
  {
    [(UIView *)appInfoOverlay removeFromSuperview];
    objc_storeStrong(&self->_appInfoOverlay, a3);
    [(SFPinnableBanner *)self->_pinnableBanner setHidden:self->_appInfoOverlay != 0];
    if (v9)
    {
      WeakRetained = objc_loadWeakRetained(&self->_currentWebView);
      v8 = [WeakRetained scrollView];
      [v8 addSubview:self->_appInfoOverlay];
    }

    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (![v7 type])
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
    v10 = [(_SFBrowserView *)&v13 hitTest:v7 withEvent:x, y];
    goto LABEL_11;
  }

  [(_SFLinkPreviewHeader *)previewHeader frame];
  v15.x = x;
  v15.y = y;
  if (CGRectContainsPoint(v16, v15))
  {
    v10 = [(_SFLinkPreviewHeader *)self->_previewHeader hitTest:v7 withEvent:x, y];
LABEL_11:
    v11 = v10;
    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)setQuickLookDocumentView:(id)a3
{
  v6 = a3;
  quickLookDocumentView = self->_quickLookDocumentView;
  if (quickLookDocumentView)
  {
    [(UIView *)quickLookDocumentView removeFromSuperview];
  }

  objc_storeStrong(&self->_quickLookDocumentView, a3);
  if (self->_quickLookDocumentView)
  {
    [(UIView *)self->_contentContainerView addSubview:v6];
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setMinimalUITopOffset:(double)a3
{
  if (self->_minimalUITopOffset != a3)
  {
    self->_minimalUITopOffset = a3;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setNanoDomainContainerView:(id)a3
{
  v5 = a3;
  nanoDomainContainerView = self->_nanoDomainContainerView;
  v7 = v5;
  if (nanoDomainContainerView != v5)
  {
    [(SFNanoDomainContainerView *)nanoDomainContainerView removeFromSuperview];
    objc_storeStrong(&self->_nanoDomainContainerView, a3);
    [(_SFBrowserView *)self addSubview:self->_nanoDomainContainerView];
  }
}

- (void)setUnscaledWebViewWidth:(double)a3
{
  if (self->_unscaledWebViewWidth != a3)
  {
    self->_unscaledWebViewWidth = a3;
    [(_SFBrowserView *)self setNeedsLayout];
  }
}

- (void)setObscuredInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_obscuredInsets.top), vceqq_f64(v4, *&self->_obscuredInsets.bottom)))) & 1) == 0)
  {
    self->_obscuredInsets = a3;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (kvoContext == a6)
  {
    if ([v10 isEqualToString:@"fullscreenState"])
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
    [(_SFBrowserView *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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
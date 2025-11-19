@interface _SFWebView
- (BOOL)becomeFirstResponder;
- (BOOL)webui_canPromptForAccountSecurityRecommendation;
- (NSString)evOrganizationName;
- (UIEdgeInsets)hitTestInsets;
- (UIView)clippingView;
- (_SFWebView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (_SFWebViewDelegate)delegate;
- (id)_enclosingViewForExposedRectComputation;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)inputAccessoryView;
- (id)scrollViewAtLocation:(CGPoint)a3;
- (id)undoManager;
- (void)_close;
- (void)_setObscuredInsets:(UIEdgeInsets)a3;
- (void)_updateNavigationGesturesAllowed;
- (void)dealloc;
- (void)didEndFormControlInteraction;
- (void)didMoveToWindow;
- (void)didStartFormControlInteraction;
- (void)dismissDialogView:(id)a3 withAdditionalAnimations:(id)a4 forDialogController:(id)a5;
- (void)findInteraction:(id)a3 didEndFindSession:(id)a4;
- (void)layoutSubviews;
- (void)presentDialogView:(id)a3 withAdditionalAnimations:(id)a4 forDialogController:(id)a5;
- (void)safeAreaInsetsDidChange;
- (void)setBottomBarHeightAboveKeyboard:(double)a3;
- (void)setObscuringContents:(BOOL)a3;
- (void)setPlaceholderImage:(id)a3 verticalOffset:(double)a4 metadata:(id)a5;
- (void)setSuggestedFilenameForCurrentBackForwardListItem:(id)a3;
- (void)webui_setInputDashboardViewController:(id)a3;
@end

@implementation _SFWebView

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _SFWebView;
  [(_SFWebView *)&v7 didMoveToWindow];
  v3 = [(_SFWebView *)self window];

  if (v3)
  {
    self->_hasBeenInWindow = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E696AF00] callStackSymbols];
    v5 = [v4 copy];
    callStackSymbolsForLastRemovalFromWindow = self->_callStackSymbolsForLastRemovalFromWindow;
    self->_callStackSymbolsForLastRemovalFromWindow = v5;
  }
}

- (void)safeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = _SFWebView;
  [(_SFWebView *)&v4 safeAreaInsetsDidChange];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sfWebViewDidChangeSafeAreaInsets:self];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _SFWebView;
  [(_SFWebView *)&v4 layoutSubviews];
  [(_SFWebView *)self _updateNavigationGesturesAllowed];
  if (self->_placeholderView)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __28___SFWebView_layoutSubviews__block_invoke;
    v3[3] = &unk_1E848F810;
    v3[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
  }
}

- (void)_updateNavigationGesturesAllowed
{
  navigationGesturePolicy = self->_navigationGesturePolicy;
  if (navigationGesturePolicy == 1)
  {
    [(_SFWebView *)&v3 setAllowsBackForwardNavigationGestures:0, self, _SFWebView, v4.receiver, v4.super_class];
  }

  else if (!navigationGesturePolicy)
  {
    [(_SFWebView *)&v4 setAllowsBackForwardNavigationGestures:self->_dialogView == 0, v3.receiver, v3.super_class, self, _SFWebView];
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_placeholderViewRemovalTimer invalidate];
  v3.receiver = self;
  v3.super_class = _SFWebView;
  [(_SFWebView *)&v3 dealloc];
}

- (id)_enclosingViewForExposedRectComputation
{
  WeakRetained = objc_loadWeakRetained(&self->_clippingView);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SFWebView;
    v5 = [(_SFWebView *)&v8 _enclosingViewForExposedRectComputation];
  }

  v6 = v5;

  return v6;
}

- (id)scrollViewAtLocation:(CGPoint)a3
{
  v4 = [(_SFWebView *)self hitTest:0 withEvent:a3.x, a3.y];
  v5 = v4;
  v6 = 0;
  if (!v4 || v4 == self)
  {
    v7 = v4;
  }

  else
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v7 = [(_SFWebView *)v5 superview];

      v6 = 0;
      if (v7)
      {
        v5 = v7;
        if (v7 != self)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    v7 = v5;
    v6 = v7;
  }

LABEL_9:

  return v6;
}

- (_SFWebView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  v10.receiver = self;
  v10.super_class = _SFWebView;
  v4 = [(_SFWebView *)&v10 initWithFrame:a4 configuration:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__sf_applicationDidEnterBackgroundOrWillTerminate_ name:*MEMORY[0x1E69DDAC8] object:0];
    [v5 addObserver:v4 selector:sel__sf_applicationDidEnterBackgroundOrWillTerminate_ name:*MEMORY[0x1E69DDBD0] object:0];
    v6 = [(_SFWebView *)v4 scrollView];
    if (objc_opt_respondsToSelector())
    {
      [v6 _setAlwaysAppliesKeyboardBottomInsetAdjustment:1];
    }

    [v6 setContentInsetAdjustmentBehavior:2];
    v7 = SFFocusGroupIdentifierForOwner();
    [(_SFWebView *)v4 setFocusGroupIdentifier:v7];

    v8 = v4;
  }

  return v4;
}

- (void)_setObscuredInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(_SFWebView *)self _obscuredInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v19.receiver = self;
  v19.super_class = _SFWebView;
  [(_SFWebView *)&v19 _setObscuredInsets:top, left, bottom, right];
  [(SFDialogView *)self->_dialogView setObscuredInsets:top, left, bottom, right];
  if (self->_placeholderView)
  {
    if (v11 != left || v9 != top || v15 != right || v13 != bottom)
    {
      [(_SFWebView *)self setNeedsLayout];
    }
  }
}

- (void)_close
{
  [(WKWebView *)self _sf_saveUnsubmittedGeneratedPasswordAndRemoveFormMetadata];
  v3.receiver = self;
  v3.super_class = _SFWebView;
  [(_SFWebView *)&v3 _close];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (([(_SFWebView *)self isHidden]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    [(_SFWebView *)self bounds];
    top = self->_hitTestInsets.top;
    left = self->_hitTestInsets.left;
    v31.origin.x = v11 + left;
    v31.origin.y = v12 + top;
    v31.size.width = v13 - (left + self->_hitTestInsets.right);
    v31.size.height = v14 - (top + self->_hitTestInsets.bottom);
    v29.x = x;
    v29.y = y;
    if (CGRectContainsPoint(v31, v29))
    {
      v27.receiver = self;
      v27.super_class = _SFWebView;
      v8 = [(_SFWebView *)&v27 hitTest:v7 withEvent:x, y];
    }

    else
    {
      v15 = [(_SFWebView *)self scrollView];
      [v15 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [v15 convertPoint:self fromView:{x, y}];
      v30.x = v24;
      v30.y = v25;
      v32.origin.x = v17;
      v32.origin.y = v19;
      v32.size.width = v21;
      v32.size.height = v23;
      if (CGRectContainsPoint(v32, v30))
      {
        v8 = v15;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (BOOL)becomeFirstResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sfWebViewDidBecomeFirstResponder:self];
  }

  dialogView = self->_dialogView;
  if (dialogView)
  {
    v5 = [(SFDialogView *)dialogView becomeFirstResponder];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SFWebView;
    v5 = [(_SFWebView *)&v8 becomeFirstResponder];
  }

  v6 = v5;

  return v6;
}

- (void)didStartFormControlInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sfWebViewDidStartFormControlInteraction:self];
  }
}

- (void)didEndFormControlInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sfWebViewDidEndFormControlInteraction:self];
  }
}

- (id)inputAccessoryView
{
  v11.receiver = self;
  v11.super_class = _SFWebView;
  v3 = [(_SFWebView *)&v11 inputAccessoryView];
  v4 = v3;
  if (v3)
  {
    inputAccessoryContainerView = v3;
    if (self->_bottomBarHeightAboveKeyboard != 0.0)
    {
      inputAccessoryContainerView = self->_inputAccessoryContainerView;
      if (!inputAccessoryContainerView)
      {
        v6 = [objc_alloc(MEMORY[0x1E69B1C18]) initWithWebFormAccessoryView:v3 bottomBarHeight:self->_bottomBarHeightAboveKeyboard];
        v7 = self->_inputAccessoryContainerView;
        self->_inputAccessoryContainerView = v6;

        v8 = [MEMORY[0x1E69DC888] clearColor];
        [(SFWebFormAccessoryViewWrapper *)self->_inputAccessoryContainerView setBackgroundColor:v8];

        [(SFWebFormAccessoryViewWrapper *)self->_inputAccessoryContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
        inputAccessoryContainerView = self->_inputAccessoryContainerView;
      }
    }

    v9 = inputAccessoryContainerView;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setBottomBarHeightAboveKeyboard:(double)a3
{
  if ((_SFEqualWithEpsilon() & 1) == 0)
  {
    self->_bottomBarHeightAboveKeyboard = a3;
    [(SFWebFormAccessoryViewWrapper *)self->_inputAccessoryContainerView setBottomBarHeight:a3];

    [(_SFWebView *)self reloadInputViews];
  }
}

- (id)undoManager
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained overrideUndoManagerForSFWebView:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6.receiver = self;
    v6.super_class = _SFWebView;
    v4 = [(_SFWebView *)&v6 undoManager];
  }

  return v4;
}

- (NSString)evOrganizationName
{
  v2 = [(_SFWebView *)self serverTrust];
  if (v2 && ((v3 = v2, (v4 = SecTrustCopyInfo()) != 0) || SecTrustEvaluateWithError(v3, 0) && (v4 = SecTrustCopyInfo()) != 0))
  {
    v5 = v4;
    v6 = [v4 objectForKey:*MEMORY[0x1E697B348]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 BOOLValue])
    {
      v7 = [v5 objectForKey:*MEMORY[0x1E697B360]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 BOOLValue])
      {
        v8 = [v5 objectForKey:*MEMORY[0x1E697B340]];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setObscuringContents:(BOOL)a3
{
  if (self->_obscuringContents != a3)
  {
    self->_obscuringContents = a3;
    if (a3)
    {
      v4 = objc_alloc(MEMORY[0x1E69DD250]);
      [(_SFWebView *)self bounds];
      v5 = [v4 initWithFrame:?];
      contentObscuringView = self->_contentObscuringView;
      self->_contentObscuringView = v5;

      [(UIView *)self->_contentObscuringView setAutoresizingMask:18];
      v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(UIView *)self->_contentObscuringView setBackgroundColor:v7];

      v8 = self->_contentObscuringView;

      [(_SFWebView *)self addSubview:v8];
    }

    else
    {
      [(UIView *)self->_contentObscuringView removeFromSuperview];
      v9 = self->_contentObscuringView;
      self->_contentObscuringView = 0;
    }
  }
}

- (void)setPlaceholderImage:(id)a3 verticalOffset:(double)a4 metadata:(id)a5
{
  v8 = a3;
  v9 = a5;
  [v9 horizontalObscuredPercentage];
  self->_placeholderHorizontalObscuredPercentage.top = v10;
  self->_placeholderHorizontalObscuredPercentage.left = v11;
  self->_placeholderHorizontalObscuredPercentage.bottom = v12;
  self->_placeholderHorizontalObscuredPercentage.right = v13;
  v14 = [(UIImageView *)self->_placeholderView image];
  if (v14 == v8)
  {
    placeholderVerticalOffset = self->_placeholderVerticalOffset;

    if (placeholderVerticalOffset == a4)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v15 = [(_SFWebView *)self scrollView];
  [v15 setScrollEnabled:v8 == 0];

  [(NSTimer *)self->_placeholderViewRemovalTimer invalidate];
  placeholderViewRemovalTimer = self->_placeholderViewRemovalTimer;
  self->_placeholderViewRemovalTimer = 0;

  if (v8)
  {
    objc_initWeak(&location, self);
    placeholderView = self->_placeholderView;
    if (!placeholderView)
    {
      v18 = objc_alloc_init(MEMORY[0x1E69B1BA0]);
      v19 = self->_placeholderView;
      self->_placeholderView = v18;

      v20 = self->_placeholderView;
      if (self->_contentObscuringView)
      {
        [(_SFWebView *)self insertSubview:v20 belowSubview:?];
      }

      else
      {
        [(_SFWebView *)self addSubview:v20];
      }

      [(_SFWebView *)self setNeedsLayout];
      placeholderView = self->_placeholderView;
    }

    [(UIImageView *)placeholderView setImage:v8];
    [(UIImageView *)self->_placeholderView setAlpha:1.0];
    v22 = [(UIImageView *)self->_placeholderView layer];
    [v22 removeAllAnimations];

    self->_placeholderVerticalOffset = a4;
    v23 = MEMORY[0x1E695DFF0];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __58___SFWebView_setPlaceholderImage_verticalOffset_metadata___block_invoke_3;
    v26[3] = &unk_1E8490860;
    objc_copyWeak(&v27, &location);
    v24 = [v23 scheduledTimerWithTimeInterval:0 repeats:v26 block:5.0];
    v25 = self->_placeholderViewRemovalTimer;
    self->_placeholderViewRemovalTimer = v24;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __58___SFWebView_setPlaceholderImage_verticalOffset_metadata___block_invoke;
    v30[3] = &unk_1E848F810;
    v30[4] = self;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __58___SFWebView_setPlaceholderImage_verticalOffset_metadata___block_invoke_2;
    v29[3] = &unk_1E848FA00;
    v29[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:0x10000 delay:v30 options:v29 animations:0.2 completion:0.05];
  }

LABEL_13:
}

- (void)setSuggestedFilenameForCurrentBackForwardListItem:(id)a3
{
  v4 = a3;
  v6 = [(_SFWebView *)self backForwardList];
  v5 = [v6 currentItem];
  [v5 _sf_setExplicitSuggestedFilename:v4];
}

- (void)presentDialogView:(id)a3 withAdditionalAnimations:(id)a4 forDialogController:(id)a5
{
  v9 = a3;
  v10 = a4;
  objc_storeStrong(&self->_dialogView, a3);
  v11 = a5;
  [(SFDialogView *)self->_dialogView setAutoresizingMask:18];
  [(_SFWebView *)self bounds];
  [(SFDialogView *)self->_dialogView setFrame:?];
  dialogView = self->_dialogView;
  [(_SFWebView *)self _obscuredInsets];
  [(SFDialogView *)dialogView setObscuredInsets:?];
  [(_SFWebView *)self addSubview:self->_dialogView];
  [(SFDialogView *)self->_dialogView setAlpha:0.0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77___SFWebView_presentDialogView_withAdditionalAnimations_forDialogController___block_invoke;
  v18[3] = &unk_1E848F810;
  v18[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v18];
  [v11 adjustContentOffsetToPreventTapjackking];

  v13 = MEMORY[0x1E69DD250];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77___SFWebView_presentDialogView_withAdditionalAnimations_forDialogController___block_invoke_2;
  v16[3] = &unk_1E8490798;
  v14 = v10;
  v16[4] = self;
  v17 = v14;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77___SFWebView_presentDialogView_withAdditionalAnimations_forDialogController___block_invoke_3;
  v15[3] = &unk_1E848FA00;
  v15[4] = self;
  [v13 _animateUsingDefaultTimingWithOptions:2 animations:v16 completion:v15];
  if (([(_SFWebView *)self isFirstResponder]& 1) != 0 || [(_SFWebView *)self _isAncestorOfFirstResponder])
  {
    [(SFDialogView *)self->_dialogView becomeFirstResponder];
  }
}

- (void)dismissDialogView:(id)a3 withAdditionalAnimations:(id)a4 forDialogController:(id)a5
{
  v7 = a3;
  v8 = a4;
  dialogView = self->_dialogView;
  self->_dialogView = 0;

  [(_SFWebView *)self setNeedsLayout];
  [v7 willDisappear];
  v10 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77___SFWebView_dismissDialogView_withAdditionalAnimations_forDialogController___block_invoke;
  v15[3] = &unk_1E8490798;
  v17 = v8;
  v16 = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77___SFWebView_dismissDialogView_withAdditionalAnimations_forDialogController___block_invoke_2;
  v13[3] = &unk_1E848FA00;
  v14 = v16;
  v11 = v16;
  v12 = v8;
  [v10 _animateUsingDefaultTimingWithOptions:6 animations:v15 completion:v13];
}

- (BOOL)webui_canPromptForAccountSecurityRecommendation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained sfWebViewCanPromptForAccountSecurityRecommendation];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)webui_setInputDashboardViewController:(id)a3
{
  v5 = a3;
  if (self->_inputDashboardViewController != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_inputDashboardViewController, a3);
    v6 = [(_SFWebView *)self firstResponder];
    [v6 reloadInputViews];

    v5 = v7;
  }
}

- (void)findInteraction:(id)a3 didEndFindSession:(id)a4
{
  v6.receiver = self;
  v6.super_class = _SFWebView;
  [(_SFWebView *)&v6 findInteraction:a3 didEndFindSession:a4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sfWebViewDidDismissFindOnPage:self];
  }
}

- (UIEdgeInsets)hitTestInsets
{
  top = self->_hitTestInsets.top;
  left = self->_hitTestInsets.left;
  bottom = self->_hitTestInsets.bottom;
  right = self->_hitTestInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (_SFWebViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)clippingView
{
  WeakRetained = objc_loadWeakRetained(&self->_clippingView);

  return WeakRetained;
}

@end
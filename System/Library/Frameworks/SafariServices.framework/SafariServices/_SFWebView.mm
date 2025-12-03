@interface _SFWebView
- (BOOL)becomeFirstResponder;
- (BOOL)webui_canPromptForAccountSecurityRecommendation;
- (NSString)evOrganizationName;
- (UIEdgeInsets)hitTestInsets;
- (UIView)clippingView;
- (_SFWebView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (_SFWebViewDelegate)delegate;
- (id)_enclosingViewForExposedRectComputation;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)inputAccessoryView;
- (id)scrollViewAtLocation:(CGPoint)location;
- (id)undoManager;
- (void)_close;
- (void)_setObscuredInsets:(UIEdgeInsets)insets;
- (void)_updateNavigationGesturesAllowed;
- (void)dealloc;
- (void)didEndFormControlInteraction;
- (void)didMoveToWindow;
- (void)didStartFormControlInteraction;
- (void)dismissDialogView:(id)view withAdditionalAnimations:(id)animations forDialogController:(id)controller;
- (void)findInteraction:(id)interaction didEndFindSession:(id)session;
- (void)layoutSubviews;
- (void)presentDialogView:(id)view withAdditionalAnimations:(id)animations forDialogController:(id)controller;
- (void)safeAreaInsetsDidChange;
- (void)setBottomBarHeightAboveKeyboard:(double)keyboard;
- (void)setObscuringContents:(BOOL)contents;
- (void)setPlaceholderImage:(id)image verticalOffset:(double)offset metadata:(id)metadata;
- (void)setSuggestedFilenameForCurrentBackForwardListItem:(id)item;
- (void)webui_setInputDashboardViewController:(id)controller;
@end

@implementation _SFWebView

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _SFWebView;
  [(_SFWebView *)&v7 didMoveToWindow];
  window = [(_SFWebView *)self window];

  if (window)
  {
    self->_hasBeenInWindow = 1;
  }

  else
  {
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    v5 = [callStackSymbols copy];
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
    _enclosingViewForExposedRectComputation = WeakRetained;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SFWebView;
    _enclosingViewForExposedRectComputation = [(_SFWebView *)&v8 _enclosingViewForExposedRectComputation];
  }

  v6 = _enclosingViewForExposedRectComputation;

  return v6;
}

- (id)scrollViewAtLocation:(CGPoint)location
{
  v4 = [(_SFWebView *)self hitTest:0 withEvent:location.x, location.y];
  v5 = v4;
  v6 = 0;
  if (!v4 || v4 == self)
  {
    superview = v4;
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

      superview = [(_SFWebView *)v5 superview];

      v6 = 0;
      if (superview)
      {
        v5 = superview;
        if (superview != self)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    superview = v5;
    v6 = superview;
  }

LABEL_9:

  return v6;
}

- (_SFWebView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  v10.receiver = self;
  v10.super_class = _SFWebView;
  v4 = [(_SFWebView *)&v10 initWithFrame:configuration configuration:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__sf_applicationDidEnterBackgroundOrWillTerminate_ name:*MEMORY[0x1E69DDAC8] object:0];
    [defaultCenter addObserver:v4 selector:sel__sf_applicationDidEnterBackgroundOrWillTerminate_ name:*MEMORY[0x1E69DDBD0] object:0];
    scrollView = [(_SFWebView *)v4 scrollView];
    if (objc_opt_respondsToSelector())
    {
      [scrollView _setAlwaysAppliesKeyboardBottomInsetAdjustment:1];
    }

    [scrollView setContentInsetAdjustmentBehavior:2];
    v7 = SFFocusGroupIdentifierForOwner();
    [(_SFWebView *)v4 setFocusGroupIdentifier:v7];

    v8 = v4;
  }

  return v4;
}

- (void)_setObscuredInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
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
      v8 = [(_SFWebView *)&v27 hitTest:eventCopy withEvent:x, y];
    }

    else
    {
      scrollView = [(_SFWebView *)self scrollView];
      [scrollView bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [scrollView convertPoint:self fromView:{x, y}];
      v30.x = v24;
      v30.y = v25;
      v32.origin.x = v17;
      v32.origin.y = v19;
      v32.size.width = v21;
      v32.size.height = v23;
      if (CGRectContainsPoint(v32, v30))
      {
        v8 = scrollView;
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
    becomeFirstResponder = [(SFDialogView *)dialogView becomeFirstResponder];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _SFWebView;
    becomeFirstResponder = [(_SFWebView *)&v8 becomeFirstResponder];
  }

  v6 = becomeFirstResponder;

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
  inputAccessoryView = [(_SFWebView *)&v11 inputAccessoryView];
  v4 = inputAccessoryView;
  if (inputAccessoryView)
  {
    inputAccessoryContainerView = inputAccessoryView;
    if (self->_bottomBarHeightAboveKeyboard != 0.0)
    {
      inputAccessoryContainerView = self->_inputAccessoryContainerView;
      if (!inputAccessoryContainerView)
      {
        v6 = [objc_alloc(MEMORY[0x1E69B1C18]) initWithWebFormAccessoryView:inputAccessoryView bottomBarHeight:self->_bottomBarHeightAboveKeyboard];
        v7 = self->_inputAccessoryContainerView;
        self->_inputAccessoryContainerView = v6;

        clearColor = [MEMORY[0x1E69DC888] clearColor];
        [(SFWebFormAccessoryViewWrapper *)self->_inputAccessoryContainerView setBackgroundColor:clearColor];

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

- (void)setBottomBarHeightAboveKeyboard:(double)keyboard
{
  if ((_SFEqualWithEpsilon() & 1) == 0)
  {
    self->_bottomBarHeightAboveKeyboard = keyboard;
    [(SFWebFormAccessoryViewWrapper *)self->_inputAccessoryContainerView setBottomBarHeight:keyboard];

    [(_SFWebView *)self reloadInputViews];
  }
}

- (id)undoManager
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained overrideUndoManagerForSFWebView:self], (undoManager = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6.receiver = self;
    v6.super_class = _SFWebView;
    undoManager = [(_SFWebView *)&v6 undoManager];
  }

  return undoManager;
}

- (NSString)evOrganizationName
{
  serverTrust = [(_SFWebView *)self serverTrust];
  if (serverTrust && ((v3 = serverTrust, (v4 = SecTrustCopyInfo()) != 0) || SecTrustEvaluateWithError(v3, 0) && (v4 = SecTrustCopyInfo()) != 0))
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

- (void)setObscuringContents:(BOOL)contents
{
  if (self->_obscuringContents != contents)
  {
    self->_obscuringContents = contents;
    if (contents)
    {
      v4 = objc_alloc(MEMORY[0x1E69DD250]);
      [(_SFWebView *)self bounds];
      v5 = [v4 initWithFrame:?];
      contentObscuringView = self->_contentObscuringView;
      self->_contentObscuringView = v5;

      [(UIView *)self->_contentObscuringView setAutoresizingMask:18];
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      [(UIView *)self->_contentObscuringView setBackgroundColor:systemBackgroundColor];

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

- (void)setPlaceholderImage:(id)image verticalOffset:(double)offset metadata:(id)metadata
{
  imageCopy = image;
  metadataCopy = metadata;
  [metadataCopy horizontalObscuredPercentage];
  self->_placeholderHorizontalObscuredPercentage.top = v10;
  self->_placeholderHorizontalObscuredPercentage.left = v11;
  self->_placeholderHorizontalObscuredPercentage.bottom = v12;
  self->_placeholderHorizontalObscuredPercentage.right = v13;
  image = [(UIImageView *)self->_placeholderView image];
  if (image == imageCopy)
  {
    placeholderVerticalOffset = self->_placeholderVerticalOffset;

    if (placeholderVerticalOffset == offset)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  scrollView = [(_SFWebView *)self scrollView];
  [scrollView setScrollEnabled:imageCopy == 0];

  [(NSTimer *)self->_placeholderViewRemovalTimer invalidate];
  placeholderViewRemovalTimer = self->_placeholderViewRemovalTimer;
  self->_placeholderViewRemovalTimer = 0;

  if (imageCopy)
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

    [(UIImageView *)placeholderView setImage:imageCopy];
    [(UIImageView *)self->_placeholderView setAlpha:1.0];
    layer = [(UIImageView *)self->_placeholderView layer];
    [layer removeAllAnimations];

    self->_placeholderVerticalOffset = offset;
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

- (void)setSuggestedFilenameForCurrentBackForwardListItem:(id)item
{
  itemCopy = item;
  backForwardList = [(_SFWebView *)self backForwardList];
  currentItem = [backForwardList currentItem];
  [currentItem _sf_setExplicitSuggestedFilename:itemCopy];
}

- (void)presentDialogView:(id)view withAdditionalAnimations:(id)animations forDialogController:(id)controller
{
  viewCopy = view;
  animationsCopy = animations;
  objc_storeStrong(&self->_dialogView, view);
  controllerCopy = controller;
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
  [controllerCopy adjustContentOffsetToPreventTapjackking];

  v13 = MEMORY[0x1E69DD250];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77___SFWebView_presentDialogView_withAdditionalAnimations_forDialogController___block_invoke_2;
  v16[3] = &unk_1E8490798;
  v14 = animationsCopy;
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

- (void)dismissDialogView:(id)view withAdditionalAnimations:(id)animations forDialogController:(id)controller
{
  viewCopy = view;
  animationsCopy = animations;
  dialogView = self->_dialogView;
  self->_dialogView = 0;

  [(_SFWebView *)self setNeedsLayout];
  [viewCopy willDisappear];
  v10 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77___SFWebView_dismissDialogView_withAdditionalAnimations_forDialogController___block_invoke;
  v15[3] = &unk_1E8490798;
  v17 = animationsCopy;
  v16 = viewCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77___SFWebView_dismissDialogView_withAdditionalAnimations_forDialogController___block_invoke_2;
  v13[3] = &unk_1E848FA00;
  v14 = v16;
  v11 = v16;
  v12 = animationsCopy;
  [v10 _animateUsingDefaultTimingWithOptions:6 animations:v15 completion:v13];
}

- (BOOL)webui_canPromptForAccountSecurityRecommendation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    sfWebViewCanPromptForAccountSecurityRecommendation = [WeakRetained sfWebViewCanPromptForAccountSecurityRecommendation];
  }

  else
  {
    sfWebViewCanPromptForAccountSecurityRecommendation = 1;
  }

  return sfWebViewCanPromptForAccountSecurityRecommendation;
}

- (void)webui_setInputDashboardViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_inputDashboardViewController != controllerCopy)
  {
    v7 = controllerCopy;
    objc_storeStrong(&self->_inputDashboardViewController, controller);
    firstResponder = [(_SFWebView *)self firstResponder];
    [firstResponder reloadInputViews];

    controllerCopy = v7;
  }
}

- (void)findInteraction:(id)interaction didEndFindSession:(id)session
{
  v6.receiver = self;
  v6.super_class = _SFWebView;
  [(_SFWebView *)&v6 findInteraction:interaction didEndFindSession:session];
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
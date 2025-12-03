@interface _SFNavigationBar
+ (double)estimatedDefaultHeightForStatusBarHeight:(double)height;
+ (double)estimatedMinimumHeightForStatusBarHeight:(double)height;
+ (void)initialize;
- (BOOL)canBecomeFirstResponder;
- (BOOL)clickInteractionShouldBegin:(id)begin;
- (BOOL)containsBarItem:(int64_t)item;
- (BOOL)hasToolbar;
- (BOOL)navigationBarURLButton:(id)button canWriteAtLocation:(CGPoint)location;
- (BOOL)navigationBarURLButton:(id)button shouldAllowLongPressAtPoint:(CGPoint)point;
- (BOOL)navigationBarURLButton:(id)button shouldShowMenuForGestureWithRecognizer:(id)recognizer;
- (BOOL)navigationBarURLButtonShouldCopy:(id)copy;
- (BOOL)navigationBarURLButtonShouldPaste:(id)paste;
- (CGRect)URLOutlineFrameInNavigationBarSpace;
- (CGRect)urlOutlineFrameRelativeToView:(id)view;
- (CGSize)dismissButtonSize;
- (NSArray)popoverPassthroughViews;
- (_BYTE)_updateToolbarAndCancelButtonAlpha;
- (_BYTE)_viewToInsertProgressBarIn;
- (_SFNavigationBar)initWithFrame:(CGRect)frame inputMode:(unint64_t)mode;
- (_SFNavigationBarDelegate)delegate;
- (_SFPopoverSourceInfo)URLOutlinePopoverSourceInfo;
- (_SFPopoverSourceInfo)formatMenuButtonPopoverSourceInfo;
- (_SFPopoverSourceInfo)reloadButtonPopoverSourceInfo;
- (char)_navigationBarTrailingButtonWithType:(char *)type;
- (double)_auxiliaryBarSquishedVerticalOffsetForSquishTransform:(uint64_t)transform;
- (double)_controlsAlpha;
- (double)_defaultHeightExcludingAuxiliaryBar;
- (double)_layoutBounds;
- (double)_minimumURLOutlineToBoundsPadding;
- (double)_notSecureGrayColor;
- (double)_notSecureWarningColor;
- (double)_privateBrowsingLabelRevealPercent;
- (double)_textFieldTopMargin;
- (double)_urlOutlineOriginY;
- (double)_widthForAccessoryButtonType:(uint64_t)type;
- (double)defaultHeight;
- (double)dismissButtonPadding;
- (double)minimumHeight;
- (id)_attributedStringSecurityAnnotation;
- (id)_dimmingButtonWithAction:(uint64_t *)val;
- (id)_editingLabelFont;
- (id)_expandedURLLabelParagraphStyle;
- (id)_formatToggleButtonImage;
- (id)_hitTestCandidateViews;
- (id)_mediaStateMuteButtonColor;
- (id)_notSecureAnnotationColor;
- (id)_placeholderText;
- (id)_searchIndicatorColorForSquishTransformFactor:(id *)factor;
- (id)_timingFunctionForAnimation;
- (id)_toolbarForBarItem:(id *)item;
- (id)_viewForAccessoryButtonType:(uint64_t)type;
- (id)availabilityDisplayController:(id)controller determineBestLabelsForPresentation:(id)presentation;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)popoverSourceInfoForBarItem:(int64_t)item;
- (id)textForNavigationBarURLButton:(id)button;
- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session;
- (uint64_t)_adjustLabelRectForLeadingButtonWithDelay:(uint64_t)result;
- (uint64_t)_shouldUpdateBackdropStyleForTransitionFromItem:(void *)item toItem:;
- (uint64_t)_showsPrivateAnnotation;
- (uint64_t)_updateFormatButtonAccessories;
- (uint64_t)_updateProgressViewCornerRadius;
- (uint64_t)_updateSecurityWarningsVisibility;
- (uint64_t)_updateSeparatorAlpha;
- (uint64_t)_updateTextFieldFrame;
- (uint64_t)_updateTextMetrics;
- (uint64_t)_updateURLOutlineCornerRadius;
- (void)_URLLabelFont;
- (void)_URLTapped:(id)tapped;
- (void)_barMetricTraitsDidChange;
- (void)_barMetricsDidChange;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_compressedBarTapped;
- (void)_configureNavigationBarTrailingButtonTintedImages;
- (void)_copyNavigationBarURLToPasteboard;
- (void)_customButtonHorizontalPaddingWithInset:(uint64_t *)inset;
- (void)_didUpdateEffectiveTheme;
- (void)_dismissButtonTapped:(id)tapped;
- (void)_formatToggleButtonTapped:(id)tapped;
- (void)_hideAvailabilityLabelAnimated:(uint64_t)animated;
- (void)_mediaStateMuteButtonTapped:(id)tapped;
- (void)_reloadButtonPressed;
- (void)_setHidePlaceholderURLItemsForPencilInput:(uint64_t)input;
- (void)_setUpFormatToggleButtonIfNeeded;
- (void)_stopButtonPressed;
- (void)_transitionFromView:(void *)view toView:(int)toView animated:;
- (void)_updateAccessoryButtonsAlpha;
- (void)_updateAccessoryButtonsVisibility;
- (void)_updateActiveURLLabelAccessory;
- (void)_updateAvailabilityAndPageMenuButtonAnimated:(uint64_t)animated;
- (void)_updateBackdropFrame;
- (void)_updateButtonMetrics;
- (void)_updateEffectiveTheme;
- (void)_updateFakeViews;
- (void)_updateFonts;
- (void)_updateFormatButtonSelected;
- (void)_updateMediaStateMuteButton;
- (void)_updateNavigationBarTrailingButtonType;
- (void)_updatePlaceholderText;
- (void)_updateProgressView;
- (void)_updateProgressViewFillColor;
- (void)_updateSearchIndicator;
- (void)_updateSecurityWarningsVisibility;
- (void)_updateShowsSearchIndicator;
- (void)_updateTemporarySuppressionOfItemText:(id *)text;
- (void)_updateText;
- (void)_updateTextColor;
- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item afterDestinationLayerBouncesBlock:(id)block;
- (void)clickInteractionDidClickDown:(id)down;
- (void)dealloc;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)fluidProgressViewDidShowProgress:(id)progress;
- (void)fluidProgressViewWillShowProgress:(id)progress;
- (void)layoutSubviews;
- (void)navigationBarItemDidUpdateContentOptions:(id)options resetDisplay:(BOOL)display;
- (void)navigationBarItemDidUpdateCustomPlaceholderText:(id)text;
- (void)navigationBarItemDidUpdateHasHiddenElements:(id)elements;
- (void)navigationBarItemDidUpdateOverlayConfiguration:(id)configuration;
- (void)navigationBarURLButtonDidReceivePasteCommand:(id)command;
- (void)navigationBarURLButtonDidRequestFocusForPencilInput:(id)input completionHandler:(id)handler;
- (void)setBackdropGroupDisabled:(BOOL)disabled;
- (void)setBackdropGroupName:(id)name;
- (void)setContentUnderStatusBarHeight:(double)height;
- (void)setControlsHidden:(BOOL)hidden;
- (void)setDismissButtonStyle:(int64_t)style animated:(BOOL)animated;
- (void)setExpanded:(BOOL)expanded completionHandler:(id)handler;
- (void)setExpanded:(BOOL)expanded textFieldSelectionRange:(_NSRange)range completionHandler:(id)handler;
- (void)setHasToolbar:(BOOL)toolbar;
- (void)setItem:(id)item;
- (void)setLockdownStatusBar:(id)bar;
- (void)setMinimumBackdropHeight:(double)height;
- (void)setPocketContainerInteraction:(id)interaction;
- (void)setSuppressesBlur:(BOOL)blur;
- (void)setTheme:(id)theme;
- (void)setUnifiedFieldShowsProgressView:(BOOL)view;
- (void)setUsesFaintSeparator:(BOOL)separator;
- (void)setUsesNarrowLayout:(BOOL)layout;
- (void)tintColorDidChange;
@end

@implementation _SFNavigationBar

+ (void)initialize
{
  if (objc_opt_class() == self && initializeConstants_once != -1)
  {
    +[_SFNavigationBar initialize];
  }
}

- (void)setItem:(id)item
{
  itemCopy = item;
  v6 = self->_item;
  v7 = v6;
  if (v6 != itemCopy)
  {
    [(SFNavigationBarItem *)v6 removeObserver:self];
    fluidProgressController = [(SFNavigationBarItem *)v7 fluidProgressController];
    [fluidProgressController unregisterObserver:self->_progressView];

    objc_storeStrong(&self->_item, item);
    [(SFNavigationBarItem *)itemCopy addObserver:self];
    fluidProgressController2 = [(SFNavigationBarItem *)itemCopy fluidProgressController];
    [fluidProgressController2 registerObserver:self->_progressView];

    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __28___SFNavigationBar_setItem___block_invoke;
    v11[3] = &unk_1E848F6B0;
    v11[4] = self;
    v12 = v7;
    v13 = itemCopy;
    [v10 performWithoutAnimation:v11];
  }
}

- (void)setUsesNarrowLayout:(BOOL)layout
{
  if (self->_usesNarrowLayout != layout)
  {
    layoutCopy = layout;
    self->_usesNarrowLayout = layout;
    [(_SFNavigationBar *)self _updateToolbarAndCancelButtonAlpha];
    _editingLabelFont = [(_SFNavigationBar *)self _editingLabelFont];
    narrowEditingScaleFactor = 1.0;
    if (self->_usesNarrowLayout)
    {
      narrowEditingScaleFactor = [(SFNavigationBarMetrics *)self->_barMetrics narrowEditingScaleFactor];
    }

    [(UITextField *)self->_textField setFont:_editingLabelFont];
    [(UILabel *)self->_expandedURLLabel setFont:_editingLabelFont];
    expandedURLLabel = self->_expandedURLLabel;
    CGAffineTransformMakeScale(&v8, 1.0 / narrowEditingScaleFactor, 1.0 / narrowEditingScaleFactor);
    [(UILabel *)expandedURLLabel setTransform:&v8];
    if (layoutCopy)
    {
      [(UIView *)self->_controlsContainer addSubview:self->_cancelButton];
    }

    else
    {
      [(UIButton *)self->_cancelButton removeFromSuperview];
    }

    [(_SFNavigationBar *)self _updateText];
    [(_SFNavigationBar *)self setNeedsLayout];
  }
}

- (void)setUnifiedFieldShowsProgressView:(BOOL)view
{
  if (self->_unifiedFieldShowsProgressView == !view)
  {
    self->_unifiedFieldShowsProgressView = view;
    [(_SFNavigationBar *)self _updateProgressViewCornerRadius];
    [(_SFNavigationBar *)self _updateProgressViewFillColor];
    if ([(_SFFluidProgressView *)self->_progressView isShowingProgress])
    {
      _viewToInsertProgressBarIn = [(_SFNavigationBar *)self _viewToInsertProgressBarIn];
      [_viewToInsertProgressBarIn addSubview:self->_progressView];
    }

    [(_SFNavigationBar *)self setNeedsLayout];
  }
}

- (void)setDismissButtonStyle:(int64_t)style animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SFDismissButton *)self->_dismissButton style]!= style)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51___SFNavigationBar_setDismissButtonStyle_animated___block_invoke;
    v8[3] = &unk_1E848F638;
    v8[4] = self;
    v8[5] = style;
    v7 = _Block_copy(v8);
    if (animatedCopy)
    {
      [(_SFNavigationBar *)self layoutIfNeeded];
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v7 completion:0];
    }

    else
    {
      [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
    }
  }
}

- (CGSize)dismissButtonSize
{
  [(SFDismissButton *)self->_dismissButton bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  if (!themeCopy)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    themeCopy = [MEMORY[0x1E69B1C20] themeWithBarTintStyle:v7];
  }

  theme = self->_theme;
  if (theme != themeCopy)
  {
    obj = themeCopy;
    v9 = [(_SFBarTheme *)theme isEqual:themeCopy];
    themeCopy = obj;
    if (!v9)
    {
      objc_storeStrong(&self->_theme, obj);
      [(_SFNavigationBar *)self _updateEffectiveTheme];
      themeCopy = obj;
    }
  }
}

+ (double)estimatedDefaultHeightForStatusBarHeight:(double)height
{
  v5 = estimatedBarMetrics();
  [(SFNavigationBarMetrics *)v5 updateForStatusBarHeight:height];
  v6 = -[SFNavigationBarMetrics barHeightWithBarMetricsCategory:](v5, [self _metricsCategory]);

  return v6;
}

+ (double)estimatedMinimumHeightForStatusBarHeight:(double)height
{
  v4 = estimatedBarMetrics();
  [(SFNavigationBarMetrics *)v4 updateForStatusBarHeight:height];
  minimumBarHeight = [(SFNavigationBarMetrics *)v4 minimumBarHeight];

  return minimumBarHeight;
}

- (double)minimumHeight
{
  minimumBarHeight = [(SFNavigationBarMetrics *)self->_barMetrics minimumBarHeight];
  [(SFLockdownStatusBar *)self->_lockdownStatusBar preferredSize];
  if (v4 == 0.0)
  {
    return minimumBarHeight;
  }

  [_SFNavigationBar _auxiliaryBarSquishedVerticalOffsetForSquishTransform:?];
  [(SFLockdownStatusBar *)self->_lockdownStatusBar preferredSize];
  [(SFLockdownStatusBar *)self->_lockdownStatusBar preferredSize];
  [(SFLockdownStatusBar *)self->_lockdownStatusBar titleBaselineInsetFromBottom];
  [(SFLockdownStatusBar *)self->_lockdownStatusBar titleBaselineInsetFromBottom];
  [(_SFNavigationBar *)self defaultHeight];

  _SFRoundFloatToPixels();
  return result;
}

- (id)_dimmingButtonWithAction:(uint64_t *)val
{
  if (val)
  {
    objc_initWeak(&location, val);
    [(SFNavigationBarMetrics *)val[81] urlOutlineHeight];
    _SFRoundRectToPixels();
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    if (val[103] == 1)
    {
      v12 = [MEMORY[0x1E69B1C30] buttonWithType:1];
      [v12 setFrame:{v8, v9, v10, v11}];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E69B1C30]) initWithFrame:{v4, v5, v6, v7}];
    }

    [v12 setNormalImageAlpha:1.0];
    [v12 setHighlightedImageAlpha:0.2];
    [v12 setHighlightAnimationDuration:0.5];
    [v12 setAdjustsImageWhenHighlighted:0];
    [v12 setAdjustsImageWhenDisabled:0];
    [v12 setExclusiveTouch:1];
    [v12 addTarget:val action:a2 forControlEvents:64];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45___SFNavigationBar__dimmingButtonWithAction___block_invoke;
    v14[3] = &unk_1E84908D8;
    objc_copyWeak(&v15, &location);
    [v12 setPointerStyleProvider:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setHasToolbar:(BOOL)toolbar
{
  toolbarCopy = toolbar;
  if ([(_SFNavigationBar *)self hasToolbar]!= toolbar)
  {
    if (toolbarCopy)
    {
      if ([MEMORY[0x1E69C8880] isSolariumEnabled])
      {
        v5 = [SFBarButtonGroupContainerConfiguration alloc];
        theme = self->_theme;
        traitCollectionForButtonMetrics = [(SFNavigationBarMetrics *)self->_barMetrics traitCollectionForButtonMetrics];
        v8 = [(SFBarButtonGroupContainerConfiguration *)v5 initWithTheme:theme preferredTraitCollection:traitCollectionForButtonMetrics];

        v9 = [[SFBarButtonGroupContainer alloc] initWithConfiguration:v8];
        leadingBarButtonGroupContainer = self->_leadingBarButtonGroupContainer;
        self->_leadingBarButtonGroupContainer = v9;

        v11 = [SFBarButtonGroupContainerConfiguration alloc];
        v12 = self->_theme;
        traitCollectionForButtonMetrics2 = [(SFNavigationBarMetrics *)self->_barMetrics traitCollectionForButtonMetrics];
        v14 = [(SFBarButtonGroupContainerConfiguration *)v11 initWithTheme:v12 preferredTraitCollection:traitCollectionForButtonMetrics2];

        v15 = [[SFBarButtonGroupContainer alloc] initWithConfiguration:v14];
        trailingBarButtonGroupContainer = self->_trailingBarButtonGroupContainer;
        self->_trailingBarButtonGroupContainer = v15;

        [(UIView *)self->_controlsContainer addSubview:self->_leadingBarButtonGroupContainer];
        [(UIView *)self->_controlsContainer addSubview:self->_trailingBarButtonGroupContainer];
      }

      else
      {
        _minimumURLOutlineToBoundsPadding = [(_SFNavigationBar *)self _minimumURLOutlineToBoundsPadding];
        v24 = [[_SFToolbar alloc] initWithPlacement:0];
        leadingToolbar = self->_leadingToolbar;
        self->_leadingToolbar = v24;

        [(_SFToolbar *)self->_leadingToolbar setSuperviewOwningLayout:self];
        [(_SFToolbar *)self->_leadingToolbar setTheme:self->_effectiveTheme];
        v26 = [[SFToolbarContainer alloc] initWithToolbar:?];
        leadingToolbarContainer = self->_leadingToolbarContainer;
        self->_leadingToolbarContainer = v26;

        [(SFToolbarContainer *)self->_leadingToolbarContainer setMinimumWidth:_minimumURLOutlineToBoundsPadding];
        [(SFToolbarContainer *)self->_leadingToolbarContainer _setTouchInsets:-20.0, 0.0, -20.0, 0.0];
        [(UIView *)self->_controlsContainer addSubview:self->_leadingToolbarContainer];
        v28 = [[_SFToolbar alloc] initWithPlacement:0];
        trailingToolbar = self->_trailingToolbar;
        self->_trailingToolbar = v28;

        [(_SFToolbar *)self->_trailingToolbar setSuperviewOwningLayout:self];
        [(_SFToolbar *)self->_trailingToolbar setTheme:self->_effectiveTheme];
        v30 = [[SFToolbarContainer alloc] initWithToolbar:?];
        trailingToolbarContainer = self->_trailingToolbarContainer;
        self->_trailingToolbarContainer = v30;

        [(SFToolbarContainer *)self->_trailingToolbarContainer setMinimumWidth:_minimumURLOutlineToBoundsPadding];
        [(SFToolbarContainer *)self->_trailingToolbarContainer _setTouchInsets:-20.0, 0.0, -20.0, 0.0];
        [(UIView *)self->_controlsContainer addSubview:self->_trailingToolbarContainer];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained navigationBar:self didCreateLeadingToolbar:self->_leadingToolbar trailingToolbar:self->_trailingToolbar];
      }

      if ([MEMORY[0x1E69C8880] isSolariumEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [WeakRetained navigationBar:self didCreateBar:self->_leadingBarButtonGroupContainer trailingBar:self->_trailingBarButtonGroupContainer];
      }
    }

    else
    {
      [(_SFToolbar *)self->_leadingToolbar removeFromSuperview];
      v18 = self->_leadingToolbar;
      self->_leadingToolbar = 0;

      [(SFToolbarContainer *)self->_leadingToolbarContainer removeFromSuperview];
      v19 = self->_leadingToolbarContainer;
      self->_leadingToolbarContainer = 0;

      [(_SFToolbar *)self->_trailingToolbar removeFromSuperview];
      v20 = self->_trailingToolbar;
      self->_trailingToolbar = 0;

      [(SFToolbarContainer *)self->_trailingToolbarContainer removeFromSuperview];
      v21 = self->_trailingToolbarContainer;
      self->_trailingToolbarContainer = 0;

      [(SFBarButtonGroupContainer *)self->_leadingBarButtonGroupContainer removeFromSuperview];
      v22 = self->_leadingBarButtonGroupContainer;
      self->_leadingBarButtonGroupContainer = 0;

      [(SFBarButtonGroupContainer *)self->_trailingBarButtonGroupContainer removeFromSuperview];
      WeakRetained = self->_trailingBarButtonGroupContainer;
      self->_trailingBarButtonGroupContainer = 0;
    }

    if (self->_inputMode == 1)
    {

      [(_SFNavigationBar *)self _updateAccessoryButtonsArrangement];
    }
  }
}

- (BOOL)hasToolbar
{
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v4 = &OBJC_IVAR____SFNavigationBar__leadingToolbar;
  if (isSolariumEnabled)
  {
    v4 = &OBJC_IVAR____SFNavigationBar__leadingBarButtonGroupContainer;
  }

  return *(&self->super.super.super.isa + *v4) != 0;
}

- (void)_barMetricTraitsDidChange
{
  traitCollection = [(_SFNavigationBar *)self traitCollection];
  if ([(SFNavigationBarMetrics *)self->_barMetrics updateForTraitCollection:traitCollection])
  {
    [(_SFNavigationBar *)self _barMetricsDidChange];
  }
}

- (_SFNavigationBar)initWithFrame:(CGRect)frame inputMode:(unint64_t)mode
{
  v8.receiver = self;
  v8.super_class = _SFNavigationBar;
  v5 = [(_SFNavigationBar *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [_SFNavigationBar initWithFrame:v5 inputMode:mode];
  }

  return v6;
}

- (void)_reloadButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarReloadButtonWasTapped:self];
}

- (BOOL)clickInteractionShouldBegin:(id)begin
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarFormatMenuButtonStartedInteraction:self];

  return 1;
}

- (void)clickInteractionDidClickDown:(id)down
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarReaderButtonWasTapped:self];
}

- (void)_stopButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarStopLoadingButtonWasTapped:self];
}

- (void)_compressedBarTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained compressedNavigationBarWasTapped:self];
}

- (void)_URLTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarURLWasTapped:self completionHandler:0];
  }
}

- (void)_formatToggleButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  formatButtonTapAction = self->_formatButtonTapAction;
  if (formatButtonTapAction)
  {
    if (formatButtonTapAction == 2)
    {
      v9 = WeakRetained;
      v7 = objc_opt_respondsToSelector();
      v5 = v9;
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      [v9 navigationBarTranslateButtonWasTapped:self];
    }

    else
    {
      if (formatButtonTapAction != 1)
      {
        goto LABEL_10;
      }

      v9 = WeakRetained;
      [WeakRetained navigationBarReaderButtonWasTapped:self];
    }
  }

  else
  {
    v9 = WeakRetained;
    v8 = objc_opt_respondsToSelector();
    v5 = v9;
    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

    [v9 navigationBarFormatMenuButtonWasTapped:self];
  }

  v5 = v9;
LABEL_10:
}

- (void)_mediaStateMuteButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarMediaStateMuteButtonWasTapped:self];
  }
}

- (void)_cancelButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarCancelButtonWasTapped:self];
}

- (void)_dismissButtonTapped:(id)tapped
{
  v4 = WBS_LOG_CHANNEL_PREFIXUserInterface();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_DEFAULT, "Dismiss button tapped", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained navigationBarDoneButtonWasTapped:self];
    }

    else
    {
      v7 = WBS_LOG_CHANNEL_PREFIXUserInterface();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [_SFNavigationBar _dismissButtonTapped:];
      }
    }
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXUserInterface();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_SFNavigationBar _dismissButtonTapped:];
    }
  }
}

- (double)_controlsAlpha
{
  overlayConfiguration = [(SFNavigationBarItem *)self->_item overlayConfiguration];

  if (overlayConfiguration)
  {
    return 0.0;
  }

  [(_SFNavigationBar *)self minimumHeight];
  v6 = v5;
  bounds = [(_SFNavigationBar *)self bounds];
  v9.n128_f64[0] = fmin(fmax((v8 - v6) / (self->_maximumHeight - v6), 0.0), 1.0);

  MEMORY[0x1EEE1E3E0](bounds, v9);
  return result;
}

- (void)fluidProgressViewDidShowProgress:(id)progress
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled] && !self->_unifiedFieldShowsProgressView)
  {
    [(_SFNavigationBar *)self setNeedsLayout];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53___SFNavigationBar_fluidProgressViewDidShowProgress___block_invoke;
    v6[3] = &unk_1E848F810;
    v6[4] = self;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53___SFNavigationBar_fluidProgressViewDidShowProgress___block_invoke_2;
    v5[3] = &unk_1E848FA00;
    v5[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingDefaultDampedSpringWithDelay:50331652 initialSpringVelocity:v6 options:v5 animations:0.0 completion:0.0];
  }

  else
  {
    progressView = self->_progressView;

    [(_SFFluidProgressView *)progressView removeFromSuperview];
  }
}

- (id)_viewForAccessoryButtonType:(uint64_t)type
{
  v4 = 0;
  if (type && a2 <= 3)
  {
    v4 = *(type + *off_1E8490B20[a2]);
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v78 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  layer = [(_SFNavigationBar *)self layer];
  layer2 = [(_SFNavigationBar *)self layer];
  presentationLayer = [layer2 presentationLayer];
  [layer convertPoint:presentationLayer toLayer:{x, y}];
  v12 = v11;
  v14 = v13;

  v76.receiver = self;
  v76.super_class = _SFNavigationBar;
  v15 = [(_SFNavigationBar *)&v76 hitTest:eventCopy withEvent:v12, v14];
  if (!v15)
  {
    v18 = 0;
    goto LABEL_31;
  }

  if ([(UIButton *)self->_compressedBarButton isUserInteractionEnabled])
  {
    compressedBarButton = self->_compressedBarButton;
LABEL_4:
    v17 = compressedBarButton;
LABEL_30:
    v18 = v17;
    goto LABEL_31;
  }

  if (self->_expanded)
  {
    [(UITextField *)self->_textField convertPoint:self fromView:v12, v14];
    v20 = v19;
    v22 = v21;
    if ([(UITextField *)self->_textField pointInside:eventCopy withEvent:?])
    {
      v17 = [(UITextField *)self->_textField hitTest:eventCopy withEvent:v20, v22];
      goto LABEL_30;
    }

    if (self->_usesNarrowLayout)
    {
      if (([(UIButton *)self->_cancelButton frame], v44 = v43, v46 = v45, v48 = v47, v50 = v49, [(UIButton *)self->_cancelButton superview], v51 = objc_claimAutoreleasedReturnValue(), [(_SFNavigationBar *)self convertRect:v51 fromView:v44, v46, v48, v50], v53 = v52, v55 = v54, v57 = v56, v59 = v58, v51, [(_SFNavigationBar *)self _sf_usesLeftToRightLayout]) && (v82.origin.x = v53, v82.origin.y = v55, v82.size.width = v57, v82.size.height = v59, v12 >= CGRectGetMinX(v82)) || (v83.origin.x = v53, v83.origin.y = v55, v83.size.width = v57, v83.size.height = v59, v12 <= CGRectGetMaxX(v83)))
      {
        compressedBarButton = self->_cancelButton;
        goto LABEL_4;
      }
    }

LABEL_29:
    v17 = v15;
    goto LABEL_30;
  }

  overlayConfiguration = [(SFNavigationBarItem *)self->_item overlayConfiguration];
  if (overlayConfiguration)
  {
    v24 = overlayConfiguration;
    v25 = [(_SFNavigationBarURLButton *)v15 isDescendantOfView:self->_URLOutline];

    if (v25)
    {
      goto LABEL_29;
    }
  }

  _hitTestCandidateViews = [(_SFNavigationBar *)self _hitTestCandidateViews];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v27 = [_hitTestCandidateViews countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v73;
    v31 = 10.0;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v73 != v30)
        {
          objc_enumerationMutation(_hitTestCandidateViews);
        }

        v33 = *(*(&v72 + 1) + 8 * i);
        if (v33)
        {
          [*(*(&v72 + 1) + 8 * i) alpha];
          if (v34 >= 0.01 && ([v33 isHidden] & 1) == 0)
          {
            superview = [v33 superview];

            if (superview)
            {
              [v33 bounds];
              [v33 convertRect:self toView:?];
              v36 = v80.origin.x;
              v37 = v80.origin.y;
              width = v80.size.width;
              height = v80.size.height;
              v40 = CGRectGetMinX(v80) - v12;
              v81.origin.x = v36;
              v81.origin.y = v37;
              v81.size.width = width;
              v81.size.height = height;
              v41 = fmax(v40, v12 - CGRectGetMaxX(v81));
              if (v41 < v31)
              {
                v42 = v33;

                v29 = v42;
                v31 = v41;
              }
            }
          }
        }
      }

      v28 = [_hitTestCandidateViews countByEnumeratingWithState:&v72 objects:v77 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
    v31 = 10.0;
  }

  URLOutline = self->_URLOutline;
  [(_SFNavigationBarURLButton *)URLOutline bounds];
  [(_SFNavigationBarURLButton *)URLOutline convertRect:self toView:?];
  if (!v29)
  {
    v66 = v62;
    v67 = v63;
    v68 = v64;
    v69 = v65;
    v70 = CGRectGetMinX(*&v62) - v12;
    v84.origin.x = v66;
    v84.origin.y = v67;
    v84.size.width = v68;
    v84.size.height = v69;
    if (fmax(v70, v12 - CGRectGetMaxX(v84)) >= v31)
    {
      v29 = 0;
    }

    else
    {
      v29 = self->_URLOutline;
    }
  }

  if (v29)
  {
    v71 = v29;
  }

  else
  {
    v71 = v15;
  }

  v18 = v71;

LABEL_31:

  return v18;
}

- (void)setExpanded:(BOOL)expanded completionHandler:(id)handler
{
  expandedCopy = expanded;
  handlerCopy = handler;
  if (expandedCopy)
  {
    textWhenExpanded = [(SFNavigationBarItem *)self->_item textWhenExpanded];
    v7 = [textWhenExpanded length];

    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(_SFNavigationBar *)self setExpanded:expandedCopy textFieldSelectionRange:v8 completionHandler:v7, handlerCopy];
}

- (void)setLockdownStatusBar:(id)bar
{
  barCopy = bar;
  lockdownStatusBar = self->_lockdownStatusBar;
  if (lockdownStatusBar != barCopy)
  {
    v9 = barCopy;
    if (lockdownStatusBar)
    {
      [(SFLockdownStatusBar *)lockdownStatusBar removeFromSuperview];
    }

    objc_storeStrong(&self->_lockdownStatusBar, bar);
    layer = [(SFLockdownStatusBar *)self->_lockdownStatusBar layer];
    [layer setAnchorPoint:{0.5, 0.0}];

    [(_SFNavigationBar *)self addSubview:self->_lockdownStatusBar];
    [(_SFNavigationBar *)self defaultHeight];
    self->_maximumHeight = v8;
    [(_SFNavigationBar *)self setNeedsLayout];
    barCopy = v9;
  }
}

- (void)setExpanded:(BOOL)expanded textFieldSelectionRange:(_NSRange)range completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  expandedCopy = expanded;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke;
  aBlock[3] = &unk_1E84909E8;
  v10 = handlerCopy;
  v50 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (self->_expanded == expandedCopy)
  {
    (*(v11 + 2))(v11);
  }

  else
  {
    self->_expanded = expandedCopy;
    shouldHidePlaceholderURLItemsForPencilInput = self->_shouldHidePlaceholderURLItemsForPencilInput;
    v13 = dispatch_group_create();
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_2;
    v48[3] = &unk_1E848F810;
    v48[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v48];
    dispatch_group_enter(v13);
    v14 = MEMORY[0x1E69DD250];
    if (self->_expanded)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 0.1;
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_3;
    v47[3] = &unk_1E848F810;
    v47[4] = self;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_4;
    v45[3] = &unk_1E848FCC0;
    v45[4] = self;
    v16 = v13;
    v46 = v16;
    [v14 animateWithDuration:50659328 delay:v47 options:v45 animations:0.2 completion:v15];
    dispatch_group_enter(v16);
    v17 = MEMORY[0x1E69DD250];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_5;
    v44[3] = &unk_1E848F810;
    v44[4] = self;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_6;
    v42[3] = &unk_1E848FA00;
    v18 = v16;
    v43 = v18;
    [v17 _animateUsingDefaultTimingWithOptions:0 animations:v44 completion:v42];
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      textWhenExpanded = [(SFNavigationBarItem *)self->_item textWhenExpanded];
      v20 = [textWhenExpanded length];

      if (v20)
      {
        if (!shouldHidePlaceholderURLItemsForPencilInput)
        {
          dispatch_group_enter(v18);
          v21 = MEMORY[0x1E69DD250];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_7;
          v38[3] = &unk_1E8490A10;
          v38[4] = self;
          v40 = location;
          v41 = length;
          v22 = v18;
          v39 = v22;
          [v21 performWithoutAnimation:v38];
          dispatch_group_enter(v22);
          v23 = MEMORY[0x1E69DD250];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_8;
          v37[3] = &unk_1E848F810;
          v37[4] = self;
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_9;
          v35[3] = &unk_1E848FA00;
          v24 = v22;
          v36 = v24;
          [v23 _animateWithDuration:50724864 delay:self options:v37 factory:v35 animations:0.2 completion:0.0];
          dispatch_group_enter(v24);
          v25 = MEMORY[0x1E69DD250];
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_10;
          v33[3] = &unk_1E848F548;
          v33[4] = self;
          v34 = v24;
          [v25 performWithoutAnimation:v33];
        }
      }
    }

    dispatch_group_enter(v18);
    v26 = MEMORY[0x1E69DD250];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_11;
    v32[3] = &unk_1E848F810;
    v32[4] = self;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __74___SFNavigationBar_setExpanded_textFieldSelectionRange_completionHandler___block_invoke_12;
    v29[3] = &unk_1E8490A38;
    v31 = shouldHidePlaceholderURLItemsForPencilInput;
    v29[4] = self;
    v30 = v18;
    v27 = v18;
    [v26 _animateUsingDefaultTimingWithOptions:0 animations:v32 completion:v29];
    dispatch_group_notify(v27, MEMORY[0x1E69E96A0], v12);
  }
}

- (void)setControlsHidden:(BOOL)hidden
{
  if (self->_controlsHidden != hidden)
  {
    self->_controlsHidden = hidden;
    [(_SFNavigationBar *)self _updateSeparatorAlpha];

    [(_SFNavigationBar *)self setNeedsLayout];
  }
}

- (void)setMinimumBackdropHeight:(double)height
{
  if (self->_minimumBackdropHeight != height)
  {
    self->_minimumBackdropHeight = height;
    [(_SFNavigationBar *)self setNeedsLayout];
  }
}

- (CGRect)URLOutlineFrameInNavigationBarSpace
{
  [(_SFNavigationBarURLButton *)self->_URLOutline bounds];
  URLOutline = self->_URLOutline;

  [(_SFNavigationBar *)self convertRect:URLOutline fromView:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)urlOutlineFrameRelativeToView:(id)view
{
  viewCopy = view;
  [(_SFNavigationBar *)self URLOutlineFrameInNavigationBarSpace];
  [(_SFNavigationBar *)self convertRect:viewCopy toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_updateSecurityWarningsVisibility
{
  if ([(SFNavigationBarItem *)self->_item showsSecurityAnnotation]&& ([(SFNavigationBarItem *)self->_item hasFocusedSensitiveFieldOnCurrentPage]& 1) == 0)
  {
    [(_SFNavigationBar *)self _updateSecurityWarningsVisibility];
  }

  else if ([(SFNavigationBarItem *)self->_item showsSecurityAnnotation])
  {

    [(_SFNavigationBar *)self _updateText];
  }

  else
  {

    [(_SFNavigationBar *)self setNeedsLayout];
  }
}

- (void)setContentUnderStatusBarHeight:(double)height
{
  if (self->_contentUnderStatusBarHeight != height)
  {
    self->_contentUnderStatusBarHeight = height;
    [(SFNavigationBarMetrics *)self->_barMetrics updateForStatusBarHeight:height];

    [(_SFNavigationBar *)self setNeedsLayout];
  }
}

- (void)setSuppressesBlur:(BOOL)blur
{
  if (self->_suppressesBlur != blur)
  {
    self->_suppressesBlur = blur;
    [(UIVisualEffectView *)self->_backdrop setAllowsBlurring:!blur];
    v4 = WBS_LOG_CHANNEL_PREFIXUserInterface();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(_SFNavigationBar *)blur setSuppressesBlur:v4];
    }
  }
}

- (void)setUsesFaintSeparator:(BOOL)separator
{
  if (self->_usesFaintSeparator != separator)
  {
    [(_SFNavigationBar *)separator setUsesFaintSeparator:separator, self];
  }
}

- (void)setBackdropGroupDisabled:(BOOL)disabled
{
  if (self->_backdropGroupDisabled == !disabled)
  {
    self->_backdropGroupDisabled = disabled;
    if (disabled)
    {
      backdropGroupName = 0;
    }

    else
    {
      backdropGroupName = self->_backdropGroupName;
    }

    [(UIVisualEffectView *)self->_backdrop _setGroupName:backdropGroupName];
  }
}

- (void)setBackdropGroupName:(id)name
{
  nameCopy = name;
  backdropGroupName = self->_backdropGroupName;
  if (backdropGroupName != nameCopy)
  {
    v10 = nameCopy;
    v6 = [(NSString *)backdropGroupName isEqualToString:nameCopy];
    nameCopy = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_backdropGroupName;
      self->_backdropGroupName = v7;

      if (self->_backdropGroupDisabled)
      {
        v9 = 0;
      }

      else
      {
        v9 = self->_backdropGroupName;
      }

      [(UIVisualEffectView *)self->_backdrop _setGroupName:v9];
      nameCopy = v10;
    }
  }
}

- (void)setPocketContainerInteraction:(id)interaction
{
  interactionCopy = interaction;
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v6 = interactionCopy;
  if (isSolariumEnabled)
  {
    pocketContainerInteraction = self->_pocketContainerInteraction;
    if (pocketContainerInteraction != interactionCopy)
    {
      if (pocketContainerInteraction)
      {
        [(_SFNavigationBar *)self removeInteraction:?];
      }

      objc_storeStrong(&self->_pocketContainerInteraction, interaction);
      [(_SFNavigationBar *)self addInteraction:interactionCopy];
      v6 = interactionCopy;
    }
  }
}

- (id)_placeholderText
{
  customPlaceholderText = [(SFNavigationBarItem *)self->_item customPlaceholderText];
  if ([customPlaceholderText length])
  {
    v3 = customPlaceholderText;
  }

  else
  {
    v3 = _WBSLocalizedString();
  }

  v4 = v3;

  return v4;
}

- (id)textForNavigationBarURLButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained navigationBarURLForSharing:self];
  safari_userVisibleString = [v5 safari_userVisibleString];

  return safari_userVisibleString;
}

- (void)navigationBarURLButtonDidReceivePasteCommand:(id)command
{
  commandCopy = command;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65___SFNavigationBar_navigationBarURLButtonDidReceivePasteCommand___block_invoke;
    v7[3] = &unk_1E8490A60;
    objc_copyWeak(&v9, &location);
    v8 = WeakRetained;
    [generalPasteboard safari_bestStringForPastingIntoURLFieldCompletionHandler:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (BOOL)navigationBarURLButtonShouldCopy:(id)copy
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained navigationBarURLForSharing:selfCopy];
  LOBYTE(selfCopy) = v5 != 0;

  return selfCopy;
}

- (BOOL)navigationBarURLButtonShouldPaste:(id)paste
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  safari_canPasteAndNavigate = [generalPasteboard safari_canPasteAndNavigate];

  return safari_canPasteAndNavigate;
}

- (void)navigationBarURLButtonDidRequestFocusForPencilInput:(id)input completionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    textField = [(_SFNavigationBar *)self textField];
    isFirstResponder = [textField isFirstResponder];
    v9 = WBS_LOG_CHANNEL_PREFIXPencilInput();
    v10 = v9;
    if (isFirstResponder)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_SFNavigationBar navigationBarURLButtonDidRequestFocusForPencilInput:completionHandler:];
      }

      handlerCopy[2](handlerCopy);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [_SFNavigationBar navigationBarURLButtonDidRequestFocusForPencilInput:v10 completionHandler:?];
      }

      [textField setText:&stru_1F4FE9E38];
      [(_SFNavigationBar *)&self->super.super.super.isa _updateTemporarySuppressionOfItemText:?];
      [WeakRetained navigationBarURLWasTapped:self completionHandler:handlerCopy];
    }
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (id)_timingFunctionForAnimation
{
  LODWORD(v3) = 1036831949;
  LODWORD(v4) = *"n4@>";
  LODWORD(v2) = 0.25;
  LODWORD(v5) = 1.0;
  return [MEMORY[0x1E69793D0] functionWithControlPoints:v2 :v3 :v4 :v5];
}

- (BOOL)canBecomeFirstResponder
{
  inputAccessoryView = [(_SFNavigationBar *)self inputAccessoryView];
  if (inputAccessoryView)
  {
    canBecomeFirstResponder = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _SFNavigationBar;
    canBecomeFirstResponder = [(_SFNavigationBar *)&v6 canBecomeFirstResponder];
  }

  return canBecomeFirstResponder;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v29[4] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  mediaStateMuteButton = self->_mediaStateMuteButton;
  v29[0] = self->_formatToggleButton;
  v29[1] = mediaStateMuteButton;
  stopButton = self->_stopButton;
  v29[2] = self->_reloadButton;
  v29[3] = stopButton;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  v9 = [v8 mutableCopy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    v14 = MEMORY[0x1E695E0F0];
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        [sessionCopy locationInView:{v16, v23}];
        v17 = [v16 hitTest:0 withEvent:?];

        if (v17)
        {
          WeakRetained = v10;
          goto LABEL_19;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (([(UITextField *)self->_textField isFirstResponder]& 1) != 0)
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v19 = [WeakRetained navigationBarURLForSharing:self];
    if (v19)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained itemProviderForNavigationBar:self], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v20 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v19];
      }

      v21 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v20];
      [v21 setLocalObject:v19];
      v27 = v21;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

LABEL_19:
  }

  return v14;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  v6 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  v8 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:self->_URLOutline parameters:v6];
  [v8 set_springboardParameters:&unk_1F5024198];

  return v8;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72___SFNavigationBar_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  aBlock[3] = &unk_1E848FA00;
  aBlock[4] = self;
  animatorCopy = animator;
  v6 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72___SFNavigationBar_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2;
  v11[3] = &unk_1E84909E8;
  v7 = v6;
  v12 = v7;
  [animatorCopy addAnimations:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___SFNavigationBar_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_3;
  v9[3] = &unk_1E8490A88;
  v10 = v7;
  v8 = v7;
  [animatorCopy addCompletion:v9];
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  beginCopy = begin;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained currentContentUUIDForNavigationBar:self];
    [beginCopy setLocalContext:v7];
  }

  items = [beginCopy items];
  firstObject = [items firstObject];

  localObject = [firstObject localObject];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53___SFNavigationBar_dragInteraction_sessionWillBegin___block_invoke;
  v12[3] = &unk_1E8490AB0;
  v13 = localObject;
  v11 = localObject;
  [firstObject setPreviewProvider:v12];
}

- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained dataOwnerForNavigationBar:self];
    if ((v6 - 1) >= 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  localDragSession = [updateCopy localDragSession];

  localContext = [localDragSession localContext];

  if (localContext && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [WeakRetained currentContentUUIDForNavigationBar:self];
    if ([v9 isEqual:localContext])
    {
      v10 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];

      goto LABEL_7;
    }
  }

  v10 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:2];
LABEL_7:

  return v10;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  v5 = MEMORY[0x1E69B1C50];
  dropCopy = drop;
  builder = [v5 builder];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48___SFNavigationBar_dropInteraction_performDrop___block_invoke;
  v8[3] = &unk_1E8490AD8;
  v8[4] = self;
  [builder buildNavigationIntentForDropSession:dropCopy completionHandler:v8];
}

- (_SFPopoverSourceInfo)formatMenuButtonPopoverSourceInfo
{
  v4 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v4 = 54.0;
  }

  v7 = [objc_alloc(MEMORY[0x1E69B1C78]) initWithView:self->_formatToggleButton insets:{v4, v3, v5, v6}];
  [v7 setProvenance:5];
  [v7 setShouldHideArrow:1];

  return v7;
}

- (_SFPopoverSourceInfo)reloadButtonPopoverSourceInfo
{
  v2 = [objc_alloc(MEMORY[0x1E69B1C78]) initWithView:self->_reloadButton];

  return v2;
}

- (_SFPopoverSourceInfo)URLOutlinePopoverSourceInfo
{
  v2 = [objc_alloc(MEMORY[0x1E69B1C78]) initWithView:self->_URLOutline];

  return v2;
}

- (NSArray)popoverPassthroughViews
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:self->_textField];
  [array safari_addObjectUnlessNil:self->_leadingToolbar];
  [array safari_addObjectUnlessNil:self->_trailingToolbar];
  v4 = [array copy];

  return v4;
}

- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item afterDestinationLayerBouncesBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  blockCopy = block;
  v16 = [(_SFNavigationBar *)&self->super.super.super.isa _toolbarForBarItem:item];
  v17 = v16;
  if (v16)
  {
    [v16 animateLinkImage:image fromRect:viewCopy inView:item toBarItem:blockCopy afterDestinationLayerBouncesBlock:{x, y, width, height}];
  }

  else if (blockCopy)
  {
    dispatch_async(MEMORY[0x1E69E96A0], blockCopy);
  }
}

- (id)popoverSourceInfoForBarItem:(int64_t)item
{
  v5 = 600;
  barRegistration = [(SFBarButtonGroupContainer *)self->_leadingBarButtonGroupContainer barRegistration];
  v7 = [barRegistration containsBarItem:item];

  if (v7 || (v5 = 608, -[SFBarButtonGroupContainer barRegistration](self->_trailingBarButtonGroupContainer, "barRegistration"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsBarItem:item], v8, v9))
  {
    v10 = [*(&self->super.super.super.isa + v5) popoverSourceInfoForBarItem:item];
  }

  else
  {
    v12 = [(_SFNavigationBar *)&self->super.super.super.isa _toolbarForBarItem:item];
    v10 = [v12 popoverSourceInfoForBarItem:item];
  }

  return v10;
}

- (void)navigationBarItemDidUpdateContentOptions:(id)options resetDisplay:(BOOL)display
{
  displayCopy = display;
  optionsCopy = options;
  if (displayCopy)
  {
    [(WBSContentAvailabilityDisplayController *)self->_availabilityDisplayController resetDisplay];
  }

  -[WBSContentAvailabilityDisplayController updateToContentOptions:](self->_availabilityDisplayController, "updateToContentOptions:", [optionsCopy contentOptions]);
}

- (id)availabilityDisplayController:(id)controller determineBestLabelsForPresentation:(id)presentation
{
  v33[1] = *MEMORY[0x1E69E9840];
  presentationCopy = presentation;
  v6 = [presentationCopy count];
  v30 = v6 - 1;
  if (v6 == 1)
  {
LABEL_9:
    lastObject = [presentationCopy lastObject];
  }

  else
  {
    v7 = 0;
    v8 = *MEMORY[0x1E69DB648];
    v9 = 0x1EC7D6000uLL;
    v10 = 0x1E695D000uLL;
    v31 = presentationCopy;
    v29 = *MEMORY[0x1E69DB648];
    while (1)
    {
      lastObject = [presentationCopy objectAtIndexedSubscript:{v7, v29}];
      v32 = v8;
      v12 = *(v9 + 3240);
      font = [*(&self->super.super.super.isa + v12) font];
      v33[0] = font;
      v14 = [*(v10 + 3872) dictionaryWithObjects:v33 forKeys:&v32 count:1];

      v15 = [lastObject count];
      if (!v15)
      {
        break;
      }

      v16 = v15;
      v17 = 0;
      while (1)
      {
        v18 = objc_alloc(MEMORY[0x1E696AAB0]);
        v19 = [lastObject textForOptionsAtIndex:v17];
        v20 = [v18 initWithString:v19 attributes:v14];

        v21 = CTLineCreateWithAttributedString(v20);
        BoundsWithOptions = CTLineGetBoundsWithOptions(v21, 0);
        x = BoundsWithOptions.origin.x;
        y = BoundsWithOptions.origin.y;
        width = BoundsWithOptions.size.width;
        height = BoundsWithOptions.size.height;
        CFRelease(v21);
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        v26 = CGRectGetWidth(v36);
        [*(&self->super.super.super.isa + v12) frame];
        v27 = CGRectGetWidth(v37);

        if (v26 > v27)
        {
          break;
        }

        if (v16 == ++v17)
        {
          goto LABEL_10;
        }
      }

      ++v7;
      presentationCopy = v31;
      v8 = v29;
      v9 = 0x1EC7D6000;
      v10 = 0x1E695D000;
      if (v7 == v30)
      {
        goto LABEL_9;
      }
    }

LABEL_10:

    presentationCopy = v31;
  }

  return lastObject;
}

- (_SFNavigationBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updatePlaceholderText
{
  if (self)
  {
    v1 = self[109];
    [self _placeholderText];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_23();
    [v1 setPlaceholder:?];
  }
}

- (void)_updateShowsSearchIndicator
{
  if (self)
  {
    showsSearchIndicator = [*(self + 848) showsSearchIndicator];
    v3 = *(self + 448);
    if (showsSearchIndicator)
    {
      [v3 setFadeOutEdge:1];
      v4 = OUTLINED_FUNCTION_21();
      if (!v4)
      {
        OUTLINED_FUNCTION_35(objc_alloc_init(MEMORY[0x1E69DCAE0]), 664);
        v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass"];
        [OUTLINED_FUNCTION_12(664) setImage:?];
        [OUTLINED_FUNCTION_21() setTintAdjustmentMode:1];
        OUTLINED_FUNCTION_35(objc_alloc_init(MEMORY[0x1E69DCAE0]), 672);
        [OUTLINED_FUNCTION_12(672) setImage:?];
        [*(self + 672) setTintAdjustmentMode:1];

        v4 = OUTLINED_FUNCTION_21();
      }

      superview = [v4 superview];

      if (!superview)
      {
        [*(self + 432) addSubview:*(self + 664)];
        [*(self + 680) addSubview:*(self + 672)];
        [(_SFNavigationBar *)self _updateSearchIndicator];
      }
    }

    else
    {
      [v3 setFadeOutEdge:0];
      [*(self + 664) removeFromSuperview];
      [*(self + 672) removeFromSuperview];
    }

    [(_SFNavigationBar *)self _updateActiveURLLabelAccessory];
    [self setNeedsLayout];

    [(_SFNavigationBar *)self _updateAccessoryButtonsVisibility];
  }
}

- (void)_updateAccessoryButtonsVisibility
{
  if (self)
  {
    OUTLINED_FUNCTION_66();
    v2 = v1;
    [_SFNavigationBar _updateAccessoryButtonsArrangement];
    if ([*(v2 + 848) showsStopReloadButtons] && (*(v2 + 843) & 1) == 0)
    {
      v3 = *(v2 + 656);
    }

    else
    {
      v3 = 1;
    }

    [*(v2 + 760) setHidden:v3 & 1];
    [*(v2 + 752) setHidden:v3 & 1];
    if (*(v2 + 843) & 1) != 0 || ![(SFNavigationBarAccessoryButtonArrangement *)*(v2 + 736) containsButtonType:?]|| (*(v2 + 656))
    {
      v4 = 1;
    }

    else
    {
      if (!*(v2 + 744))
      {
        [_SFNavigationBar _setUpFormatToggleButtonIfNeeded];
      }

      v4 = 0;
    }

    v5 = OUTLINED_FUNCTION_11();
    if (v5)
    {
      v6 = [v5 isHidden] ^ 1;
      v5 = OUTLINED_FUNCTION_11();
    }

    else
    {
      v6 = 0;
    }

    [v5 setHidden:v4];
    if (*(v2 + 843))
    {
      v7 = 1;
    }

    else
    {
      v7 = [(SFNavigationBarAccessoryButtonArrangement *)*(v2 + 736) containsButtonType:?]^ 1;
    }

    [*(v2 + 776) setHidden:v7];
    objc_loadWeakRetained((v2 + 888));
    if (v6)
    {
      v8 = OUTLINED_FUNCTION_11();
      v12 = v9;
      if ([v8 isHidden])
      {
        if (objc_opt_respondsToSelector())
        {
          [v12 navigationBarFormatMenuButtonBecameUnavailable:v2];
        }
      }
    }

    OUTLINED_FUNCTION_61();
  }
}

- (void)_updateMediaStateMuteButton
{
  if (self)
  {
    OUTLINED_FUNCTION_66();
    v2 = v1;
    [v1[106] mediaStateIcon];
    v11 = _SFImageForMediaStateIcon();
    _mediaStateMuteButtonColor = [(_SFNavigationBar *)v2 _mediaStateMuteButtonColor];
    v4 = [v11 flattenedImageWithColor:_mediaStateMuteButtonColor];
    v5 = [_mediaStateMuteButtonColor colorWithAlphaComponent:0.2];
    v6 = [v11 flattenedImageWithColor:v5];

    v7 = [v2[97] imageForState:0];
    v8 = (v4 != 0) ^ (v7 == 0);

    [(_SFNavigationBar *)v2 _updateAccessoryButtonsVisibility];
    [(_SFNavigationBar *)v2 _updateAccessoryButtonsAlpha];
    [OUTLINED_FUNCTION_41(776) setImage:? forState:?];
    [OUTLINED_FUNCTION_60(776) setImage:? forState:?];
    if ((v8 & 1) == 0)
    {
      [(_SFNavigationBar *)v2 _adjustLabelRectForLeadingButtonWithDelay:?];
    }

    OUTLINED_FUNCTION_61();
  }
}

- (void)_updateNavigationBarTrailingButtonType
{
  if (self)
  {
    [_SFNavigationBar _updateAccessoryButtonsArrangement];
    v2 = *(self + 736);
    v3 = v2 ? *(v2 + 16) : 0;
    firstObject = [v3 firstObject];
    integerValue = [firstObject integerValue];

    if (*(self + 784) != integerValue && (![MEMORY[0x1E69C8880] isSolariumEnabled] || integerValue != 2))
    {
      v7 = [(_SFNavigationBar *)self _navigationBarTrailingButtonWithType:?];
      v6 = [(_SFNavigationBar *)self _navigationBarTrailingButtonWithType:integerValue];
      *(self + 784) = integerValue;
      -[_SFNavigationBar _transitionFromView:toView:animated:](self, v7, v6, [MEMORY[0x1E69DD250] areAnimationsEnabled]);
    }
  }
}

- (void)_updateTextColor
{
  if (self)
  {
    text = [*(self + 848) text];
    v3 = [text length];

    [OUTLINED_FUNCTION_30() platterPlaceholderTextColor];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2() setTextFieldPlaceHolderColor:text];
    [self minimumHeight];
    v5 = v4;
    [self bounds];
    OUTLINED_FUNCTION_38();
    if (!v7)
    {
      OUTLINED_FUNCTION_1_1(v6 - v5, *(self + 904) - v5);
      SFBarBackgroundAlphaForSquishTransformFactor();
    }

    v8 = [OUTLINED_FUNCTION_30() platterTextColorForPlatterAlpha:?];
    v9 = v8;
    if (v3)
    {
      v10 = v8;
    }

    else
    {
      v10 = text;
    }

    v11 = v10;
    OUTLINED_FUNCTION_23();
    [*(self + 448) setTextColor:?];
    [OUTLINED_FUNCTION_20(456) setTextColor:?];
    [OUTLINED_FUNCTION_20(472) setTextColor:?];
    [OUTLINED_FUNCTION_41(872) setTextColor:?];
    if ([OUTLINED_FUNCTION_30() tintStyle] == 4)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] sf_safariAccentColor];
    }
    v12 = ;
    [OUTLINED_FUNCTION_60(872) setTintColor:?];

    [*(self + 872) setOverrideUserInterfaceStyle:{objc_msgSend(OUTLINED_FUNCTION_30(), "platterTextFieldOverrideUserInterfaceStyle")}];
    [*(self + 872) setKeyboardAppearance:{objc_msgSend(OUTLINED_FUNCTION_30(), "platterKeyboardOverrideAppearance")}];
    _attributedStringSecurityAnnotation = [(_SFNavigationBar *)self _attributedStringSecurityAnnotation];
    [OUTLINED_FUNCTION_60(480) setAttributedText:?];

    annotationTextColor = [OUTLINED_FUNCTION_30() annotationTextColor];
    [OUTLINED_FUNCTION_60(464) setTextColor:?];

    [*(self + 448) setEffect:0];
  }
}

- (void)_updateProgressView
{
  if (self)
  {
    v2 = *(self + 704);
    fluidProgressStateSource = [*(self + 848) fluidProgressStateSource];
    progressState = [fluidProgressStateSource progressState];
    [v2 setProgressToCurrentPositionForState:progressState];

    [(_SFNavigationBar *)self _updateProgressViewCornerRadius];

    [(_SFNavigationBar *)self _updateProgressViewFillColor];
  }
}

- (uint64_t)_updateFormatButtonAccessories
{
  if (result)
  {
    v1 = result;
    hasHiddenElements = [*(result + 848) hasHiddenElements];
    v3 = *(v1 + 744);
    if (hasHiddenElements)
    {
      v4 = &unk_1F5023CC8;
    }

    else
    {
      v4 = 0;
    }

    return [v3 setAccessoryItems:v4];
  }

  return result;
}

- (uint64_t)_shouldUpdateBackdropStyleForTransitionFromItem:(void *)item toItem:
{
  v5 = a2;
  itemCopy = item;
  if (self)
  {
    if (*(self + 843))
    {
      self = 0;
    }

    else
    {
      overrideBarStyleForSecurityWarning = [v5 overrideBarStyleForSecurityWarning];
      self = overrideBarStyleForSecurityWarning ^ [itemCopy overrideBarStyleForSecurityWarning];
    }
  }

  return self;
}

- (void)_updateEffectiveTheme
{
  if (self)
  {
    obj = [(_SFBarTheme *)_SFNavigationBarTheme themeWithTheme:*(self + 856)];
    if ([*(self + 848) overrideBarStyleForSecurityWarning])
    {
      fallbackTheme = [obj fallbackTheme];

      v3 = fallbackTheme;
    }

    else
    {
      v3 = obj;
    }

    v4 = *(self + 864);
    if (v4 != v3)
    {
      obja = v3;
      v5 = [v4 isEqual:v3];
      v3 = obja;
      if ((v5 & 1) == 0)
      {
        objc_storeStrong((self + 864), obja);
        [_SFNavigationBar _didUpdateEffectiveTheme];
        v3 = obja;
      }
    }
  }
}

- (_BYTE)_updateToolbarAndCancelButtonAlpha
{
  if (result)
  {
    v1 = result;
    if (result[840] != 1 || (v2 = 0.0, (result[843] & 1) == 0))
    {
      [result _controlsAlpha];
      v2 = v3;
    }

    v4 = OUTLINED_FUNCTION_40();
    [v5 setAlpha:v4];
    v6 = OUTLINED_FUNCTION_40();
    [v7 setAlpha:v6];
    v8 = OUTLINED_FUNCTION_40();
    [v9 setAlpha:v8];
    v10 = OUTLINED_FUNCTION_40();
    [v11 setAlpha:v10];
    v12 = 0.0;
    if (v1[840] == 1)
    {
      v12 = 1.0 - v2;
      if (!v1[843])
      {
        v12 = 0.0;
      }
    }

    v13 = *(v1 + 100);

    return [v13 setAlpha:v12];
  }

  return result;
}

- (id)_editingLabelFont
{
  if (self)
  {
    v2 = *(self + 840);
    v3 = *(self + 648);
    if (v2)
    {
      [(SFNavigationBarMetrics *)v3 narrowEditingLabelFont];
    }

    else
    {
      [(SFNavigationBarMetrics *)v3 defaultLabelFont];
    }
    self = ;
    v1 = vars8;
  }

  return self;
}

- (uint64_t)_updateProgressViewCornerRadius
{
  if (result)
  {
    v1 = result;
    urlOutlineCornerRadius = 0.0;
    if (*(result + 841) == 1)
    {
      v3 = OUTLINED_FUNCTION_53();
      urlOutlineCornerRadius = [(SFNavigationBarMetrics *)v3 urlOutlineCornerRadius];
    }

    [*(v1 + 704) setCornerRadius:urlOutlineCornerRadius];
    result = [MEMORY[0x1E69C8880] isSolariumEnabled];
    if (result)
    {
      v4 = OUTLINED_FUNCTION_53();
      v5 = [(SFNavigationBarMetrics *)v4 progressBarCornerRadiusWithBarMetricsCategory:?];
      v6 = *(v1 + 704);

      return [v6 setCornerRadius:v5];
    }
  }

  return result;
}

- (void)_updateProgressViewFillColor
{
  if (self)
  {
    v2 = *(self + 841);
    v3 = *(self + 864);
    if (v2)
    {
      [v3 platterProgressBarTintColor];
    }

    else
    {
      [v3 progressBarTintColor];
    }
    v4 = ;
    [*(self + 704) setProgressBarFillColor:v4];
  }
}

- (_BYTE)_viewToInsertProgressBarIn
{
  if (self)
  {
    selfCopy = self;
    if ((self[841] & 1) != 0 || [MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      selfCopy = selfCopy[87];
    }

    self = selfCopy;
    v1 = vars8;
  }

  return self;
}

- (double)dismissButtonPadding
{
  if (!self)
  {
    return 0.0;
  }

  [(_SFNavigationBar *)self safeAreaInsets];

  [_SFNavigationBar _customButtonHorizontalPaddingWithInset:?];
  return result;
}

- (void)_didUpdateEffectiveTheme
{
  OUTLINED_FUNCTION_66();
  if (v1 && (v2 = v1, *(v1 + 696)))
  {
    [OUTLINED_FUNCTION_22() controlsTintColor];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2() setTintColor:v0];

    backdropIsDark = [OUTLINED_FUNCTION_22() backdropIsDark];
    if (backdropIsDark)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    [v2 _accessibilitySetInterfaceStyleIntent:v4];
    [OUTLINED_FUNCTION_22() URLAccessoryButtonTintColorForInputMode:*(v2 + 824)];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_23();
    [*(v2 + 744) setGlyphTintColor:?];
    [*(v2 + 744) setUsesInsetFromBackground:{backdropIsDark ^ objc_msgSend(OUTLINED_FUNCTION_22(), "platterBackdropIsDark")}];
    [(_SFNavigationBarURLButton *)*(v2 + 696) setTheme:?];
    [OUTLINED_FUNCTION_20(752) setTintColor:?];
    [OUTLINED_FUNCTION_20(760) setTintColor:?];
    [(_SFNavigationBar *)v2 _updateSeparatorAlpha];
    [(_SFNavigationBar *)v2 _updateTextColor];
    [v2 _setOverrideUserInterfaceStyle:{objc_msgSend(OUTLINED_FUNCTION_22(), "overrideUserInterfaceStyle")}];
    [OUTLINED_FUNCTION_22() tintStyle];
    [*(v2 + 464) setHidden:_SFIsPrivateTintStyle() ^ 1];
    [OUTLINED_FUNCTION_22() applyBackdropEffectsToView:*(v2 + 712)];
    [*(v2 + 568) setTheme:*(v2 + 864)];
    [*(v2 + 576) setTheme:*(v2 + 864)];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v5 = *(v2 + 864);
      configuration = [*(v2 + 600) configuration];
      [configuration setTheme:v5];

      v7 = *(v2 + 864);
      configuration2 = [*(v2 + 608) configuration];
      [configuration2 setTheme:v7];
    }

    OUTLINED_FUNCTION_61();
  }

  else
  {
    OUTLINED_FUNCTION_61();
  }
}

- (uint64_t)_updateSeparatorAlpha
{
  if (result)
  {
    v1 = result;
    v2 = 0.0;
    if ((*(result + 842) & 1) == 0)
    {
      backdropIsDark = [*(result + 864) backdropIsDark];
      v2 = 1.0;
      if (backdropIsDark)
      {
        LOBYTE(v2) = *(v1 + 846);
        v2 = *&v2;
      }
    }

    v4 = *(v1 + 720);

    return [v4 setAlpha:v2];
  }

  return result;
}

- (double)_defaultHeightExcludingAuxiliaryBar
{
  if (!self)
  {
    return 0.0;
  }

  v1 = *(self + 648);
  _metricsCategory = [objc_opt_class() _metricsCategory];

  return [(SFNavigationBarMetrics *)v1 barHeightWithBarMetricsCategory:_metricsCategory];
}

- (double)defaultHeight
{
  _defaultHeightExcludingAuxiliaryBar = [(_SFNavigationBar *)self _defaultHeightExcludingAuxiliaryBar];
  if (self)
  {
    [(SFLockdownStatusBar *)self->_lockdownStatusBar preferredSize];
    if (v4 != 0.0)
    {
      [(SFNavigationBarMetrics *)self->_barMetrics urlOutlineHeight];
      [(_SFNavigationBar *)&self->super.super.super.isa _urlOutlineOriginY];
      [(SFLockdownStatusBar *)self->_lockdownStatusBar titleCapHeightInsetFromTop];
      [(SFLockdownStatusBar *)self->_lockdownStatusBar titleBaselineInsetFromBottom];
      [(SFNavigationBarMetrics *)self->_barMetrics distanceFromLabelBaselineToURLOutlineBottom];
      _SFRoundFloatToPixels();
      return _defaultHeightExcludingAuxiliaryBar + v6;
    }
  }

  return _defaultHeightExcludingAuxiliaryBar;
}

- (double)_urlOutlineOriginY
{
  if (!self)
  {
    return 0.0;
  }

  _layoutBounds = [(_SFNavigationBar *)self _layoutBounds];
  v4 = v3;
  v6 = v5;
  [self bounds];
  v8 = v7;
  [self[56] urlSize];
  OUTLINED_FUNCTION_47(v6 - v9);
  _SFRoundFloatToPixels();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_46();
  v13 = fmax(v8, v4) + v11 + [(SFNavigationBarMetrics *)v12 urlLabelVerticalOffset];
  v14 = OUTLINED_FUNCTION_46();
  return v13 - [(SFNavigationBarMetrics *)v14 urlContainerTop];
}

- (double)_auxiliaryBarSquishedVerticalOffsetForSquishTransform:(uint64_t)transform
{
  if (!transform)
  {
    return 0.0;
  }

  [(SFNavigationBarMetrics *)*(transform + 648) urlOutlineHeight];
  v2 = OUTLINED_FUNCTION_46();
  [(SFNavigationBarMetrics *)v2 distanceFromLabelBaselineToURLOutlineBottom];
  v3 = *(transform + 648);
  _metricsCategory = [objc_opt_class() _metricsCategory];
  [(SFNavigationBarMetrics *)v3 squishHeightQuantizationOffsetWithBarMetricsCategory:_metricsCategory];
  [*(transform + 944) titleCapHeightInsetFromTop];
  [*(transform + 944) titleCapHeightInsetFromTop];

  _SFRoundFloatToPixels();
  return result;
}

- (void)_customButtonHorizontalPaddingWithInset:(uint64_t *)inset
{
  if (inset)
  {
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [(SFNavigationBarMetrics *)inset[81] useNarrowInsets];
    }

    else if (inset[103] == 1)
    {
      if ([inset hasToolbar])
      {
        traitCollection = [inset traitCollection];
        [traitCollection horizontalSizeClass];
      }
    }
  }
}

- (double)_minimumURLOutlineToBoundsPadding
{
  if (!self)
  {
    return 0.0;
  }

  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  result = 9.5;
  if (isSolariumEnabled)
  {
    useNarrowInsets = [(SFNavigationBarMetrics *)*(self + 648) useNarrowInsets];
    result = 16.0;
    if (useNarrowInsets)
    {
      return 10.0;
    }
  }

  return result;
}

- (void)_updateFonts
{
  if (self)
  {
    _editingLabelFont = [(_SFNavigationBar *)self _editingLabelFont];
    [(SFNavigationBarMetrics *)*(self + 648) defaultLabelFont];
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    _URLLabelFont = [(_SFNavigationBar *)v3 _URLLabelFont];
    [OUTLINED_FUNCTION_20(872) setFont:?];
    [OUTLINED_FUNCTION_20(456) setFont:?];
    [OUTLINED_FUNCTION_41(448) setFont:?];
    [OUTLINED_FUNCTION_41(464) setFont:?];
    [*(self + 464) sizeToFit];
    [OUTLINED_FUNCTION_12(472) setFont:?];
    [OUTLINED_FUNCTION_12(480) setFont:?];
    [(_SFNavigationBar *)self _updateTextMetrics];
    [*(self + 472) sizeToFit];
  }
}

- (void)_URLLabelFont
{
  if (self)
  {
    v2 = self[103];
    v3 = self[81];
    if (v2 == 1)
    {
      [(SFNavigationBarMetrics *)v3 defaultBoldFont];
    }

    else
    {
      [(SFNavigationBarMetrics *)v3 defaultLabelFont];
    }
    self = ;
    v1 = vars8;
  }

  return self;
}

- (uint64_t)_updateTextMetrics
{
  if (result)
  {
    v1 = result;
    [*(result + 456) sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v3 = v2;
    *(v1 + 488) = v4;
    result = _SFEqualWithEpsilon();
    if ((result & 1) == 0)
    {
      *(v1 + 496) = v3;
    }
  }

  return result;
}

- (void)_updateButtonMetrics
{
  if (self)
  {
    [(SFNavigationBarMetrics *)*(self + 648) mediumButtonImageSymbolConfiguration];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_19() setPreferredSymbolConfiguration:? forImageInState:?];

    v3 = OUTLINED_FUNCTION_29();
    [(SFNavigationBarMetrics *)v3 mediumButtonImageSymbolConfiguration];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_19() setPreferredSymbolConfiguration:? forImageInState:?];

    v4 = OUTLINED_FUNCTION_29();
    mediumButtonImageSymbolConfiguration = [(SFNavigationBarMetrics *)v4 mediumButtonImageSymbolConfiguration];
    [OUTLINED_FUNCTION_12(744) setPreferredSymbolConfiguration:?];

    v6 = OUTLINED_FUNCTION_29();
    traitCollectionForButtonMetrics = [(SFNavigationBarMetrics *)v6 traitCollectionForButtonMetrics];
    [(SFDismissButton *)*(self + 816) setPreferredTraitCollection:traitCollectionForButtonMetrics];

    v8 = MEMORY[0x1E69DB878];
    defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
    [MEMORY[0x1E69DB878] labelFontSize];
    v11 = v10;
    v12 = OUTLINED_FUNCTION_29();
    traitCollectionForButtonMetrics2 = [(SFNavigationBarMetrics *)v12 traitCollectionForButtonMetrics];
    [defaultMetrics scaledValueForValue:traitCollectionForButtonMetrics2 compatibleWithTraitCollection:v11];
    v15 = [v8 systemFontOfSize:round(v14)];
    titleLabel = [*(self + 800) titleLabel];
    [titleLabel setFont:v15];

    [*(self + 800) sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    *(self + 808) = v17;
    configuration = [*(self + 600) configuration];
    v25 = [configuration copy];

    v19 = OUTLINED_FUNCTION_29();
    traitCollectionForButtonMetrics3 = [(SFNavigationBarMetrics *)v19 traitCollectionForButtonMetrics];
    [v25 setPreferredTraitCollection:traitCollectionForButtonMetrics3];

    [OUTLINED_FUNCTION_20(600) setConfiguration:?];
    configuration2 = [*(self + 608) configuration];
    v22 = [configuration2 copy];

    v23 = OUTLINED_FUNCTION_29();
    traitCollectionForButtonMetrics4 = [(SFNavigationBarMetrics *)v23 traitCollectionForButtonMetrics];
    [v22 setPreferredTraitCollection:traitCollectionForButtonMetrics4];

    [OUTLINED_FUNCTION_41(608) setConfiguration:?];
  }
}

- (uint64_t)_updateURLOutlineCornerRadius
{
  if (result)
  {
    v1 = result;
    urlOutlineCornerRadius = [(SFNavigationBarMetrics *)*(result + 648) urlOutlineCornerRadius];
    v3 = *(v1 + 696);
    if (v3 && *(v3 + 832) != urlOutlineCornerRadius)
    {
      *(v3 + 832) = urlOutlineCornerRadius;
      [*(v3 + 768) _setContinuousCornerRadius:?];
    }

    v4 = OUTLINED_FUNCTION_46();
    [*(v1 + 696) _setContinuousCornerRadius:-[SFNavigationBarMetrics urlOutlineCornerRadius](v4)];

    return [(_SFNavigationBar *)v1 _updateProgressViewCornerRadius];
  }

  return result;
}

- (void)_barMetricsDidChange
{
  if (self)
  {
    *(self + 616) = *MEMORY[0x1E695F060];
    [(_SFNavigationBar *)self _updateURLOutlineCornerRadius];
    [(_SFNavigationBar *)self _updateFonts];
    [self _updateText];
    [(_SFNavigationBar *)self _updateActiveURLLabelAccessory];
    [(_SFNavigationBar *)self _updateTextColor];
    [(_SFNavigationBar *)self _updateSearchIndicator];
    [(_SFNavigationBar *)self _updateButtonMetrics];
    [*(self + 744) setResizableBackgroundCornerRadius:-[SFNavigationBarMetrics urlOutlineCornerRadius](*(self + 648))];
    WeakRetained = objc_loadWeakRetained((self + 888));
    *(self + 847) = 1;
    v3 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      [v3 navigationBarMetricsDidChange:self];
    }

    *(self + 847) = 0;
  }
}

- (void)_updateActiveURLLabelAccessory
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_alloc_init(_SFURLLabelAccessoryItem);
    [(_SFURLLabelAccessoryItem *)v2 setView:*(self + 664)];
    [(_SFURLLabelAccessoryItem *)v2 setSpacing:4.0];
    [(_SFURLLabelAccessoryItem *)v2 setSquishedView:*(self + 672)];
    if ([*(self + 848) showsSearchIndicator])
    {
      v9[0] = v2;
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      v4 = *(self + 688);
      *(self + 688) = v3;

      [*(self + 664) setHidden:0];
    }

    else
    {
      v5 = objc_alloc_init(_SFURLLabelAccessoryItem);
      [(_SFURLLabelAccessoryItem *)v5 setView:0];
      [(_SFURLLabelAccessoryItem *)v5 setSpacing:0.0];
      v8 = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
      v7 = *(self + 688);
      *(self + 688) = v6;

      [*(self + 664) setHidden:1];
    }
  }
}

- (id)_attributedStringSecurityAnnotation
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = _WBSLocalizedString();
    v3 = objc_alloc(MEMORY[0x1E696AD40]);
    v15 = *MEMORY[0x1E69DB650];
    v4 = v15;
    _notSecureAnnotationColor = [(_SFNavigationBar *)self _notSecureAnnotationColor];
    v16[0] = _notSecureAnnotationColor;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v7 = [v3 initWithString:v2 attributes:v6];

    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v13 = v4;
    _notSecureGrayColor = [(_SFNavigationBar *)self _notSecureGrayColor];
    v14 = _notSecureGrayColor;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v11 = [v8 initWithString:@" —" attributes:v10];

    [v7 appendAttributedString:v11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_configureNavigationBarTrailingButtonTintedImages
{
  if (self)
  {
    v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.clockwise"];
    v1 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    [OUTLINED_FUNCTION_20(760) setImage:? forState:?];
    [OUTLINED_FUNCTION_12(752) setImage:? forState:?];
  }
}

- (void)dealloc
{
  [MEMORY[0x1E696AD88] defaultCenter];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_58();
  [v4 removeObserver:?];

  [(SFNavigationBarItem *)self->_item removeObserver:self];
  OUTLINED_FUNCTION_26();
  [v5 removeTarget:? action:? forControlEvents:?];
  URLOutline = self->_URLOutline;
  if (URLOutline)
  {
    objc_storeWeak(&URLOutline->_delegate, 0);
  }

  v7.receiver = self;
  v7.super_class = _SFNavigationBar;
  [(_SFNavigationBar *)&v7 dealloc];
}

- (uint64_t)_showsPrivateAnnotation
{
  if (result)
  {
    v1 = result;
    [*(result + 864) tintStyle];
    result = _SFIsPrivateTintStyle();
    if (result)
    {
      return [*(v1 + 848) showsSecurityAnnotation] ^ 1;
    }
  }

  return result;
}

- (double)_privateBrowsingLabelRevealPercent
{
  v1 = 0.0;
  if (self && [(_SFNavigationBar *)self _showsPrivateAnnotation])
  {
    [self minimumHeight];
    v4 = v3;
    [self bounds];
    v6 = OUTLINED_FUNCTION_1_1(v5 - v4, self[113] - v4);
    return v7 - v6;
  }

  return v1;
}

- (void)_transitionFromView:(void *)view toView:(int)toView animated:
{
  v43[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    viewCopy = view;
    layer = [a2 layer];
    [layer animationForKey:@"show"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2() removeAnimationForKey:@"show"];
    layer2 = [viewCopy layer];

    v11 = [layer2 animationForKey:@"hide"];
    [layer2 removeAnimationForKey:@"hide"];
    [self _controlsAlpha];
    v13 = v12;
    if (toView)
    {
      if (layer2)
      {
        v14 = v11 == 0;
      }

      else
      {
        v14 = 0;
      }

      v15 = !v14;
      v16 = MEMORY[0x1E69795C0];
      v17 = MEMORY[0x1E69797E0];
      if (v4 && v15)
      {
        v18 = MEMORY[0x1E69795C0];
        animation = reverseAnimation(v4);
      }

      else
      {
        v24 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
        [v24 setStiffness:300.0];
        [v24 setDamping:400.0];
        v18 = v16;
        v25 = *v16;
        [v24 setBeginTimeMode:v25];
        v26 = *v17;
        [v24 setFillMode:*v17];
        [v24 setDuration:0.37];
        [v24 setBeginTime:0.005];
        [v24 setFromValue:&unk_1F5022E88];
        [v24 setToValue:&unk_1F5022EA0];
        v27 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
        [v27 setAdditive:1];
        [v27 setBeginTimeMode:v25];
        [v27 setBeginTime:0.0];
        [v27 setFillMode:v26];
        [v27 setDuration:0.375];
        [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_17() setTimingFunction:?];

        [MEMORY[0x1E696AD98] numberWithDouble:v13];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_17() setFromValue:?];

        [v27 setToValue:&unk_1F5022EA0];
        animation = [MEMORY[0x1E6979308] animation];
        v43[0] = v24;
        v43[1] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
        [animation setAnimations:v28];

        [animation setDuration:0.375];
        [animation setRemovedOnCompletion:1];
        [animation setFrameInterval:0.0166666667];
      }

      [layer addAnimation:animation forKey:@"hide"];

      v29 = OUTLINED_FUNCTION_52();
      CATransform3DMakeScale(v30, v29, v31, 0.0);
      [layer setTransform:v41];
      [layer setOpacity:0.0];
      if (v4)
      {
        v32 = 1;
      }

      else
      {
        v32 = layer == 0;
      }

      if (v32 && v11)
      {
        animation2 = reverseAnimation(v11);
      }

      else
      {
        v34 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
        [v34 setStiffness:300.0];
        [v34 setDamping:400.0];
        v35 = *v18;
        [v34 setBeginTimeMode:*v18];
        v36 = *MEMORY[0x1E69797E0];
        [v34 setFillMode:*MEMORY[0x1E69797E0]];
        [v34 setDuration:0.91];
        v37 = *MEMORY[0x1E6979EA0];
        v38 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
        [v34 setTimingFunction:v38];

        [v34 setBeginTime:0.04];
        [v34 setFromValue:&unk_1F5022EA0];
        [v34 setToValue:&unk_1F5022E88];
        v39 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
        [v39 setAdditive:1];
        [v39 setBeginTimeMode:v35];
        [v39 setFillMode:v36];
        [v39 setDuration:0.25];
        [MEMORY[0x1E69793D0] functionWithName:v37];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_17() setTimingFunction:?];

        [v39 setBeginTime:-0.12];
        [MEMORY[0x1E696AD98] numberWithDouble:-v13];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_17() setFromValue:?];

        [v39 setToValue:&unk_1F5022EA0];
        animation2 = [MEMORY[0x1E6979308] animation];
        v42[0] = v34;
        v42[1] = v39;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
        [animation2 setAnimations:v40];

        [animation2 setDuration:0.95];
        [animation2 setRemovedOnCompletion:1];
        [animation2 setFrameInterval:0.0166666667];
      }

      [layer2 addAnimation:animation2 forKey:@"show"];
    }

    else
    {
      v20 = OUTLINED_FUNCTION_52();
      CATransform3DMakeScale(v21, v20, v22, 0.0);
      [layer setTransform:v41];
      [layer setOpacity:0.0];
    }

    *&v23 = v13;
    [layer2 setOpacity:v23];
    memcpy(v41, MEMORY[0x1E69792E8], sizeof(v41));
    [layer2 setTransform:v41];
  }
}

- (void)_setUpFormatToggleButtonIfNeeded
{
  OUTLINED_FUNCTION_66();
  if (v1 && (v2 = v1, !*(v1 + 744)))
  {
    v3 = objc_alloc(MEMORY[0x1E69B1B48]);
    v4 = OUTLINED_FUNCTION_2();
    _formatToggleButtonImage = [(_SFNavigationBar *)v4 _formatToggleButtonImage];
    OUTLINED_FUNCTION_35([v0 initWithImage:_formatToggleButtonImage forInputMode:*(v2 + 824)], 744);

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [OUTLINED_FUNCTION_11() safari_setFlexibleGlassBackgroundEnabled:1];
    }

    [OUTLINED_FUNCTION_11() setMinimumSideMargin:6.0];
    v6 = OUTLINED_FUNCTION_53();
    [(SFNavigationBarMetrics *)v6 urlOutlineCornerRadius];
    [OUTLINED_FUNCTION_11() setResizableBackgroundCornerRadius:?];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_26();
    [v7 addTarget:? action:? forControlEvents:?];
    OUTLINED_FUNCTION_35(objc_alloc_init(MEMORY[0x1E69DD3D8]), 768);
    [*(v2 + 768) setDelegate:v2];
    [OUTLINED_FUNCTION_11() addInteraction:*(v2 + 768)];
    [OUTLINED_FUNCTION_11() setAccessibilityIdentifier:@"PageFormatMenuButton"];
    [*(v2 + 696) addSubview:*(v2 + 744)];
    [OUTLINED_FUNCTION_11() setHidden:1];
    v8 = [*(v2 + 864) URLAccessoryButtonTintColorForInputMode:*(v2 + 824)];
    [OUTLINED_FUNCTION_11() setGlyphTintColor:v8];

    v9 = OUTLINED_FUNCTION_53();
    [(SFNavigationBarMetrics *)v9 mediumButtonImageSymbolConfiguration];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_23();
    [OUTLINED_FUNCTION_11() setPreferredSymbolConfiguration:?];
    OUTLINED_FUNCTION_61();
  }

  else
  {
    OUTLINED_FUNCTION_61();
  }
}

- (id)_formatToggleButtonImage
{
  if (self)
  {
    selfCopy = self;
    if (([self[51] isDisplaying] & 1) != 0 || !objc_msgSend(OUTLINED_FUNCTION_31(), "showsSiriReaderPlayingIcon"))
    {
      if ([OUTLINED_FUNCTION_31() showsTranslationIcon] && !objc_msgSend(OUTLINED_FUNCTION_31(), "readerButtonSelected") || selfCopy[99] == 2)
      {
        self = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
      }

      else if (([OUTLINED_FUNCTION_31() readerButtonSelected] & 1) != 0 || selfCopy[99] == 1)
      {
        self = [MEMORY[0x1E69B1B48] readerImageWithSummary:objc_msgSend(selfCopy[51] usingMulticolorSymbol:{"cumulativeOptions") & 1, 0}];
      }

      else
      {
        self = [MEMORY[0x1E69B1B48] pageMenuImageWithIntelligence:(objc_msgSend(selfCopy[51] usingMulticolorSymbol:{"cumulativeOptions") & 0x1F) != 0, 0}];
      }
    }

    else
    {
      self = [MEMORY[0x1E69B1B48] siriReaderPlayingImage];
    }

    v1 = vars8;
  }

  return self;
}

- (void)_updateAccessoryButtonsAlpha
{
  if (self)
  {
    [self _controlsAlpha];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __48___SFNavigationBar__updateAccessoryButtonsAlpha__block_invoke;
    v4[3] = &unk_1E8490900;
    v4[4] = self;
    v4[5] = v2;
    v3 = _Block_copy(v4);
    v3[2](v3, 1);
    [self[94] setAlpha:?];
    v3[2](v3, 0);
    [self[95] setAlpha:?];
    v3[2](v3, 3);
    [self[97] setAlpha:?];
    v3[2](v3, 2);
    [self[93] setAlpha:?];
  }
}

- (char)_navigationBarTrailingButtonWithType:(char *)type
{
  if (!type)
  {
LABEL_7:

    return type;
  }

  if (!a2)
  {
    v3 = &OBJC_IVAR____SFNavigationBar__reloadButton;
    goto LABEL_6;
  }

  if (a2 == 1)
  {
    v3 = &OBJC_IVAR____SFNavigationBar__stopButton;
LABEL_6:
    type = *&type[*v3];
    goto LABEL_7;
  }

  type = 0;

  return type;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _SFNavigationBar;
  [(_SFNavigationBar *)&v3 tintColorDidChange];
  [(_SFNavigationBar *)self _updateProgressViewFillColor];
}

- (void)fluidProgressViewWillShowProgress:(id)progress
{
  _viewToInsertProgressBarIn = [(_SFNavigationBar *)self _viewToInsertProgressBarIn];
  [_viewToInsertProgressBarIn addSubview:self->_progressView];

  if ([MEMORY[0x1E69C8880] isSolariumEnabled] && !self->_unifiedFieldShowsProgressView)
  {

    [(_SFNavigationBar *)self setNeedsLayout];
  }
}

- (void)_updateBackdropFrame
{
  if (self)
  {
    superview = [*(self + 712) superview];

    if (superview == self)
    {
      [self bounds];
      v4 = v3;
      v6 = v5 + fmax(*(self + 896), *(self + 912) - v5);
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_16();
      [v7 setFrame:?];
      v8 = *(self + 720);
      OUTLINED_FUNCTION_16();
      v12.size.height = v6;
      MaxY = CGRectGetMaxY(v12);
      v10 = *&kSeparatorHeight;

      [v8 setFrame:{0.0, MaxY, v4, v10}];
    }
  }
}

- (uint64_t)_updateTextFieldFrame
{
  if (result)
  {
    v3 = result;
    [*(result + 696) bounds];
    v5 = v4;
    v7 = v6;
    [*(v3 + 696) center];
    OUTLINED_FUNCTION_50();
    layer = [*(v3 + 696) layer];
    [layer anchorPoint];
    v10 = v9;
    v12 = v11;

    v13 = *(v3 + 872);

    return [v13 setFrame:{v1 + 7.0 - v5 * v10, v2 - v7 * v12, v5 + -14.0, v7}];
  }

  return result;
}

- (double)_textFieldTopMargin
{
  if (!self)
  {
    return 0.0;
  }

  font = [*(self + 872) font];
  [font lineHeight];
  v4 = v3;

  v5 = OUTLINED_FUNCTION_52();
  [v6 textRectForBounds:v5];
  v8 = v7;
  v10 = 100.0 - (v7 + v9);
  [*(self + 872) bounds];
  v12 = v11 - v8 - v10;
  [*(self + 872) paddingBottom];
  OUTLINED_FUNCTION_47(v12 - v13 - v4);

  _SFRoundFloatToPixels();
  return result;
}

- (void)layoutSubviews
{
  v2139 = *MEMORY[0x1E69E9840];
  [(_SFNavigationBar *)self _updateBackdropFrame];
  urlOutlineHeight = [(SFNavigationBarMetrics *)self->_barMetrics urlOutlineHeight];
  urlContainerTop = [(SFNavigationBarMetrics *)self->_barMetrics urlContainerTop];
  [(_SFNavigationBar *)self safeAreaInsets];
  [_SFNavigationBar _customButtonHorizontalPaddingWithInset:?];
  v1853 = v3;
  [(_SFNavigationBar *)self safeAreaInsets];
  [_SFNavigationBar _customButtonHorizontalPaddingWithInset:?];
  v2021 = v4;
  _sf_usesLeftToRightLayout = [(_SFNavigationBar *)self _sf_usesLeftToRightLayout];
  barButtonHeight = [(SFNavigationBarMetrics *)self->_barMetrics barButtonHeight];
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v7 = 0.0;
  if (isSolariumEnabled)
  {
    v7 = 6.0;
  }

  *&v1515 = v7;
  LODWORD(v1919) = [(_SFNavigationBar *)self hasToolbar];
  [(_SFNavigationBar *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(_SFNavigationBar *)self _layoutBounds];
  v745 = v16;
  v1941 = *&self->_contentUnderStatusBarHeight;
  v1742 = kSeparatorHeight;
  _urlOutlineOriginY = [(_SFNavigationBar *)&self->super.super.super.isa _urlOutlineOriginY];
  [(_SFNavigationBar *)self safeAreaInsets];
  v18 = v17;
  v20 = v19;
  v2038 = *&v11;
  v2054 = *&v9;
  v2140.origin.x = v9;
  v2140.origin.y = v11;
  rect = *&v15;
  v2081 = *&v13;
  v2140.size.width = v13;
  v2140.size.height = v15;
  CGRectGetWidth(v2140);
  _SFRoundFloatToPixels();
  v22 = fmax(v18, 20.0);
  v23 = fmax(v20, 20.0);
  if (self->_usesNarrowLayout)
  {
    v24 = v21;
  }

  else
  {
    v24 = v23;
  }

  obj = _sf_usesLeftToRightLayout;
  if (_sf_usesLeftToRightLayout)
  {
    v25 = v22;
  }

  else
  {
    v25 = v21;
  }

  if (_sf_usesLeftToRightLayout)
  {
    v26 = v21;
  }

  else
  {
    v26 = v24;
  }

  if (_sf_usesLeftToRightLayout)
  {
    v27 = v21;
  }

  else
  {
    v27 = v22;
  }

  if (_sf_usesLeftToRightLayout)
  {
    v28 = v24;
  }

  else
  {
    v28 = v21;
  }

  [(SFToolbarContainer *)self->_leadingToolbarContainer setEdgeMargins:v25, 0.0, v26];
  p_trailingToolbarContainer = &self->_trailingToolbarContainer;
  [(SFToolbarContainer *)self->_trailingToolbarContainer setEdgeMargins:v27, 0.0, v28];
  p_leadingToolbarContainer = &self->_leadingToolbarContainer;
  v1765 = 840;
  selfCopy = self;
  v1831 = 648;
  traitCollectionForButtonMetrics = [(SFNavigationBarMetrics *)self->_barMetrics traitCollectionForButtonMetrics];
  v30 = OUTLINED_FUNCTION_62(traitCollectionForButtonMetrics);
  v32 = v31;

  traitCollectionForButtonMetrics2 = [(SFNavigationBarMetrics *)self->_barMetrics traitCollectionForButtonMetrics];
  v34 = OUTLINED_FUNCTION_62(traitCollectionForButtonMetrics2);
  v36 = v35;

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [OUTLINED_FUNCTION_48(600 v678];
    v30 = v37;
    [(SFBarButtonGroupContainer *)self->_trailingBarButtonGroupContainer totalWidth];
    v34 = v38;
    v36 = *&v38;
    v32 = *&v30;
  }

  if (v1919 && self->_expanded)
  {
    v39 = *(&self->super.super.super.isa + v1765);
  }

  else
  {
    v39 = 0;
  }

  dismissButton = self->_dismissButton;
  v1964 = v36;
  if (dismissButton)
  {
    [(SFDismissButton *)dismissButton frame];
    Width = CGRectGetWidth(v2141);
    if (_sf_usesLeftToRightLayout)
    {
      v42 = *&v1853;
    }

    else
    {
      v42 = *&v2021;
    }

    v43 = v42 + Width;
  }

  else
  {
    v43 = 0.0;
  }

  v44 = v30 + v43 + *&v1515 * 2.0;
  if (_sf_usesLeftToRightLayout)
  {
    v45 = *&v2021;
  }

  else
  {
    v45 = *&v1853;
  }

  v46 = v45 + v34;
  if (self->_inputMode == 1 || (-[_SFToolbar items](self->_leadingToolbar, "items"), v47 = objc_claimAutoreleasedReturnValue(), v48 = [v47 count], -[_SFToolbar items](selfCopy->_trailingToolbar, "items"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "count"), v49, v47, v48 == v50))
  {
    v51 = fmax(v44, v46);
    v52 = v51 + v51;
  }

  else
  {
    v52 = v46 + v44;
  }

  OUTLINED_FUNCTION_44();
  v53 = CGRectGetWidth(v2142) - v52 + -664.0;
  if (!(v39 & 1 | (v53 >= 0.0)))
  {
    OUTLINED_FUNCTION_44();
    CGRectGetWidth(v2143);
  }

  _SFRoundFloatToPixels();
  v1718 = v54;
  v2135[0] = MEMORY[0x1E69E9820];
  v2135[1] = 3221225472;
  v2135[2] = __34___SFNavigationBar_layoutSubviews__block_invoke;
  v2135[3] = &__block_descriptor_48_e13_d24__0___dd_8l;
  *&v2135[4] = v34 + v30;
  *&v2135[5] = v53;
  _SFClamp();
  _SFRoundFloatToPixels();
  v55 = (__34___SFNavigationBar_layoutSubviews__block_invoke)(v2135, v34, *&v1964);
  v63 = OUTLINED_FUNCTION_34(v55, v56, v57, v58, v59, v60, v61, v62, v678, v711, v745, v778, v811, v844, p_leadingToolbarContainer, v909, v943, v977, v1011, v1044, v1078, v1111, urlContainerTop, v1178, v1212, p_trailingToolbarContainer, v1279, v1312, sx, v1379, v1413, v1447, v1481, v1515, v1543, v1571, v1598, v1624, barButtonHeight, v1673, v1695, v1718, v1742, v1765, 3221225472, urlOutlineHeight, v1831, v1853, 824, 816, v1919, v1941, v1964, v32, _urlOutlineOriginY, v2021, v2038, v2054, rect, v2081, selfCopy);
  if (v63)
  {
    [v63 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v65 = v64;
    v67 = v66;
    isSolariumEnabled2 = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v75 = *&v1651;
    if (isSolariumEnabled2)
    {
      v76 = *&v1651;
    }

    else
    {
      v76 = v65;
    }

    if (!isSolariumEnabled2)
    {
      v75 = v67;
    }

    *&v1674 = v75;
    v1544 = *&v1854;
    *&v1572 = v76;
    if ((_sf_usesLeftToRightLayout & 1) == 0)
    {
      v2144.origin.x = OUTLINED_FUNCTION_13(*&v1854, v76, v69, v70, v71, v72, v73, v74, v679, v712, v746, v779, v812, v845, v877, v910, v944, v978, v1012, v1045, v1079, v1112, v1146, v1179, v1213, v1247, v1280, v1313, sxa, v1380, v1414, v1448, v1482, v1516, *&v1854, v76, v1599, v1625, *&v1651, v75, *&v1696, *&v1719, *&v1743, *&v1766, *&v1788, *&v1810, *&v1832, *&v1854, *&v1876, *&v1898, *&v1920, *&v1942, *&v1965, *&v1987, *&v2005, *&v2022, *&v2039, *&v2055);
      v1544 = CGRectGetWidth(v2144) - *&v1572 - *&v2022;
    }

    isSolariumEnabled3 = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v78 = *&v1810 * 0.5 + *&v2005 - *&v1674 * 0.5;
    if (isSolariumEnabled3)
    {
      v78 = *&v2005;
    }

    v1381 = v78;
  }

  else
  {
    v1381 = *(MEMORY[0x1E695F050] + 8);
    v1544 = *MEMORY[0x1E695F050];
    v1572 = *(MEMORY[0x1E695F050] + 16);
    v1674 = *(MEMORY[0x1E695F050] + 24);
  }

  [MEMORY[0x1E69C8880] isSolariumEnabled];
  *&v713 = v2093 + 568;
  [*(v2093 + 568) baselineOffsetAdjustment];
  OUTLINED_FUNCTION_14();
  if ((v87 & 1) != 0 || (OUTLINED_FUNCTION_18(), !v88))
  {
    v2146.origin.x = OUTLINED_FUNCTION_13(v79, v80, v81, v82, v83, v84, v85, v86, v679, v713, v746, v779, v812, v845, v877, v910, v944, v978, v1012, v1045, v1079, v1112, v1146, v1179, v1213, v1247, v1280, v1313, sxa, v1381, v1414, v1448, v1482, v1516, v1544, *&v1572, v1599, v1625, *&v1651, *&v1674, *&v1696, *&v1719, *&v1743, *&v1766, *&v1788, *&v1810, *&v1832, *&v1854, *&v1876, *&v1898, *&v1920, *&v1942, *&v1965, *&v1987, *&v2005, *&v2022, *&v2039, *&v2055);
    CGRectGetMaxX(v2146);
  }

  else
  {
    v2145.origin.x = OUTLINED_FUNCTION_3_1(v79, v80, v81, v82, v83, v84, v85, v86, v679, v713, v746, v779, v812, v845, v877, v910, v944, v978, v1012, v1045, v1079, v1112, v1146, v1179, v1213, v1247, v1280, v1313, sxa, v1381, v1414, v1448, v1482, v1516, v1544);
    CGRectGetMinX(v2145);
  }

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v89 = *&v2082;
    if ((_sf_usesLeftToRightLayout & 1) != 0 || (OUTLINED_FUNCTION_18(), !v97))
    {
      v99 = v2039;
      v98 = v2055;
      v100 = recta;
      CGRectGetMaxX(*(&v89 - 2));
    }

    else
    {
      v2147.origin.x = OUTLINED_FUNCTION_3_1(v90, v91, v89, v92, v93, v94, v95, v96, *&v680, *&v714, *&v747, *&v780, *&v813, *&v846, *&v878, *&v911, *&v945, *&v979, *&v1013, *&v1046, *&v1080, *&v1113, *&v1147, v1180, v1214, *&v1248, v1281, v1314, *&sxb, *&v1382, *&v1415, v1449, v1483, *&v1517, *&v1545);
      CGRectGetMinX(v2147);
    }

    OUTLINED_FUNCTION_14();
  }

  _SFRoundRectToPixels();
  v1450 = v102;
  v1484 = v101;
  v1181 = v104;
  v1215 = v103;
  OUTLINED_FUNCTION_14();
  if (v105)
  {
    OUTLINED_FUNCTION_18();
    if (v114)
    {
      v2148.origin.x = OUTLINED_FUNCTION_3_1(v106, v107, v108, v109, v110, v111, v112, v113, *&v680, *&v714, *&v747, *&v780, *&v813, *&v846, *&v878, *&v911, *&v945, *&v979, *&v1013, *&v1046, *&v1080, *&v1113, *&v1147, *&v1181, *&v1215, *&v1248, v1281, v1314, *&sxb, *&v1382, *&v1415, *&v1450, *&v1484, *&v1517, *&v1545);
      CGRectGetMaxX(v2148);
    }
  }

  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & _sf_usesLeftToRightLayout) == 1)
  {
    OUTLINED_FUNCTION_18();
    if (v122)
    {
      v2149.origin.x = OUTLINED_FUNCTION_3_1(v115, v115, v116, v117, v118, v119, v120, v121, *&v680, *&v714, *&v747, *&v780, *&v813, *&v846, *&v878, *&v911, *&v945, *&v979, *&v1013, *&v1046, *&v1080, *&v1113, *&v1147, *&v1181, *&v1215, *&v1248, v1281, v1314, *&sxb, *&v1382, *&v1415, *&v1450, *&v1484, *&v1517, *&v1545);
      CGRectGetMaxX(v2149);
    }
  }

  v123 = _SFRoundRectToPixels();
  OUTLINED_FUNCTION_34(v123, v124, v125, v126, v127, v128, v129, v130, v680, v714, v747, v780, v813, v846, v878, v911, v945, v979, v1013, v1046, v1080, v1113, v1147, v1181, v1215, v1248, v134, v133, sxb, v1382, v1415, v1450, v1484, v1517, v1545, v1572, v132, v131, v1651, v1674, v1696, v1719, v1743, v1766, v1788, v1810, v1832, v1854, v1876, v1898, v1920, v1942, v1965, v1987, v2005, v2022, v2039, v2055, recta, v2082, v2093);
  v143 = OUTLINED_FUNCTION_3_1(v135, v136, v137, v138, v139, v140, v141, v142, v681, v715, v748, v781, v814, v847, v879, v912, v946, v980, v1014, v1047, v1081, v1114, v1148, v1182, v1216, v1249, v1282, v1315, sxq, v1383, v1416, v1451, v1485, v1518, v1546);
  [v144 setFrame:v143];
  v145 = OUTLINED_FUNCTION_56(*(v2094 + 842));
  v147 = [v146 setAlpha:v145];
  OUTLINED_FUNCTION_37(v147, v148, v149, v150, v151, v152, v153, v154, v682, v716, v749, v782, v815, 842, v880, v913, v947, v981, v1015, v1048, v1082, v1115, v1149, v1183, v1217, v1250, v1283, v1316, sxr, v1384, v1417, v1452, v1486, v1519, v1547, v1573, v1600, v1626, v1652, v1675, v1697, v1720, v1744, v1767, v1789, v1811, v1833, v1855, v1877, v1899, v1921, v1943, v1966, v1988, v2006, v2023, v2040, v2056, rectf, v2083, v2094);
  v163 = OUTLINED_FUNCTION_13(v155, v156, v157, v158, v159, v160, v161, v162, v683, v717, v750, v783, v816, v848, v881, v914, v948, v982, v1016, v1049, v1083, v1116, v1150, v1184, v1218, v1251, v1284, v1317, sxs, v1385, v1418, v1453, v1487, v1520, v1548, v1574, v1601, v1627, v1653, v1676, v1698, v1721, v1745, v1768, v1790, v1812, v1834, v1856, v1878, v1900, v1922, v1944, v1967, v1989, v2007, v2024, v2041, v2057);
  v165 = [v164 setFrame:v163];
  v173 = OUTLINED_FUNCTION_49(v165, v166, v167, v168, v169, v170, v171, v172, v684, v718, v751, v784, v817, v849, v882, v915, v949, v983, v1017, v1050, v1084, v1117, v1151, v1185, v1219, v1252, v1285, v1318, sxt, v1386, v1419, v1454, v1488, v1521, v1549, v1575, v1602, v1628, v1654, v1677, v1699, v1722, v1746, v1769, v1791, v1813, v1835, v1857, v1879, v1901, v1923, v1945, v1968, v1990, v2008, v2025, v2042, v2058, rectg, v2084, v2095);
  [v173 setFrame:v2059];
  v2150.origin.x = OUTLINED_FUNCTION_13(v174, v175, v176, v177, v178, v179, v180, v181, v685, v719, v752, v785, v818, v850, v883, v916, v950, v984, v1018, v1051, v1085, v1118, v1152, v1186, v1220, v1253, v1286, v1319, sxu, v1387, v1420, v1455, v1489, v1522, v1550, v1576, v1603, v1629, v1655, v1678, v1700, v1723, v1747, v1770, v1792, v1814, v1836, v1858, v1880, v1902, v1924, v1946, v1969, v1991, v2009, v2026, v2043, v2059);
  CGRectGetHeight(v2150);
  [v2096 minimumHeight];
  v182 = _SFEqualWithEpsilon();
  [OUTLINED_FUNCTION_49(v182 v183];
  v2134 = 0u;
  v2133 = 0u;
  v2132 = 0u;
  v2131 = 0u;
  v1020 = 688;
  v189 = *(v2097 + 688);
  v190 = [v189 countByEnumeratingWithState:&v2131 objects:v2138 count:16];
  if (v190)
  {
    v191 = *v2132;
    v192 = *MEMORY[0x1E695F060];
    v193 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      for (i = 0; i != v190; ++i)
      {
        if (*v2132 != v191)
        {
          objc_enumerationMutation(v189);
        }

        v195 = *(*(&v2131 + 1) + 8 * i);
        view = [v195 view];
        superview = [view superview];
        if (superview)
        {
          view2 = [v195 view];
          [view2 sizeThatFits:{v192, v193}];
          [v195 setSize:?];
        }

        else
        {
          [v195 setSize:{v192, v193}];
        }
      }

      v190 = [v189 countByEnumeratingWithState:&v2131 objects:v2138 count:16];
    }

    while (v190);
  }

  [v2097 minimumHeight];
  v200 = v199;
  [v2097 bounds];
  v209 = v204;
  v210 = *(v2097 + 904);
  if (v39 & 1 | ((LOBYTE(v1926) & 1) == 0))
  {
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [(SFNavigationBarMetrics *)*(v2097 + *&v1838) useNarrowInsets];
    }
  }

  else
  {
    v2151.origin.x = OUTLINED_FUNCTION_13(v201, v202, v203, v204, v205, v206, v207, v208, v687, v721, v754, v787, v820, v852, v885, v918, v952, v986, COERCE_DOUBLE(688), v1053, v1087, v1120, v1154, v1188, v1222, v1255, v1288, v1321, sxc, v1389, v1422, v1457, v1491, v1524, v1552, v1578, v1605, v1631, v1657, v1680, v1702, v1725, v1749, v1772, v1794, v1816, v1838, v1860, v1882, v1904, v1926, v1948, v1971, v1993, v2011, v2028, *&v2045, *&v2061);
    v211 = CGRectGetWidth(v2151);
    OUTLINED_FUNCTION_47(v211 - v1726);
  }

  _SFRoundFloatToPixels();
  v213 = v212;
  *&v2029 = OUTLINED_FUNCTION_1_1(v209 - v200, v210 - v200);
  v221 = 0.0;
  v1994 = *&v2086 - v213;
  if (v39)
  {
    v222 = 0.0;
    v1727 = *&v2086 - v213;
    v1750 = v213;
  }

  else
  {
    v223 = v2097;
    v222 = 0.0;
    v1727 = *&v2086 - v213;
    v1750 = v213;
    if (*(v2097 + *&v1882) == 1)
    {
      goto LABEL_91;
    }

    v2152.origin.x = OUTLINED_FUNCTION_28(*&v2086 - v213, v214, v215, v216, v217, v218, v219, v220, v687, v721, v754, v787, v820, v852, v885, v918, v952, v986, *&v1020, v1053, v1087, v1120, v1154, v1188, v1222, v1255, v1288, v1321, sxc, v1389, v1422, v1457, v1491, v1524, v1552, v1578, v1605, v1631);
    MaxX = CGRectGetMaxX(v2152);
    v2153.origin.x = OUTLINED_FUNCTION_27(MaxX, v225, v226, v227, v228, v229, v230, v231, v688, v722, v755, v788, v821, v853, v886, v919, v953, v987, v1021, v1054, v1088, v1121, v1155, v1189, v1223, v1256, v1289, v1322, sxw, v1390, v1423, v1458, v1492);
    MinX = CGRectGetMinX(v2153);
    if (MaxX - v213 <= 0.0)
    {
      if (v1994 - MinX > 0.0)
      {
        _SFInterpolate();
        v222 = v234;
      }
    }

    else
    {
      _SFInterpolate();
      v222 = -v233;
    }

    v1727 = v1994 - v222;
    v1750 = v213 - v222;
  }

  v223 = v2097;
LABEL_91:
  v235 = 0.0;
  if ((*(v223 + 843) & 1) == 0)
  {
    v2130 = 0u;
    v2129 = 0u;
    v2128 = 0u;
    v2127 = 0u;
    v236 = *(v223 + v1020);
    v237 = [v236 countByEnumeratingWithState:&v2127 objects:v2137 count:16];
    if (v237)
    {
      v238 = *v2128;
      do
      {
        for (j = 0; j != v237; ++j)
        {
          if (*v2128 != v238)
          {
            objc_enumerationMutation(v236);
          }

          v240 = *(*(&v2127 + 1) + 8 * j);
          [v240 size];
          v242 = v241;
          [v240 spacing];
          v244 = v243;
          [v240 size];
          v246 = v245;
          [v240 spacing];
          v235 = v235 + (v242 + v244) / 0.7;
          v221 = v221 + v246 + v247;
        }

        v237 = [v236 countByEnumeratingWithState:&v2127 objects:v2137 count:16];
      }

      while (v237);
    }

    v223 = v2097;
  }

  HIDWORD(v1702) = [*(v223 + 848) showsSecurityAnnotation];
  v248 = v2097;
  v249 = (v2097 + 616);
  v250 = *(v2097 + 616) == *MEMORY[0x1E695F060] && *(v2097 + 624) == *(MEMORY[0x1E695F060] + 8);
  if (v250)
  {
    [*(v2097 + 480) sizeThatFits:?];
    *v249 = v251;
    *(v2097 + 624) = v252;
    v248 = v2097;
  }

  v253 = 0.0;
  if (HIDWORD(v1702))
  {
    v253 = 4.0;
  }

  v1122 = v253;
  v254 = MEMORY[0x1E695F060];
  if (HIDWORD(v1702))
  {
    v254 = (v2097 + 616);
  }

  v1424 = *v254;
  v920 = v254[1];
  HIDWORD(v1087) = [(_SFNavigationBar *)v248 _showsPrivateAnnotation];
  _privateBrowsingLabelRevealPercent = [(_SFNavigationBar *)v2097 _privateBrowsingLabelRevealPercent];
  v255 = 0.0;
  v256 = 0.0;
  if (HIDWORD(v1087))
  {
    [*(v2097 + 464) bounds];
    v256 = CGRectGetWidth(v2154) + 4.0;
  }

  v988 = v256;
  sxd = *&v2029 * 0.3 + 0.7;
  v954 = v1122 + v1424;
  v257 = v2097;
  if (*&v2029 < 1.0)
  {
    [*(v2097 + 448) urlSize];
    v258 = *&v2086 * 0.5;
    v259 = *&v2086 * 0.5 - v213;
    v261 = fmin(v213 + (v259 + 1.0) / 0.7, (v235 + v954 + v988 + v260) * 0.5 + 7.0);
    if (v261 > v259)
    {
      v262 = (1.0 - sxd) * 0.7;
      v263 = v259 + v262 * (v261 - v259) / (sxd * 0.3);
      v264 = fmax(v222, 0.0);
      v265 = v264 + v262 * (fmin(v222, 0.0) - v264) / (sxd * 0.3);
      v1727 = v258 + v263 - v265;
      v1750 = v258 - v263 - v265;
    }

    v266 = v258 + (v261 + -7.0 - v235) * -0.7;
    _SFRoundFloatToPixels();
    v255 = v267 - v266;
    v257 = v2097;
  }

  if (*(v257 + 843) == 1 && *(v257 + *&v1772) == 1)
  {
    OUTLINED_FUNCTION_14();
  }

  _SFRoundRectToPixels();
  v1995 = *&v269;
  v2012 = *&v268;
  v2155.origin.x = OUTLINED_FUNCTION_25(v270, v268, v271, v269, v272, v273, v274, v275, v687, v721, v754, COERCE_DOUBLE(848), v820, v852, v885, v920, v954, v988, *&v1020, _privateBrowsingLabelRevealPercent, v1087, v1122, v1154, v1188, v1222, v1255, v1288, v1321, sxd, v1389, v1424, v1457, v1491, v1524, v1552, v1578, v1605, v1631, v1657, v1680, v1702, v1727, v1750, v1772, v1794, v1816, v1838, v1860, v1882, v1904, v1926, v271, v270);
  v822 = CGRectGetWidth(v2155);
  if (*(v2097 + v1773) == 1)
  {
    v276 = v2097;
    if (*(v2097 + 843))
    {
      v277 = *&v1861 + *(v2097 + 808);
    }

    else if (v1927)
    {
      v278 = v723;
      if (obj)
      {
        v278 = (v2097 + 576);
      }

      items = [*v278 items];
      if ([items count])
      {
        v277 = *&v1861 + *(v2097 + 808);
      }

      else
      {
        v277 = v213 - *&v1861;
      }

      v276 = v2097;
    }

    else
    {
      v277 = v213 - *&v1861;
    }

    if (obj)
    {
      v280 = *&v756 - v277;
      v281 = *(v276 + 808);
    }

    else
    {
      v281 = *(v276 + 808);
      v280 = v277 - v281;
    }

    [*(v276 + 800) setFrame:{v280, *&v2012, v281, *&v1995}];
  }

  _SFRoundFloatToPixels();
  v283 = v282;
  OUTLINED_FUNCTION_54();
  v284 = *(v2097 + v1839);
  _metricsCategory = [objc_opt_class() _metricsCategory];
  [(SFNavigationBarMetrics *)v284 squishHeightQuantizationOffsetWithBarMetricsCategory:_metricsCategory];
  _SFRoundFloatToPixels();
  CGAffineTransformMakeTranslation(&v2125, (1.0 - *&v2029) * v255, (1.0 - *&v2029) * (v283 + *&v1156 * -0.7 - v286));
  v2123 = v2125;
  CGAffineTransformScale(&v2124, &v2123, *&sxe, *&sxe);
  v2125 = v2124;
  v2126 = v2124;
  OUTLINED_FUNCTION_7();
  [OUTLINED_FUNCTION_37(v287 v288];
  OUTLINED_FUNCTION_13(v295, v296, v297, v298, v299, v300, v301, v302, v690, v724, v757, v790, v823, v855, v888, v922, v956, v990, v1023, v1057, v1090, v1124, v1157, v1191, v1225, v1258, v1291, v1324, sxx, v1392, v1426, v1460, v1494, v1526, v1554, v1580, v1607, v1633, v1659, v1682, v1704, v1729, v1752, v1774, v1796, v1818, v1840, v1862, v1884, v1906, v1928, v1950, v1973, v1996, v2013, v2030, v2046, v2062);
  v303 = _SFRoundRectToPixels();
  [OUTLINED_FUNCTION_37(v303 v304];
  OUTLINED_FUNCTION_25(v311, v312, v313, v314, v315, v316, v317, v318, v692, v726, v759, v792, v825, v857, v890, v924, v958, v992, v1025, v1059, v1092, v1126, v1159, v1193, v1227, v1260, v1293, v1326, sxz, v1394, v1428, v1462, v1496, v1528, v1556, v1582, v1609, v1635, v1661, v1684, v1706, v1731, v1754, v1776, v1798, v1820, v1842, v1864, v1886, v1908, v1930, v1952, v1975);
  _SFRoundRectToPixels();
  [v2099[87] ss_setUntransformedFrame:?];
  if (*(v2099 + v1909))
  {
    _controlsAlpha = [v2099 _controlsAlpha];
    [OUTLINED_FUNCTION_34(_controlsAlpha v320];
  }

  if (v1931)
  {
    [MEMORY[0x1E69C8880] isSolariumEnabled];
    OUTLINED_FUNCTION_14();
    v327 = v891;
    if (v250)
    {
      v327 = v1261;
    }

    v328 = *v327;
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      OUTLINED_FUNCTION_14();
      if (v250)
      {
        v337 = &OBJC_IVAR____SFNavigationBar__trailingBarButtonGroupContainer;
      }

      else
      {
        v337 = &OBJC_IVAR____SFNavigationBar__leadingBarButtonGroupContainer;
      }

      v338 = *(v2099 + *v337);

      v328 = v338;
    }

    v2156.origin.x = OUTLINED_FUNCTION_28(v329, v330, v331, v332, v333, v334, v335, v336, *&v693, *&v727, *&v760, *&v793, *&v826, *&v858, *&v891, *&v925, *&v959, *&v993, *&v1026, *&v1060, *&v1093, *&v1127, *&v1160, *&v1194, *&v1228, *&v1261, *&v1294, *&v1327, *&sxf, *&v1395, *&v1429, *&v1463, *&v1497, *&v1529, *&v1557, *&v1583, *&v1610, *&v1636);
    v339 = CGRectGetWidth(v2156);
    v348 = v1611;
    v347 = v1637;
    if (v339 != 0.0)
    {
      v2157.origin.x = OUTLINED_FUNCTION_13(v339, v340, v341, v342, v343, v344, v345, v346, v694, v728, v761, v794, v827, v859, v892, v926, v960, v994, v1027, v1061, v1094, v1128, v1161, v1195, v1229, v1262, v1295, v1328, sxg, v1396, v1430, v1464, v1498, v1530, v1558, v1584, v1611, v1637, *&v1662, *&v1685, *&v1707, *&v1732, *&v1755, *&v1777, *&v1799, *&v1821, *&v1843, *&v1865, *&v1887, *&v1909, *&v1931, *&v1953, *&v1976, *&v1998, *&v2015, *&v2032, *&v2048, *&v2064);
      v347 = CGRectGetWidth(v2157);
      v2158.origin.x = OUTLINED_FUNCTION_28(v347, v349, v350, v351, v352, v353, v354, v355, v695, v729, v762, v795, v828, v860, v893, v927, v961, v995, v1028, v1062, v1095, v1129, v1162, v1196, v1230, v1263, v1296, v1329, sxba, v1397, v1431, v1465, v1499, v1531, v1559, v1585, v1612, v1638);
      v348 = CGRectGetMinX(v2158);
      v2159.origin.x = OUTLINED_FUNCTION_28(v348, v356, v357, v358, v359, v360, v361, v362, v696, v730, v763, v796, v829, v861, v894, v928, v962, v996, v1029, v1063, v1096, v1130, v1163, v1197, v1231, v1264, v1297, v1330, sxbb, v1398, v1432, v1466, v1500, v1532, v1560, v1586, v1613, v1639);
      CGRectGetWidth(v2159);
      OUTLINED_FUNCTION_36();
    }

    layer = [v328 layer];
    [layer setAnchorPoint:{v347, v348}];

    [v328 setTransform:{&v2125, OUTLINED_FUNCTION_7().n128_f64[0]}];
    v372 = OUTLINED_FUNCTION_28(v364, v365, v366, v367, v368, v369, v370, v371, v694, v728, v761, v794, v827, v859, v892, v926, v960, v994, v1027, v1061, v1094, v1128, v1161, v1195, v1229, v1262, v1295, v1328, sxg, v1396, v1430, v1464, v1498, v1530, v1558, v1584, v1611, v1637);
    [v373 ss_setUntransformedFrame:v372];
    OUTLINED_FUNCTION_14();
    v374 = *&v895;
    if (!v250)
    {
      v374 = *&v1265;
    }

    v375 = *v374;
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      OUTLINED_FUNCTION_14();
      if (v250)
      {
        v384 = &OBJC_IVAR____SFNavigationBar__leadingBarButtonGroupContainer;
      }

      else
      {
        v384 = &OBJC_IVAR____SFNavigationBar__trailingBarButtonGroupContainer;
      }

      v385 = *(v2099 + *v384);

      v375 = v385;
    }

    v2160.origin.x = OUTLINED_FUNCTION_27(v376, v377, v378, v379, v380, v381, v382, v383, v697, v731, v764, v797, v830, v862, v895, v929, v963, v997, v1030, v1064, v1097, v1131, v1164, v1198, v1232, v1265, v1298, v1331, sxh, v1399, v1433, v1467, v1501);
    v386 = CGRectGetWidth(v2160);
    v395 = v1468;
    v394 = v1502;
    if (v386 != 0.0)
    {
      v2161.origin.x = OUTLINED_FUNCTION_13(v386, v387, v388, v389, v390, v391, v392, v393, v698, v732, v765, v798, v831, v863, v896, v930, v964, v998, v1031, v1065, v1098, v1132, v1165, v1199, v1233, v1266, v1299, v1332, sxi, v1400, v1434, v1468, v1502, *&v1529, *&v1557, *&v1583, *&v1610, *&v1636, *&v1662, *&v1685, *&v1707, *&v1732, *&v1755, *&v1777, *&v1799, *&v1821, *&v1843, *&v1865, *&v1887, *&v1909, *&v1931, *&v1953, *&v1976, *&v1998, *&v2015, *&v2032, *&v2048, *&v2064);
      v394 = CGRectGetWidth(v2161);
      v2162.origin.x = OUTLINED_FUNCTION_27(v394, v396, v397, v398, v399, v400, v401, v402, v699, v733, v766, v799, v832, v864, v897, v931, v965, v999, v1032, v1066, v1099, v1133, v1166, v1200, v1234, v1267, v1300, v1333, sxbc, v1401, v1435, v1469, v1503);
      v395 = CGRectGetMinX(v2162);
      v2163.origin.x = OUTLINED_FUNCTION_27(v395, v403, v404, v405, v406, v407, v408, v409, v700, v734, v767, v800, v833, v865, v898, v932, v966, v1000, v1033, v1067, v1100, v1134, v1167, v1201, v1235, v1268, v1301, v1334, sxbd, v1402, v1436, v1470, v1504);
      CGRectGetWidth(v2163);
      OUTLINED_FUNCTION_36();
    }

    layer2 = [v375 layer];
    [layer2 setAnchorPoint:{v394, v395}];

    [v375 setTransform:{&v2125, OUTLINED_FUNCTION_7().n128_f64[0]}];
    v419 = OUTLINED_FUNCTION_27(v411, v412, v413, v414, v415, v416, v417, v418, v698, v732, v765, v798, v831, v863, v896, v930, v964, v998, v1031, v1065, v1098, v1132, v1165, v1199, v1233, v1266, v1299, v1332, sxi, v1400, v1434, v1468, v1502);
    [v420 ss_setUntransformedFrame:v419];
  }

  v422 = OUTLINED_FUNCTION_38();
  if (!v250)
  {
    SFBarBackgroundAlphaForSquishTransformFactor();
    v421 = v2099;
  }

  v423 = v421[87];
  if (v423 && v423[101] != v422)
  {
    v423[101] = v422;
    [_SFNavigationBarURLButton _updateBackgroundImageAnimated:v423];
    v421 = v2099;
  }

  v424 = OUTLINED_FUNCTION_56(*(v421 + 843));
  scaleView(v425, v424);
  OUTLINED_FUNCTION_49(v426, v427, v428, v429, v430, v431, v432, v433, v693, v727, v760, v793, v826, v858, v891, v925, v959, v993, v1026, v1060, v1093, v1127, v1160, v1194, v1228, v1261, v1294, v1327, sxf, v1395, v1429, v1463, v1497, v1529, v1557, v1583, v1610, v1636, v1662, v1685, v1707, v1732, v1755, v1777, v1799, v1821, v1843, v1865, v1887, v1909, v1931, v1953, v1976, v1998, v2015, v2032, v2048, v2064, rectc, v2088, v2099);
  v435 = OUTLINED_FUNCTION_56(*(v434 + 843));
  scaleView(v436, v435);
  v437 = OUTLINED_FUNCTION_56(*(v2100 + 843));
  scaleView(v438, v437);
  effectiveUserInterfaceLayoutDirection = [v2100 effectiveUserInterfaceLayoutDirection];
  v448 = v2100;
  v449 = 0.0;
  if (*(v2100 + v1888) != 1)
  {
    goto LABEL_168;
  }

  if (v1932)
  {
    v2164.origin.x = OUTLINED_FUNCTION_28(v440, v441, v442, v443, v444, v445, v446, v447, *&v701, *&v735, *&v768, *&v801, *&v834, *&v866, *&v899, *&v933, *&v967, *&v1001, *&v1034, *&v1068, *&v1101, *&v1135, *&v1168, *&v1202, *&v1236, *&v1269, *&v1302, *&v1335, *&sxj, *&v1403, *&v1437, *&v1471, *&v1505, *&v1533, *&v1561, v1587, *&v1614, *&v1640);
    v450 = CGRectGetMaxX(v2164);
    v2165.origin.x = OUTLINED_FUNCTION_25(v450, v451, v452, v453, v454, v455, v456, v457, v702, v736, v769, v802, v835, v867, v900, v934, v968, v1002, v1035, v1069, v1102, v1136, v1169, v1203, v1237, v1270, v1303, v1336, sxbe, v1404, v1438, v1472, v1506, v1534, v1562, v1588, v1615, v1641, *&v1663, *&v1686, *&v1708, *&v1733, *&v1756, *&v1778, *&v1800, *&v1822, *&v1844, *&v1866, *&v1888, *&v1910, *&v1932, v1954, *&v1977);
    v458 = v450 - CGRectGetMinX(v2165);
    v459 = *&v1533;
LABEL_167:
    v449 = v459 + v458;
    v448 = v2100;
LABEL_168:
    v460 = *&v1977;
    goto LABEL_169;
  }

  v460 = *&v1977;
  if (obj)
  {
    v2166.origin.x = OUTLINED_FUNCTION_3_1(v440, v441, v442, v443, v444, v445, v446, v447, *&v701, *&v735, *&v768, *&v801, *&v834, *&v866, *&v899, *&v933, *&v967, *&v1001, *&v1034, *&v1068, *&v1101, *&v1135, *&v1168, *&v1202, *&v1236, *&v1269, *&v1302, *&v1335, *&sxj, *&v1403, *&v1437, *&v1471, *&v1505, *&v1533, *&v1561);
    v458 = CGRectGetWidth(v2166);
    v459 = *&v1866;
    goto LABEL_167;
  }

LABEL_169:
  v2123.a = 0.0;
  *&v2123.b = &v2123;
  *&v2123.c = 0x2020000000;
  v461 = *(v448 + 736);
  v2123.d = 0.0;
  v2122[0] = MEMORY[0x1E69E9820];
  v2122[1] = v1800;
  v2122[2] = __34___SFNavigationBar_layoutSubviews__block_invoke_2;
  v2122[3] = &unk_1E8490948;
  v2122[4] = v448;
  v2122[5] = &v2123;
  *&v2122[6] = v449;
  v2122[7] = v1822;
  v2122[8] = v1663;
  [(SFNavigationBarAccessoryButtonArrangement *)v461 enumerateButtonTypesFromEdge:effectiveUserInterfaceLayoutDirection withLayoutDirection:v2122 usingBlock:?];
  v469 = *(*&v2123.b + 24);
  v470 = *(v448 + v1888);
  if (v469 == 0.0 || v470)
  {
    v472 = 0.0;
    if (v470 == 1)
    {
      if (v1932)
      {
        v2167.origin.x = OUTLINED_FUNCTION_27(v469, v462, v463, v464, v465, v466, v467, v468, *&v701, *&v735, *&v768, *&v801, *&v834, *&v866, *&v899, *&v933, *&v967, *&v1001, *&v1034, *&v1068, *&v1101, *&v1135, *&v1168, *&v1202, *&v1236, *&v1269, *&v1302, *&v1335, *&sxj, *&v1403, *&v1437, *&v1471, *&v1505);
        v473 = CGRectGetMinX(v2167);
        v2168.origin.x = v460;
        v2168.size.height = v1999;
        v2168.origin.y = v2016;
        v2168.size.width = v1954;
        v472 = v473 - CGRectGetMaxX(v2168) - *&v1533;
      }

      else if ((obj & 1) == 0)
      {
        v2169.origin.x = OUTLINED_FUNCTION_3_1(v469, v462, v463, v464, v465, v466, v467, v468, *&v701, *&v735, *&v768, *&v801, *&v834, *&v866, *&v899, *&v933, *&v967, *&v1001, *&v1034, *&v1068, *&v1101, *&v1135, *&v1168, *&v1202, *&v1236, *&v1269, *&v1302, *&v1335, *&sxj, *&v1403, *&v1437, *&v1471, *&v1505, *&v1533, *&v1561);
        v472 = *&v1866 + CGRectGetWidth(v2169);
      }
    }
  }

  else
  {
    v471 = v449 + v469;
    v472 = 0.0;
    *(*&v2123.b + 24) = fmax(v471, 0.0);
  }

  v2118 = 0;
  v2119 = &v2118;
  v2120 = 0x2020000000;
  v2121 = 0;
  v474 = *(v448 + 736);
  v2117[0] = MEMORY[0x1E69E9820];
  v2117[1] = v1800;
  v2117[2] = __34___SFNavigationBar_layoutSubviews__block_invoke_3;
  v2117[3] = &unk_1E8490970;
  *&v2117[6] = v460;
  *&v2117[7] = v2016;
  *&v2117[8] = v1954;
  *&v2117[9] = v1999;
  v2117[4] = v448;
  v2117[5] = &v2118;
  *&v2117[10] = v472;
  v2117[11] = v1822;
  [(SFNavigationBarAccessoryButtonArrangement *)v474 enumerateButtonTypesFromEdge:effectiveUserInterfaceLayoutDirection withLayoutDirection:v2117 usingBlock:?];
  v475 = v2119[3];
  if (v475 != 0.0)
  {
    v2119[3] = fmax(v475 - v472, 0.0);
  }

  [*(v448 + 760) ss_untransformedFrame];
  [*(v448 + 752) ss_setUntransformedFrame:?];
  [(_SFNavigationBar *)v448 _updateToolbarAndCancelButtonAlpha];
  [v448 _controlsAlpha];
  v477 = v476;
  v2116[0] = MEMORY[0x1E69E9820];
  v2116[1] = v1800;
  v2116[2] = __34___SFNavigationBar_layoutSubviews__block_invoke_4;
  v2116[3] = &unk_1E848F810;
  v2116[4] = v448;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2116];
  v1589 = 841;
  if (*(v448 + 841) == 1)
  {
    [*(v448 + 696) bounds];
    v479 = v478;
    v481 = v480;
    v483 = v482;
    v485 = v484;
    v1664 = 704;
    [*(v448 + 704) setAlpha:v477];
  }

  else if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [MEMORY[0x1E69B1C40] progressBarHeightWithPreferredStyle:1];
    v485 = v486;
    v448 = 448;
    [*(v2100 + 448) urlSize];
    v483 = *&v2089 / 0.7;
    if (*&v2089 / 0.7 >= v487)
    {
      [*(v2100 + 448) urlSize];
      v483 = v488;
    }

    [OUTLINED_FUNCTION_48(432 v701];
    Height = CGRectGetHeight(v2170);
    [MEMORY[0x478] bounds];
    MidX = CGRectGetMidX(v2171);
    [MEMORY[0x478] bounds];
    MidY = CGRectGetMidY(v2172);
    v1664 = 704;
    [MEMORY[0x480] setAlpha:{objc_msgSend(MEMORY[0x480], "isShowingProgress")}];
    v479 = MidX + v483 * -0.5;
    v481 = Height * 0.5 + MidY;
  }

  else
  {
    [MEMORY[0x1E69B1C40] progressBarHeightWithPreferredStyle:0];
    v485 = v492;
    progressBarFillColor = [*(v448 + 704) progressBarFillColor];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v495 = 0.0;
    if ([progressBarFillColor isEqual:whiteColor])
    {
      _SFOnePixel();
      v495 = v496;
    }

    v2173.origin.x = OUTLINED_FUNCTION_13(v497, v498, v499, v500, v501, v502, v503, v504, *&v701, *&v735, *&v768, *&v801, *&v834, *&v866, *&v899, *&v933, *&v967, *&v1001, *&v1034, *&v1068, *&v1101, *&v1135, *&v1168, *&v1202, *&v1236, *&v1269, *&v1302, *&v1335, *&sxj, *&v1403, *&v1437, *&v1471, *&v1505, *&v1533, *&v1561, COERCE_DOUBLE(841), *&v1614, *&v1640, COERCE_DOUBLE(704), *&v1686, *&v1708, *&v1733, *&v1756, *&v1778, *&v1800, *&v1822, *&v1844, *&v1866, *&v1888, *&v1910, *&v1932, v1954, *&v1977, v1999, v2016, *&v2033, *&v2049, *&v2065);
    MaxY = CGRectGetMaxY(v2173);
    v448 = v2100;
    [*(v2100 + v1664) setAlpha:1.0];
    v481 = MaxY - v485 - v495;
    v479 = 0.0;
    v483 = *&v2089;
  }

  [*(v448 + v1664) setFrame:{v479, v481, v483, v485}];
  v506 = *(*&v2123.b + 24);
  v507 = v2119[3];
  [(_SFNavigationBar *)v448 _updateTextFieldFrame];
  if (*(v448 + 843) == 1)
  {
    _clearButton = [*(v448 + 872) _clearButton];
    textWhenExpanded = [*(v448 + v801) textWhenExpanded];
    if ([textWhenExpanded length])
    {
      [*(v448 + 872) clearButtonRect];
    }

    v448 = v2100;
    [*(v2100 + 872) effectiveUserInterfaceLayoutDirection];
  }

  OUTLINED_FUNCTION_6();
  if ((v510 & 1) == 0)
  {
    [*(v448 + v1910) bounds];
    CGRectGetWidth(v2174);
    OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_44();
  CGRectGetWidth(v2175);
  OUTLINED_FUNCTION_44();
  CGRectGetHeight(v2176);
  v511 = OUTLINED_FUNCTION_55();
  [v512 setFrame:v511];
  v2177.origin.x = OUTLINED_FUNCTION_25(v513, v514, v515, v516, v517, v518, v519, v520, *&v701, *&v735, *&v768, *&v801, *&v834, *&v866, *&v899, *&v933, *&v967, *&v1001, *&v1034, *&v1068, *&v1101, *&v1135, *&v1168, *&v1202, *&v1236, *&v1269, *&v1302, *&v1335, *&sxj, *&v1403, *&v1437, *&v1471, *&v1505, *&v1533, *&v1561, *&v1589, *&v2033 * v506, *&v2033 * v507, *&v1664, *&v1686, *&v1708, *&v1733, *&v1756, *&v1778, *&v1800, *&v1822, *&v1844, *&v1866, *&v1888, *&v1910, *&v1932, v1954, *&v1977);
  CGRectGetHeight(v2177);
  [(SFNavigationBarMetrics *)*(v448 + v1845) distanceFromLabelBaselineToURLOutlineBottom];
  [*(v448 + 448) baselineOffsetFromBottom];
  [*(v448 + 448) urlSize];
  _SFRoundFloatToPixels();
  v522 = v521;
  v2178.origin.x = OUTLINED_FUNCTION_55();
  v523 = CGRectGetWidth(v2178);
  [*(v448 + 448) urlSize];
  [*(v448 + 512) ss_setUntransformedFrame:{0.0, v522, v523, v524}];
  v525 = 0.91;
  narrowEditingScaleFactor = 1.0;
  if (!*(v448 + v868))
  {
    v525 = 1.0;
  }

  CGAffineTransformMakeScale(&v2115, v525, v525);
  v526 = *(v448 + 512);
  v2125 = v2115;
  [v526 setTransform:&v2125];
  v527 = rectd;
  if (*(v448 + v1779) == 1)
  {
    narrowEditingScaleFactor = [(SFNavigationBarMetrics *)*(v448 + v1845) narrowEditingScaleFactor];
    v527 = rectd;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = v1801;
  aBlock[2] = __34___SFNavigationBar_layoutSubviews__block_invoke_5;
  aBlock[3] = &unk_1E84909C0;
  v2114 = obj;
  aBlock[5] = v1439;
  aBlock[6] = v935;
  aBlock[7] = v1137;
  *&aBlock[8] = *&v1070 * *&v1003;
  aBlock[4] = v448;
  aBlock[9] = v2065;
  aBlock[10] = v2049;
  aBlock[11] = v2089;
  aBlock[12] = v527;
  *&aBlock[13] = *&v969 + *&v1070 * *&v1003;
  *&aBlock[14] = v221;
  *&aBlock[15] = narrowEditingScaleFactor;
  aBlock[16] = v2033;
  v2113 = v2126;
  v528 = _Block_copy(aBlock);
  v529 = [OUTLINED_FUNCTION_49(v528 v529];

  if (v529)
  {
    v537 = [_SFNavigationBar _searchIndicatorColorForSquishTransformFactor:v2101];
    [*(v2101 + 664) setTintColor:v537];
    [*(v2101 + 672) setTintColor:v537];
  }

  areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];
  [MEMORY[0x1E69DD250] setAnimationsEnabled:*(v2101 + 640)];
  (*(v1802 + 16))();
  [MEMORY[0x1E69DD250] setAnimationsEnabled:areAnimationsEnabled];
  v539 = [*(v2101 + 480) setHidden:HIDWORD(v1710) ^ 1u];
  v547 = 0x1EC7D6000uLL;
  v548 = MEMORY[0x1E695EFF8];
  if (HIDWORD(v1710))
  {
    if (obj)
    {
      v549 = *&v1440;
      v550 = *&v936;
    }

    else
    {
      [OUTLINED_FUNCTION_37(v539 v540];
      v549 = *&v1440;
      v550 = *&v936;
      CGRectGetWidth(v2180);
    }

    v555 = (*&v1824 - v550) * 0.5;
    [OUTLINED_FUNCTION_48(632 v704];
    [MEMORY[0x1EC7D61E0] setFrame:{0.0, v555, v549, v550}];
  }

  else
  {
    v551 = *v249;
    v552 = v249[1];
    [OUTLINED_FUNCTION_37(v539 v540];
    v553 = CGRectGetWidth(v2179);
    [OUTLINED_FUNCTION_48(632 v705];
    v554 = -v553 - v551;
    if (obj)
    {
      v554 = v551 + v553;
    }

    [MEMORY[0x1EC7D61E0] setFrame:{v554, 0.0, v551, v552}];
  }

  [MEMORY[0x1EC7D61D8] alpha];
  v250 = v556 == 0.0;
  v557 = 0.0;
  if (v250)
  {
    v557 = v1073;
  }

  [MEMORY[0x1EC7D61D0] setAlpha:v557];
  if (HIDWORD(v1106))
  {
    [MEMORY[0x1EC7D61C0] urlSize];
    v559 = v558;
    [MEMORY[0x1EC7D61D0] bounds];
    v560 = CGRectGetWidth(v2181);
    v561 = OUTLINED_FUNCTION_47(v560) + 4.0;
    [MEMORY[0x1EC7D61C0] frame];
    if (obj)
    {
      v566 = v561 + CGRectGetMaxX(*&v562);
    }

    else
    {
      v566 = CGRectGetMinX(*&v562) - v561 - v221;
    }

    [MEMORY[0x1EC7D61D0] setPosition:{v566, v559 * 0.5}];
  }

  if (MEMORY[0x1EC7D634B] == 1)
  {
    [MEMORY[0x1EC7D61D8] setAlpha:0.0];
    [MEMORY[0x1EC7D61D8] removeFromSuperview];
    _formatToggleButtonImage = [(_SFNavigationBar *)0x1EC7D6000 _formatToggleButtonImage];
    [MEMORY[0x1EC7D62E8] setImage:_formatToggleButtonImage];

    v547 = v2103;
    [*(v2103 + 744) setHighlightsBackground:0];
    *(v2103 + 792) = 0;
    [*(v2103 + 744) setAccessibilityIdentifier:@"PageFormatMenuButton"];
  }

  [*(v547 + *&v1914) frame];
  v568 = CGRectGetWidth(v2182);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  [*(v547 + 448) frame];
  CGRectGetWidth(v2183);
  v569 = *(v2103 + 843);
  layer3 = [*(v2103 + 432) layer];
  [layer3 setAnchorPoint:{(v569 ^ 1u), 0.0}];

  v2184.origin.x = OUTLINED_FUNCTION_25(v571, v572, v573, v574, v575, v576, v577, v578, v706, v740, v773, v806, v839, v871, v904, v938, v972, v1006, v1039, v1073, v1106, v1140, v1173, v1207, v1241, v1274, v1307, v1340, sxm, v1408, v1442, v1476, v1510, v1538, v1566, v1593, v1619, v1645, v1668, v1690, v1712, v1737, v1760, v1782, v1804, v1826, v1848, v1870, v1892, v1914, v1936, v1958, v1981);
  v579 = CGRectGetWidth(v2184);
  [*(v2103 + 520) frame];
  v580 = CGRectGetMinX(v2185);
  v581 = 0.0;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v582 = v2103;
    if (*(v2103 + *&v1594))
    {
      goto LABEL_227;
    }

    superview2 = [*(v2103 + *&v1669) superview];
    if (superview2)
    {
      if ([*(v2103 + *&v1669) isShowingProgress])
      {
        v581 = -4.0;
      }

      else
      {
        v581 = 0.0;
      }
    }
  }

  v582 = v2103;
LABEL_227:
  v584 = *(v582 + 843);
  layer4 = [*(v582 + 432) layer];
  v586 = layer4;
  v587 = v579 * 0.5 - v580 + -7.0;
  if (v584)
  {
    v587 = 0.0;
  }

  [layer4 setPosition:{v587, v581}];

  v2186.origin.x = OUTLINED_FUNCTION_25(v588, v589, v590, v591, v592, v593, v594, v595, v707, v741, v774, v807, v840, v872, v905, v939, v973, v1007, v1040, v1074, v1107, v1141, v1174, v1208, v1242, v1275, v1308, v1341, sxn, v1409, v1443, v1477, v1511, v1539, v1567, v1594, v1620, v1646, v1669, v1691, v1713, v1738, v1761, v1783, v1805, v1827, v1849, v1871, v1893, v1915, v1937, v1959, v1982);
  CGRectGetWidth(v2186);
  [*(v2103 + 448) urlSize];
  if (v2036 >= 1.0)
  {
    _SFRoundFloatToPixels();
  }

  v596 = OUTLINED_FUNCTION_52();
  [v597 setBounds:v596];
  OUTLINED_FUNCTION_6();
  v598 = *(*&v2123.b + 24);
  if (v599)
  {
    v600 = v2119[3];
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v603 = 0.0;
    if (v601)
    {
      v604 = 0.0;
    }

    else
    {
      v604 = v568;
    }

    v598 = v604 + v602;
    if (v601)
    {
      v603 = v568;
    }

    v600 = v603 + v2119[3];
  }

  v605 = fmax(v598, v600);
  [*(v2103 + 472) sizeToFit];
  [*(v2103 + 472) frame];
  v1938 = v606;
  objb = v607;
  v609 = v608;
  v610 = *(v2103 + 432);
  [*(v2103 + 696) bounds];
  [v610 convertRect:*(v2103 + 696) fromView:?];
  x = v2187.origin.x;
  y = v2187.origin.y;
  v613 = v2187.size.width;
  v614 = v2187.size.height;
  v615 = CGRectGetMidX(v2187);
  v616 = v841 + v605 * -2.0 * v2036;
  v2188.origin.x = v609;
  v2188.origin.y = v1938;
  v2188.size.width = v616;
  *&v2188.size.height = objb;
  v617 = CGRectGetWidth(v2188);
  v2189.origin.x = x;
  v2189.origin.y = y;
  v2189.size.width = v613;
  v2189.size.height = v614;
  CGRectGetMidY(v2189);
  v2190.origin.x = v615 + v617 * -0.5;
  v2190.origin.y = v1938;
  v2190.size.width = v616;
  *&v2190.size.height = objb;
  CGRectGetHeight(v2190);
  [MEMORY[0x1E69C8880] isSolariumEnabled];
  _SFRoundRectToPixels();
  [*(v2103 + 472) setFrame:?];
  v618 = 0.0;
  if (*(v2103 + 843) == 1)
  {
    _textFieldTopMargin = [(_SFNavigationBar *)v2103 _textFieldTopMargin];
    [*(v2103 + 440) convertPoint:*(v2103 + 872) toView:{*v548, v548[1]}];
    v621 = v620;
    [*(v2103 + 440) center];
    v618 = _textFieldTopMargin - v621 + v622;
  }

  [*(v2103 + 440) setPosition:{7.0, v618}];
  v623 = 1.0;
  if (*(v2103 + 843))
  {
    v623 = v1692;
  }

  scaleView(*(v2103 + 440), v623);
  if (*(v2103 + 528) || *(v2103 + 552))
  {
    [(_SFNavigationBar *)v2103 _updateFakeViews];
  }

  backdropIsDark = [*(v2103 + 864) backdropIsDark];
  if (backdropIsDark != [*(v2103 + 864) platterBackdropIsDark])
  {
    [(_SFNavigationBar *)v2103 _updateTextColor];
  }

  [*(v2103 + 944) titleCapHeightInsetFromTop];
  _SFRoundFloatToPixels();
  v626 = v625;
  v635 = 0.0;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    isShowingProgress = [*(v2103 + *&v1670) isShowingProgress];
    v627 = 0.0;
    v628 = 7.0;
    if (isShowingProgress)
    {
      v635 = 7.0;
    }

    else
    {
      v635 = 0.0;
    }
  }

  v2191.origin.x = OUTLINED_FUNCTION_25(v627, v628, v629, v630, v631, v632, v633, v634, v708, v742, v775, v808, v841, v873, v906, v940, v974, v1008, v1041, v1075, v1108, v1142, v1175, v1209, v1243, v1276, v1309, v1342, sxo, v1410, v1444, v1478, v1512, v1540, v1568, v1595, v1621, v1647, v1670, v1692, v1714, v1739, v1762, v1784, v1806, v1828, v1850, v1872, v1894, v1916, v1938, v1960, v1983);
  v637 = CGRectGetMaxY(v2191);
  distanceFromLabelBaselineToURLOutlineBottom = [(SFNavigationBarMetrics *)*(v2103 + *&v1851) distanceFromLabelBaselineToURLOutlineBottom];
  v2192.origin.x = OUTLINED_FUNCTION_13(distanceFromLabelBaselineToURLOutlineBottom, v639, v640, v641, v642, v643, v644, v645, v709, v743, v776, v809, v842, v874, v907, v941, v975, v1009, v1042, v1076, v1109, v1143, v1176, v1210, v1244, v1277, v1310, v1343, sxbg, v1411, v1445, v1479, v1513, v1541, v1569, v1596, v1622, v1648, v1671, v1693, v1715, v1740, v1763, v1785, v1807, v1829, v1851, v1873, v1895, v1917, v1939, v1961, v1984, v2002, v2019, v2036, v2052, v2068);
  v646 = CGRectGetWidth(v2192);
  [*(v2103 + 944) preferredSize];
  [*(v2103 + 944) ss_setUntransformedFrame:{0.0, v635 + v626 + v637 - distanceFromLabelBaselineToURLOutlineBottom, v646, v647}];
  OUTLINED_FUNCTION_54();
  v648 = [_SFNavigationBar _auxiliaryBarSquishedVerticalOffsetForSquishTransform:v2103];
  CGAffineTransformMakeTranslation(&v2125, 0.0, -v648);
  v2124 = v2125;
  CGAffineTransformScale(&v2111, &v2124, sxp, sxp);
  v649 = *(v2103 + 944);
  v2124 = v2111;
  [v649 setTransform:&v2124];
  v2107 = 0u;
  v2108 = 0u;
  v2109 = 0u;
  v2110 = 0u;
  obja = *(v2103 + *&v1043);
  v650 = [obja countByEnumeratingWithState:&v2107 objects:v2136 count:16];
  if (v650)
  {
    v651 = *v2108;
    do
    {
      for (k = 0; k != v650; ++k)
      {
        if (*v2108 != v651)
        {
          objc_enumerationMutation(obja);
        }

        v653 = *(*(&v2107 + 1) + 8 * k);
        squishedView = [v653 squishedView];
        squishedEffectView = [v653 squishedEffectView];
        v656 = squishedEffectView;
        if (squishedEffectView)
        {
          v657 = squishedEffectView;
        }

        else
        {
          v657 = squishedView;
        }

        v658 = v657;
        image = [squishedView image];
        preferredSymbolConfiguration = [squishedView preferredSymbolConfiguration];
        v661 = [image imageWithSymbolConfiguration:preferredSymbolConfiguration];
        [v661 size];
        OUTLINED_FUNCTION_50();

        v662 = OUTLINED_FUNCTION_8();
        [v663 setBounds:v662];
        view3 = [v653 view];
        superview3 = [v658 superview];
        [view3 center];
        OUTLINED_FUNCTION_50();
        superview4 = [view3 superview];
        [superview3 convertPoint:superview4 fromView:{v626, v646}];
        [v658 setCenter:?];

        [v658 frame];
        _SFRoundRectToPixels();
        [v658 setFrame:?];
        if (v656)
        {
          [v656 bounds];
          [squishedView setFrame:?];
        }
      }

      v650 = [obja countByEnumeratingWithState:&v2107 objects:v2136 count:16];
    }

    while (v650);
  }

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v675 = OUTLINED_FUNCTION_13(v667, v668, v669, v670, v671, v672, v673, v674, v710, v744, v777, v810, v843, v875, v908, v942, v976, v1010, v1043, v1077, v1110, v1144, v1177, v1211, v1245, v1278, v1311, v1344, sxp, v1412, v1446, v1480, v1514, v1542, v1570, v1597, v1623, v1649, v1672, v1694, v1716, v1741, v1764, v1786, *&v1808, v1830, v1852, v1874, v1896, v1918, v1940, v1962, v1985, v2003, v2020, v2037, v2053, v2069);
    [v676 setFrame:v675];
  }

  WeakRetained = objc_loadWeakRetained((v2103 + 888));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarDidLayoutSubviews:v2103];
  }

  _Block_object_dispose(&v2118, 8);
  _Block_object_dispose(&v2123, 8);
}

- (double)_layoutBounds
{
  if (self)
  {
    [self bounds];
    window = [self window];
    windowScene = [window windowScene];
    statusBarManager = [windowScene statusBarManager];
    if (([statusBarManager isStatusBarHidden] & 1) == 0 && *(self + 896) != 0.0)
    {
      _SFDeviceStatusBarHasNonTransparentBackground();
    }

    v5 = *(self + 648);
    _metricsCategory = [objc_opt_class() _metricsCategory];
    [(SFNavigationBarMetrics *)v5 barHeightWithBarMetricsCategory:_metricsCategory];
  }

  return 0.0;
}

- (double)_widthForAccessoryButtonType:(uint64_t)type
{
  result = 0.0;
  if (type)
  {
    if (a2 < 2)
    {
      return fmin([(SFNavigationBarMetrics *)*(type + 648) urlOutlineHeight], 44.0);
    }

    else if (a2 == 2)
    {
      if ([MEMORY[0x1E69C8880] isSolariumEnabled])
      {
        v5 = *(type + 648);

        return [(SFNavigationBarMetrics *)v5 barButtonHeight];
      }

      else if ([*(type + 848) hasHiddenElements])
      {
        [*(type + 744) intrinsicContentSize];
      }

      else
      {
        [MEMORY[0x1E69B1B48] glyphSize];
      }
    }

    else if (a2 == 3)
    {
      v4 = *(type + 648);

      return [(SFNavigationBarMetrics *)v4 urlOutlineHeight];
    }
  }

  return result;
}

- (id)_searchIndicatorColorForSquishTransformFactor:(id *)factor
{
  if (factor)
  {
    factorCopy = factor;
    text = [factor[106] text];
    v4 = [text length];

    v5 = factorCopy[108];
    if (v4)
    {
      OUTLINED_FUNCTION_38();
      if (!v6)
      {
        SFBarBackgroundAlphaForSquishTransformFactor();
      }

      factor = [v5 platterTextColorForPlatterAlpha:?];
    }

    else
    {
      factor = [factorCopy[108] platterPlaceholderTextColor];
    }

    v1 = vars8;
  }

  return factor;
}

- (void)_updateFakeViews
{
  if (self)
  {
    v2 = *(self + 536);
    v3 = *(self + 544) - v2;
    [*(self + 456) bounds];
    v5 = v4;
    v6 = *(self + 512);
    [v6 bounds];
    [v6 convertRect:*(self + 456) toView:?];
    MaxX = CGRectGetMaxX(v23);
    v24.origin.y = 0.0;
    v24.origin.x = v2;
    v24.size.width = v3;
    v24.size.height = v5;
    v8 = CGRectGetMaxX(v24);
    v9 = fmax(MaxX - v2, 0.0);
    if (v8 > MaxX)
    {
      v3 = v9;
    }

    font = [*(self + 456) font];
    [font ascender];
    v11 = v10;
    [*(self + 456) _firstLineBaselineFrameOriginY];
    v13 = v12 - v11 + -1.0;
    [font descender];
    v15 = v11 - v14 + 1.0;
    UIRoundToViewScale();
    [*(self + 456) convertRect:*(self + 696) toView:{v2, v13, v3, v16 + v15}];
    [*(self + 696) bounds];
    v25.origin.x = OUTLINED_FUNCTION_8();
    v26 = CGRectIntersection(v25, v33);
    height = v26.size.height;
    if (CGRectIsNull(v26))
    {
      height = *(MEMORY[0x1E695F058] + 24);
    }

    v27.origin.x = OUTLINED_FUNCTION_2_1();
    CGRectGetMinX(v27);
    _SFFloorFloatToPixels();
    OUTLINED_FUNCTION_16();
    v28.size.height = height;
    CGRectGetMinY(v28);
    _SFFloorFloatToPixels();
    v29.origin.x = OUTLINED_FUNCTION_2_1();
    CGRectGetMaxX(v29);
    _SFFloorFloatToPixels();
    v30.origin.x = OUTLINED_FUNCTION_2_1();
    CGRectGetMinX(v30);
    v31.origin.x = OUTLINED_FUNCTION_2_1();
    CGRectGetMaxY(v31);
    _SFFloorFloatToPixels();
    v32.origin.x = OUTLINED_FUNCTION_2_1();
    CGRectGetMinY(v32);
    OUTLINED_FUNCTION_16();
    [v18 setFrame:?];
    _clearButton = [*(self + 872) _clearButton];
    v20 = *(self + 872);
    [v20 clearButtonRect];
    [v20 convertRect:*(self + 696) toView:?];
    _SFRoundRectToPixels();
    [*(self + 552) ss_setUntransformedFrame:?];
  }
}

- (id)_hitTestCandidateViews
{
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [_SFNavigationBar _setUpFormatToggleButtonIfNeeded];
    v2 = *(self + 776);
    if (*(self + 840) == 1)
    {
      v15 = *(self + 744);
      v16 = v2;
      v3 = *(self + 760);
      v17 = *(self + 752);
      v18 = v3;
      v19 = *(self + 800);
      v4 = MEMORY[0x1E695DEC8];
      v5 = &v15;
      v6 = 5;
    }

    else
    {
      v11 = *(self + 744);
      v12 = v2;
      v7 = *(self + 760);
      v13 = *(self + 752);
      v14 = v7;
      v4 = MEMORY[0x1E695DEC8];
      v5 = &v11;
      v6 = 4;
    }

    v8 = [v4 arrayWithObjects:v5 count:{v6, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20}];
    v9 = [v8 mutableCopy];

    if (*(self + 816))
    {
      [v9 addObject:?];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_expandedURLLabelParagraphStyle
{
  if (self)
  {
    v2 = _expandedURLLabelParagraphStyle_paragraphStyle;
    if (!_expandedURLLabelParagraphStyle_paragraphStyle)
    {
      defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
      v4 = [defaultParagraphStyle mutableCopy];
      v5 = _expandedURLLabelParagraphStyle_paragraphStyle;
      _expandedURLLabelParagraphStyle_paragraphStyle = v4;

      [_expandedURLLabelParagraphStyle_paragraphStyle setBaseWritingDirection:0];
      [_expandedURLLabelParagraphStyle_paragraphStyle setLineBreakMode:2];
      v2 = _expandedURLLabelParagraphStyle_paragraphStyle;
    }

    self = v2;
    v1 = vars8;
  }

  return self;
}

- (void)_updateText
{
  v28[2] = *MEMORY[0x1E69E9840];
  text = [(SFNavigationBarItem *)self->_item text];
  textWhenExpanded = [(SFNavigationBarItem *)self->_item textWhenExpanded];
  startIndexOfTextInExpandedText = [(SFNavigationBarItem *)self->_item startIndexOfTextInExpandedText];
  if (![text length])
  {
    v5 = textWhenExpanded;
    placeholder = [(UITextField *)self->_textField placeholder];
    [(SFURLLabel *)self->_URLLabel setText:placeholder];
    goto LABEL_9;
  }

  [(SFURLLabel *)self->_URLLabel setText:text];
  if (![(SFNavigationBarItem *)self->_item showsSecurityAnnotation])
  {
    securityAnnotationLabel = self->_securityAnnotationLabel;
    v10 = 0.0;
    goto LABEL_7;
  }

  [(UILabel *)self->_availabilityLabel alpha];
  if (v7 == 0.0)
  {
    v8 = self->_securityAnnotationLabel;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __31___SFNavigationBar__updateText__block_invoke;
    v26[3] = &unk_1E848F810;
    v26[4] = self;
    [MEMORY[0x1E69DD250] transitionWithView:v8 duration:5242880 options:v26 animations:0 completion:0.1];
    securityAnnotationLabel = self->_securityAnnotationLabel;
    v10 = 1.0;
LABEL_7:
    [(UILabel *)securityAnnotationLabel setAlpha:v10];
  }

  v5 = textWhenExpanded;
  placeholder = textWhenExpanded;
LABEL_9:
  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (placeholder)
  {
    v12 = placeholder;
  }

  else
  {
    v12 = &stru_1F4FE9E38;
  }

  v27[0] = *MEMORY[0x1E69DB688];
  _expandedURLLabelParagraphStyle = [(_SFNavigationBar *)self _expandedURLLabelParagraphStyle];
  v28[0] = _expandedURLLabelParagraphStyle;
  v27[1] = *MEMORY[0x1E69DB648];
  font = [(UILabel *)self->_expandedURLLabel font];
  v28[1] = font;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v16 = [v11 initWithString:v12 attributes:v15];
  attributedTextWhenExpanded = self->_attributedTextWhenExpanded;
  self->_attributedTextWhenExpanded = v16;

  [(UILabel *)self->_expandedURLLabel setAttributedText:self->_attributedTextWhenExpanded];
  if ([text length])
  {
    if (startIndexOfTextInExpandedText && startIndexOfTextInExpandedText != 0x7FFFFFFFFFFFFFFFLL && [v5 length])
    {
      v21 = CTLineCreateWithAttributedString(self->_attributedTextWhenExpanded);
      if ([text characterAtIndex:0] == 8206)
      {
        v22 = startIndexOfTextInExpandedText + 1;
      }

      else
      {
        v22 = startIndexOfTextInExpandedText;
      }

      OffsetForStringIndex = CTLineGetOffsetForStringIndex(v21, v22, 0);
      narrowEditingScaleFactor = 1.0;
      if (self->_usesNarrowLayout)
      {
        narrowEditingScaleFactor = [(SFNavigationBarMetrics *)self->_barMetrics narrowEditingScaleFactor];
      }

      self->_offsetOfURLInExpandedURL = OffsetForStringIndex / narrowEditingScaleFactor;
      CFRelease(v21);
    }

    else
    {
      self->_offsetOfURLInExpandedURL = 0.0;
    }
  }

  else
  {
    [(_SFNavigationBar *)self placeholderHorizontalInset];
    self->_offsetOfURLInExpandedURL = v18;
  }

  [(UIView *)self->_fakeTextFieldSelectionView removeFromSuperview];
  fakeTextFieldSelectionView = self->_fakeTextFieldSelectionView;
  self->_fakeTextFieldSelectionView = 0;

  [(UIButton *)self->_fakeClearButton removeFromSuperview];
  fakeClearButton = self->_fakeClearButton;
  self->_fakeClearButton = 0;

  [(_SFNavigationBar *)self _updateSearchIndicator];
  [(_SFNavigationBar *)self _updateTextColor];
  [(_SFNavigationBar *)self _updateTextMetrics];
  [(_SFNavigationBar *)self setNeedsLayout];
}

- (void)_updateSearchIndicator
{
  if (self)
  {
    superview = [*(self + 664) superview];

    if (superview)
    {
      [OUTLINED_FUNCTION_21() intrinsicContentSize];
      v4 = v3;
      v6 = v5;
      accessoryImageSymbolConfiguration = [(SFNavigationBarMetrics *)*(self + 648) accessoryImageSymbolConfiguration];
      [OUTLINED_FUNCTION_12(664) setPreferredSymbolConfiguration:?];

      squishedAccessoryImageSymbolConfiguration = [(SFNavigationBarMetrics *)*(self + 648) squishedAccessoryImageSymbolConfiguration];
      [OUTLINED_FUNCTION_12(672) setPreferredSymbolConfiguration:?];

      [OUTLINED_FUNCTION_21() intrinsicContentSize];
      if (v4 != v10 || v6 != v9)
      {

        [self setNeedsLayout];
      }
    }
  }
}

- (id)_notSecureAnnotationColor
{
  if (self)
  {
    selfCopy = self;
    if ([self[106] hasFocusedSensitiveFieldOnCurrentPage])
    {
      [(_SFNavigationBar *)selfCopy _notSecureWarningColor];
    }

    else
    {
      [(_SFNavigationBar *)selfCopy _notSecureGrayColor];
    }
    self = ;
    v1 = vars8;
  }

  return self;
}

- (double)_notSecureGrayColor
{
  if (self)
  {
    selfCopy = self;
    v3 = *(self + 108);
    [self minimumHeight];
    v5 = v4;
    [selfCopy bounds];
    OUTLINED_FUNCTION_38();
    if (!v7)
    {
      OUTLINED_FUNCTION_1_1(v6 - v5, selfCopy[113] - v5);
      SFBarBackgroundAlphaForSquishTransformFactor();
    }

    self = [v3 annotationTextColorForPlatterAlpha:?];
    v1 = vars8;
  }

  return self;
}

- (void)_updateAvailabilityAndPageMenuButtonAnimated:(uint64_t)animated
{
  if (animated)
  {
    if ([*(animated + 408) isDisplaying])
    {
      if ([(SFNavigationBarAccessoryButtonArrangement *)*(animated + 736) containsButtonType:?])
      {
        v4 = *(animated + 843) ^ 1;
      }

      else
      {
        v4 = 0;
      }

      v6 = v4 & 1;
      [*(animated + 408) currentOptions];
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_45();
      v11 = __65___SFNavigationBar__updateAvailabilityAndPageMenuButtonAnimated___block_invoke;
      v12 = &unk_1E848F610;
      v15 = v6;
      animatedCopy = animated;
      v14 = v7;
      v8 = _Block_copy(aBlock);
      v9 = v8;
      if (a2)
      {
        (*(v8 + 2))(v8);
      }

      else
      {
        [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
      }
    }

    else
    {
      [*(animated + 472) alpha];
      if (v5 == 0.0)
      {

        [(_SFNavigationBar *)animated _updateFormatButtonSelected];
      }

      else
      {

        [(_SFNavigationBar *)animated _hideAvailabilityLabelAnimated:a2];
      }
    }
  }
}

- (void)_setHidePlaceholderURLItemsForPencilInput:(uint64_t)input
{
  if (input && *(input + 656) != a2)
  {
    *(input + 656) = a2;
    [*(input + 432) setHidden:a2];
    [*(input + 872) setClearsPlaceholderOnBeginEditing:a2];
    [*(input + 848) setTemporarilySuppressText:a2];
    [input _updateText];
    [(_SFNavigationBar *)input _updateFakeViews];

    [(_SFNavigationBar *)input _updateAccessoryButtonsVisibility];
  }
}

- (void)_hideAvailabilityLabelAnimated:(uint64_t)animated
{
  if (animated)
  {
    [*(animated + 472) alpha];
    if (v4 != 0.0)
    {
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_45();
      v8 = __51___SFNavigationBar__hideAvailabilityLabelAnimated___block_invoke;
      v9 = &unk_1E848F810;
      animatedCopy = animated;
      v5 = _Block_copy(aBlock);
      v6 = v5;
      if (a2)
      {
        (*(v5 + 2))(v5);
      }

      else
      {
        [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
      }
    }
  }
}

- (void)_updateFormatButtonSelected
{
  if (self)
  {
    if ([self[106] readerButtonSelected] & 1) != 0 || (objc_msgSend(OUTLINED_FUNCTION_31(), "showsTranslationIcon"))
    {
      showsSiriReaderPlayingIcon = 1;
    }

    else
    {
      showsSiriReaderPlayingIcon = [OUTLINED_FUNCTION_31() showsSiriReaderPlayingIcon];
    }

    [self[93] setSelected:showsSiriReaderPlayingIcon];
    _formatToggleButtonImage = [(_SFNavigationBar *)self _formatToggleButtonImage];
    [OUTLINED_FUNCTION_12(744) setImage:?];

    [(_SFNavigationBar *)self _updateNavigationBarTrailingButtonType];
  }
}

- (uint64_t)_adjustLabelRectForLeadingButtonWithDelay:(uint64_t)result
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __62___SFNavigationBar__adjustLabelRectForLeadingButtonWithDelay___block_invoke;
    v2[3] = &unk_1E848F810;
    v2[4] = result;
    return [MEMORY[0x1E69DD250] _animateUsingDefaultDampedSpringWithDelay:50331652 initialSpringVelocity:v2 options:0 animations:a2 completion:0.0];
  }

  return result;
}

- (id)_mediaStateMuteButtonColor
{
  if (self)
  {
    selfCopy = self;
    if ([self[108] backdropIsRed])
    {
      [selfCopy[108] URLAccessoryButtonTintColorForInputMode:selfCopy[103]];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemRedColor];
    }
    self = ;
    v1 = vars8;
  }

  return self;
}

- (double)_notSecureWarningColor
{
  if (self)
  {
    selfCopy = self;
    v3 = *(self + 108);
    [self minimumHeight];
    v5 = v4;
    [selfCopy bounds];
    OUTLINED_FUNCTION_38();
    if (!v7)
    {
      OUTLINED_FUNCTION_1_1(v6 - v5, selfCopy[113] - v5);
      SFBarBackgroundAlphaForSquishTransformFactor();
    }

    self = [v3 platterWarningTextColorForPlatterAlpha:?];
    v1 = vars8;
  }

  return self;
}

- (BOOL)navigationBarURLButton:(id)button shouldShowMenuForGestureWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([(SFNavigationBarAccessoryButtonArrangement *)self->_accessoryButtonArrangement containsButtonType:?])
  {
    mediaStateMuteButton = self->_mediaStateMuteButton;
    [recognizerCopy locationInView:mediaStateMuteButton];
    v7 = [(UIButton *)mediaStateMuteButton pointInside:0 withEvent:?]^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)_copyNavigationBarURLToPasteboard
{
  if (self)
  {
    objc_loadWeakRetained((self + 888));
    OUTLINED_FUNCTION_58();
    v5 = [v2 navigationBarURLForSharing:?];

    safari_userVisibleString = [v5 safari_userVisibleString];
    [MEMORY[0x1E69DCD50] generalPasteboard];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_58();
    [v4 setString:?];
  }
}

- (BOOL)navigationBarURLButton:(id)button shouldAllowLongPressAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  buttonCopy = button;
  v10 = buttonCopy;
  if (buttonCopy && *(buttonCopy + 105))
  {
    LOBYTE(v11) = 0;
  }

  else if (([(SFNavigationBarToggleButton *)self->_formatToggleButton isHidden]& 1) != 0)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    [(SFNavigationBarToggleButton *)self->_formatToggleButton bounds];
    OUTLINED_FUNCTION_50();
    v13 = v12;
    v15 = v14;
    [(SFNavigationBarToggleButton *)self->_formatToggleButton convertPoint:v10 fromView:x, y];
    v19.x = v16;
    v19.y = v17;
    v20.origin.x = v4;
    v20.origin.y = v5;
    v20.size.width = v13;
    v20.size.height = v15;
    v11 = !CGRectContainsPoint(v20, v19);
  }

  return v11;
}

- (void)_updateTemporarySuppressionOfItemText:(id *)text
{
  if (text)
  {
    [text[106] setTemporarilySuppressText:a2];
    [text _updateText];

    [(_SFNavigationBar *)text _updateFakeViews];
  }
}

- (BOOL)navigationBarURLButton:(id)button canWriteAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v22 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  [(_SFNavigationBar *)self _hitTestCandidateViews];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v13 convertPoint:buttonCopy fromView:{x, y, v17}];
        v14 = [v13 hitTest:0 withEvent:?];

        if (v14)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

- (id)_toolbarForBarItem:(id *)item
{
  if (item)
  {
    itemCopy = item;
    v5 = &OBJC_IVAR____SFNavigationBar__leadingToolbar;
    barRegistration = [item[71] barRegistration];
    v7 = [barRegistration containsBarItem:a2];

    if ((v7 & 1) != 0 || (v5 = &OBJC_IVAR____SFNavigationBar__trailingToolbar, [itemCopy[72] barRegistration], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsBarItem:", a2), v8, v9))
    {
      item = *(itemCopy + *v5);
    }

    else
    {
      item = 0;
    }

    v2 = vars8;
  }

  return item;
}

- (BOOL)containsBarItem:(int64_t)item
{
  v3 = [(_SFNavigationBar *)&self->super.super.super.isa _toolbarForBarItem:item];
  v4 = v3 != 0;

  return v4;
}

- (void)navigationBarItemDidUpdateCustomPlaceholderText:(id)text
{
  [(_SFNavigationBar *)self _updatePlaceholderText];

  [(_SFNavigationBar *)self _updateText];
}

- (void)navigationBarItemDidUpdateHasHiddenElements:(id)elements
{
  [(_SFNavigationBar *)self _updateFormatButtonAccessories];

  [(_SFNavigationBar *)self setNeedsLayout];
}

- (void)navigationBarItemDidUpdateOverlayConfiguration:(id)configuration
{
  overlayConfiguration = [configuration overlayConfiguration];
  [_SFNavigationBarURLButton setOverlayConfiguration:];

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_45();
  v7 = __67___SFNavigationBar_navigationBarItemDidUpdateOverlayConfiguration___block_invoke;
  v8 = &unk_1E848F810;
  selfCopy = self;
  [v5 _animateUsingDefaultTimingWithOptions:0 animations:v6 completion:0];
}

- (void)initWithFrame:(uint64_t)a1 inputMode:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  *(a1 + 824) = a2;
  v4 = objc_alloc_init(SFNavigationBarMetrics);
  v5 = *(a1 + 648);
  *(a1 + 648) = v4;

  [a1 setTheme:0];
  v6 = [a1 layer];
  [v6 setAllowsGroupOpacity:0];
  [v6 setAllowsGroupBlending:0];
  [a1 setAutoresizingMask:2];
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    OUTLINED_FUNCTION_35(objc_alloc_init(MEMORY[0x1E69DD298]), 712);
  }

  if (*(a1 + 844))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + 880);
  }

  [*(a1 + 712) _setGroupName:v7];
  [*(a1 + 712) setAutoresizingMask:0];
  OUTLINED_FUNCTION_65();
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    OUTLINED_FUNCTION_32(objc_alloc_init(MEMORY[0x1E69DD250]));
    v8 = [MEMORY[0x1E69DC888] sf_barHairlineShadowColor];
    [*(a1 + 720) setBackgroundColor:v8];

    OUTLINED_FUNCTION_65();
  }

  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v10 = *(a1 + 424);
  *(a1 + 424) = v9;

  [a1 addSubview:*(a1 + 424)];
  v11 = [*(a1 + 424) layer];
  [v11 setAllowsGroupOpacity:0];

  v12 = objc_alloc(MEMORY[0x1E69DD250]);
  v13 = OUTLINED_FUNCTION_8();
  v15 = [v14 initWithFrame:v13];
  v16 = *(a1 + 512);
  *(a1 + 512) = v15;

  OUTLINED_FUNCTION_32(objc_alloc_init(MEMORY[0x1E69DD250]));
  [OUTLINED_FUNCTION_51() setClipsToBounds:?];
  v17 = [*(a1 + 520) layer];
  [v17 setAllowsGroupBlending:0];

  [*(a1 + 520) addSubview:*(a1 + 512)];
  v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v19 = *(a1 + 440);
  *(a1 + 440) = v18;

  [*(a1 + 512) addSubview:*(a1 + 440)];
  v20 = objc_alloc_init(_SFNavigationBarLabelsContainer);
  v21 = *(a1 + 432);
  *(a1 + 432) = v20;

  [*(a1 + 440) addSubview:*(a1 + 432)];
  v22 = objc_alloc_init(_SFNavigationBarURLButton);
  v23 = *(a1 + 696);
  *(a1 + 696) = v22;

  v24 = [(SFNavigationBarMetrics *)*(a1 + 648) urlOutlineCornerRadius];
  v25 = *(a1 + 696);
  if (v25 && (*(v25 + 832) == v24 || (*(v25 + 832) = v24, [*(v25 + 768) _setContinuousCornerRadius:?], (v25 = *(a1 + 696)) != 0)))
  {
    objc_storeWeak((v25 + 824), a1);
    v26 = *(a1 + 696);
  }

  else
  {
    v26 = 0;
  }

  v27 = [v26 layer];
  [v27 setAnchorPoint:{0.5, 0.0}];

  OUTLINED_FUNCTION_26();
  [v28 addTarget:? action:? forControlEvents:?];
  [*(a1 + 696) setAdjustsImageWhenHighlighted:a2 == 0];
  [*(a1 + 696) _setContinuousCornerRadius:-[SFNavigationBarMetrics urlOutlineCornerRadius](*(a1 + 648))];
  [*(a1 + 424) addSubview:*(a1 + 696)];
  v29 = objc_alloc(MEMORY[0x1E69DD250]);
  [*(a1 + 424) bounds];
  v30 = [v29 initWithFrame:?];
  v31 = *(a1 + 680);
  *(a1 + 680) = v30;

  [*(a1 + 680) setAutoresizingMask:18];
  [*(a1 + 424) addSubview:*(a1 + 680)];
  v32 = [a1 newTextField];
  v33 = *(a1 + 872);
  *(a1 + 872) = v32;

  [OUTLINED_FUNCTION_59() setSmartDashesType:?];
  [OUTLINED_FUNCTION_59() setSmartQuotesType:?];
  [*(a1 + 872) setAutocapitalizationType:0];
  [OUTLINED_FUNCTION_59() setAutocorrectionType:?];
  [*(a1 + 872) setKeyboardType:10];
  [*(a1 + 872) setClearButtonMode:3];
  [OUTLINED_FUNCTION_59() setTintAdjustmentMode:?];
  v34 = [a1 _placeholderText];
  [*(a1 + 872) setPlaceholder:v34];
  v35 = objc_alloc_init(MEMORY[0x1E69B1BF8]);
  v36 = *(a1 + 448);
  *(a1 + 448) = v35;

  [*(a1 + 448) setText:v34];
  v37 = _SFBackdropGroupNameForOwner();
  [*(a1 + 448) _setGroupName:v37];

  [*(a1 + 432) addSubview:*(a1 + 448)];
  v38 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v39 = *(a1 + 480);
  *(a1 + 480) = v38;

  [MEMORY[0x1E69DC888] clearColor];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_9() setBackgroundColor:?];

  [*(a1 + 480) setTextAlignment:0];
  [(_SFNavigationBar *)a1 _attributedStringSecurityAnnotation];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_9() setAttributedText:?];

  [*(a1 + 480) setContentMode:9];
  [*(a1 + 480) setAlpha:0.0];
  v40 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v41 = *(a1 + 632);
  *(a1 + 632) = v40;

  [*(a1 + 632) setClipsToBounds:1];
  [*(a1 + 432) addSubview:*(a1 + 632)];
  [*(a1 + 632) addSubview:*(a1 + 480)];
  v42 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v43 = *(a1 + 464);
  *(a1 + 464) = v42;

  _WBSLocalizedString();
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_9() setText:?];

  [*(a1 + 464) setHidden:1];
  [*(a1 + 432) addSubview:*(a1 + 464)];
  v44 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v45 = *(a1 + 456);
  *(a1 + 456) = v44;

  [MEMORY[0x1E69DC888] clearColor];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_9() setBackgroundColor:?];

  [MEMORY[0x1E69DC888] blackColor];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_9() setTextColor:?];

  [*(a1 + 456) setTextAlignment:0];
  [*(a1 + 456) setAlpha:0.0];
  v46 = [*(a1 + 456) layer];
  [v46 setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  [*(a1 + 432) addSubview:*(a1 + 456)];
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_32(objc_alloc_init(MEMORY[0x1E69DCC10]));
  [OUTLINED_FUNCTION_51() setClipsToBounds:?];
  v47 = [MEMORY[0x1E69DC888] clearColor];
  [*(a1 + 472) setBackgroundColor:v47];

  [*(a1 + 472) setTextAlignment:1];
  [*(a1 + 472) setAlpha:0.0];
  [*(a1 + 472) setContentMode:9];
  [*(a1 + 432) addSubview:*(a1 + 472)];
  OUTLINED_FUNCTION_35([objc_alloc(MEMORY[0x1E69C9780]) initWithPresenter:a1], 408);
  v48 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  if (a2 == 1 && v48)
  {
    v49 = objc_alloc(MEMORY[0x1E69B1C40]);
    v50 = OUTLINED_FUNCTION_8();
    v52 = [v51 initWithFrame:1 style:v50];
  }

  else
  {
    v52 = objc_alloc_init(MEMORY[0x1E69B1C40]);
  }

  OUTLINED_FUNCTION_32(v52);
  [*(a1 + 704) setDelegate:a1];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v53 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [*(a1 + 704) setBackgroundColor:v53];

    [*(a1 + 704) setAutoresizingMask:18];
  }

  [(_SFNavigationBar *)a1 _updateFonts];
  [(_SFNavigationBar *)a1 _updateTextColor];
  v54 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v55 = *(a1 + 800);
  *(a1 + 800) = v54;

  _WBSLocalizedString();
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_33() setTitle:? forState:?];

  OUTLINED_FUNCTION_26();
  [v56 addTarget:? action:? forControlEvents:?];
  v57 = _SFAccessibilityIdentifierForBarItem();
  [*(a1 + 800) setAccessibilityIdentifier:v57];

  [*(a1 + 800) setPointerInteractionEnabled:1];
  v58 = [MEMORY[0x1E69DC738] buttonWithType:0];
  OUTLINED_FUNCTION_32(v58);
  [*(a1 + 776) addTarget:a1 action:sel__mediaStateMuteButtonTapped_ forControlEvents:0x2000];
  OUTLINED_FUNCTION_64();
  *(a1 + 784) = 0;
  v59 = [(_SFNavigationBar *)a1 _dimmingButtonWithAction:?];
  OUTLINED_FUNCTION_32(v59);
  _SFOnePixel();
  v61 = v60;
  _SFOnePixel();
  [*(a1 + 760) setImageEdgeInsets:{v61, 0.0, 0.0, v62 + -3.0}];
  if (![MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    OUTLINED_FUNCTION_64();
  }

  v63 = [(_SFNavigationBar *)a1 _dimmingButtonWithAction:?];
  OUTLINED_FUNCTION_32(v63);
  v64 = *(a1 + 752);
  _SFRoundEdgeInsetsToPixels();
  [v64 setImageEdgeInsets:?];
  v65 = [*(a1 + 752) layer];
  [v65 setOpacity:0.0];

  if (![MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    OUTLINED_FUNCTION_64();
  }

  [(_SFNavigationBar *)a1 _configureNavigationBarTrailingButtonTintedImages];
  OUTLINED_FUNCTION_32(objc_alloc_init(MEMORY[0x1E69B1C28]));
  OUTLINED_FUNCTION_26();
  [v66 addTarget:? action:? forControlEvents:?];
  OUTLINED_FUNCTION_65();
  [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:a1];
  [OUTLINED_FUNCTION_33() addInteraction:?];

  v67 = *(a1 + 824);
  if (v67)
  {
    if (v67 == 1)
    {
      v47 = SFDismissButton;
      if ([MEMORY[0x1E69C8880] isSolariumEnabled])
      {
        v68 = [MEMORY[0x1E69DC740] glassButtonConfiguration];
        v69 = [SFDismissButton buttonWithConfiguration:v68 primaryAction:0];
        OUTLINED_FUNCTION_32(v69);
      }

      else
      {
        v71 = objc_alloc_init(SFDismissButton);
        v68 = *(a1 + 816);
        *(a1 + 816) = v71;
      }

      OUTLINED_FUNCTION_26();
      [v72 addTarget:? action:? forControlEvents:?];
      [OUTLINED_FUNCTION_51() setPointerInteractionEnabled:?];
      [*(a1 + 424) insertSubview:*(a1 + 816) belowSubview:*(a1 + 696)];
    }
  }

  else
  {
    [OUTLINED_FUNCTION_51() setSpringLoaded:?];
    v70 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:a1];
    [a1 addInteraction:v70];
  }

  [a1 defaultHeight];
  *(a1 + 904) = v73;
  [a1 setAccessibilityIdentifier:@"TopBrowserBar"];
  [(_SFNavigationBar *)a1 _updateButtonMetrics];
  [_SFNavigationBar _didUpdateEffectiveTheme];
  v74 = +[SFNavigationBarMetrics traitsAffectingBarMetrics];
  v75 = [a1 registerForTraitChanges:v74 withTarget:a1 action:sel__barMetricTraitsDidChange];

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [a1 _setSafeAreaCornerAdaptation:3];
    OUTLINED_FUNCTION_32(objc_alloc_init(MEMORY[0x1E69DD250]));
    [*(a1 + 832) setUserInteractionEnabled:0];
    [objc_alloc(MEMORY[0x1E69DD6C8]) initWithStyle:2];
    [OUTLINED_FUNCTION_33() addInteraction:?];

    OUTLINED_FUNCTION_65();
  }

  v76 = a1;
}

- (uint64_t)_updateSecurityWarningsVisibility
{
  [self layoutIfNeeded];
  [self setNeedsLayout];
  [self _updateText];
  *(self + 640) = 1;
  v4 = *(self + 432);
  if (v4)
  {
    *(v4 + 408) = 1;
  }

  v5 = MEMORY[0x1E69DD250];
  *a2 = MEMORY[0x1E69E9820];
  a2[1] = 3221225472;
  a2[2] = __53___SFNavigationBar__updateSecurityWarningsVisibility__block_invoke;
  a2[3] = &unk_1E848F810;
  a2[4] = self;
  result = [v5 animateWithDuration:0 delay:a2 usingSpringWithDamping:0 initialSpringVelocity:0.35 options:0.0 animations:2.5 completion:0.0];
  *(self + 640) = 0;
  v7 = *(self + 432);
  if (v7)
  {
    *(v7 + 408) = 0;
  }

  return result;
}

- (void)setSuppressesBlur:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = @"Disabled";
  if (a1)
  {
    v2 = @"Enabled";
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_1D4644000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ navigation bar blur suppression", &v3, 0xCu);
}

- (uint64_t)setUsesFaintSeparator:(char)a3 .cold.1(char a1, _BYTE *a2, char a3, uint64_t a4)
{
  *a2 = a1;
  if (a3)
  {
    [MEMORY[0x1E69DC888] sf_secondaryBarHairlineOutlineColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] sf_barHairlineShadowColor];
  }
  v5 = ;
  [OUTLINED_FUNCTION_12(720) setBackgroundColor:?];

  return [(_SFNavigationBar *)a4 _updateSeparatorAlpha];
}

- (void)navigationBarURLButtonDidRequestFocusForPencilInput:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() text];
  v4 = 138739971;
  v5 = v3;
  _os_log_debug_impl(&dword_1D4644000, v1, OS_LOG_TYPE_DEBUG, "Clearing text field in order to allow pencil input to have clean slate. Current value of field: '%{sensitive}@'", &v4, 0xCu);
}

@end
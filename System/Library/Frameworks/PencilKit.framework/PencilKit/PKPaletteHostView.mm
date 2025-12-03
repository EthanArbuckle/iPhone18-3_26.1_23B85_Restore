@interface PKPaletteHostView
- (BOOL)_isPaletteAnimating;
- (BOOL)_shouldBeCompact;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isPaletteDragging;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)_projectedLandingPointForGestureRecognizerEnd:(id)end;
- (CGPoint)draggingInitialPaletteCenterInSelf;
- (CGSize)_paletteSizeForVisualState:(int64_t)state;
- (CGSize)paletteShadowOffset;
- (PKPaletteHostView)initWithPaletteView:(id)view;
- (PKPaletteHostViewDelegate)delegate;
- (double)_bottomEdgeSpacingInCompact;
- (double)_paletteEdgeMarginForEdge:(unint64_t)edge isMinimized:(BOOL)minimized;
- (double)_paletteViewCompactHeight;
- (double)paletteBorderWidth;
- (double)paletteShadowOpacity;
- (double)paletteShadowRadius;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)paletteBorderColor;
- (unint64_t)avoidanceEdgeForPaletteVisualState:(int64_t)state;
- (void)_activatePaletteCenterConstraints;
- (void)_cancelPanGestureIfNecessary;
- (void)_deactivatePaletteCenterConstraints;
- (void)_deactivatePaletteEdgeConstraints;
- (void)_deactivatePaletteEdgeConstraintsForCompact;
- (void)_dockPaletteToAutoHideCornerAnimated:(BOOL)animated;
- (void)_dockPaletteToPosition:(int64_t)position isFromUserReposition:(BOOL)reposition animated:(BOOL)animated;
- (void)_fixToBottomEdge;
- (void)_installPencilInteractionFeedbackHostViewIfNeeded;
- (void)_paletteDidDockToPosition:(int64_t)position fromUserReposition:(BOOL)reposition;
- (void)_paletteWillDockToPosition:(int64_t)position prepareForExpansion:(BOOL)expansion;
- (void)_panGestureHandler:(id)handler;
- (void)_performAnimated:(BOOL)animated tracking:(BOOL)tracking animations:(id)animations completion:(id)completion;
- (void)_processPendingDraggingTransition;
- (void)_scheduleDraggingTransitionToVisualState:(int64_t)state;
- (void)_setPaletteVisualState:(int64_t)state usingTransition:(BOOL)transition;
- (void)_tapToExpandPaletteFromMinimizedGestureHandler:(id)handler;
- (void)_touchDownFeedbackGestureHandler:(id)handler;
- (void)_updateConstraintsToDockPaletteToPosition:(int64_t)position;
- (void)_updateConstraintsToFixToBottomEdge;
- (void)_updatePaletteAppearanceAnimated:(BOOL)animated;
- (void)_updatePaletteContentAlpha;
- (void)_updatePaletteHeightConstraint;
- (void)_updatePaletteSizeAnimated:(BOOL)animated;
- (void)_updatePaletteViewSizeConstraints;
- (void)_updateToolPreviewMinimizedStateAnimated:(BOOL)animated;
- (void)_updateToolPreviewRotationAnimated:(BOOL)animated;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)paletteViewReturnKeyTypeDidChange:(id)change;
- (void)paletteViewShowFeedbackForToolChange:(id)change;
- (void)paletteViewStateDidChange:(id)change updatePaletteAppearance:(BOOL)appearance;
- (void)paletteViewStateDidChangeAutoHide:(id)hide;
- (void)paletteViewStateDidChangeScaleFactor:(id)factor;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)safeAreaInsetsDidChange;
- (void)setPaletteViewBottomEdgeSpacing:(double)spacing;
- (void)setPaletteVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionIntermediateVisualStateDidChange:(id)change;
- (void)updateKeyboardAvoidanceForPalette:(BOOL)palette;
@end

@implementation PKPaletteHostView

- (PKPaletteHostView)initWithPaletteView:(id)view
{
  v134[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v129.receiver = self;
  v129.super_class = PKPaletteHostView;
  v6 = [(PKPaletteHostView *)&v129 init];
  if (v6)
  {
    obj = view;
    v128 = viewCopy;
    v7 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    paletteViewLayoutGuide = v6->_paletteViewLayoutGuide;
    v6->_paletteViewLayoutGuide = v7;

    [(PKPaletteHostView *)v6 addLayoutGuide:v6->_paletteViewLayoutGuide];
    if (PKIsVisionDevice() && ([MEMORY[0x1E696AAE8] mainBundle], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "bundleIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"com.apple.freeform"), v10, v9, (v11 & 1) == 0))
    {
      v123 = MEMORY[0x1E696ACD8];
      topAnchor = [(UILayoutGuide *)v6->_paletteViewLayoutGuide topAnchor];
      topAnchor2 = [(PKPaletteHostView *)v6 topAnchor];
      v126 = topAnchor;
      v124 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v134[0] = v124;
      leadingAnchor = [(UILayoutGuide *)v6->_paletteViewLayoutGuide leadingAnchor];
      leadingAnchor2 = [(PKPaletteHostView *)v6 leadingAnchor];
      v122 = leadingAnchor;
      layoutMarginsGuide2 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v134[1] = layoutMarginsGuide2;
      trailingAnchor = [(UILayoutGuide *)v6->_paletteViewLayoutGuide trailingAnchor];
      trailingAnchor2 = [(PKPaletteHostView *)v6 trailingAnchor];
      bottomAnchor3 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v134[2] = bottomAnchor3;
      bottomAnchor = [(UILayoutGuide *)v6->_paletteViewLayoutGuide bottomAnchor];
      bottomAnchor2 = [(PKPaletteHostView *)v6 bottomAnchor];
      v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v134[3] = v25;
      v26 = v134;
    }

    else
    {
      topAnchor3 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide topAnchor];
      layoutMarginsGuide = [(PKPaletteHostView *)v6 layoutMarginsGuide];
      topAnchor4 = [layoutMarginsGuide topAnchor];
      v15 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      paletteViewLayoutGuideTopConstraint = v6->_paletteViewLayoutGuideTopConstraint;
      v6->_paletteViewLayoutGuideTopConstraint = v15;

      v6->_paletteViewLayoutGuideTopConstant = 0.0;
      v123 = MEMORY[0x1E696ACD8];
      v133[0] = v6->_paletteViewLayoutGuideTopConstraint;
      leadingAnchor3 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide leadingAnchor];
      topAnchor2 = [(PKPaletteHostView *)v6 layoutMarginsGuide];
      [topAnchor2 leadingAnchor];
      v124 = v126 = leadingAnchor3;
      v122 = [leadingAnchor3 constraintEqualToAnchor:?];
      v133[1] = v122;
      trailingAnchor3 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide trailingAnchor];
      layoutMarginsGuide2 = [(PKPaletteHostView *)v6 layoutMarginsGuide];
      trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
      leadingAnchor2 = trailingAnchor3;
      trailingAnchor2 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor];
      v133[2] = trailingAnchor2;
      bottomAnchor3 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide bottomAnchor];
      bottomAnchor = [(PKPaletteHostView *)v6 layoutMarginsGuide];
      bottomAnchor2 = [bottomAnchor bottomAnchor];
      v25 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor2];
      v133[3] = v25;
      v26 = v133;
    }

    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v123 activateConstraints:v29];

    v6->_paletteVisible = 0;
    v6->_paletteViewBottomEdgeSpacing = 0.0;
    objc_storeStrong(&v6->_paletteView, obj);
    [(PKPaletteView *)v6->_paletteView setPaletteViewHosting:v6];
    [(PKPaletteView *)v6->_paletteView setInternalDelegate:v6];
    paletteView = [(PKPaletteHostView *)v6 paletteView];
    [paletteView setTranslatesAutoresizingMaskIntoConstraints:0];

    paletteView2 = [(PKPaletteHostView *)v6 paletteView];
    [(PKPaletteHostView *)v6 addSubview:paletteView2];

    [(PKPaletteHostView *)v6 setDelegate:v6->_paletteView];
    v32 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v6];
    pointerInteraction = v6->_pointerInteraction;
    v6->_pointerInteraction = v32;

    [(PKPaletteHostView *)v6 addInteraction:v6->_pointerInteraction];
    paletteView3 = [(PKPaletteHostView *)v6 paletteView];
    topAnchor5 = [paletteView3 topAnchor];
    topAnchor6 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide topAnchor];
    v37 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    paletteTopConstraint = v6->_paletteTopConstraint;
    v6->_paletteTopConstraint = v37;

    paletteTopConstraint = [(PKPaletteHostView *)v6 paletteTopConstraint];
    LODWORD(v40) = 1132068864;
    [paletteTopConstraint setPriority:v40];

    bottomAnchor4 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide bottomAnchor];
    paletteView4 = [(PKPaletteHostView *)v6 paletteView];
    bottomAnchor5 = [paletteView4 bottomAnchor];
    v44 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    paletteBottomConstraint = v6->_paletteBottomConstraint;
    v6->_paletteBottomConstraint = v44;

    paletteBottomConstraint = [(PKPaletteHostView *)v6 paletteBottomConstraint];
    LODWORD(v47) = 1132068864;
    [paletteBottomConstraint setPriority:v47];

    paletteView5 = [(PKPaletteHostView *)v6 paletteView];
    leftAnchor = [paletteView5 leftAnchor];
    leftAnchor2 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide leftAnchor];
    v51 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    paletteLeftConstraint = v6->_paletteLeftConstraint;
    v6->_paletteLeftConstraint = v51;

    paletteLeftConstraint = [(PKPaletteHostView *)v6 paletteLeftConstraint];
    LODWORD(v54) = 1132068864;
    [paletteLeftConstraint setPriority:v54];

    rightAnchor = [(UILayoutGuide *)v6->_paletteViewLayoutGuide rightAnchor];
    paletteView6 = [(PKPaletteHostView *)v6 paletteView];
    rightAnchor2 = [paletteView6 rightAnchor];
    v58 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    paletteRightConstraint = v6->_paletteRightConstraint;
    v6->_paletteRightConstraint = v58;

    paletteRightConstraint = [(PKPaletteHostView *)v6 paletteRightConstraint];
    LODWORD(v61) = 1132068864;
    [paletteRightConstraint setPriority:v61];

    v62 = MEMORY[0x1E696ACD8];
    paletteTopConstraint2 = [(PKPaletteHostView *)v6 paletteTopConstraint];
    v132[0] = paletteTopConstraint2;
    paletteBottomConstraint2 = [(PKPaletteHostView *)v6 paletteBottomConstraint];
    v132[1] = paletteBottomConstraint2;
    paletteLeftConstraint2 = [(PKPaletteHostView *)v6 paletteLeftConstraint];
    v132[2] = paletteLeftConstraint2;
    paletteRightConstraint2 = [(PKPaletteHostView *)v6 paletteRightConstraint];
    v132[3] = paletteRightConstraint2;
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:4];
    [v62 activateConstraints:v67];

    paletteView7 = [(PKPaletteHostView *)v6 paletteView];
    centerXAnchor = [paletteView7 centerXAnchor];
    centerXAnchor2 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide centerXAnchor];
    v71 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    paletteCenterXConstraint = v6->_paletteCenterXConstraint;
    v6->_paletteCenterXConstraint = v71;

    paletteCenterXConstraint = [(PKPaletteHostView *)v6 paletteCenterXConstraint];
    LODWORD(v74) = 1132068864;
    [paletteCenterXConstraint setPriority:v74];

    paletteView8 = [(PKPaletteHostView *)v6 paletteView];
    centerYAnchor = [paletteView8 centerYAnchor];
    centerYAnchor2 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide centerYAnchor];
    v78 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    paletteCenterYConstraint = v6->_paletteCenterYConstraint;
    v6->_paletteCenterYConstraint = v78;

    paletteCenterYConstraint = [(PKPaletteHostView *)v6 paletteCenterYConstraint];
    LODWORD(v81) = 1132068864;
    [paletteCenterYConstraint setPriority:v81];

    v82 = MEMORY[0x1E696ACD8];
    paletteCenterXConstraint2 = [(PKPaletteHostView *)v6 paletteCenterXConstraint];
    v131[0] = paletteCenterXConstraint2;
    paletteCenterYConstraint2 = [(PKPaletteHostView *)v6 paletteCenterYConstraint];
    v131[1] = paletteCenterYConstraint2;
    v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:2];
    [v82 activateConstraints:v85];

    paletteView9 = [(PKPaletteHostView *)v6 paletteView];
    [paletteView9 paletteSizeForEdge:4];
    v88 = v87;
    v90 = v89;

    paletteView10 = [(PKPaletteHostView *)v6 paletteView];
    widthAnchor = [paletteView10 widthAnchor];
    v93 = [widthAnchor constraintEqualToConstant:v88];
    paletteWidthConstraint = v6->_paletteWidthConstraint;
    v6->_paletteWidthConstraint = v93;

    paletteView11 = [(PKPaletteHostView *)v6 paletteView];
    heightAnchor = [paletteView11 heightAnchor];
    v97 = [heightAnchor constraintEqualToConstant:v90];
    paletteHeightConstraint = v6->_paletteHeightConstraint;
    v6->_paletteHeightConstraint = v97;

    v99 = MEMORY[0x1E696ACD8];
    paletteWidthConstraint = [(PKPaletteHostView *)v6 paletteWidthConstraint];
    v130[0] = paletteWidthConstraint;
    paletteHeightConstraint = [(PKPaletteHostView *)v6 paletteHeightConstraint];
    v130[1] = paletteHeightConstraint;
    v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
    [v99 activateConstraints:v102];

    v103 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v6 action:sel__panGestureHandler_];
    panGestureRecognizer = v6->_panGestureRecognizer;
    v6->_panGestureRecognizer = v103;

    panGestureRecognizer = [(PKPaletteHostView *)v6 panGestureRecognizer];
    [panGestureRecognizer setDelegate:v6];

    paletteView12 = [(PKPaletteHostView *)v6 paletteView];
    panGestureRecognizer2 = [(PKPaletteHostView *)v6 panGestureRecognizer];
    [paletteView12 addGestureRecognizer:panGestureRecognizer2];

    paletteView13 = [(PKPaletteHostView *)v6 paletteView];
    contentScrollView = [paletteView13 contentScrollView];
    [contentScrollView setDelegate:v6];

    v110 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v6 action:sel__tapToExpandPaletteFromMinimizedGestureHandler_];
    tapToExpandPaletteFromMinimizedGestureRecognizer = v6->_tapToExpandPaletteFromMinimizedGestureRecognizer;
    v6->_tapToExpandPaletteFromMinimizedGestureRecognizer = v110;

    tapToExpandPaletteFromMinimizedGestureRecognizer = [(PKPaletteHostView *)v6 tapToExpandPaletteFromMinimizedGestureRecognizer];
    [tapToExpandPaletteFromMinimizedGestureRecognizer setDelegate:v6];

    paletteView14 = [(PKPaletteHostView *)v6 paletteView];
    tapToExpandPaletteFromMinimizedGestureRecognizer2 = [(PKPaletteHostView *)v6 tapToExpandPaletteFromMinimizedGestureRecognizer];
    [paletteView14 addGestureRecognizer:tapToExpandPaletteFromMinimizedGestureRecognizer2];

    v115 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v6 action:sel__touchDownFeedbackGestureHandler_];
    touchDownFeedbackGestureRecognizer = v6->_touchDownFeedbackGestureRecognizer;
    v6->_touchDownFeedbackGestureRecognizer = v115;

    [(UILongPressGestureRecognizer *)v6->_touchDownFeedbackGestureRecognizer setDelegate:v6];
    [(UILongPressGestureRecognizer *)v6->_touchDownFeedbackGestureRecognizer setMinimumPressDuration:0.0];
    paletteView15 = [(PKPaletteHostView *)v6 paletteView];
    [paletteView15 addGestureRecognizer:v6->_touchDownFeedbackGestureRecognizer];

    v6->_panGestureDidStartInPaletteScrollView = 0;
    v6->_panGestureShouldDragPaletteView = 1;
    v6->_paletteScrollGestureShouldScroll = 1;
    v118 = [[PKPaletteTooltipPresentationHandle alloc] initWithHostingView:v6];
    tooltipPresentationHandle = v6->_tooltipPresentationHandle;
    v6->_tooltipPresentationHandle = v118;

    [(PKPaletteHostView *)v6 setClipsToBounds:1];
    viewCopy = v128;
  }

  return v6;
}

- (void)setPaletteViewBottomEdgeSpacing:(double)spacing
{
  if (self->_paletteViewBottomEdgeSpacing != spacing)
  {
    self->_paletteViewBottomEdgeSpacing = spacing;
    palettePosition = [(PKPaletteHostView *)self palettePosition];

    [(PKPaletteHostView *)self _updateConstraintsToDockPaletteToPosition:palettePosition];
  }
}

- (void)didMoveToWindow
{
  window = [(PKPaletteHostView *)self window];
  if (window)
  {
    v9 = window;
    [(PKPaletteHostView *)self _updatePaletteViewSizeConstraints];
    if ([(PKPaletteHostView *)self _shouldBeCompact])
    {
      [(PKPaletteHostView *)self _fixToBottomEdge];
    }

    else
    {
      paletteView = [(PKPaletteHostView *)self paletteView];
      if ([paletteView isAutoHideEnabled])
      {
      }

      else
      {
        paletteView2 = [(PKPaletteHostView *)self paletteView];
        shouldStartUpMinimized = [paletteView2 shouldStartUpMinimized];

        if (!shouldStartUpMinimized)
        {
          palettePosition = [(PKPaletteView *)self->_paletteView palettePosition];
          if (palettePosition)
          {
            v8 = palettePosition;
          }

          else
          {
            v8 = 3;
          }

          [(PKPaletteHostView *)self _dockPaletteToPosition:v8 animated:0];
          goto LABEL_12;
        }
      }

      [(PKPaletteHostView *)self _dockPaletteToAutoHideCornerAnimated:0];
    }

LABEL_12:
    window = v9;
  }
}

- (void)_installPencilInteractionFeedbackHostViewIfNeeded
{
  if (!self->_pencilInteractionFeedbackHostView)
  {
    v3 = [[PKPalettePencilInteractionFeedbackHostView alloc] initWithDelegate:self];
    pencilInteractionFeedbackHostView = self->_pencilInteractionFeedbackHostView;
    self->_pencilInteractionFeedbackHostView = v3;

    [(PKPaletteHostView *)self insertSubview:self->_pencilInteractionFeedbackHostView atIndex:0];

    [(PKPaletteHostView *)self layoutIfNeeded];
  }
}

- (void)_cancelPanGestureIfNecessary
{
  if ([(UIPanGestureRecognizer *)self->_panGestureRecognizer state])
  {
    panGestureRecognizer = self->_panGestureRecognizer;

    [(UIPanGestureRecognizer *)panGestureRecognizer setState:4];
  }
}

- (void)setPaletteVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  completionCopy = completion;
  paletteVisible = self->_paletteVisible;
  if (paletteVisible != visibleCopy)
  {
    v10 = paletteVisible && ~visibleCopy;
    self->_paletteVisible = visibleCopy;
    [(PKPaletteHostView *)self _cancelPanGestureIfNecessary];
    [(PKPaletteHostView *)self layoutIfNeeded];
    isPaletteVisible = [(PKPaletteHostView *)self isPaletteVisible];
    paletteView = [(PKPaletteHostView *)self paletteView];
    v13 = paletteView;
    if (isPaletteVisible)
    {
      [paletteView setNeedsLayout];

      paletteView2 = [(PKPaletteHostView *)self paletteView];
      [paletteView2 layoutIfNeeded];

      pencilInteractionFeedbackHostView = [(PKPaletteHostView *)self pencilInteractionFeedbackHostView];
      [pencilInteractionFeedbackHostView hideFeedbackView];
    }

    else
    {
      [paletteView dismissPalettePopoverWithCompletion:0];

      pencilInteractionFeedbackHostView = [(PKPaletteHostView *)self paletteView];
      [pencilInteractionFeedbackHostView dismissContextMenu];
    }

    paletteView3 = [(PKPaletteHostView *)self paletteView];
    [paletteView3 willStartAppearanceAnimation:visibleCopy];

    [(PKPaletteHostView *)self updateKeyboardAvoidanceForPalette:visibleCopy];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__PKPaletteHostView_setPaletteVisible_animated_completion___block_invoke;
    v19[3] = &unk_1E82D9EF8;
    v19[4] = self;
    v20 = visibleCopy;
    v21 = v10;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__PKPaletteHostView_setPaletteVisible_animated_completion___block_invoke_2;
    v17[3] = &unk_1E82D77F0;
    v17[4] = self;
    v18 = completionCopy;
    [(PKPaletteHostView *)self _performAnimated:animatedCopy tracking:0 animations:v19 completion:v17];
  }
}

uint64_t __59__PKPaletteHostView_setPaletteVisible_animated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEffectivePaletteVisible:*(a1 + 40)];
  if ([*(a1 + 32) _shouldBeCompact])
  {
    [*(a1 + 32) _updateConstraintsToFixToBottomEdge];
    [*(a1 + 32) _updatePaletteAppearanceAnimated:*(a1 + 41)];
  }

  else
  {
    [*(a1 + 32) _updateConstraintsToDockPaletteToPosition:{objc_msgSend(*(a1 + 32), "palettePosition")}];
  }

  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __59__PKPaletteHostView_setPaletteVisible_animated_completion___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) paletteView];
    [v3 didEndAppearanceAnimation];

    result = *(v2 + 40);
    if (result)
    {
      v4 = *(result + 16);

      return v4();
    }
  }

  return result;
}

- (void)updateKeyboardAvoidanceForPalette:(BOOL)palette
{
  v4 = 0.0;
  if (palette && [(PKPaletteHostView *)self _shouldBeCompact])
  {
    [(PKPaletteHostView *)self _paletteViewCompactHeight];
    v4 = v5;
  }

  keyboardSceneDelegate = [(PKPaletteHostView *)self keyboardSceneDelegate];
  if (objc_opt_respondsToSelector())
  {
    [keyboardSceneDelegate refreshWithLocalMinimumKeyboardHeight:v4];
  }
}

- (void)_setPaletteVisualState:(int64_t)state usingTransition:(BOOL)transition
{
  paletteVisualState = self->_paletteVisualState;
  if (paletteVisualState != state)
  {
    self->_paletteVisualState = state;
    if (transition)
    {
      paletteTransition = [(PKPaletteHostView *)self paletteTransition];
      if (!paletteTransition || (v7 = paletteTransition, -[PKPaletteHostView paletteTransition](self, "paletteTransition"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isTransitionInProgress], v8, v7, (v9 & 1) == 0))
      {
        paletteTransition2 = [(PKPaletteHostView *)self paletteTransition];
        [paletteTransition2 setDelegate:0];

        v11 = [[PKPaletteTransition alloc] initWithInitialVisualState:paletteVisualState];
        [(PKPaletteHostView *)self setPaletteTransition:v11];

        paletteTransition3 = [(PKPaletteHostView *)self paletteTransition];
        [paletteTransition3 setDelegate:self];
      }

      paletteTransition4 = [(PKPaletteHostView *)self paletteTransition];
      [paletteTransition4 transitionToVisualState:{-[PKPaletteHostView paletteVisualState](self, "paletteVisualState")}];
    }

    else
    {
      [(PKPaletteHostView *)self _updatePaletteSizeAnimated:0];
      [(PKPaletteHostView *)self _updateToolPreviewRotationAnimated:0];
      [(PKPaletteHostView *)self _updateToolPreviewMinimizedStateAnimated:0];
      [(PKPaletteHostView *)self _updatePaletteContentAlpha];

      [(PKPaletteHostView *)self _updatePaletteAppearanceAnimated:0];
    }
  }
}

- (BOOL)isPaletteDragging
{
  if ([(PKPaletteHostView *)self paletteVisualState]== 3)
  {
    return 1;
  }

  panGestureRecognizer = [(PKPaletteHostView *)self panGestureRecognizer];
  if ([panGestureRecognizer state] == 1)
  {
    v3 = 1;
  }

  else
  {
    panGestureRecognizer2 = [(PKPaletteHostView *)self panGestureRecognizer];
    v3 = [panGestureRecognizer2 state] == 2;
  }

  return v3;
}

- (void)_updatePaletteAppearanceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  paletteView = [(PKPaletteHostView *)self paletteView];
  traitCollection = [(PKPaletteHostView *)self traitCollection];
  v7 = [paletteView borderColorForTraitCollection:traitCollection];

  paletteView2 = [(PKPaletteHostView *)self paletteView];
  traitCollection2 = [(PKPaletteHostView *)self traitCollection];
  [paletteView2 borderWidthForTraitCollection:traitCollection2];
  v11 = v10;

  cGColor = [v7 CGColor];
  paletteView3 = [(PKPaletteHostView *)self paletteView];
  layer = [paletteView3 layer];
  [layer setBorderColor:cGColor];

  paletteView4 = [(PKPaletteHostView *)self paletteView];
  layer2 = [paletteView4 layer];
  [layer2 setBorderWidth:v11];

  paletteView5 = [(PKPaletteHostView *)self paletteView];
  layer3 = [paletteView5 layer];
  [layer3 setMasksToBounds:0];

  v19 = *MEMORY[0x1E695F060];
  v20 = *(MEMORY[0x1E695F060] + 8);
  paletteView6 = [(PKPaletteHostView *)self paletteView];
  layer4 = [paletteView6 layer];
  [layer4 setShadowOffset:{v19, v20}];

  paletteVisualState = [(PKPaletteHostView *)self paletteVisualState];
  paletteTransition = [(PKPaletteHostView *)self paletteTransition];
  LODWORD(layer) = [paletteTransition isTransitionInProgress];

  if (layer)
  {
    paletteTransition2 = [(PKPaletteHostView *)self paletteTransition];
    paletteVisualState = [paletteTransition2 intermediateVisualState];
  }

  v26 = 0.0;
  if (paletteVisualState <= 7)
  {
    if (((1 << paletteVisualState) & 0xF0) != 0)
    {
      goto LABEL_5;
    }

    if (((1 << paletteVisualState) & 3) == 0)
    {
      paletteView7 = [(PKPaletteHostView *)self paletteView];
      [paletteView7 shadowOpacity];
      v29 = v34;

      paletteView8 = [(PKPaletteHostView *)self paletteView];
      shouldAdjustShadowRadiusForMinimized = [paletteView8 shouldAdjustShadowRadiusForMinimized];
      paletteView9 = [(PKPaletteHostView *)self paletteView];
      [paletteView9 shadowRadius];
      if (shouldAdjustShadowRadiusForMinimized)
      {
        v26 = v37 * 0.5;
      }

      else
      {
        v26 = v37;
      }

      goto LABEL_14;
    }

    if (_UISolariumEnabled() && [(PKPaletteHostView *)self isEffectivePaletteVisible])
    {
LABEL_5:
      paletteView10 = [(PKPaletteHostView *)self paletteView];
      [paletteView10 shadowOpacity];
      v29 = v28;

      paletteView8 = [(PKPaletteHostView *)self paletteView];
      [paletteView8 shadowRadius];
      v26 = v31;
LABEL_14:

      pk_paletteShadowColor = [MEMORY[0x1E69DC888] pk_paletteShadowColor];
      goto LABEL_15;
    }
  }

  pk_paletteShadowColor = 0;
  v29 = 0;
LABEL_15:
  v38 = [(PKPaletteHostView *)self avoidanceEdgeForPaletteVisualState:paletteVisualState];
  if (v38 && (v39 = v38, -[PKPaletteHostView paletteView](self, "paletteView"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 isVisible], v40, v41))
  {
    v42 = [MEMORY[0x1E69DD438] sceneComponentForView:self];
    paletteView11 = [(PKPaletteHostView *)self paletteView];
    [paletteView11 frame];
    v57 = CGRectInset(v56, -8.0, -8.0);
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;

    v48 = [objc_alloc(MEMORY[0x1E69DD430]) initWithEdge:v39 frame:self coordinateSpace:{x, y, width, height}];
    v49 = [v42 addAvoidanceRect:v48 forKey:@"PKToolPickerAvoidanceRect"];
    menuAvoidanceAssertion = self->_menuAvoidanceAssertion;
    self->_menuAvoidanceAssertion = v49;
  }

  else
  {
    v42 = self->_menuAvoidanceAssertion;
    self->_menuAvoidanceAssertion = 0;
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v51 = MEMORY[0x1E6979518];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __54__PKPaletteHostView__updatePaletteAppearanceAnimated___block_invoke;
    v52[3] = &unk_1E82D9F20;
    v52[4] = self;
    v54 = v29;
    v55 = v26;
    v53 = pk_paletteShadowColor;
    [v51 _pk_withDisabledActions:!animatedCopy perform:v52];
  }
}

void __54__PKPaletteHostView__updatePaletteAppearanceAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) paletteView];
  v4 = [v3 layer];
  *&v5 = v2;
  [v4 setShadowOpacity:v5];

  v6 = *(a1 + 56);
  v7 = [*(a1 + 32) paletteView];
  v8 = [v7 layer];
  [v8 setShadowRadius:v6];

  v9 = [*(a1 + 40) CGColor];
  v11 = [*(a1 + 32) paletteView];
  v10 = [v11 layer];
  [v10 setShadowColor:v9];
}

- (void)_updatePaletteViewSizeConstraints
{
  if ([(PKPaletteHostView *)self _shouldBeCompact])
  {

    [(PKPaletteHostView *)self _updateConstraintsToFixToBottomEdge];
  }

  else
  {
    [(PKPaletteHostView *)self _paletteSizeForVisualState:[(PKPaletteHostView *)self paletteVisualState]];
    v4 = v3;
    v6 = v5;
    paletteWidthConstraint = [(PKPaletteHostView *)self paletteWidthConstraint];
    [paletteWidthConstraint setConstant:v4];

    paletteHeightConstraint = [(PKPaletteHostView *)self paletteHeightConstraint];
    [paletteHeightConstraint setConstant:v6];

    [(PKPaletteHostView *)self setNeedsLayout];
  }
}

- (void)_updatePaletteContentAlpha
{
  paletteTransition = [(PKPaletteHostView *)self paletteTransition];
  isTransitionInProgress = [paletteTransition isTransitionInProgress];

  if (isTransitionInProgress)
  {
    paletteTransition2 = [(PKPaletteHostView *)self paletteTransition];
    [paletteTransition2 expandedToCollapsedRatio];
    v7 = 1.0 - (v6 + v6);

    if (v7 < 0.0)
    {
      v7 = 0.0;
    }
  }

  else
  {
    v8 = [(PKPaletteHostView *)self paletteVisualState]- 1;
    v7 = 0.0;
    if (v8 <= 6)
    {
      v7 = dbl_1C801DB88[v8];
    }
  }

  paletteView = [(PKPaletteHostView *)self paletteView];
  [paletteView setPaletteContentAlpha:v7];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = PKPaletteHostView;
  [(PKPaletteHostView *)&v19 layoutSubviews];
  [(PKPaletteHostView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  pencilInteractionFeedbackHostView = [(PKPaletteHostView *)self pencilInteractionFeedbackHostView];
  [pencilInteractionFeedbackHostView setFrame:{v4, v6, v8, v10}];

  [(PKPaletteHostView *)self safeAreaInsets];
  v13 = v12;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.quicklook.extension.previewUI"])
  {
  }

  else
  {
    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    v18 = [bundleIdentifier2 isEqualToString:@"com.apple.quicklook.UIExtension"];

    if (!v18)
    {
      goto LABEL_5;
    }
  }

  v13 = v13 + -64.0;
LABEL_5:
  if (self->_paletteViewLayoutGuideTopConstant != v13)
  {
    self->_paletteViewLayoutGuideTopConstant = v13;
    [(NSLayoutConstraint *)self->_paletteViewLayoutGuideTopConstraint setConstant:v13];
  }
}

- (void)safeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = PKPaletteHostView;
  [(PKPaletteHostView *)&v4 safeAreaInsetsDidChange];
  if ([(PKPaletteHostView *)self _shouldBeCompact])
  {
    if ([(PKPaletteHostView *)self isEffectivePaletteVisible])
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __44__PKPaletteHostView_safeAreaInsetsDidChange__block_invoke;
      v3[3] = &unk_1E82D7148;
      v3[4] = self;
      [(PKPaletteHostView *)self _performAnimated:1 tracking:0 animations:v3 completion:0];
      [(PKPaletteHostView *)self updateKeyboardAvoidanceForPalette:1];
    }
  }
}

uint64_t __44__PKPaletteHostView_safeAreaInsetsDidChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePaletteHeightConstraint];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_fixToBottomEdge
{
  [(PKPaletteHostView *)self _paletteWillDockToPosition:3 prepareForExpansion:0];
  [(PKPaletteHostView *)self _deactivatePaletteCenterConstraints];
  [(PKPaletteHostView *)self _deactivatePaletteEdgeConstraints];
  [(PKPaletteHostView *)self _setPaletteVisualState:1 usingTransition:0];
  [(PKPaletteHostView *)self _updateConstraintsToFixToBottomEdge];

  [(PKPaletteHostView *)self _paletteDidDockToPosition:3 fromUserReposition:0];
}

- (void)_updateConstraintsToFixToBottomEdge
{
  v49[2] = *MEMORY[0x1E69E9840];
  if (_UISolariumEnabled())
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v5 = v4;

    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 bounds];
    v8 = v7;

    LOBYTE(mainScreen2) = PKIsPhoneDevice();
    paletteWidthConstraint = [(PKPaletteHostView *)self paletteWidthConstraint];
    [paletteWidthConstraint setConstant:388.0];

    if ((mainScreen2 & (v5 > v8)) != 0)
    {
      v10 = 1000.0;
    }

    else
    {
      v10 = 750.0;
    }

    paletteWidthConstraint2 = [(PKPaletteHostView *)self paletteWidthConstraint];
    *&v12 = v10;
    [paletteWidthConstraint2 setPriority:v12];
  }

  [(PKPaletteHostView *)self _deactivatePaletteEdgeConstraintsForCompact];
  v13 = -3.0;
  if (_UISolariumEnabled())
  {
    [(PKPaletteHostView *)self _bottomEdgeSpacingInCompact];
    v13 = v14;
  }

  if (![(PKPaletteHostView *)self isEffectivePaletteVisible])
  {
    [(PKPaletteView *)self->_paletteView frame];
    Height = CGRectGetHeight(v50);
    [(PKPaletteHostView *)self layoutMargins];
    v13 = -(Height + v16);
  }

  paletteBottomConstraint = [(PKPaletteHostView *)self paletteBottomConstraint];
  [paletteBottomConstraint setConstant:v13];

  paletteBottomConstraint2 = [(PKPaletteHostView *)self paletteBottomConstraint];
  LODWORD(v19) = 1148846080;
  [paletteBottomConstraint2 setPriority:v19];

  if (_UISolariumEnabled())
  {
    v20 = 20.0;
  }

  else
  {
    v20 = 0.0;
  }

  traitCollection = [(PKPaletteHostView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];
  paletteView = [(PKPaletteHostView *)self paletteView];
  [paletteView edgeInsetsInCompactSize];
  v25 = v24;
  v27 = v26;

  if (layoutDirection == 1)
  {
    v28 = v27;
  }

  else
  {
    v28 = v25;
  }

  v29 = v20 + v28;

  traitCollection2 = [(PKPaletteHostView *)self traitCollection];
  layoutDirection2 = [traitCollection2 layoutDirection];
  paletteView2 = [(PKPaletteHostView *)self paletteView];
  [paletteView2 edgeInsetsInCompactSize];
  if (layoutDirection2 == 1)
  {
    v35 = v33;
  }

  else
  {
    v35 = v34;
  }

  v36 = _UISolariumEnabled();
  paletteView3 = [(PKPaletteHostView *)self paletteView];
  leftAnchor = [paletteView3 leftAnchor];
  leftAnchor2 = [(PKPaletteHostView *)self leftAnchor];
  if (v36)
  {
    [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:v29];
  }

  else
  {
    [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v29];
  }
  v40 = ;
  objc_storeStrong(&self->_paletteLeftConstraintInCompact, v40);

  LODWORD(v40) = _UISolariumEnabled();
  rightAnchor = [(PKPaletteHostView *)self rightAnchor];
  paletteView4 = [(PKPaletteHostView *)self paletteView];
  rightAnchor2 = [paletteView4 rightAnchor];
  v44 = v20 + v35;
  if (v40)
  {
    [rightAnchor constraintGreaterThanOrEqualToAnchor:rightAnchor2 constant:v44];
  }

  else
  {
    [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v44];
  }
  v45 = ;
  objc_storeStrong(&self->_paletteRightConstraintInCompact, v45);

  v46 = MEMORY[0x1E696ACD8];
  paletteRightConstraintInCompact = self->_paletteRightConstraintInCompact;
  v49[0] = self->_paletteLeftConstraintInCompact;
  v49[1] = paletteRightConstraintInCompact;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  [v46 activateConstraints:v48];

  [(PKPaletteHostView *)self _updatePaletteHeightConstraint];
}

- (double)_bottomEdgeSpacingInCompact
{
  window = [(PKPaletteHostView *)self window];
  windowScene = [window windowScene];
  if (PKIsQuickNoteWindowScene(windowScene))
  {
    v4 = 20.0;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (void)_updatePaletteHeightConstraint
{
  [(PKPaletteHostView *)self _paletteViewCompactHeight];
  v4 = v3;
  paletteHeightConstraint = [(PKPaletteHostView *)self paletteHeightConstraint];
  [paletteHeightConstraint setConstant:v4];

  paletteHeightConstraint2 = [(PKPaletteHostView *)self paletteHeightConstraint];
  LODWORD(v6) = 1148846080;
  [paletteHeightConstraint2 setPriority:v6];
}

- (double)_paletteViewCompactHeight
{
  paletteView = [(PKPaletteHostView *)self paletteView];
  [paletteView compactPaletteHeight];
  v5 = v4;
  paletteView2 = [(PKPaletteHostView *)self paletteView];
  [paletteView2 edgeInsetsInCompactSize];
  v8 = v5 + v7;

  if ((_UISolariumEnabled() & 1) == 0)
  {
    paletteView3 = [(PKPaletteHostView *)self paletteView];
    ignoresSafeAreaInsetsInCompactSize = [paletteView3 ignoresSafeAreaInsetsInCompactSize];

    if ((ignoresSafeAreaInsetsInCompactSize & 1) == 0)
    {
      window = [(PKPaletteHostView *)self window];
      [window safeAreaInsets];
      v8 = v8 + v12;
    }
  }

  v13 = _UISolariumEnabled();
  v14 = 3.0;
  if (v13)
  {
    v14 = 0.0;
  }

  return v8 + v14;
}

- (void)_dockPaletteToAutoHideCornerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(PKPaletteHostView *)self _shouldBeCompact])
  {
    v5 = [(PKPaletteView *)self->_paletteView autoHideCorner]- 1;
    if (v5 > 7)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_1C801DC40[v5];
    }

    [(PKPaletteHostView *)self _dockPaletteToPosition:v6 animated:animatedCopy];
  }
}

- (void)_dockPaletteToPosition:(int64_t)position isFromUserReposition:(BOOL)reposition animated:(BOOL)animated
{
  animatedCopy = animated;
  v9 = position - 1;
  v10 = (position - 1) < 4;
  v11 = ([(PKPaletteHostView *)self paletteVisualState]& 0xFFFFFFFFFFFFFFFELL) == 2 && v10;
  [(PKPaletteHostView *)self _paletteWillDockToPosition:position prepareForExpansion:v11];
  if (v9 >= 4)
  {
    [(PKPaletteHostView *)self layoutIfNeeded];
  }

  paletteHeightConstraint = [(PKPaletteHostView *)self paletteHeightConstraint];
  LODWORD(v13) = 1148846080;
  [paletteHeightConstraint setPriority:v13];

  paletteWidthConstraint = [(PKPaletteHostView *)self paletteWidthConstraint];
  LODWORD(v15) = 1148846080;
  [paletteWidthConstraint setPriority:v15];

  if (v9 > 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_1C801DBC0[v9];
  }

  [(PKPaletteHostView *)self _setPaletteVisualState:v16 usingTransition:animatedCopy];
  [(PKPaletteHostView *)self layoutIfNeeded];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__PKPaletteHostView__dockPaletteToPosition_isFromUserReposition_animated___block_invoke;
  v19[3] = &unk_1E82D7170;
  v19[4] = self;
  v19[5] = position;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__PKPaletteHostView__dockPaletteToPosition_isFromUserReposition_animated___block_invoke_2;
  v17[3] = &unk_1E82D9F48;
  v17[4] = self;
  v17[5] = position;
  repositionCopy = reposition;
  [(PKPaletteHostView *)self _performAnimated:animatedCopy tracking:0 animations:v19 completion:v17];
}

uint64_t __74__PKPaletteHostView__dockPaletteToPosition_isFromUserReposition_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateConstraintsToDockPaletteToPosition:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __74__PKPaletteHostView__dockPaletteToPosition_isFromUserReposition_animated___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _paletteDidDockToPosition:*(result + 40) fromUserReposition:*(result + 48)];
  }

  return result;
}

- (double)_paletteEdgeMarginForEdge:(unint64_t)edge isMinimized:(BOOL)minimized
{
  v6 = [(PKPaletteHostView *)self paletteView:edge];
  [v6 paletteScaleFactor];
  v8 = v7 * 122.0;

  v9 = 0.0;
  if (edge > 3)
  {
    if (edge == 4)
    {
      if (![(PKPaletteHostView *)self isEffectivePaletteVisible])
      {
        [(PKPaletteHostView *)self layoutMargins];
        v11 = v8 + v16;
        return -v11;
      }

      return self->_paletteViewBottomEdgeSpacing;
    }

    else if (edge == 8 && ![(PKPaletteHostView *)self isEffectivePaletteVisible])
    {
      [(PKPaletteHostView *)self layoutMargins];
      v11 = v8 + v12;
      return -v11;
    }
  }

  else if (edge == 1)
  {
    if (![(PKPaletteHostView *)self isEffectivePaletteVisible])
    {
      [(PKPaletteHostView *)self layoutMargins];
      v14 = v8 + v13;
      [(PKPaletteHostView *)self safeAreaInsets];
      v11 = v14 + v15;
      return -v11;
    }
  }

  else if (edge == 2 && ![(PKPaletteHostView *)self isEffectivePaletteVisible])
  {
    [(PKPaletteHostView *)self layoutMargins];
    v11 = v8 + v10;
    return -v11;
  }

  return v9;
}

- (void)_updateConstraintsToDockPaletteToPosition:(int64_t)position
{
  window = [(PKPaletteHostView *)self window];

  if (!window)
  {
    return;
  }

  [(PKPaletteHostView *)self _deactivatePaletteEdgeConstraints];
  [(PKPaletteHostView *)self _deactivatePaletteCenterConstraints];
  if (position > 4)
  {
    if (position <= 6)
    {
      if (position != 5)
      {
        paletteTopConstraint = [(PKPaletteHostView *)self paletteTopConstraint];
        [paletteTopConstraint setConstant:0.0];

        paletteRightConstraint = [(PKPaletteHostView *)self paletteRightConstraint];
        [paletteRightConstraint setConstant:0.0];

        paletteTopConstraint2 = [(PKPaletteHostView *)self paletteTopConstraint];
        LODWORD(v14) = 1144750080;
        [paletteTopConstraint2 setPriority:v14];

        paletteRightConstraint2 = [(PKPaletteHostView *)self paletteRightConstraint];
        LODWORD(v16) = 1144750080;
        [paletteRightConstraint2 setPriority:v16];

        if (self->_effectivePaletteVisible)
        {
          return;
        }

        paletteView = [(PKPaletteHostView *)self paletteView];
        v18 = [paletteView edgeLocationToDockFromCorner:2];

        if (v18 == 1)
        {
LABEL_55:
          [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:1 isMinimized:1];
          v53 = v80;
          paletteTopConstraint3 = [(PKPaletteHostView *)self paletteTopConstraint];
LABEL_57:
          v82 = paletteTopConstraint3;
          [paletteTopConstraint3 setConstant:v53];
          goto LABEL_58;
        }

LABEL_31:
        if (v18 != 8)
        {
          return;
        }

        [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:8 isMinimized:1];
        v53 = v66;
        paletteTopConstraint3 = [(PKPaletteHostView *)self paletteRightConstraint];
        goto LABEL_57;
      }

      paletteTopConstraint4 = [(PKPaletteHostView *)self paletteTopConstraint];
      [paletteTopConstraint4 setConstant:0.0];

      paletteLeftConstraint = [(PKPaletteHostView *)self paletteLeftConstraint];
      [paletteLeftConstraint setConstant:0.0];

      paletteTopConstraint5 = [(PKPaletteHostView *)self paletteTopConstraint];
      LODWORD(v48) = 1144750080;
      [paletteTopConstraint5 setPriority:v48];

      paletteLeftConstraint2 = [(PKPaletteHostView *)self paletteLeftConstraint];
      LODWORD(v50) = 1144750080;
      [paletteLeftConstraint2 setPriority:v50];

      if (self->_effectivePaletteVisible)
      {
        return;
      }

      paletteView2 = [(PKPaletteHostView *)self paletteView];
      v39 = [paletteView2 edgeLocationToDockFromCorner:1];

      if (v39 == 1)
      {
        goto LABEL_55;
      }

LABEL_25:
      if (v39 != 2)
      {
        return;
      }

      [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:2 isMinimized:1];
      v53 = v52;
      paletteTopConstraint3 = [(PKPaletteHostView *)self paletteLeftConstraint];
      goto LABEL_57;
    }

    if (position == 7)
    {
      paletteBottomConstraint = [(PKPaletteHostView *)self paletteBottomConstraint];
      [paletteBottomConstraint setConstant:0.0];

      paletteRightConstraint3 = [(PKPaletteHostView *)self paletteRightConstraint];
      [paletteRightConstraint3 setConstant:0.0];

      paletteBottomConstraint2 = [(PKPaletteHostView *)self paletteBottomConstraint];
      LODWORD(v62) = 1144750080;
      [paletteBottomConstraint2 setPriority:v62];

      paletteRightConstraint4 = [(PKPaletteHostView *)self paletteRightConstraint];
      LODWORD(v64) = 1144750080;
      [paletteRightConstraint4 setPriority:v64];

      if (self->_effectivePaletteVisible)
      {
        return;
      }

      paletteView3 = [(PKPaletteHostView *)self paletteView];
      v18 = [paletteView3 edgeLocationToDockFromCorner:8];

      if (v18 != 4)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (position != 8)
      {
        goto LABEL_40;
      }

      paletteBottomConstraint3 = [(PKPaletteHostView *)self paletteBottomConstraint];
      [paletteBottomConstraint3 setConstant:0.0];

      paletteLeftConstraint3 = [(PKPaletteHostView *)self paletteLeftConstraint];
      [paletteLeftConstraint3 setConstant:0.0];

      paletteBottomConstraint4 = [(PKPaletteHostView *)self paletteBottomConstraint];
      LODWORD(v35) = 1144750080;
      [paletteBottomConstraint4 setPriority:v35];

      paletteLeftConstraint4 = [(PKPaletteHostView *)self paletteLeftConstraint];
      LODWORD(v37) = 1144750080;
      [paletteLeftConstraint4 setPriority:v37];

      if (self->_effectivePaletteVisible)
      {
        return;
      }

      paletteView4 = [(PKPaletteHostView *)self paletteView];
      v39 = [paletteView4 edgeLocationToDockFromCorner:4];

      if (v39 != 4)
      {
        goto LABEL_25;
      }
    }

    [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:4 isMinimized:1];
    v53 = v81;
    paletteTopConstraint3 = [(PKPaletteHostView *)self paletteBottomConstraint];
    goto LABEL_57;
  }

  if (position > 2)
  {
    if (position != 3)
    {
      [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:2 isMinimized:0];
      v20 = v19;
      paletteLeftConstraint5 = [(PKPaletteHostView *)self paletteLeftConstraint];
      [paletteLeftConstraint5 setConstant:v20];

      paletteLeftConstraint6 = [(PKPaletteHostView *)self paletteLeftConstraint];
      goto LABEL_14;
    }

    [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:4 isMinimized:0];
    v56 = v55;
    paletteBottomConstraint5 = [(PKPaletteHostView *)self paletteBottomConstraint];
    [paletteBottomConstraint5 setConstant:v56];

    paletteBottomConstraint6 = [(PKPaletteHostView *)self paletteBottomConstraint];
LABEL_28:
    v58 = paletteBottomConstraint6;
    LODWORD(v44) = 1144750080;
    [paletteBottomConstraint6 setPriority:v44];

    goto LABEL_41;
  }

  if (position == 1)
  {
    [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:1 isMinimized:0];
    v41 = v40;
    paletteTopConstraint6 = [(PKPaletteHostView *)self paletteTopConstraint];
    [paletteTopConstraint6 setConstant:v41];

    paletteBottomConstraint6 = [(PKPaletteHostView *)self paletteTopConstraint];
    goto LABEL_28;
  }

  if (position != 2)
  {
    goto LABEL_40;
  }

  [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:8 isMinimized:0];
  v7 = v6;
  paletteRightConstraint5 = [(PKPaletteHostView *)self paletteRightConstraint];
  [paletteRightConstraint5 setConstant:v7];

  paletteLeftConstraint6 = [(PKPaletteHostView *)self paletteRightConstraint];
LABEL_14:
  v22 = paletteLeftConstraint6;
  v23 = 1144750080;
  LODWORD(v10) = 1144750080;
  [paletteLeftConstraint6 setPriority:v10];

  paletteCenterYConstraint = [(PKPaletteHostView *)self paletteCenterYConstraint];
  LODWORD(v25) = 1144750080;
  [paletteCenterYConstraint setPriority:v25];

  paletteView5 = [(PKPaletteHostView *)self paletteView];
  isAutoHideEnabled = [paletteView5 isAutoHideEnabled];

  if (isAutoHideEnabled)
  {
    paletteView6 = [(PKPaletteHostView *)self paletteView];
    autoHideCorner = [paletteView6 autoHideCorner];

    if ((autoHideCorner - 1) > 1)
    {
      if (autoHideCorner != 8 && autoHideCorner != 4)
      {
        v23 = 1132068864;
        goto LABEL_39;
      }

      paletteBottomConstraint7 = [(PKPaletteHostView *)self paletteBottomConstraint];
    }

    else
    {
      paletteBottomConstraint7 = [(PKPaletteHostView *)self paletteTopConstraint];
    }

    paletteCenterYConstraint2 = paletteBottomConstraint7;
    LODWORD(v31) = 1144750080;
    [paletteBottomConstraint7 setPriority:v31];
    v23 = 1132068864;
  }

  else
  {
    paletteCenterYConstraint2 = [(PKPaletteHostView *)self paletteCenterYConstraint];
    [paletteCenterYConstraint2 setConstant:0.0];
  }

LABEL_39:
  paletteCenterYConstraint3 = [(PKPaletteHostView *)self paletteCenterYConstraint];
  LODWORD(v69) = v23;
  [paletteCenterYConstraint3 setPriority:v69];

LABEL_40:
  if ((position & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    return;
  }

LABEL_41:
  paletteView7 = [(PKPaletteHostView *)self paletteView];
  isAutoHideEnabled2 = [paletteView7 isAutoHideEnabled];

  if (isAutoHideEnabled2)
  {
    paletteView8 = [(PKPaletteHostView *)self paletteView];
    autoHideCorner2 = [paletteView8 autoHideCorner];

    if (autoHideCorner2 > 3)
    {
      if (autoHideCorner2 == 8)
      {
LABEL_51:
        paletteRightConstraint6 = [(PKPaletteHostView *)self paletteRightConstraint];
        goto LABEL_52;
      }

      if (autoHideCorner2 != 4)
      {
LABEL_53:
        paletteCenterXConstraint = [(PKPaletteHostView *)self paletteCenterXConstraint];
        LODWORD(v76) = 1132068864;
        goto LABEL_54;
      }
    }

    else if (autoHideCorner2 != 1)
    {
      if (autoHideCorner2 != 2)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    paletteRightConstraint6 = [(PKPaletteHostView *)self paletteLeftConstraint];
LABEL_52:
    v79 = paletteRightConstraint6;
    LODWORD(v78) = 1144750080;
    [paletteRightConstraint6 setPriority:v78];

    goto LABEL_53;
  }

  paletteCenterXConstraint2 = [(PKPaletteHostView *)self paletteCenterXConstraint];
  [paletteCenterXConstraint2 setConstant:0.0];

  paletteCenterXConstraint = [(PKPaletteHostView *)self paletteCenterXConstraint];
  LODWORD(v76) = 1144750080;
LABEL_54:
  v82 = paletteCenterXConstraint;
  [paletteCenterXConstraint setPriority:v76];
LABEL_58:
}

- (void)_paletteWillDockToPosition:(int64_t)position prepareForExpansion:(BOOL)expansion
{
  expansionCopy = expansion;
  [(PKPaletteHostView *)self setPalettePosition:?];
  delegate = [(PKPaletteHostView *)self delegate];
  [delegate hostView:self willDockPaletteToPosition:position prepareForExpansion:expansionCopy];
}

- (void)_paletteDidDockToPosition:(int64_t)position fromUserReposition:(BOOL)reposition
{
  repositionCopy = reposition;
  delegate = [(PKPaletteHostView *)self delegate];
  [delegate hostView:self didDockPaletteToPosition:position];

  if (repositionCopy)
  {
    v9 = +[PKStatisticsManager sharedStatisticsManager];
    paletteView = [(PKPaletteHostView *)self paletteView];
    -[PKStatisticsManager recordPalettePositionChange:type:](v9, position, [paletteView paletteViewType]);
  }
}

- (unint64_t)avoidanceEdgeForPaletteVisualState:(int64_t)state
{
  if (PKIsVisionDevice() || (state - 4) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1C801DC00[state - 4];
  }
}

- (void)_touchDownFeedbackGestureHandler:(id)handler
{
  handlerCopy = handler;
  if ([handlerCopy state] == 1)
  {
    [(PKPaletteHostView *)self layoutIfNeeded];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PKPaletteHostView__touchDownFeedbackGestureHandler___block_invoke;
    v12[3] = &unk_1E82D7148;
    v12[4] = self;
    [(PKPaletteHostView *)self _performAnimated:1 tracking:0 animations:v12 completion:&__block_literal_global_52];
    [(PKPaletteHostView *)self _setPaletteVisualState:3 usingTransition:1];
  }

  else
  {
    v5 = [handlerCopy state] != 3 && objc_msgSend(handlerCopy, "state") != 5 && objc_msgSend(handlerCopy, "state") != 4;
    tapToExpandPaletteFromMinimizedGestureRecognizer = [(PKPaletteHostView *)self tapToExpandPaletteFromMinimizedGestureRecognizer];
    state = [tapToExpandPaletteFromMinimizedGestureRecognizer state];

    panGestureRecognizer = [(PKPaletteHostView *)self panGestureRecognizer];
    if ([panGestureRecognizer state] == 2)
    {
    }

    else
    {
      panGestureRecognizer2 = [(PKPaletteHostView *)self panGestureRecognizer];
      state2 = [panGestureRecognizer2 state];

      v11 = state == 3 || v5;
      if ((v11 & 1) == 0 && state2 != 3)
      {
        [(PKPaletteHostView *)self _dockPaletteToPosition:[(PKPaletteHostView *)self palettePosition] animated:1];
      }
    }
  }
}

uint64_t __54__PKPaletteHostView__touchDownFeedbackGestureHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v12[0] = *MEMORY[0x1E695EFD0];
  v12[1] = v3;
  v12[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v12];

  v4 = [*(a1 + 32) palettePosition];
  if (v4 > 6)
  {
    if (v4 == 7)
    {
      v6 = [*(a1 + 32) paletteRightConstraint];
    }

    else
    {
      if (v4 != 8)
      {
        return [*(a1 + 32) layoutIfNeeded];
      }

      v6 = [*(a1 + 32) paletteLeftConstraint];
    }

    v9 = v6;
    [v6 setConstant:0.0];

    v8 = [*(a1 + 32) paletteBottomConstraint];
    goto LABEL_12;
  }

  if (v4 == 5)
  {
    v5 = [*(a1 + 32) paletteLeftConstraint];
    goto LABEL_9;
  }

  if (v4 == 6)
  {
    v5 = [*(a1 + 32) paletteRightConstraint];
LABEL_9:
    v7 = v5;
    [v5 setConstant:0.0];

    v8 = [*(a1 + 32) paletteTopConstraint];
LABEL_12:
    v10 = v8;
    [v8 setConstant:0.0];
  }

  return [*(a1 + 32) layoutIfNeeded];
}

- (void)_tapToExpandPaletteFromMinimizedGestureHandler:(id)handler
{
  if ([handler state] == 3)
  {
    v4 = [(PKPaletteHostView *)self palettePosition]- 5;
    if (v4 > 3)
    {
      v5 = -1;
    }

    else
    {
      v5 = qword_1C801DC20[v4];
    }

    paletteView = [(PKPaletteHostView *)self paletteView];
    v7 = [paletteView edgeLocationToDockFromCorner:v5];

    if ((v7 - 1) > 7)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_1C801DCF0[v7 - 1];
    }

    [(PKPaletteHostView *)self _dockPaletteToPosition:v8 animated:1];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  _shouldBeCompact = [(PKPaletteHostView *)self _shouldBeCompact];
  panGestureRecognizer = [(PKPaletteHostView *)self panGestureRecognizer];
  v7 = panGestureRecognizer;
  if (_shouldBeCompact)
  {
    if (panGestureRecognizer != beginCopy)
    {
      touchDownFeedbackGestureRecognizer = [(PKPaletteHostView *)self touchDownFeedbackGestureRecognizer];
      v9 = touchDownFeedbackGestureRecognizer;
      if (touchDownFeedbackGestureRecognizer != beginCopy)
      {
        tapToExpandPaletteFromMinimizedGestureRecognizer = [(PKPaletteHostView *)self tapToExpandPaletteFromMinimizedGestureRecognizer];

        if (tapToExpandPaletteFromMinimizedGestureRecognizer == beginCopy)
        {
          goto LABEL_14;
        }

LABEL_17:
        LOBYTE(self) = 1;
        goto LABEL_18;
      }
    }

LABEL_14:
    LOBYTE(self) = 0;
    goto LABEL_18;
  }

  if (v7 == beginCopy)
  {
    paletteView = [(PKPaletteHostView *)self paletteView];
    LOBYTE(self) = [paletteView draggingEnabled];
  }

  else
  {
    touchDownFeedbackGestureRecognizer2 = [(PKPaletteHostView *)self touchDownFeedbackGestureRecognizer];

    if (touchDownFeedbackGestureRecognizer2 == beginCopy)
    {
      LOBYTE(self) = [(PKPaletteHostView *)self isPaletteVisualStateMinimized];
      goto LABEL_18;
    }

    tapToExpandPaletteFromMinimizedGestureRecognizer2 = [(PKPaletteHostView *)self tapToExpandPaletteFromMinimizedGestureRecognizer];

    if (tapToExpandPaletteFromMinimizedGestureRecognizer2 == beginCopy)
    {
      if (![(PKPaletteHostView *)self isPaletteVisualStateMinimized])
      {
        LOBYTE(self) = [(PKPaletteHostView *)self paletteVisualState]== 3;
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    paletteView = [(PKPaletteHostView *)self paletteView];
    LODWORD(self) = [paletteView isPalettePresentingPopover] ^ 1;
  }

LABEL_18:
  return self;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  v17[4] = *MEMORY[0x1E69E9840];
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  panGestureRecognizer = [(PKPaletteHostView *)self panGestureRecognizer];
  v17[0] = panGestureRecognizer;
  tapToExpandPaletteFromMinimizedGestureRecognizer = [(PKPaletteHostView *)self tapToExpandPaletteFromMinimizedGestureRecognizer];
  v17[1] = tapToExpandPaletteFromMinimizedGestureRecognizer;
  touchDownFeedbackGestureRecognizer = [(PKPaletteHostView *)self touchDownFeedbackGestureRecognizer];
  v17[2] = touchDownFeedbackGestureRecognizer;
  paletteView = [(PKPaletteHostView *)self paletteView];
  contentScrollView = [paletteView contentScrollView];
  panGestureRecognizer2 = [contentScrollView panGestureRecognizer];
  v17[3] = panGestureRecognizer2;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];

  LODWORD(panGestureRecognizer) = [v14 containsObject:recognizerCopy];
  if (panGestureRecognizer)
  {
    v15 = [v14 containsObject:gestureRecognizerCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  [(PKPaletteHostView *)self bounds];
  v21.x = x;
  v21.y = y;
  if (!CGRectContainsPoint(v22, v21))
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  paletteView = [(PKPaletteHostView *)self paletteView];
  [(PKPaletteHostView *)self convertPoint:paletteView toView:x, y];
  v10 = v9;
  v12 = v11;

  paletteView2 = [(PKPaletteHostView *)self paletteView];
  v14 = [paletteView2 pointInside:eventCopy withEvent:{v10, v12}];

  if ((v14 & 1) == 0)
  {
    if (eventCopy)
    {
      if ([eventCopy type] != 11)
      {
        paletteView3 = [(PKPaletteHostView *)self paletteView];
        isPalettePresentingPopover = [paletteView3 isPalettePresentingPopover];

        if ((isPalettePresentingPopover & 1) == 0 && ![(PKPaletteHostView *)self _shouldBeCompact])
        {
          paletteView4 = [(PKPaletteHostView *)self paletteView];
          if ([paletteView4 isAutoHideEnabled])
          {
            paletteVisualState = [(PKPaletteHostView *)self paletteVisualState];

            if (paletteVisualState != 2)
            {
              [(PKPaletteHostView *)self _dockPaletteToAutoHideCornerAnimated:1];
            }
          }

          else
          {
          }
        }
      }
    }

    goto LABEL_12;
  }

  v15 = 1;
LABEL_13:

  return v15;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  pK_isEventFromPencil = [eventCopy PK_isEventFromPencil];
  paletteView = [(PKPaletteHostView *)self paletteView];
  isPalettePresentingPopover = [paletteView isPalettePresentingPopover];

  paletteView2 = [(PKPaletteHostView *)self paletteView];
  hasContextMenuVisible = [paletteView2 hasContextMenuVisible];

  type = [eventCopy type];
  if (([(PKPaletteHostView *)self isHidden]& 1) == 0)
  {
    [(PKPaletteHostView *)self alpha];
    if (v14 != 0.0)
    {
      if (([(PKPaletteHostView *)self isPaletteVisible]| isPalettePresentingPopover))
      {
        goto LABEL_4;
      }

LABEL_32:
      pencilInteractionFeedbackHostView = [(PKPaletteHostView *)self pencilInteractionFeedbackHostView];
      [(PKPaletteHostView *)self convertPoint:pencilInteractionFeedbackHostView toView:x, y];
      v29 = v28;
      v31 = v30;

      pencilInteractionFeedbackHostView2 = [(PKPaletteHostView *)self pencilInteractionFeedbackHostView];
      selfCopy = [pencilInteractionFeedbackHostView2 hitTest:eventCopy withEvent:{v29, v31}];

      goto LABEL_33;
    }
  }

  if ((isPalettePresentingPopover & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_4:
  if (![(PKPaletteHostView *)self isPaletteVisible]&& ((isPalettePresentingPopover ^ 1) & 1) == 0 && ((pK_isEventFromPencil ^ 1) & 1) == 0 && type != 11)
  {
    paletteView3 = [(PKPaletteHostView *)self paletteView];
    [paletteView3 dismissPalettePopoverWithCompletion:0];
  }

  v69.receiver = self;
  v69.super_class = PKPaletteHostView;
  v16 = [(PKPaletteHostView *)&v69 hitTest:eventCopy withEvent:x, y];
  selfCopy = v16;
  if (eventCopy)
  {
    if ((isPalettePresentingPopover | hasContextMenuVisible))
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = hasContextMenuVisible;
      }

      if (v18 == 1 && type != 11)
      {
        paletteView4 = [(PKPaletteHostView *)self paletteView];
        [paletteView4 dismissContextMenu];
      }

      v20 = selfCopy ? 0 : pK_isEventFromPencil;
      if ((v20 & 1) == 0 && type != 11)
      {
        if (isPalettePresentingPopover)
        {
          paletteView5 = [(PKPaletteHostView *)self paletteView];
          [paletteView5 dismissPalettePopoverWithCompletion:0];
        }

        if (!((selfCopy != 0) | pK_isEventFromPencil & 1))
        {
          selfCopy = self;
        }

        goto LABEL_33;
      }
    }

    if (selfCopy)
    {
      goto LABEL_33;
    }

    paletteView6 = [(PKPaletteHostView *)self paletteView];
    palettePopoverPresentingController = [paletteView6 palettePopoverPresentingController];
    presentedViewController = [palettePopoverPresentingController presentedViewController];

    if (presentedViewController)
    {
      view = [presentedViewController view];
      v26 = [view hitTest:eventCopy withEvent:{PK_convertRectFromCoordinateSpaceToCoordinateSpace(self, view, x, y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8))}];

      if (v26)
      {
        selfCopy = 0;
LABEL_30:

        goto LABEL_33;
      }
    }

    if (type != 11)
    {
      paletteView7 = [(PKPaletteHostView *)self paletteView];
      [paletteView7 dismissPalettePopoverWithCompletion:0];
    }

    if (![(PKPaletteHostView *)self _shouldBeCompact])
    {
      paletteView8 = [(PKPaletteHostView *)self paletteView];
      if ([paletteView8 isAutoHideEnabled])
      {
        isPaletteVisualStateMinimized = [(PKPaletteHostView *)self isPaletteVisualStateMinimized];

        if (!isPaletteVisualStateMinimized && type != 11)
        {
          [(PKPaletteHostView *)self _dockPaletteToAutoHideCornerAnimated:1];
        }
      }

      else
      {
      }
    }

    paletteView9 = [(PKPaletteHostView *)self paletteView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      paletteView10 = [(PKPaletteHostView *)self paletteView];
      selectedTool = [paletteView10 selectedTool];
      v41 = [selectedTool ink];
      _isHandwritingInk = [v41 _isHandwritingInk];

      selectedTool2 = [paletteView10 selectedTool];
      if ([selectedTool2 _isLassoTool])
      {
      }

      else
      {
        selectedTool3 = [paletteView10 selectedTool];
        _configuration = [selectedTool3 _configuration];
        if (_configuration)
        {
          v46 = _configuration[20];
        }

        else
        {
          v46 = 0;
        }

        if (((_isHandwritingInk | v46) & 1) == 0)
        {
          window = [(PKPaletteHostView *)self window];
          paletteView11 = [(PKPaletteHostView *)self paletteView];
          presentationController = [paletteView11 presentationController];
          view2 = [presentationController view];
          window2 = [view2 window];

          if (window != window2)
          {
            [(PKPaletteHostView *)self convertPoint:0 toView:x, y];
            v53 = v52;
            v55 = v54;
            window3 = [(PKPaletteHostView *)self window];
            paletteView12 = [(PKPaletteHostView *)self paletteView];
            presentationController2 = [paletteView12 presentationController];
            view3 = [presentationController2 view];
            window4 = [view3 window];
            [window3 convertPoint:window4 toWindow:{v53, v55}];
            v62 = v61;
            v64 = v63;

            paletteView13 = [(PKPaletteHostView *)self paletteView];
            presentationController3 = [paletteView13 presentationController];
            view4 = [presentationController3 view];
            window5 = [view4 window];
            selfCopy = [window5 hitTest:eventCopy withEvent:{v62, v64}];

            goto LABEL_30;
          }
        }
      }
    }

    selfCopy = 0;
  }

LABEL_33:

  return selfCopy;
}

- (void)_deactivatePaletteCenterConstraints
{
  paletteCenterXConstraint = [(PKPaletteHostView *)self paletteCenterXConstraint];
  LODWORD(v4) = 1132068864;
  [paletteCenterXConstraint setPriority:v4];

  paletteCenterYConstraint = [(PKPaletteHostView *)self paletteCenterYConstraint];
  LODWORD(v5) = 1132068864;
  [paletteCenterYConstraint setPriority:v5];
}

- (void)_activatePaletteCenterConstraints
{
  paletteCenterXConstraint = [(PKPaletteHostView *)self paletteCenterXConstraint];
  LODWORD(v4) = 1144750080;
  [paletteCenterXConstraint setPriority:v4];

  paletteCenterYConstraint = [(PKPaletteHostView *)self paletteCenterYConstraint];
  LODWORD(v5) = 1144750080;
  [paletteCenterYConstraint setPriority:v5];
}

- (void)_deactivatePaletteEdgeConstraints
{
  paletteTopConstraint = [(PKPaletteHostView *)self paletteTopConstraint];
  LODWORD(v4) = 1132068864;
  [paletteTopConstraint setPriority:v4];

  paletteBottomConstraint = [(PKPaletteHostView *)self paletteBottomConstraint];
  LODWORD(v6) = 1132068864;
  [paletteBottomConstraint setPriority:v6];

  paletteLeftConstraint = [(PKPaletteHostView *)self paletteLeftConstraint];
  LODWORD(v8) = 1132068864;
  [paletteLeftConstraint setPriority:v8];

  paletteRightConstraint = [(PKPaletteHostView *)self paletteRightConstraint];
  LODWORD(v10) = 1132068864;
  [paletteRightConstraint setPriority:v10];

  [(PKPaletteHostView *)self _deactivatePaletteEdgeConstraintsForCompact];
}

- (void)_deactivatePaletteEdgeConstraintsForCompact
{
  [(NSLayoutConstraint *)self->_paletteLeftConstraintInCompact setActive:0];
  paletteRightConstraintInCompact = self->_paletteRightConstraintInCompact;

  [(NSLayoutConstraint *)paletteRightConstraintInCompact setActive:0];
}

- (void)_panGestureHandler:(id)handler
{
  v151 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = objc_opt_class();
  paletteView = [(PKPaletteHostView *)self paletteView];
  v7 = PKDynamicCast(v5, paletteView);

  tools = [v7 tools];
  v9 = [tools count];

  if ([handlerCopy state] == 1)
  {
    tooltipPresentationHandle = [(PKPaletteHostView *)self tooltipPresentationHandle];
    [tooltipPresentationHandle hideFloatingLabel];

    paletteView2 = [(PKPaletteHostView *)self paletteView];
    [(PKPaletteHostView *)self bringSubviewToFront:paletteView2];

    paletteView3 = [(PKPaletteHostView *)self paletteView];
    [paletteView3 center];
    [(PKPaletteHostView *)self setDraggingInitialPaletteCenterInSelf:?];

    [(PKPaletteHostView *)self setPaletteDraggingBehavior:0];
    [(PKPaletteHostView *)self setDraggingPendingPaletteVisualState:0];
    paletteView4 = [(PKPaletteHostView *)self paletteView];
    contentScrollView = [paletteView4 contentScrollView];
    [handlerCopy locationInView:contentScrollView];
    v16 = v15;
    v18 = v17;

    if (v9 > 7)
    {
      paletteView5 = [(PKPaletteHostView *)self paletteView];
      contentScrollView2 = [paletteView5 contentScrollView];
      -[PKPaletteHostView setPanGestureDidStartInPaletteScrollView:](self, "setPanGestureDidStartInPaletteScrollView:", [contentScrollView2 pointInside:0 withEvent:{v16, v18}]);

LABEL_78:
      goto LABEL_79;
    }

    [(PKPaletteHostView *)self setPanGestureDidStartInPaletteScrollView:0];
    goto LABEL_79;
  }

  if ([handlerCopy state] != 2)
  {
    if ([handlerCopy state] != 3 && objc_msgSend(handlerCopy, "state") != 4 && objc_msgSend(handlerCopy, "state") != 5)
    {
      goto LABEL_79;
    }

    if (![(PKPaletteHostView *)self panGestureShouldDragPaletteView])
    {
LABEL_57:
      [(PKPaletteHostView *)self setPanGestureShouldDragPaletteView:1];
      [(PKPaletteHostView *)self setPaletteScrollGestureShouldScroll:v9 > 7];
      paletteView6 = [(PKPaletteHostView *)self paletteView];
      contentScrollView3 = [paletteView6 contentScrollView];
      [contentScrollView3 setScrollEnabled:1];

      goto LABEL_79;
    }

    v139[0] = MEMORY[0x1E69E9820];
    v139[1] = 3221225472;
    v139[2] = __40__PKPaletteHostView__panGestureHandler___block_invoke_3;
    v139[3] = &unk_1E82D7148;
    v139[4] = self;
    [(PKPaletteHostView *)self _performAnimated:1 tracking:0 animations:v139 completion:0];
    [(PKPaletteHostView *)self _projectedLandingPointForGestureRecognizerEnd:handlerCopy];
    v23 = v22;
    v25 = v24;
    layoutMarginsGuide = [(PKPaletteHostView *)self layoutMarginsGuide];
    [layoutMarginsGuide layoutFrame];
    v31 = _PKPaletteVisualStateForPointInRectToSettle(1, v27, v28, v29, v30, v23, v25);

    layoutMarginsGuide2 = [(PKPaletteHostView *)self layoutMarginsGuide];
    [layoutMarginsGuide2 layoutFrame];
    v37 = v33;
    v38 = v34;
    v39 = v35;
    v40 = v36;
    if (v31 == 2)
    {
      MinX = CGRectGetMinX(*&v33);
      v152.origin.x = v37;
      v152.origin.y = v38;
      v152.size.width = v39;
      v152.size.height = v40;
      MinY = CGRectGetMinY(v152);
      v153.origin.x = v37;
      v153.origin.y = v38;
      v153.size.width = v39;
      v153.size.height = v40;
      MaxX = CGRectGetMaxX(v153);
      v154.origin.x = v37;
      v154.origin.y = v38;
      v154.size.width = v39;
      v154.size.height = v40;
      v129 = CGRectGetMinY(v154);
      v155.origin.x = v37;
      v155.origin.y = v38;
      v155.size.width = v39;
      v155.size.height = v40;
      v128 = CGRectGetMaxX(v155);
      v156.origin.x = v37;
      v156.origin.y = v38;
      v156.size.width = v39;
      v156.size.height = v40;
      MaxY = CGRectGetMaxY(v156);
      v157.origin.x = v37;
      v157.origin.y = v38;
      v157.size.width = v39;
      v157.size.height = v40;
      v42 = CGRectGetMinX(v157);
      v158.origin.x = v37;
      v158.origin.y = v38;
      v158.size.width = v39;
      v158.size.height = v40;
      v43 = CGRectGetMaxY(v158);
      v44 = 0;
      v143 = MinX;
      v144 = MinY;
      v145 = MaxX;
      v146 = v129;
      v147 = v128;
      v148 = MaxY;
      v45 = qword_1C801DC20;
      v46 = 1;
      v47 = 3.40282347e38;
      v149 = v42;
      v150 = v43;
      do
      {
        if ((v25 - *(&v143 + v44 + 8)) * (v25 - *(&v143 + v44 + 8)) + (v23 - *(&v143 + v44)) * (v23 - *(&v143 + v44)) < v47)
        {
          v46 = *v45;
          v47 = (v25 - *(&v143 + v44 + 8)) * (v25 - *(&v143 + v44 + 8)) + (v23 - *(&v143 + v44)) * (v23 - *(&v143 + v44));
        }

        v44 += 16;
        ++v45;
      }

      while (v44 != 64);

      v48 = v46 - 1;
      if ((v46 - 1) < 8)
      {
        v49 = qword_1C801DC40;
LABEL_54:
        v78 = v49[v48];
LABEL_56:
        palettePosition = [(PKPaletteHostView *)self palettePosition];
        [(PKPaletteHostView *)self setPalettePosition:v78];
        [(PKPaletteHostView *)self setDraggingPendingPaletteVisualState:0];
        [(PKPaletteHostView *)self _setPaletteVisualState:v31 usingTransition:1];
        [(PKPaletteHostView *)self layoutIfNeeded];
        paletteView7 = [(PKPaletteHostView *)self paletteView];
        [handlerCopy velocityInView:self];
        [paletteView7 responseForThrowingFromPosition:palettePosition toPosition:v78 withVelocity:?];
        v82 = v81;

        paletteView8 = [(PKPaletteHostView *)self paletteView];
        [handlerCopy velocityInView:self];
        [paletteView8 dampingRatioForThrowingFromPosition:palettePosition toPosition:v78 withVelocity:?];
        v85 = v84;

        v138[0] = MEMORY[0x1E69E9820];
        v138[1] = 3221225472;
        v138[2] = __40__PKPaletteHostView__panGestureHandler___block_invoke_4;
        v138[3] = &unk_1E82D7170;
        v138[4] = self;
        v138[5] = v78;
        v137[0] = MEMORY[0x1E69E9820];
        v137[1] = 3221225472;
        v137[2] = __40__PKPaletteHostView__panGestureHandler___block_invoke_5;
        v137[3] = &unk_1E82D9FB8;
        v137[4] = self;
        v137[5] = v78;
        [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:0 response:v138 tracking:v137 dampingRatioSmoothing:v85 responseSmoothing:v82 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
        goto LABEL_57;
      }
    }

    else
    {
      MidX = CGRectGetMidX(*&v33);
      v159.origin.x = v37;
      v159.origin.y = v38;
      v159.size.width = v39;
      v159.size.height = v40;
      v134 = CGRectGetMinY(v159);
      v160.origin.x = v37;
      v160.origin.y = v38;
      v160.size.width = v39;
      v160.size.height = v40;
      v132 = CGRectGetMaxX(v160);
      v161.origin.x = v37;
      v161.origin.y = v38;
      v161.size.width = v39;
      v161.size.height = v40;
      MidY = CGRectGetMidY(v161);
      v162.origin.x = v37;
      v162.origin.y = v38;
      v162.size.width = v39;
      v162.size.height = v40;
      v128 = CGRectGetMidX(v162);
      v163.origin.x = v37;
      v163.origin.y = v38;
      v163.size.width = v39;
      v163.size.height = v40;
      v71 = CGRectGetMaxY(v163);
      v164.origin.x = v37;
      v164.origin.y = v38;
      v164.size.width = v39;
      v164.size.height = v40;
      v72 = CGRectGetMinX(v164);
      v165.origin.x = v37;
      v165.origin.y = v38;
      v165.size.width = v39;
      v165.size.height = v40;
      v73 = CGRectGetMidY(v165);
      v74 = 0;
      v143 = MidX;
      v144 = v134;
      v145 = v132;
      v146 = MidY;
      v147 = v128;
      v148 = v71;
      v75 = &qword_1C801DB30;
      v76 = 1;
      v77 = 3.40282347e38;
      v149 = v72;
      v150 = v73;
      do
      {
        if ((v25 - *(&v143 + v74 + 8)) * (v25 - *(&v143 + v74 + 8)) + (v23 - *(&v143 + v74)) * (v23 - *(&v143 + v74)) < v77)
        {
          v76 = *v75;
          v77 = (v25 - *(&v143 + v74 + 8)) * (v25 - *(&v143 + v74 + 8)) + (v23 - *(&v143 + v74)) * (v23 - *(&v143 + v74));
        }

        v74 += 16;
        ++v75;
      }

      while (v74 != 64);

      v48 = v76 - 1;
      if ((v76 - 1) < 8)
      {
        v49 = qword_1C801DCF0;
        goto LABEL_54;
      }
    }

    v78 = 0;
    goto LABEL_56;
  }

  if (v9 >= 8 && ([(PKPaletteHostView *)self palettePosition]- 5) >= 4 && [(PKPaletteHostView *)self panGestureDidStartInPaletteScrollView])
  {
    v21 = [(PKPaletteHostView *)self paletteScrollGestureShouldScroll]^ 1;
  }

  else
  {
    v21 = 1;
  }

  [(PKPaletteHostView *)self setPanGestureShouldDragPaletteView:v21];
  if ([(PKPaletteHostView *)self panGestureDidStartInPaletteScrollView])
  {
    paletteView9 = [(PKPaletteHostView *)self paletteView];
    contentScrollView4 = [paletteView9 contentScrollView];
    [handlerCopy translationInView:contentScrollView4];
    v53 = v52;
    v55 = v54;

    paletteView10 = [(PKPaletteHostView *)self paletteView];
    contentScrollView5 = [paletteView10 contentScrollView];
    [handlerCopy velocityInView:contentScrollView5];
    v59 = v58;
    v61 = v60;

    v62 = [(PKPaletteHostView *)self palettePosition]& 0xFFFFFFFFFFFFFFFDLL;
    if (v55 < 0.0)
    {
      v55 = -v55;
    }

    v64 = v55 > 20.0 && v62 == 1;
    palettePosition2 = [(PKPaletteHostView *)self palettePosition];
    v67 = palettePosition2 == 2 || palettePosition2 == 4;
    if (v53 < 0.0)
    {
      v53 = -v53;
    }

    v68 = v53 > 20.0 && v67;
    if (([(PKPaletteHostView *)self palettePosition]& 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v69 = -v59;
      if (v59 >= 0.0)
      {
        v69 = v59;
      }

      v70 = v69 > 4500.0 || v53 > 250.0;
    }

    else
    {
      v70 = 0;
    }

    palettePosition3 = [(PKPaletteHostView *)self palettePosition];
    if (palettePosition3 == 4 || palettePosition3 == 2)
    {
      v89 = -v61;
      if (v61 >= 0.0)
      {
        v89 = v61;
      }

      if (v89 > 4500.0)
      {
        goto LABEL_68;
      }

      v90 = v55 > 250.0;
    }

    else
    {
      v90 = 0;
    }

    if (v64 || v68 || v70 || v90)
    {
LABEL_68:
      [(PKPaletteHostView *)self setPanGestureShouldDragPaletteView:1];
      [(PKPaletteHostView *)self setPaletteScrollGestureShouldScroll:0];
      paletteView11 = [(PKPaletteHostView *)self paletteView];
      contentScrollView6 = [paletteView11 contentScrollView];
      [contentScrollView6 contentOffset];
      v94 = v93;
      v96 = v95;

      paletteView12 = [(PKPaletteHostView *)self paletteView];
      contentScrollView7 = [paletteView12 contentScrollView];
      [contentScrollView7 setScrollEnabled:0];

      paletteView13 = [(PKPaletteHostView *)self paletteView];
      contentScrollView8 = [paletteView13 contentScrollView];
      [contentScrollView8 setContentOffset:{v94, v96}];
    }
  }

  if ([(PKPaletteHostView *)self panGestureShouldDragPaletteView])
  {
    [handlerCopy locationInView:self];
    v102 = v101;
    v104 = v103;
    [(PKPaletteHostView *)self bounds];
    [(PKPaletteHostView *)self _scheduleDraggingTransitionToVisualState:_PKPaletteVisualStateForPointInRectToSettle(0, v105, v106, v107, v108, v102, v104)];
    [handlerCopy translationInView:self];
    v110 = v109;
    v112 = v111;
    [(PKPaletteHostView *)self draggingInitialPaletteCenterInSelf];
    v114 = v113;
    [(PKPaletteHostView *)self draggingInitialPaletteCenterInSelf];
    v116 = v115;
    paletteDraggingBehavior = [(PKPaletteHostView *)self paletteDraggingBehavior];
    [(PKPaletteHostView *)self bounds];
    v118 = CGRectGetMidX(v166);
    [(PKPaletteHostView *)self bounds];
    v119 = CGRectGetMidY(v167);
    paletteTransition = [(PKPaletteHostView *)self paletteTransition];
    intermediateVisualState = [paletteTransition intermediateVisualState];
    if ((intermediateVisualState - 4) < 4 || intermediateVisualState == 1)
    {
      v122 = v112 + v116;
      if (paletteDraggingBehavior)
      {
        v122 = v104;
      }

      v123 = v122 - v119;
      v124 = v110 + v114;
      if (paletteDraggingBehavior)
      {
        v124 = v102;
      }

      v125 = v124 - v118;
    }

    else
    {

      [(PKPaletteHostView *)self setPaletteDraggingBehavior:1];
      [(PKPaletteHostView *)self bounds];
      v125 = v102 - CGRectGetMidX(v168);
      [(PKPaletteHostView *)self bounds];
      v123 = v104 - CGRectGetMidY(v169);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__PKPaletteHostView__panGestureHandler___block_invoke;
    aBlock[3] = &unk_1E82D9F90;
    aBlock[4] = self;
    *&aBlock[5] = v125;
    *&aBlock[6] = v123;
    v126 = _Block_copy(aBlock);
    [(PKPaletteHostView *)self layoutIfNeeded];
    v127 = MEMORY[0x1E69DD250];
    v140[0] = MEMORY[0x1E69E9820];
    v140[1] = 3221225472;
    v140[2] = __40__PKPaletteHostView__panGestureHandler___block_invoke_2;
    v140[3] = &unk_1E82D6F70;
    v141 = v126;
    paletteView5 = v126;
    [v127 _animateUsingSpringWithDampingRatio:1 response:v140 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.15 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];

    goto LABEL_78;
  }

LABEL_79:
}

uint64_t __40__PKPaletteHostView__panGestureHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _activatePaletteCenterConstraints];
  [*(a1 + 32) _deactivatePaletteEdgeConstraints];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) paletteCenterXConstraint];
  [v3 setConstant:v2];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) paletteCenterYConstraint];
  [v5 setConstant:v4];

  v6 = *(a1 + 32);

  return [v6 layoutIfNeeded];
}

void __40__PKPaletteHostView__panGestureHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  v3 = [v2 contentScrollView];
  v4 = [*(a1 + 32) paletteView];
  v5 = [v4 contentScrollView];
  [v5 contentOffset];
  [v3 _pk_closestContentOffsetFromOffset:?];
  v7 = v6;
  v9 = v8;

  v11 = [*(a1 + 32) paletteView];
  v10 = [v11 contentScrollView];
  [v10 setContentOffset:0 animated:{v7, v9}];
}

uint64_t __40__PKPaletteHostView__panGestureHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [*(a1 + 32) _updateConstraintsToDockPaletteToPosition:?];
  }

  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __40__PKPaletteHostView__panGestureHandler___block_invoke_5(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    return [*(result + 32) _paletteDidDockToPosition:v1 fromUserReposition:1];
  }

  return result;
}

- (void)_scheduleDraggingTransitionToVisualState:(int64_t)state
{
  if ([(PKPaletteHostView *)self draggingPendingPaletteVisualState]!= state)
  {
    [(PKPaletteHostView *)self setDraggingPendingPaletteVisualState:state];
    if ((state - 4) < 4 || state == 1)
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__processPendingDraggingTransition object:0];

      [(PKPaletteHostView *)self performSelector:sel__processPendingDraggingTransition withObject:0 afterDelay:0.3];
    }

    else
    {

      [(PKPaletteHostView *)self _processPendingDraggingTransition];
    }
  }
}

- (void)_processPendingDraggingTransition
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__processPendingDraggingTransition object:0];
  draggingPendingPaletteVisualState = [(PKPaletteHostView *)self draggingPendingPaletteVisualState];
  if (draggingPendingPaletteVisualState)
  {

    [(PKPaletteHostView *)self _setPaletteVisualState:draggingPendingPaletteVisualState usingTransition:1];
  }
}

- (CGPoint)_projectedLandingPointForGestureRecognizerEnd:(id)end
{
  v51[4] = *MEMORY[0x1E69E9840];
  endCopy = end;
  layoutMarginsGuide = [(PKPaletteHostView *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  v45 = v7;
  v46 = v6;
  v43 = v9;
  v44 = v8;

  [endCopy locationInView:self];
  v11 = v10;
  v13 = v12;
  [endCopy velocityInView:self];
  v15 = v14;
  v17 = v16;
  v18 = sqrt(v16 * v16 + v15 * v15);
  v19 = [(PKPaletteHostView *)self paletteVisualState]- 1;
  if (v19 > 6)
  {
    v20 = 1350.0;
  }

  else
  {
    v20 = dbl_1C801DC80[v19];
  }

  if (v18 >= v20)
  {
    v21 = v13 + v17 * (1.0 / v18);
    v54.origin.x = v46;
    v54.origin.y = v45;
    v54.size.width = v44;
    v54.size.height = v43;
    MinX = CGRectGetMinX(v54);
    v55.origin.x = v46;
    v55.origin.y = v45;
    v55.size.width = v44;
    v55.size.height = v43;
    *v51 = MinX;
    v51[1] = CGRectGetMinY(v55);
    v56.origin.x = v46;
    v56.origin.y = v45;
    v56.size.width = v44;
    v56.size.height = v43;
    MaxX = CGRectGetMaxX(v56);
    v57.origin.x = v46;
    v57.origin.y = v45;
    v57.size.width = v44;
    v57.size.height = v43;
    *&v51[2] = MaxX;
    v51[3] = CGRectGetMinY(v57);
    v58.origin.x = v46;
    v58.origin.y = v45;
    v58.size.width = v44;
    v58.size.height = v43;
    v24 = CGRectGetMaxX(v58);
    v59.origin.x = v46;
    v59.origin.y = v45;
    v59.size.width = v44;
    v59.size.height = v43;
    *v50 = v24;
    v50[1] = CGRectGetMinY(v59);
    v60.origin.x = v46;
    v60.origin.y = v45;
    v60.size.width = v44;
    v60.size.height = v43;
    v25 = CGRectGetMaxX(v60);
    v61.origin.x = v46;
    v61.origin.y = v45;
    v61.size.width = v44;
    v61.size.height = v43;
    *&v50[2] = v25;
    v50[3] = CGRectGetMaxY(v61);
    v62.origin.x = v46;
    v62.origin.y = v45;
    v62.size.width = v44;
    v62.size.height = v43;
    v26 = CGRectGetMinX(v62);
    v63.origin.x = v46;
    v63.origin.y = v45;
    v63.size.width = v44;
    v63.size.height = v43;
    *v49 = v26;
    v49[1] = CGRectGetMaxY(v63);
    v64.origin.x = v46;
    v64.origin.y = v45;
    v64.size.width = v44;
    v64.size.height = v43;
    v27 = CGRectGetMaxX(v64);
    v65.origin.x = v46;
    v65.origin.y = v45;
    v65.size.width = v44;
    v65.size.height = v43;
    *&v49[2] = v27;
    v49[3] = CGRectGetMaxY(v65);
    v66.origin.x = v46;
    v66.origin.y = v45;
    v66.size.width = v44;
    v66.size.height = v43;
    v28 = CGRectGetMinX(v66);
    v67.origin.x = v46;
    v67.origin.y = v45;
    v67.size.width = v44;
    v67.size.height = v43;
    *v48 = v28;
    v48[1] = CGRectGetMinY(v67);
    v68.origin.x = v46;
    v68.origin.y = v45;
    v68.size.width = v44;
    v68.size.height = v43;
    v29 = CGRectGetMinX(v68);
    v69.origin.x = v46;
    v69.origin.y = v45;
    v69.size.width = v44;
    v69.size.height = v43;
    v30 = 0;
    *&v48[2] = v29;
    v48[3] = CGRectGetMaxY(v69);
    v47[0] = v51;
    v47[1] = v50;
    v47[2] = v49;
    v47[3] = v48;
    v31 = v11 + v15 * (1.0 / v18) - v11;
    v32 = v21 - v13;
    while (1)
    {
      v33 = v47[v30];
      v34 = ((v11 - *v33) * (v33[3] - v33[1]) + (v33[1] - v13) * (v33[2] - *v33)) / ((v33[3] - v33[1]) * -v31 + v32 * (v33[2] - *v33));
      if (v34 >= 0.0)
      {
        v35 = v13 + v34 * v32;
        v36 = v11 + v34 * v31;
        v70.origin.y = v45;
        v70.origin.x = v46;
        v70.size.height = v43;
        v70.size.width = v44;
        v71 = CGRectInset(v70, -0.1, -0.1);
        v53.x = v36;
        v53.y = v35;
        if (CGRectContainsPoint(v71, v53))
        {
          break;
        }
      }

      if (++v30 == 4)
      {
        v35 = v13;
        v36 = v11;
        break;
      }
    }

    v13 = v35;
    v11 = v36;
  }

  _PKPaletteClosestReferencePointFromPointInRect(v46, v45, v44, v43, v11, v13);
  v38 = v37;
  v40 = v39;

  v41 = v38;
  v42 = v40;
  result.y = v42;
  result.x = v41;
  return result;
}

- (void)transitionIntermediateVisualStateDidChange:(id)change
{
  [(PKPaletteHostView *)self _updatePaletteSizeAnimated:1];
  [(PKPaletteHostView *)self _updateToolPreviewMinimizedStateAnimated:1];

  [(PKPaletteHostView *)self _updatePaletteAppearanceAnimated:1];
}

- (void)_performAnimated:(BOOL)animated tracking:(BOOL)tracking animations:(id)animations completion:(id)completion
{
  trackingCopy = tracking;
  animatedCopy = animated;
  animationsCopy = animations;
  completionCopy = completion;
  v11 = completionCopy;
  if (animatedCopy)
  {
    if (trackingCopy)
    {
      v12 = 0.86;
    }

    else
    {
      v12 = 0.845;
    }

    if (trackingCopy)
    {
      v13 = 0.15;
    }

    else
    {
      v13 = 0.531;
    }

    v14 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__PKPaletteHostView__performAnimated_tracking_animations_completion___block_invoke;
    v15[3] = &unk_1E82D9FE0;
    v16 = completionCopy;
    [v14 _animateUsingSpringWithDampingRatio:trackingCopy response:animationsCopy tracking:v15 dampingRatioSmoothing:v12 responseSmoothing:v13 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  }

  else
  {
    [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:animationsCopy];
    if (v11)
    {
      v11[2](v11, 1);
    }
  }
}

uint64_t __69__PKPaletteHostView__performAnimated_tracking_animations_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateToolPreviewMinimizedStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  paletteVisualState = [(PKPaletteHostView *)self paletteVisualState];
  paletteTransition = [(PKPaletteHostView *)self paletteTransition];
  isTransitionInProgress = [paletteTransition isTransitionInProgress];

  if (isTransitionInProgress)
  {
    paletteTransition2 = [(PKPaletteHostView *)self paletteTransition];
    paletteVisualState = [paletteTransition2 intermediateVisualState];
  }

  paletteView = [(PKPaletteHostView *)self paletteView];
  [paletteView setToolPreviewMinimized:paletteVisualState == 2 animated:animatedCopy];
}

- (void)_updateToolPreviewRotationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  paletteTransition = [(PKPaletteHostView *)self paletteTransition];
  isTransitionInProgress = [paletteTransition isTransitionInProgress];

  if (isTransitionInProgress)
  {
    paletteTransition2 = [(PKPaletteHostView *)self paletteTransition];
    pointingDirection = [paletteTransition2 pointingDirection];

    v9 = 1.57079633;
    if (pointingDirection != 2)
    {
      v9 = 0.0;
    }

    v10 = pointingDirection == 1;
  }

  else
  {
    paletteVisualState = [(PKPaletteHostView *)self paletteVisualState];
    v9 = 1.57079633;
    if (paletteVisualState != 6)
    {
      v9 = 0.0;
    }

    v10 = paletteVisualState == 7;
  }

  if (v10)
  {
    v12 = -1.57079633;
  }

  else
  {
    v12 = v9;
  }

  if (animatedCopy)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__PKPaletteHostView__updateToolPreviewRotationAnimated___block_invoke;
    v16[3] = &unk_1E82D7170;
    v16[4] = self;
    *&v16[5] = v12;
    [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:0 response:v16 tracking:&__block_literal_global_63_0 dampingRatioSmoothing:0.845 responseSmoothing:0.431 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  }

  else
  {
    paletteView = [(PKPaletteHostView *)self paletteView];
    toolPreviewView = [paletteView toolPreviewView];
    CGAffineTransformMakeRotation(&v15, v12);
    [toolPreviewView setTransform:&v15];
  }
}

void __56__PKPaletteHostView__updateToolPreviewRotationAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paletteView];
  v3 = [v2 toolPreviewView];
  CGAffineTransformMakeRotation(&v5, *(a1 + 40));
  [v3 setTransform:&v5];

  v4 = [*(a1 + 32) paletteTransition];
  [v4 paletteDidBeginRotationAnimation];
}

- (void)_updatePaletteSizeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  paletteVisualState = [(PKPaletteHostView *)self paletteVisualState];
  paletteTransition = [(PKPaletteHostView *)self paletteTransition];
  isTransitionInProgress = [paletteTransition isTransitionInProgress];

  if (isTransitionInProgress)
  {
    paletteTransition2 = [(PKPaletteHostView *)self paletteTransition];
    paletteVisualState = [paletteTransition2 intermediateVisualState];

    if (paletteVisualState == 3)
    {
      paletteTransition3 = [(PKPaletteHostView *)self paletteTransition];
      pointingDirection = [paletteTransition3 pointingDirection];

      v11 = dbl_1C801DB20[(pointingDirection - 1) < 2];
      paletteVisualState = 3;
LABEL_9:
      if (([(PKPaletteHostView *)self palettePosition]- 5) > 3)
      {
        goto LABEL_19;
      }

      palettePosition = [(PKPaletteHostView *)self palettePosition];
      selfCopy5 = self;
      v14 = 0;
      goto LABEL_18;
    }
  }

  v11 = 0.531;
  if (paletteVisualState > 4)
  {
    if (paletteVisualState != 5)
    {
      if (paletteVisualState == 6)
      {
        selfCopy5 = self;
        palettePosition = 4;
      }

      else
      {
        if (paletteVisualState != 7)
        {
          goto LABEL_19;
        }

        selfCopy5 = self;
        palettePosition = 2;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if ((paletteVisualState - 2) < 2)
    {
      goto LABEL_9;
    }

    if (paletteVisualState != 1)
    {
      if (paletteVisualState != 4)
      {
        goto LABEL_19;
      }

      selfCopy5 = self;
      palettePosition = 1;
      goto LABEL_17;
    }
  }

  selfCopy5 = self;
  palettePosition = 3;
LABEL_17:
  v14 = 1;
LABEL_18:
  [(PKPaletteHostView *)selfCopy5 _paletteWillDockToPosition:palettePosition prepareForExpansion:v14];
LABEL_19:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PKPaletteHostView__updatePaletteSizeAnimated___block_invoke;
  aBlock[3] = &unk_1E82D7170;
  aBlock[4] = self;
  aBlock[5] = paletteVisualState;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (animatedCopy)
  {
    [(PKPaletteHostView *)self layoutIfNeeded];
    v17 = MEMORY[0x1E69DD250];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __48__PKPaletteHostView__updatePaletteSizeAnimated___block_invoke_2;
    v18[3] = &unk_1E82D7908;
    v18[4] = self;
    v19 = v16;
    [v17 _animateUsingSpringWithDampingRatio:0 response:v18 tracking:&__block_literal_global_65_0 dampingRatioSmoothing:0.845 responseSmoothing:v11 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  }

  else
  {
    (*(v15 + 2))(v15);
  }
}

void __48__PKPaletteHostView__updatePaletteSizeAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _paletteSizeForVisualState:*(a1 + 40)];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) paletteWidthConstraint];
  [v6 setConstant:v3];

  v7 = [*(a1 + 32) paletteHeightConstraint];
  [v7 setConstant:v5];

  v8 = *(a1 + 40) - 1;
  if (v8 <= 6 && ((0x79u >> v8) & 1) != 0)
  {
    v9 = qword_1C801DCB8[v8];
    v10 = [*(a1 + 32) paletteView];
    [v10 configureForDockedAtEdge:v9];
  }

  else
  {
    v10 = [*(a1 + 32) paletteView];
    [v10 configureForDockedAtCorner];
  }
}

uint64_t __48__PKPaletteHostView__updatePaletteSizeAnimated___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) paletteTransition];
  [v2 paletteDidBeginResizingAnimation];

  v3 = *(a1 + 32);

  return [v3 layoutIfNeeded];
}

- (CGSize)_paletteSizeForVisualState:(int64_t)state
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  if (state <= 3)
  {
    switch(state)
    {
      case 1:
        paletteView = [(PKPaletteHostView *)self paletteView];
        [paletteView paletteSizeForEdge:4];
        v4 = v10;

        [(PKPaletteHostView *)self _paletteViewCompactHeight];
        v5 = v11;
        break;
      case 2:
        paletteView2 = [(PKPaletteHostView *)self paletteView];
        [paletteView2 minimizedPaletteSize];
        goto LABEL_16;
      case 3:
        paletteView3 = [(PKPaletteHostView *)self paletteView];
        [paletteView3 paletteSizeForEdge:4];
        v5 = v8;

        v4 = v5;
        break;
    }
  }

  else
  {
    if (state <= 5)
    {
      if (state == 4)
      {
        v6 = 1;
      }

      else
      {
        v6 = 4;
      }

      goto LABEL_15;
    }

    if (state == 6)
    {
      v6 = 2;
      goto LABEL_15;
    }

    if (state == 7)
    {
      v6 = 8;
LABEL_15:
      paletteView2 = [(PKPaletteHostView *)self paletteView];
      [paletteView2 paletteSizeForEdge:v6];
LABEL_16:
      v4 = v13;
      v5 = v14;
    }
  }

  v15 = v4;
  v16 = v5;
  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)_isPaletteAnimating
{
  paletteTransition = [(PKPaletteHostView *)self paletteTransition];
  isTransitionInProgress = [paletteTransition isTransitionInProgress];

  return isTransitionInProgress;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  interactionCopy = interaction;
  animatorCopy = animator;
  if ([(PKPaletteHostView *)self isPaletteVisualStateMinimized])
  {
    view = [interactionCopy view];
    CGAffineTransformMakeScale(&v14, 1.15, 1.15);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v13 = v14;
    v11[2] = __65__PKPaletteHostView_pointerInteraction_willEnterRegion_animator___block_invoke;
    v11[3] = &unk_1E82DA028;
    v12 = view;
    v10 = view;
    [animatorCopy addAnimations:v11];
  }
}

void __65__PKPaletteHostView_pointerInteraction_willEnterRegion_animator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) paletteView];
  [v1 setTransform:&v2];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  view = [interaction view];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PKPaletteHostView_pointerInteraction_willExitRegion_animator___block_invoke;
  v9[3] = &unk_1E82D7148;
  v10 = view;
  v8 = view;
  [animatorCopy addAnimations:v9];
}

void __64__PKPaletteHostView_pointerInteraction_willExitRegion_animator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) paletteView];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v3[0] = *MEMORY[0x1E695EFD0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v1 setTransform:v3];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v16.receiver = self;
  v16.super_class = PKPaletteHostView;
  [(PKPaletteHostView *)&v16 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPaletteHostView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(PKPaletteHostView *)self traitCollection];
    horizontalSizeClass = [traitCollection2 horizontalSizeClass];
    horizontalSizeClass2 = [changeCopy horizontalSizeClass];

    if (horizontalSizeClass == horizontalSizeClass2)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  [(PKPaletteHostView *)self _updatePaletteViewSizeConstraints];
  if ([(PKPaletteHostView *)self _shouldBeCompact])
  {
    [(PKPaletteHostView *)self setLastNonCompactPalettePosition:[(PKPaletteHostView *)self palettePosition]];
    v10 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__PKPaletteHostView_traitCollectionDidChange___block_invoke;
    v15[3] = &unk_1E82D7148;
    v15[4] = self;
    v11 = v15;
  }

  else
  {
    lastNonCompactPalettePosition = [(PKPaletteHostView *)self lastNonCompactPalettePosition];
    v13 = 3;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__PKPaletteHostView_traitCollectionDidChange___block_invoke_2;
    v14[3] = &unk_1E82D7170;
    if (lastNonCompactPalettePosition)
    {
      v13 = lastNonCompactPalettePosition;
    }

    v14[4] = self;
    v14[5] = v13;
    v11 = v14;
    v10 = MEMORY[0x1E69DD250];
  }

  [v10 _performWithoutRetargetingAnimations:v11];
LABEL_11:
  [(PKPaletteHostView *)self _updatePaletteAppearanceAnimated:1];
}

uint64_t __46__PKPaletteHostView_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _fixToBottomEdge];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (BOOL)_shouldBeCompact
{
  traitCollection = [(PKPaletteHostView *)self traitCollection];
  window = [(PKPaletteHostView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

  return v6;
}

- (void)paletteViewShowFeedbackForToolChange:(id)change
{
  [(PKPaletteHostView *)self _installPencilInteractionFeedbackHostViewIfNeeded];
  pencilInteractionFeedbackHostView = [(PKPaletteHostView *)self pencilInteractionFeedbackHostView];
  window = [(PKPaletteHostView *)self window];
  traitCollection = [window traitCollection];
  [pencilInteractionFeedbackHostView setOverrideUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  pencilInteractionFeedbackHostView2 = [(PKPaletteHostView *)self pencilInteractionFeedbackHostView];
  [pencilInteractionFeedbackHostView2 showFeedbackForCurrentlySelectedToolInPaletteView];
}

- (void)paletteViewReturnKeyTypeDidChange:(id)change
{
  changeCopy = change;
  if (([changeCopy palettePosition] - 5) <= 3 && objc_msgSend(changeCopy, "shouldExpandFromCorner"))
  {
    paletteView = [(PKPaletteHostView *)self paletteView];
    paletteView2 = [(PKPaletteHostView *)self paletteView];
    v6 = [paletteView edgeLocationToDockFromCorner:{objc_msgSend(paletteView2, "autoHideCorner")}];

    if ((v6 - 1) > 7)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_1C801DCF0[v6 - 1];
    }

    [(PKPaletteHostView *)self _dockPaletteToPosition:v7 animated:[(PKPaletteHostView *)self isPaletteVisible]];
  }
}

- (void)paletteViewStateDidChange:(id)change updatePaletteAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  [(PKPaletteHostView *)self _updatePaletteViewSizeConstraints];
  if (appearanceCopy)
  {

    [(PKPaletteHostView *)self _updatePaletteAppearanceAnimated:1];
  }
}

- (void)paletteViewStateDidChangeScaleFactor:(id)factor
{
  [(PKPaletteHostView *)self _updatePaletteViewSizeConstraints];
  palettePosition = [(PKPaletteHostView *)self palettePosition];

  [(PKPaletteHostView *)self _updateConstraintsToDockPaletteToPosition:palettePosition];
}

- (void)paletteViewStateDidChangeAutoHide:(id)hide
{
  if ([hide isAutoHideEnabled])
  {

    [(PKPaletteHostView *)self _dockPaletteToAutoHideCornerAnimated:1];
  }

  else
  {
    paletteView = [(PKPaletteHostView *)self paletteView];
    paletteView2 = [(PKPaletteHostView *)self paletteView];
    v6 = [paletteView edgeLocationToDockFromCorner:{objc_msgSend(paletteView2, "autoHideCorner")}];

    if ((v6 - 1) > 7)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_1C801DCF0[v6 - 1];
    }

    [(PKPaletteHostView *)self _dockPaletteToPosition:v7 animated:1];
  }
}

- (id)paletteBorderColor
{
  paletteView = [(PKPaletteHostView *)self paletteView];
  window = [(PKPaletteHostView *)self window];
  traitCollection = [window traitCollection];
  v6 = [paletteView borderColorForTraitCollection:traitCollection];

  return v6;
}

- (CGSize)paletteShadowOffset
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)paletteShadowOpacity
{
  paletteView = [(PKPaletteHostView *)self paletteView];
  [paletteView shadowOpacity];
  v4 = v3;

  return v4;
}

- (double)paletteShadowRadius
{
  paletteView = [(PKPaletteHostView *)self paletteView];
  [paletteView shadowRadius];
  v4 = v3;

  return v4;
}

- (double)paletteBorderWidth
{
  paletteView = [(PKPaletteHostView *)self paletteView];
  window = [(PKPaletteHostView *)self window];
  traitCollection = [window traitCollection];
  [paletteView borderWidthForTraitCollection:traitCollection];
  v7 = v6;

  return v7;
}

- (PKPaletteHostViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)draggingInitialPaletteCenterInSelf
{
  x = self->_draggingInitialPaletteCenterInSelf.x;
  y = self->_draggingInitialPaletteCenterInSelf.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
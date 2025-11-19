@interface PKPaletteHostView
- (BOOL)_isPaletteAnimating;
- (BOOL)_shouldBeCompact;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isPaletteDragging;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)_projectedLandingPointForGestureRecognizerEnd:(id)a3;
- (CGPoint)draggingInitialPaletteCenterInSelf;
- (CGSize)_paletteSizeForVisualState:(int64_t)a3;
- (CGSize)paletteShadowOffset;
- (PKPaletteHostView)initWithPaletteView:(id)a3;
- (PKPaletteHostViewDelegate)delegate;
- (double)_bottomEdgeSpacingInCompact;
- (double)_paletteEdgeMarginForEdge:(unint64_t)a3 isMinimized:(BOOL)a4;
- (double)_paletteViewCompactHeight;
- (double)paletteBorderWidth;
- (double)paletteShadowOpacity;
- (double)paletteShadowRadius;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)paletteBorderColor;
- (unint64_t)avoidanceEdgeForPaletteVisualState:(int64_t)a3;
- (void)_activatePaletteCenterConstraints;
- (void)_cancelPanGestureIfNecessary;
- (void)_deactivatePaletteCenterConstraints;
- (void)_deactivatePaletteEdgeConstraints;
- (void)_deactivatePaletteEdgeConstraintsForCompact;
- (void)_dockPaletteToAutoHideCornerAnimated:(BOOL)a3;
- (void)_dockPaletteToPosition:(int64_t)a3 isFromUserReposition:(BOOL)a4 animated:(BOOL)a5;
- (void)_fixToBottomEdge;
- (void)_installPencilInteractionFeedbackHostViewIfNeeded;
- (void)_paletteDidDockToPosition:(int64_t)a3 fromUserReposition:(BOOL)a4;
- (void)_paletteWillDockToPosition:(int64_t)a3 prepareForExpansion:(BOOL)a4;
- (void)_panGestureHandler:(id)a3;
- (void)_performAnimated:(BOOL)a3 tracking:(BOOL)a4 animations:(id)a5 completion:(id)a6;
- (void)_processPendingDraggingTransition;
- (void)_scheduleDraggingTransitionToVisualState:(int64_t)a3;
- (void)_setPaletteVisualState:(int64_t)a3 usingTransition:(BOOL)a4;
- (void)_tapToExpandPaletteFromMinimizedGestureHandler:(id)a3;
- (void)_touchDownFeedbackGestureHandler:(id)a3;
- (void)_updateConstraintsToDockPaletteToPosition:(int64_t)a3;
- (void)_updateConstraintsToFixToBottomEdge;
- (void)_updatePaletteAppearanceAnimated:(BOOL)a3;
- (void)_updatePaletteContentAlpha;
- (void)_updatePaletteHeightConstraint;
- (void)_updatePaletteSizeAnimated:(BOOL)a3;
- (void)_updatePaletteViewSizeConstraints;
- (void)_updateToolPreviewMinimizedStateAnimated:(BOOL)a3;
- (void)_updateToolPreviewRotationAnimated:(BOOL)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)paletteViewReturnKeyTypeDidChange:(id)a3;
- (void)paletteViewShowFeedbackForToolChange:(id)a3;
- (void)paletteViewStateDidChange:(id)a3 updatePaletteAppearance:(BOOL)a4;
- (void)paletteViewStateDidChangeAutoHide:(id)a3;
- (void)paletteViewStateDidChangeScaleFactor:(id)a3;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)safeAreaInsetsDidChange;
- (void)setPaletteViewBottomEdgeSpacing:(double)a3;
- (void)setPaletteVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionIntermediateVisualStateDidChange:(id)a3;
- (void)updateKeyboardAvoidanceForPalette:(BOOL)a3;
@end

@implementation PKPaletteHostView

- (PKPaletteHostView)initWithPaletteView:(id)a3
{
  v134[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v129.receiver = self;
  v129.super_class = PKPaletteHostView;
  v6 = [(PKPaletteHostView *)&v129 init];
  if (v6)
  {
    obj = a3;
    v128 = v5;
    v7 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    paletteViewLayoutGuide = v6->_paletteViewLayoutGuide;
    v6->_paletteViewLayoutGuide = v7;

    [(PKPaletteHostView *)v6 addLayoutGuide:v6->_paletteViewLayoutGuide];
    if (PKIsVisionDevice() && ([MEMORY[0x1E696AAE8] mainBundle], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "bundleIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"com.apple.freeform"), v10, v9, (v11 & 1) == 0))
    {
      v123 = MEMORY[0x1E696ACD8];
      v27 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide topAnchor];
      v125 = [(PKPaletteHostView *)v6 topAnchor];
      v126 = v27;
      v124 = [v27 constraintEqualToAnchor:v125];
      v134[0] = v124;
      v28 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide leadingAnchor];
      v121 = [(PKPaletteHostView *)v6 leadingAnchor];
      v122 = v28;
      v19 = [v28 constraintEqualToAnchor:v121];
      v134[1] = v19;
      v20 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide trailingAnchor];
      v21 = [(PKPaletteHostView *)v6 trailingAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      v134[2] = v22;
      v23 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide bottomAnchor];
      v24 = [(PKPaletteHostView *)v6 bottomAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];
      v134[3] = v25;
      v26 = v134;
    }

    else
    {
      v12 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide topAnchor];
      v13 = [(PKPaletteHostView *)v6 layoutMarginsGuide];
      v14 = [v13 topAnchor];
      v15 = [v12 constraintEqualToAnchor:v14];
      paletteViewLayoutGuideTopConstraint = v6->_paletteViewLayoutGuideTopConstraint;
      v6->_paletteViewLayoutGuideTopConstraint = v15;

      v6->_paletteViewLayoutGuideTopConstant = 0.0;
      v123 = MEMORY[0x1E696ACD8];
      v133[0] = v6->_paletteViewLayoutGuideTopConstraint;
      v17 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide leadingAnchor];
      v125 = [(PKPaletteHostView *)v6 layoutMarginsGuide];
      [v125 leadingAnchor];
      v124 = v126 = v17;
      v122 = [v17 constraintEqualToAnchor:?];
      v133[1] = v122;
      v18 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide trailingAnchor];
      v19 = [(PKPaletteHostView *)v6 layoutMarginsGuide];
      v20 = [v19 trailingAnchor];
      v121 = v18;
      v21 = [v18 constraintEqualToAnchor:v20];
      v133[2] = v21;
      v22 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide bottomAnchor];
      v23 = [(PKPaletteHostView *)v6 layoutMarginsGuide];
      v24 = [v23 bottomAnchor];
      v25 = [v22 constraintEqualToAnchor:v24];
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
    v30 = [(PKPaletteHostView *)v6 paletteView];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = [(PKPaletteHostView *)v6 paletteView];
    [(PKPaletteHostView *)v6 addSubview:v31];

    [(PKPaletteHostView *)v6 setDelegate:v6->_paletteView];
    v32 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v6];
    pointerInteraction = v6->_pointerInteraction;
    v6->_pointerInteraction = v32;

    [(PKPaletteHostView *)v6 addInteraction:v6->_pointerInteraction];
    v34 = [(PKPaletteHostView *)v6 paletteView];
    v35 = [v34 topAnchor];
    v36 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    paletteTopConstraint = v6->_paletteTopConstraint;
    v6->_paletteTopConstraint = v37;

    v39 = [(PKPaletteHostView *)v6 paletteTopConstraint];
    LODWORD(v40) = 1132068864;
    [v39 setPriority:v40];

    v41 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide bottomAnchor];
    v42 = [(PKPaletteHostView *)v6 paletteView];
    v43 = [v42 bottomAnchor];
    v44 = [v41 constraintEqualToAnchor:v43];
    paletteBottomConstraint = v6->_paletteBottomConstraint;
    v6->_paletteBottomConstraint = v44;

    v46 = [(PKPaletteHostView *)v6 paletteBottomConstraint];
    LODWORD(v47) = 1132068864;
    [v46 setPriority:v47];

    v48 = [(PKPaletteHostView *)v6 paletteView];
    v49 = [v48 leftAnchor];
    v50 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide leftAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    paletteLeftConstraint = v6->_paletteLeftConstraint;
    v6->_paletteLeftConstraint = v51;

    v53 = [(PKPaletteHostView *)v6 paletteLeftConstraint];
    LODWORD(v54) = 1132068864;
    [v53 setPriority:v54];

    v55 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide rightAnchor];
    v56 = [(PKPaletteHostView *)v6 paletteView];
    v57 = [v56 rightAnchor];
    v58 = [v55 constraintEqualToAnchor:v57];
    paletteRightConstraint = v6->_paletteRightConstraint;
    v6->_paletteRightConstraint = v58;

    v60 = [(PKPaletteHostView *)v6 paletteRightConstraint];
    LODWORD(v61) = 1132068864;
    [v60 setPriority:v61];

    v62 = MEMORY[0x1E696ACD8];
    v63 = [(PKPaletteHostView *)v6 paletteTopConstraint];
    v132[0] = v63;
    v64 = [(PKPaletteHostView *)v6 paletteBottomConstraint];
    v132[1] = v64;
    v65 = [(PKPaletteHostView *)v6 paletteLeftConstraint];
    v132[2] = v65;
    v66 = [(PKPaletteHostView *)v6 paletteRightConstraint];
    v132[3] = v66;
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:4];
    [v62 activateConstraints:v67];

    v68 = [(PKPaletteHostView *)v6 paletteView];
    v69 = [v68 centerXAnchor];
    v70 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide centerXAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];
    paletteCenterXConstraint = v6->_paletteCenterXConstraint;
    v6->_paletteCenterXConstraint = v71;

    v73 = [(PKPaletteHostView *)v6 paletteCenterXConstraint];
    LODWORD(v74) = 1132068864;
    [v73 setPriority:v74];

    v75 = [(PKPaletteHostView *)v6 paletteView];
    v76 = [v75 centerYAnchor];
    v77 = [(UILayoutGuide *)v6->_paletteViewLayoutGuide centerYAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];
    paletteCenterYConstraint = v6->_paletteCenterYConstraint;
    v6->_paletteCenterYConstraint = v78;

    v80 = [(PKPaletteHostView *)v6 paletteCenterYConstraint];
    LODWORD(v81) = 1132068864;
    [v80 setPriority:v81];

    v82 = MEMORY[0x1E696ACD8];
    v83 = [(PKPaletteHostView *)v6 paletteCenterXConstraint];
    v131[0] = v83;
    v84 = [(PKPaletteHostView *)v6 paletteCenterYConstraint];
    v131[1] = v84;
    v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:2];
    [v82 activateConstraints:v85];

    v86 = [(PKPaletteHostView *)v6 paletteView];
    [v86 paletteSizeForEdge:4];
    v88 = v87;
    v90 = v89;

    v91 = [(PKPaletteHostView *)v6 paletteView];
    v92 = [v91 widthAnchor];
    v93 = [v92 constraintEqualToConstant:v88];
    paletteWidthConstraint = v6->_paletteWidthConstraint;
    v6->_paletteWidthConstraint = v93;

    v95 = [(PKPaletteHostView *)v6 paletteView];
    v96 = [v95 heightAnchor];
    v97 = [v96 constraintEqualToConstant:v90];
    paletteHeightConstraint = v6->_paletteHeightConstraint;
    v6->_paletteHeightConstraint = v97;

    v99 = MEMORY[0x1E696ACD8];
    v100 = [(PKPaletteHostView *)v6 paletteWidthConstraint];
    v130[0] = v100;
    v101 = [(PKPaletteHostView *)v6 paletteHeightConstraint];
    v130[1] = v101;
    v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
    [v99 activateConstraints:v102];

    v103 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v6 action:sel__panGestureHandler_];
    panGestureRecognizer = v6->_panGestureRecognizer;
    v6->_panGestureRecognizer = v103;

    v105 = [(PKPaletteHostView *)v6 panGestureRecognizer];
    [v105 setDelegate:v6];

    v106 = [(PKPaletteHostView *)v6 paletteView];
    v107 = [(PKPaletteHostView *)v6 panGestureRecognizer];
    [v106 addGestureRecognizer:v107];

    v108 = [(PKPaletteHostView *)v6 paletteView];
    v109 = [v108 contentScrollView];
    [v109 setDelegate:v6];

    v110 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v6 action:sel__tapToExpandPaletteFromMinimizedGestureHandler_];
    tapToExpandPaletteFromMinimizedGestureRecognizer = v6->_tapToExpandPaletteFromMinimizedGestureRecognizer;
    v6->_tapToExpandPaletteFromMinimizedGestureRecognizer = v110;

    v112 = [(PKPaletteHostView *)v6 tapToExpandPaletteFromMinimizedGestureRecognizer];
    [v112 setDelegate:v6];

    v113 = [(PKPaletteHostView *)v6 paletteView];
    v114 = [(PKPaletteHostView *)v6 tapToExpandPaletteFromMinimizedGestureRecognizer];
    [v113 addGestureRecognizer:v114];

    v115 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v6 action:sel__touchDownFeedbackGestureHandler_];
    touchDownFeedbackGestureRecognizer = v6->_touchDownFeedbackGestureRecognizer;
    v6->_touchDownFeedbackGestureRecognizer = v115;

    [(UILongPressGestureRecognizer *)v6->_touchDownFeedbackGestureRecognizer setDelegate:v6];
    [(UILongPressGestureRecognizer *)v6->_touchDownFeedbackGestureRecognizer setMinimumPressDuration:0.0];
    v117 = [(PKPaletteHostView *)v6 paletteView];
    [v117 addGestureRecognizer:v6->_touchDownFeedbackGestureRecognizer];

    v6->_panGestureDidStartInPaletteScrollView = 0;
    v6->_panGestureShouldDragPaletteView = 1;
    v6->_paletteScrollGestureShouldScroll = 1;
    v118 = [[PKPaletteTooltipPresentationHandle alloc] initWithHostingView:v6];
    tooltipPresentationHandle = v6->_tooltipPresentationHandle;
    v6->_tooltipPresentationHandle = v118;

    [(PKPaletteHostView *)v6 setClipsToBounds:1];
    v5 = v128;
  }

  return v6;
}

- (void)setPaletteViewBottomEdgeSpacing:(double)a3
{
  if (self->_paletteViewBottomEdgeSpacing != a3)
  {
    self->_paletteViewBottomEdgeSpacing = a3;
    v5 = [(PKPaletteHostView *)self palettePosition];

    [(PKPaletteHostView *)self _updateConstraintsToDockPaletteToPosition:v5];
  }
}

- (void)didMoveToWindow
{
  v3 = [(PKPaletteHostView *)self window];
  if (v3)
  {
    v9 = v3;
    [(PKPaletteHostView *)self _updatePaletteViewSizeConstraints];
    if ([(PKPaletteHostView *)self _shouldBeCompact])
    {
      [(PKPaletteHostView *)self _fixToBottomEdge];
    }

    else
    {
      v4 = [(PKPaletteHostView *)self paletteView];
      if ([v4 isAutoHideEnabled])
      {
      }

      else
      {
        v5 = [(PKPaletteHostView *)self paletteView];
        v6 = [v5 shouldStartUpMinimized];

        if (!v6)
        {
          v7 = [(PKPaletteView *)self->_paletteView palettePosition];
          if (v7)
          {
            v8 = v7;
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
    v3 = v9;
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

- (void)setPaletteVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  paletteVisible = self->_paletteVisible;
  if (paletteVisible != v6)
  {
    v10 = paletteVisible && ~v6;
    self->_paletteVisible = v6;
    [(PKPaletteHostView *)self _cancelPanGestureIfNecessary];
    [(PKPaletteHostView *)self layoutIfNeeded];
    v11 = [(PKPaletteHostView *)self isPaletteVisible];
    v12 = [(PKPaletteHostView *)self paletteView];
    v13 = v12;
    if (v11)
    {
      [v12 setNeedsLayout];

      v14 = [(PKPaletteHostView *)self paletteView];
      [v14 layoutIfNeeded];

      v15 = [(PKPaletteHostView *)self pencilInteractionFeedbackHostView];
      [v15 hideFeedbackView];
    }

    else
    {
      [v12 dismissPalettePopoverWithCompletion:0];

      v15 = [(PKPaletteHostView *)self paletteView];
      [v15 dismissContextMenu];
    }

    v16 = [(PKPaletteHostView *)self paletteView];
    [v16 willStartAppearanceAnimation:v6];

    [(PKPaletteHostView *)self updateKeyboardAvoidanceForPalette:v6];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__PKPaletteHostView_setPaletteVisible_animated_completion___block_invoke;
    v19[3] = &unk_1E82D9EF8;
    v19[4] = self;
    v20 = v6;
    v21 = v10;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__PKPaletteHostView_setPaletteVisible_animated_completion___block_invoke_2;
    v17[3] = &unk_1E82D77F0;
    v17[4] = self;
    v18 = v8;
    [(PKPaletteHostView *)self _performAnimated:v5 tracking:0 animations:v19 completion:v17];
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

- (void)updateKeyboardAvoidanceForPalette:(BOOL)a3
{
  v4 = 0.0;
  if (a3 && [(PKPaletteHostView *)self _shouldBeCompact])
  {
    [(PKPaletteHostView *)self _paletteViewCompactHeight];
    v4 = v5;
  }

  v6 = [(PKPaletteHostView *)self keyboardSceneDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 refreshWithLocalMinimumKeyboardHeight:v4];
  }
}

- (void)_setPaletteVisualState:(int64_t)a3 usingTransition:(BOOL)a4
{
  paletteVisualState = self->_paletteVisualState;
  if (paletteVisualState != a3)
  {
    self->_paletteVisualState = a3;
    if (a4)
    {
      v6 = [(PKPaletteHostView *)self paletteTransition];
      if (!v6 || (v7 = v6, -[PKPaletteHostView paletteTransition](self, "paletteTransition"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isTransitionInProgress], v8, v7, (v9 & 1) == 0))
      {
        v10 = [(PKPaletteHostView *)self paletteTransition];
        [v10 setDelegate:0];

        v11 = [[PKPaletteTransition alloc] initWithInitialVisualState:paletteVisualState];
        [(PKPaletteHostView *)self setPaletteTransition:v11];

        v12 = [(PKPaletteHostView *)self paletteTransition];
        [v12 setDelegate:self];
      }

      v13 = [(PKPaletteHostView *)self paletteTransition];
      [v13 transitionToVisualState:{-[PKPaletteHostView paletteVisualState](self, "paletteVisualState")}];
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

  v4 = [(PKPaletteHostView *)self panGestureRecognizer];
  if ([v4 state] == 1)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(PKPaletteHostView *)self panGestureRecognizer];
    v3 = [v5 state] == 2;
  }

  return v3;
}

- (void)_updatePaletteAppearanceAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPaletteHostView *)self paletteView];
  v6 = [(PKPaletteHostView *)self traitCollection];
  v7 = [v5 borderColorForTraitCollection:v6];

  v8 = [(PKPaletteHostView *)self paletteView];
  v9 = [(PKPaletteHostView *)self traitCollection];
  [v8 borderWidthForTraitCollection:v9];
  v11 = v10;

  v12 = [v7 CGColor];
  v13 = [(PKPaletteHostView *)self paletteView];
  v14 = [v13 layer];
  [v14 setBorderColor:v12];

  v15 = [(PKPaletteHostView *)self paletteView];
  v16 = [v15 layer];
  [v16 setBorderWidth:v11];

  v17 = [(PKPaletteHostView *)self paletteView];
  v18 = [v17 layer];
  [v18 setMasksToBounds:0];

  v19 = *MEMORY[0x1E695F060];
  v20 = *(MEMORY[0x1E695F060] + 8);
  v21 = [(PKPaletteHostView *)self paletteView];
  v22 = [v21 layer];
  [v22 setShadowOffset:{v19, v20}];

  v23 = [(PKPaletteHostView *)self paletteVisualState];
  v24 = [(PKPaletteHostView *)self paletteTransition];
  LODWORD(v14) = [v24 isTransitionInProgress];

  if (v14)
  {
    v25 = [(PKPaletteHostView *)self paletteTransition];
    v23 = [v25 intermediateVisualState];
  }

  v26 = 0.0;
  if (v23 <= 7)
  {
    if (((1 << v23) & 0xF0) != 0)
    {
      goto LABEL_5;
    }

    if (((1 << v23) & 3) == 0)
    {
      v33 = [(PKPaletteHostView *)self paletteView];
      [v33 shadowOpacity];
      v29 = v34;

      v30 = [(PKPaletteHostView *)self paletteView];
      v35 = [v30 shouldAdjustShadowRadiusForMinimized];
      v36 = [(PKPaletteHostView *)self paletteView];
      [v36 shadowRadius];
      if (v35)
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
      v27 = [(PKPaletteHostView *)self paletteView];
      [v27 shadowOpacity];
      v29 = v28;

      v30 = [(PKPaletteHostView *)self paletteView];
      [v30 shadowRadius];
      v26 = v31;
LABEL_14:

      v32 = [MEMORY[0x1E69DC888] pk_paletteShadowColor];
      goto LABEL_15;
    }
  }

  v32 = 0;
  v29 = 0;
LABEL_15:
  v38 = [(PKPaletteHostView *)self avoidanceEdgeForPaletteVisualState:v23];
  if (v38 && (v39 = v38, -[PKPaletteHostView paletteView](self, "paletteView"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 isVisible], v40, v41))
  {
    v42 = [MEMORY[0x1E69DD438] sceneComponentForView:self];
    v43 = [(PKPaletteHostView *)self paletteView];
    [v43 frame];
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
    v53 = v32;
    [v51 _pk_withDisabledActions:!v3 perform:v52];
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
    v7 = [(PKPaletteHostView *)self paletteWidthConstraint];
    [v7 setConstant:v4];

    v8 = [(PKPaletteHostView *)self paletteHeightConstraint];
    [v8 setConstant:v6];

    [(PKPaletteHostView *)self setNeedsLayout];
  }
}

- (void)_updatePaletteContentAlpha
{
  v3 = [(PKPaletteHostView *)self paletteTransition];
  v4 = [v3 isTransitionInProgress];

  if (v4)
  {
    v5 = [(PKPaletteHostView *)self paletteTransition];
    [v5 expandedToCollapsedRatio];
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

  v9 = [(PKPaletteHostView *)self paletteView];
  [v9 setPaletteContentAlpha:v7];
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
  v11 = [(PKPaletteHostView *)self pencilInteractionFeedbackHostView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(PKPaletteHostView *)self safeAreaInsets];
  v13 = v12;
  v14 = [MEMORY[0x1E696AAE8] mainBundle];
  v15 = [v14 bundleIdentifier];
  if ([v15 isEqualToString:@"com.apple.quicklook.extension.previewUI"])
  {
  }

  else
  {
    v16 = [MEMORY[0x1E696AAE8] mainBundle];
    v17 = [v16 bundleIdentifier];
    v18 = [v17 isEqualToString:@"com.apple.quicklook.UIExtension"];

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
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 bounds];
    v5 = v4;

    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 bounds];
    v8 = v7;

    LOBYTE(v6) = PKIsPhoneDevice();
    v9 = [(PKPaletteHostView *)self paletteWidthConstraint];
    [v9 setConstant:388.0];

    if ((v6 & (v5 > v8)) != 0)
    {
      v10 = 1000.0;
    }

    else
    {
      v10 = 750.0;
    }

    v11 = [(PKPaletteHostView *)self paletteWidthConstraint];
    *&v12 = v10;
    [v11 setPriority:v12];
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

  v17 = [(PKPaletteHostView *)self paletteBottomConstraint];
  [v17 setConstant:v13];

  v18 = [(PKPaletteHostView *)self paletteBottomConstraint];
  LODWORD(v19) = 1148846080;
  [v18 setPriority:v19];

  if (_UISolariumEnabled())
  {
    v20 = 20.0;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = [(PKPaletteHostView *)self traitCollection];
  v22 = [v21 layoutDirection];
  v23 = [(PKPaletteHostView *)self paletteView];
  [v23 edgeInsetsInCompactSize];
  v25 = v24;
  v27 = v26;

  if (v22 == 1)
  {
    v28 = v27;
  }

  else
  {
    v28 = v25;
  }

  v29 = v20 + v28;

  v30 = [(PKPaletteHostView *)self traitCollection];
  v31 = [v30 layoutDirection];
  v32 = [(PKPaletteHostView *)self paletteView];
  [v32 edgeInsetsInCompactSize];
  if (v31 == 1)
  {
    v35 = v33;
  }

  else
  {
    v35 = v34;
  }

  v36 = _UISolariumEnabled();
  v37 = [(PKPaletteHostView *)self paletteView];
  v38 = [v37 leftAnchor];
  v39 = [(PKPaletteHostView *)self leftAnchor];
  if (v36)
  {
    [v38 constraintGreaterThanOrEqualToAnchor:v39 constant:v29];
  }

  else
  {
    [v38 constraintEqualToAnchor:v39 constant:v29];
  }
  v40 = ;
  objc_storeStrong(&self->_paletteLeftConstraintInCompact, v40);

  LODWORD(v40) = _UISolariumEnabled();
  v41 = [(PKPaletteHostView *)self rightAnchor];
  v42 = [(PKPaletteHostView *)self paletteView];
  v43 = [v42 rightAnchor];
  v44 = v20 + v35;
  if (v40)
  {
    [v41 constraintGreaterThanOrEqualToAnchor:v43 constant:v44];
  }

  else
  {
    [v41 constraintEqualToAnchor:v43 constant:v44];
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
  v2 = [(PKPaletteHostView *)self window];
  v3 = [v2 windowScene];
  if (PKIsQuickNoteWindowScene(v3))
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
  v5 = [(PKPaletteHostView *)self paletteHeightConstraint];
  [v5 setConstant:v4];

  v7 = [(PKPaletteHostView *)self paletteHeightConstraint];
  LODWORD(v6) = 1148846080;
  [v7 setPriority:v6];
}

- (double)_paletteViewCompactHeight
{
  v3 = [(PKPaletteHostView *)self paletteView];
  [v3 compactPaletteHeight];
  v5 = v4;
  v6 = [(PKPaletteHostView *)self paletteView];
  [v6 edgeInsetsInCompactSize];
  v8 = v5 + v7;

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v9 = [(PKPaletteHostView *)self paletteView];
    v10 = [v9 ignoresSafeAreaInsetsInCompactSize];

    if ((v10 & 1) == 0)
    {
      v11 = [(PKPaletteHostView *)self window];
      [v11 safeAreaInsets];
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

- (void)_dockPaletteToAutoHideCornerAnimated:(BOOL)a3
{
  v3 = a3;
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

    [(PKPaletteHostView *)self _dockPaletteToPosition:v6 animated:v3];
  }
}

- (void)_dockPaletteToPosition:(int64_t)a3 isFromUserReposition:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = a3 - 1;
  v10 = (a3 - 1) < 4;
  v11 = ([(PKPaletteHostView *)self paletteVisualState]& 0xFFFFFFFFFFFFFFFELL) == 2 && v10;
  [(PKPaletteHostView *)self _paletteWillDockToPosition:a3 prepareForExpansion:v11];
  if (v9 >= 4)
  {
    [(PKPaletteHostView *)self layoutIfNeeded];
  }

  v12 = [(PKPaletteHostView *)self paletteHeightConstraint];
  LODWORD(v13) = 1148846080;
  [v12 setPriority:v13];

  v14 = [(PKPaletteHostView *)self paletteWidthConstraint];
  LODWORD(v15) = 1148846080;
  [v14 setPriority:v15];

  if (v9 > 7)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_1C801DBC0[v9];
  }

  [(PKPaletteHostView *)self _setPaletteVisualState:v16 usingTransition:v5];
  [(PKPaletteHostView *)self layoutIfNeeded];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__PKPaletteHostView__dockPaletteToPosition_isFromUserReposition_animated___block_invoke;
  v19[3] = &unk_1E82D7170;
  v19[4] = self;
  v19[5] = a3;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__PKPaletteHostView__dockPaletteToPosition_isFromUserReposition_animated___block_invoke_2;
  v17[3] = &unk_1E82D9F48;
  v17[4] = self;
  v17[5] = a3;
  v18 = a4;
  [(PKPaletteHostView *)self _performAnimated:v5 tracking:0 animations:v19 completion:v17];
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

- (double)_paletteEdgeMarginForEdge:(unint64_t)a3 isMinimized:(BOOL)a4
{
  v6 = [(PKPaletteHostView *)self paletteView:a3];
  [v6 paletteScaleFactor];
  v8 = v7 * 122.0;

  v9 = 0.0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (![(PKPaletteHostView *)self isEffectivePaletteVisible])
      {
        [(PKPaletteHostView *)self layoutMargins];
        v11 = v8 + v16;
        return -v11;
      }

      return self->_paletteViewBottomEdgeSpacing;
    }

    else if (a3 == 8 && ![(PKPaletteHostView *)self isEffectivePaletteVisible])
    {
      [(PKPaletteHostView *)self layoutMargins];
      v11 = v8 + v12;
      return -v11;
    }
  }

  else if (a3 == 1)
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

  else if (a3 == 2 && ![(PKPaletteHostView *)self isEffectivePaletteVisible])
  {
    [(PKPaletteHostView *)self layoutMargins];
    v11 = v8 + v10;
    return -v11;
  }

  return v9;
}

- (void)_updateConstraintsToDockPaletteToPosition:(int64_t)a3
{
  v5 = [(PKPaletteHostView *)self window];

  if (!v5)
  {
    return;
  }

  [(PKPaletteHostView *)self _deactivatePaletteEdgeConstraints];
  [(PKPaletteHostView *)self _deactivatePaletteCenterConstraints];
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 != 5)
      {
        v11 = [(PKPaletteHostView *)self paletteTopConstraint];
        [v11 setConstant:0.0];

        v12 = [(PKPaletteHostView *)self paletteRightConstraint];
        [v12 setConstant:0.0];

        v13 = [(PKPaletteHostView *)self paletteTopConstraint];
        LODWORD(v14) = 1144750080;
        [v13 setPriority:v14];

        v15 = [(PKPaletteHostView *)self paletteRightConstraint];
        LODWORD(v16) = 1144750080;
        [v15 setPriority:v16];

        if (self->_effectivePaletteVisible)
        {
          return;
        }

        v17 = [(PKPaletteHostView *)self paletteView];
        v18 = [v17 edgeLocationToDockFromCorner:2];

        if (v18 == 1)
        {
LABEL_55:
          [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:1 isMinimized:1];
          v53 = v80;
          v54 = [(PKPaletteHostView *)self paletteTopConstraint];
LABEL_57:
          v82 = v54;
          [v54 setConstant:v53];
          goto LABEL_58;
        }

LABEL_31:
        if (v18 != 8)
        {
          return;
        }

        [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:8 isMinimized:1];
        v53 = v66;
        v54 = [(PKPaletteHostView *)self paletteRightConstraint];
        goto LABEL_57;
      }

      v45 = [(PKPaletteHostView *)self paletteTopConstraint];
      [v45 setConstant:0.0];

      v46 = [(PKPaletteHostView *)self paletteLeftConstraint];
      [v46 setConstant:0.0];

      v47 = [(PKPaletteHostView *)self paletteTopConstraint];
      LODWORD(v48) = 1144750080;
      [v47 setPriority:v48];

      v49 = [(PKPaletteHostView *)self paletteLeftConstraint];
      LODWORD(v50) = 1144750080;
      [v49 setPriority:v50];

      if (self->_effectivePaletteVisible)
      {
        return;
      }

      v51 = [(PKPaletteHostView *)self paletteView];
      v39 = [v51 edgeLocationToDockFromCorner:1];

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
      v54 = [(PKPaletteHostView *)self paletteLeftConstraint];
      goto LABEL_57;
    }

    if (a3 == 7)
    {
      v59 = [(PKPaletteHostView *)self paletteBottomConstraint];
      [v59 setConstant:0.0];

      v60 = [(PKPaletteHostView *)self paletteRightConstraint];
      [v60 setConstant:0.0];

      v61 = [(PKPaletteHostView *)self paletteBottomConstraint];
      LODWORD(v62) = 1144750080;
      [v61 setPriority:v62];

      v63 = [(PKPaletteHostView *)self paletteRightConstraint];
      LODWORD(v64) = 1144750080;
      [v63 setPriority:v64];

      if (self->_effectivePaletteVisible)
      {
        return;
      }

      v65 = [(PKPaletteHostView *)self paletteView];
      v18 = [v65 edgeLocationToDockFromCorner:8];

      if (v18 != 4)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (a3 != 8)
      {
        goto LABEL_40;
      }

      v32 = [(PKPaletteHostView *)self paletteBottomConstraint];
      [v32 setConstant:0.0];

      v33 = [(PKPaletteHostView *)self paletteLeftConstraint];
      [v33 setConstant:0.0];

      v34 = [(PKPaletteHostView *)self paletteBottomConstraint];
      LODWORD(v35) = 1144750080;
      [v34 setPriority:v35];

      v36 = [(PKPaletteHostView *)self paletteLeftConstraint];
      LODWORD(v37) = 1144750080;
      [v36 setPriority:v37];

      if (self->_effectivePaletteVisible)
      {
        return;
      }

      v38 = [(PKPaletteHostView *)self paletteView];
      v39 = [v38 edgeLocationToDockFromCorner:4];

      if (v39 != 4)
      {
        goto LABEL_25;
      }
    }

    [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:4 isMinimized:1];
    v53 = v81;
    v54 = [(PKPaletteHostView *)self paletteBottomConstraint];
    goto LABEL_57;
  }

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:2 isMinimized:0];
      v20 = v19;
      v21 = [(PKPaletteHostView *)self paletteLeftConstraint];
      [v21 setConstant:v20];

      v9 = [(PKPaletteHostView *)self paletteLeftConstraint];
      goto LABEL_14;
    }

    [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:4 isMinimized:0];
    v56 = v55;
    v57 = [(PKPaletteHostView *)self paletteBottomConstraint];
    [v57 setConstant:v56];

    v43 = [(PKPaletteHostView *)self paletteBottomConstraint];
LABEL_28:
    v58 = v43;
    LODWORD(v44) = 1144750080;
    [v43 setPriority:v44];

    goto LABEL_41;
  }

  if (a3 == 1)
  {
    [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:1 isMinimized:0];
    v41 = v40;
    v42 = [(PKPaletteHostView *)self paletteTopConstraint];
    [v42 setConstant:v41];

    v43 = [(PKPaletteHostView *)self paletteTopConstraint];
    goto LABEL_28;
  }

  if (a3 != 2)
  {
    goto LABEL_40;
  }

  [(PKPaletteHostView *)self _paletteEdgeMarginForEdge:8 isMinimized:0];
  v7 = v6;
  v8 = [(PKPaletteHostView *)self paletteRightConstraint];
  [v8 setConstant:v7];

  v9 = [(PKPaletteHostView *)self paletteRightConstraint];
LABEL_14:
  v22 = v9;
  v23 = 1144750080;
  LODWORD(v10) = 1144750080;
  [v9 setPriority:v10];

  v24 = [(PKPaletteHostView *)self paletteCenterYConstraint];
  LODWORD(v25) = 1144750080;
  [v24 setPriority:v25];

  v26 = [(PKPaletteHostView *)self paletteView];
  v27 = [v26 isAutoHideEnabled];

  if (v27)
  {
    v28 = [(PKPaletteHostView *)self paletteView];
    v29 = [v28 autoHideCorner];

    if ((v29 - 1) > 1)
    {
      if (v29 != 8 && v29 != 4)
      {
        v23 = 1132068864;
        goto LABEL_39;
      }

      v30 = [(PKPaletteHostView *)self paletteBottomConstraint];
    }

    else
    {
      v30 = [(PKPaletteHostView *)self paletteTopConstraint];
    }

    v67 = v30;
    LODWORD(v31) = 1144750080;
    [v30 setPriority:v31];
    v23 = 1132068864;
  }

  else
  {
    v67 = [(PKPaletteHostView *)self paletteCenterYConstraint];
    [v67 setConstant:0.0];
  }

LABEL_39:
  v68 = [(PKPaletteHostView *)self paletteCenterYConstraint];
  LODWORD(v69) = v23;
  [v68 setPriority:v69];

LABEL_40:
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    return;
  }

LABEL_41:
  v70 = [(PKPaletteHostView *)self paletteView];
  v71 = [v70 isAutoHideEnabled];

  if (v71)
  {
    v72 = [(PKPaletteHostView *)self paletteView];
    v73 = [v72 autoHideCorner];

    if (v73 > 3)
    {
      if (v73 == 8)
      {
LABEL_51:
        v77 = [(PKPaletteHostView *)self paletteRightConstraint];
        goto LABEL_52;
      }

      if (v73 != 4)
      {
LABEL_53:
        v75 = [(PKPaletteHostView *)self paletteCenterXConstraint];
        LODWORD(v76) = 1132068864;
        goto LABEL_54;
      }
    }

    else if (v73 != 1)
    {
      if (v73 != 2)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v77 = [(PKPaletteHostView *)self paletteLeftConstraint];
LABEL_52:
    v79 = v77;
    LODWORD(v78) = 1144750080;
    [v77 setPriority:v78];

    goto LABEL_53;
  }

  v74 = [(PKPaletteHostView *)self paletteCenterXConstraint];
  [v74 setConstant:0.0];

  v75 = [(PKPaletteHostView *)self paletteCenterXConstraint];
  LODWORD(v76) = 1144750080;
LABEL_54:
  v82 = v75;
  [v75 setPriority:v76];
LABEL_58:
}

- (void)_paletteWillDockToPosition:(int64_t)a3 prepareForExpansion:(BOOL)a4
{
  v4 = a4;
  [(PKPaletteHostView *)self setPalettePosition:?];
  v7 = [(PKPaletteHostView *)self delegate];
  [v7 hostView:self willDockPaletteToPosition:a3 prepareForExpansion:v4];
}

- (void)_paletteDidDockToPosition:(int64_t)a3 fromUserReposition:(BOOL)a4
{
  v4 = a4;
  v7 = [(PKPaletteHostView *)self delegate];
  [v7 hostView:self didDockPaletteToPosition:a3];

  if (v4)
  {
    v9 = +[PKStatisticsManager sharedStatisticsManager];
    v8 = [(PKPaletteHostView *)self paletteView];
    -[PKStatisticsManager recordPalettePositionChange:type:](v9, a3, [v8 paletteViewType]);
  }
}

- (unint64_t)avoidanceEdgeForPaletteVisualState:(int64_t)a3
{
  if (PKIsVisionDevice() || (a3 - 4) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1C801DC00[a3 - 4];
  }
}

- (void)_touchDownFeedbackGestureHandler:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
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
    v5 = [v4 state] != 3 && objc_msgSend(v4, "state") != 5 && objc_msgSend(v4, "state") != 4;
    v6 = [(PKPaletteHostView *)self tapToExpandPaletteFromMinimizedGestureRecognizer];
    v7 = [v6 state];

    v8 = [(PKPaletteHostView *)self panGestureRecognizer];
    if ([v8 state] == 2)
    {
    }

    else
    {
      v9 = [(PKPaletteHostView *)self panGestureRecognizer];
      v10 = [v9 state];

      v11 = v7 == 3 || v5;
      if ((v11 & 1) == 0 && v10 != 3)
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

- (void)_tapToExpandPaletteFromMinimizedGestureHandler:(id)a3
{
  if ([a3 state] == 3)
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

    v6 = [(PKPaletteHostView *)self paletteView];
    v7 = [v6 edgeLocationToDockFromCorner:v5];

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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(PKPaletteHostView *)self _shouldBeCompact];
  v6 = [(PKPaletteHostView *)self panGestureRecognizer];
  v7 = v6;
  if (v5)
  {
    if (v6 != v4)
    {
      v8 = [(PKPaletteHostView *)self touchDownFeedbackGestureRecognizer];
      v9 = v8;
      if (v8 != v4)
      {
        v10 = [(PKPaletteHostView *)self tapToExpandPaletteFromMinimizedGestureRecognizer];

        if (v10 == v4)
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

  if (v7 == v4)
  {
    v13 = [(PKPaletteHostView *)self paletteView];
    LOBYTE(self) = [v13 draggingEnabled];
  }

  else
  {
    v11 = [(PKPaletteHostView *)self touchDownFeedbackGestureRecognizer];

    if (v11 == v4)
    {
      LOBYTE(self) = [(PKPaletteHostView *)self isPaletteVisualStateMinimized];
      goto LABEL_18;
    }

    v12 = [(PKPaletteHostView *)self tapToExpandPaletteFromMinimizedGestureRecognizer];

    if (v12 == v4)
    {
      if (![(PKPaletteHostView *)self isPaletteVisualStateMinimized])
      {
        LOBYTE(self) = [(PKPaletteHostView *)self paletteVisualState]== 3;
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v13 = [(PKPaletteHostView *)self paletteView];
    LODWORD(self) = [v13 isPalettePresentingPopover] ^ 1;
  }

LABEL_18:
  return self;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v17[4] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaletteHostView *)self panGestureRecognizer];
  v17[0] = v8;
  v9 = [(PKPaletteHostView *)self tapToExpandPaletteFromMinimizedGestureRecognizer];
  v17[1] = v9;
  v10 = [(PKPaletteHostView *)self touchDownFeedbackGestureRecognizer];
  v17[2] = v10;
  v11 = [(PKPaletteHostView *)self paletteView];
  v12 = [v11 contentScrollView];
  v13 = [v12 panGestureRecognizer];
  v17[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];

  LODWORD(v8) = [v14 containsObject:v7];
  if (v8)
  {
    v15 = [v14 containsObject:v6];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(PKPaletteHostView *)self bounds];
  v21.x = x;
  v21.y = y;
  if (!CGRectContainsPoint(v22, v21))
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v8 = [(PKPaletteHostView *)self paletteView];
  [(PKPaletteHostView *)self convertPoint:v8 toView:x, y];
  v10 = v9;
  v12 = v11;

  v13 = [(PKPaletteHostView *)self paletteView];
  v14 = [v13 pointInside:v7 withEvent:{v10, v12}];

  if ((v14 & 1) == 0)
  {
    if (v7)
    {
      if ([v7 type] != 11)
      {
        v16 = [(PKPaletteHostView *)self paletteView];
        v17 = [v16 isPalettePresentingPopover];

        if ((v17 & 1) == 0 && ![(PKPaletteHostView *)self _shouldBeCompact])
        {
          v18 = [(PKPaletteHostView *)self paletteView];
          if ([v18 isAutoHideEnabled])
          {
            v19 = [(PKPaletteHostView *)self paletteVisualState];

            if (v19 != 2)
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [v7 PK_isEventFromPencil];
  v9 = [(PKPaletteHostView *)self paletteView];
  v10 = [v9 isPalettePresentingPopover];

  v11 = [(PKPaletteHostView *)self paletteView];
  v12 = [v11 hasContextMenuVisible];

  v13 = [v7 type];
  if (([(PKPaletteHostView *)self isHidden]& 1) == 0)
  {
    [(PKPaletteHostView *)self alpha];
    if (v14 != 0.0)
    {
      if (([(PKPaletteHostView *)self isPaletteVisible]| v10))
      {
        goto LABEL_4;
      }

LABEL_32:
      v27 = [(PKPaletteHostView *)self pencilInteractionFeedbackHostView];
      [(PKPaletteHostView *)self convertPoint:v27 toView:x, y];
      v29 = v28;
      v31 = v30;

      v32 = [(PKPaletteHostView *)self pencilInteractionFeedbackHostView];
      v17 = [v32 hitTest:v7 withEvent:{v29, v31}];

      goto LABEL_33;
    }
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_4:
  if (![(PKPaletteHostView *)self isPaletteVisible]&& ((v10 ^ 1) & 1) == 0 && ((v8 ^ 1) & 1) == 0 && v13 != 11)
  {
    v15 = [(PKPaletteHostView *)self paletteView];
    [v15 dismissPalettePopoverWithCompletion:0];
  }

  v69.receiver = self;
  v69.super_class = PKPaletteHostView;
  v16 = [(PKPaletteHostView *)&v69 hitTest:v7 withEvent:x, y];
  v17 = v16;
  if (v7)
  {
    if ((v10 | v12))
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v12;
      }

      if (v18 == 1 && v13 != 11)
      {
        v19 = [(PKPaletteHostView *)self paletteView];
        [v19 dismissContextMenu];
      }

      v20 = v17 ? 0 : v8;
      if ((v20 & 1) == 0 && v13 != 11)
      {
        if (v10)
        {
          v21 = [(PKPaletteHostView *)self paletteView];
          [v21 dismissPalettePopoverWithCompletion:0];
        }

        if (!((v17 != 0) | v8 & 1))
        {
          v17 = self;
        }

        goto LABEL_33;
      }
    }

    if (v17)
    {
      goto LABEL_33;
    }

    v22 = [(PKPaletteHostView *)self paletteView];
    v23 = [v22 palettePopoverPresentingController];
    v24 = [v23 presentedViewController];

    if (v24)
    {
      v25 = [v24 view];
      v26 = [v25 hitTest:v7 withEvent:{PK_convertRectFromCoordinateSpaceToCoordinateSpace(self, v25, x, y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8))}];

      if (v26)
      {
        v17 = 0;
LABEL_30:

        goto LABEL_33;
      }
    }

    if (v13 != 11)
    {
      v34 = [(PKPaletteHostView *)self paletteView];
      [v34 dismissPalettePopoverWithCompletion:0];
    }

    if (![(PKPaletteHostView *)self _shouldBeCompact])
    {
      v35 = [(PKPaletteHostView *)self paletteView];
      if ([v35 isAutoHideEnabled])
      {
        v36 = [(PKPaletteHostView *)self isPaletteVisualStateMinimized];

        if (!v36 && v13 != 11)
        {
          [(PKPaletteHostView *)self _dockPaletteToAutoHideCornerAnimated:1];
        }
      }

      else
      {
      }
    }

    v37 = [(PKPaletteHostView *)self paletteView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v39 = [(PKPaletteHostView *)self paletteView];
      v40 = [v39 selectedTool];
      v41 = [v40 ink];
      v42 = [v41 _isHandwritingInk];

      v43 = [v39 selectedTool];
      if ([v43 _isLassoTool])
      {
      }

      else
      {
        v44 = [v39 selectedTool];
        v45 = [v44 _configuration];
        if (v45)
        {
          v46 = v45[20];
        }

        else
        {
          v46 = 0;
        }

        if (((v42 | v46) & 1) == 0)
        {
          v47 = [(PKPaletteHostView *)self window];
          v48 = [(PKPaletteHostView *)self paletteView];
          v49 = [v48 presentationController];
          v50 = [v49 view];
          v51 = [v50 window];

          if (v47 != v51)
          {
            [(PKPaletteHostView *)self convertPoint:0 toView:x, y];
            v53 = v52;
            v55 = v54;
            v56 = [(PKPaletteHostView *)self window];
            v57 = [(PKPaletteHostView *)self paletteView];
            v58 = [v57 presentationController];
            v59 = [v58 view];
            v60 = [v59 window];
            [v56 convertPoint:v60 toWindow:{v53, v55}];
            v62 = v61;
            v64 = v63;

            v65 = [(PKPaletteHostView *)self paletteView];
            v66 = [v65 presentationController];
            v67 = [v66 view];
            v68 = [v67 window];
            v17 = [v68 hitTest:v7 withEvent:{v62, v64}];

            goto LABEL_30;
          }
        }
      }
    }

    v17 = 0;
  }

LABEL_33:

  return v17;
}

- (void)_deactivatePaletteCenterConstraints
{
  v3 = [(PKPaletteHostView *)self paletteCenterXConstraint];
  LODWORD(v4) = 1132068864;
  [v3 setPriority:v4];

  v6 = [(PKPaletteHostView *)self paletteCenterYConstraint];
  LODWORD(v5) = 1132068864;
  [v6 setPriority:v5];
}

- (void)_activatePaletteCenterConstraints
{
  v3 = [(PKPaletteHostView *)self paletteCenterXConstraint];
  LODWORD(v4) = 1144750080;
  [v3 setPriority:v4];

  v6 = [(PKPaletteHostView *)self paletteCenterYConstraint];
  LODWORD(v5) = 1144750080;
  [v6 setPriority:v5];
}

- (void)_deactivatePaletteEdgeConstraints
{
  v3 = [(PKPaletteHostView *)self paletteTopConstraint];
  LODWORD(v4) = 1132068864;
  [v3 setPriority:v4];

  v5 = [(PKPaletteHostView *)self paletteBottomConstraint];
  LODWORD(v6) = 1132068864;
  [v5 setPriority:v6];

  v7 = [(PKPaletteHostView *)self paletteLeftConstraint];
  LODWORD(v8) = 1132068864;
  [v7 setPriority:v8];

  v9 = [(PKPaletteHostView *)self paletteRightConstraint];
  LODWORD(v10) = 1132068864;
  [v9 setPriority:v10];

  [(PKPaletteHostView *)self _deactivatePaletteEdgeConstraintsForCompact];
}

- (void)_deactivatePaletteEdgeConstraintsForCompact
{
  [(NSLayoutConstraint *)self->_paletteLeftConstraintInCompact setActive:0];
  paletteRightConstraintInCompact = self->_paletteRightConstraintInCompact;

  [(NSLayoutConstraint *)paletteRightConstraintInCompact setActive:0];
}

- (void)_panGestureHandler:(id)a3
{
  v151 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(PKPaletteHostView *)self paletteView];
  v7 = PKDynamicCast(v5, v6);

  v8 = [v7 tools];
  v9 = [v8 count];

  if ([v4 state] == 1)
  {
    v10 = [(PKPaletteHostView *)self tooltipPresentationHandle];
    [v10 hideFloatingLabel];

    v11 = [(PKPaletteHostView *)self paletteView];
    [(PKPaletteHostView *)self bringSubviewToFront:v11];

    v12 = [(PKPaletteHostView *)self paletteView];
    [v12 center];
    [(PKPaletteHostView *)self setDraggingInitialPaletteCenterInSelf:?];

    [(PKPaletteHostView *)self setPaletteDraggingBehavior:0];
    [(PKPaletteHostView *)self setDraggingPendingPaletteVisualState:0];
    v13 = [(PKPaletteHostView *)self paletteView];
    v14 = [v13 contentScrollView];
    [v4 locationInView:v14];
    v16 = v15;
    v18 = v17;

    if (v9 > 7)
    {
      v19 = [(PKPaletteHostView *)self paletteView];
      v20 = [v19 contentScrollView];
      -[PKPaletteHostView setPanGestureDidStartInPaletteScrollView:](self, "setPanGestureDidStartInPaletteScrollView:", [v20 pointInside:0 withEvent:{v16, v18}]);

LABEL_78:
      goto LABEL_79;
    }

    [(PKPaletteHostView *)self setPanGestureDidStartInPaletteScrollView:0];
    goto LABEL_79;
  }

  if ([v4 state] != 2)
  {
    if ([v4 state] != 3 && objc_msgSend(v4, "state") != 4 && objc_msgSend(v4, "state") != 5)
    {
      goto LABEL_79;
    }

    if (![(PKPaletteHostView *)self panGestureShouldDragPaletteView])
    {
LABEL_57:
      [(PKPaletteHostView *)self setPanGestureShouldDragPaletteView:1];
      [(PKPaletteHostView *)self setPaletteScrollGestureShouldScroll:v9 > 7];
      v86 = [(PKPaletteHostView *)self paletteView];
      v87 = [v86 contentScrollView];
      [v87 setScrollEnabled:1];

      goto LABEL_79;
    }

    v139[0] = MEMORY[0x1E69E9820];
    v139[1] = 3221225472;
    v139[2] = __40__PKPaletteHostView__panGestureHandler___block_invoke_3;
    v139[3] = &unk_1E82D7148;
    v139[4] = self;
    [(PKPaletteHostView *)self _performAnimated:1 tracking:0 animations:v139 completion:0];
    [(PKPaletteHostView *)self _projectedLandingPointForGestureRecognizerEnd:v4];
    v23 = v22;
    v25 = v24;
    v26 = [(PKPaletteHostView *)self layoutMarginsGuide];
    [v26 layoutFrame];
    v31 = _PKPaletteVisualStateForPointInRectToSettle(1, v27, v28, v29, v30, v23, v25);

    v32 = [(PKPaletteHostView *)self layoutMarginsGuide];
    [v32 layoutFrame];
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
        v79 = [(PKPaletteHostView *)self palettePosition];
        [(PKPaletteHostView *)self setPalettePosition:v78];
        [(PKPaletteHostView *)self setDraggingPendingPaletteVisualState:0];
        [(PKPaletteHostView *)self _setPaletteVisualState:v31 usingTransition:1];
        [(PKPaletteHostView *)self layoutIfNeeded];
        v80 = [(PKPaletteHostView *)self paletteView];
        [v4 velocityInView:self];
        [v80 responseForThrowingFromPosition:v79 toPosition:v78 withVelocity:?];
        v82 = v81;

        v83 = [(PKPaletteHostView *)self paletteView];
        [v4 velocityInView:self];
        [v83 dampingRatioForThrowingFromPosition:v79 toPosition:v78 withVelocity:?];
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
    v50 = [(PKPaletteHostView *)self paletteView];
    v51 = [v50 contentScrollView];
    [v4 translationInView:v51];
    v53 = v52;
    v55 = v54;

    v56 = [(PKPaletteHostView *)self paletteView];
    v57 = [v56 contentScrollView];
    [v4 velocityInView:v57];
    v59 = v58;
    v61 = v60;

    v62 = [(PKPaletteHostView *)self palettePosition]& 0xFFFFFFFFFFFFFFFDLL;
    if (v55 < 0.0)
    {
      v55 = -v55;
    }

    v64 = v55 > 20.0 && v62 == 1;
    v65 = [(PKPaletteHostView *)self palettePosition];
    v67 = v65 == 2 || v65 == 4;
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

    v88 = [(PKPaletteHostView *)self palettePosition];
    if (v88 == 4 || v88 == 2)
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
      v91 = [(PKPaletteHostView *)self paletteView];
      v92 = [v91 contentScrollView];
      [v92 contentOffset];
      v94 = v93;
      v96 = v95;

      v97 = [(PKPaletteHostView *)self paletteView];
      v98 = [v97 contentScrollView];
      [v98 setScrollEnabled:0];

      v99 = [(PKPaletteHostView *)self paletteView];
      v100 = [v99 contentScrollView];
      [v100 setContentOffset:{v94, v96}];
    }
  }

  if ([(PKPaletteHostView *)self panGestureShouldDragPaletteView])
  {
    [v4 locationInView:self];
    v102 = v101;
    v104 = v103;
    [(PKPaletteHostView *)self bounds];
    [(PKPaletteHostView *)self _scheduleDraggingTransitionToVisualState:_PKPaletteVisualStateForPointInRectToSettle(0, v105, v106, v107, v108, v102, v104)];
    [v4 translationInView:self];
    v110 = v109;
    v112 = v111;
    [(PKPaletteHostView *)self draggingInitialPaletteCenterInSelf];
    v114 = v113;
    [(PKPaletteHostView *)self draggingInitialPaletteCenterInSelf];
    v116 = v115;
    v117 = [(PKPaletteHostView *)self paletteDraggingBehavior];
    [(PKPaletteHostView *)self bounds];
    v118 = CGRectGetMidX(v166);
    [(PKPaletteHostView *)self bounds];
    v119 = CGRectGetMidY(v167);
    v120 = [(PKPaletteHostView *)self paletteTransition];
    v121 = [v120 intermediateVisualState];
    if ((v121 - 4) < 4 || v121 == 1)
    {
      v122 = v112 + v116;
      if (v117)
      {
        v122 = v104;
      }

      v123 = v122 - v119;
      v124 = v110 + v114;
      if (v117)
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
    v19 = v126;
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

- (void)_scheduleDraggingTransitionToVisualState:(int64_t)a3
{
  if ([(PKPaletteHostView *)self draggingPendingPaletteVisualState]!= a3)
  {
    [(PKPaletteHostView *)self setDraggingPendingPaletteVisualState:a3];
    if ((a3 - 4) < 4 || a3 == 1)
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
  v3 = [(PKPaletteHostView *)self draggingPendingPaletteVisualState];
  if (v3)
  {

    [(PKPaletteHostView *)self _setPaletteVisualState:v3 usingTransition:1];
  }
}

- (CGPoint)_projectedLandingPointForGestureRecognizerEnd:(id)a3
{
  v51[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaletteHostView *)self layoutMarginsGuide];
  [v5 layoutFrame];
  v45 = v7;
  v46 = v6;
  v43 = v9;
  v44 = v8;

  [v4 locationInView:self];
  v11 = v10;
  v13 = v12;
  [v4 velocityInView:self];
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

- (void)transitionIntermediateVisualStateDidChange:(id)a3
{
  [(PKPaletteHostView *)self _updatePaletteSizeAnimated:1];
  [(PKPaletteHostView *)self _updateToolPreviewMinimizedStateAnimated:1];

  [(PKPaletteHostView *)self _updatePaletteAppearanceAnimated:1];
}

- (void)_performAnimated:(BOOL)a3 tracking:(BOOL)a4 animations:(id)a5 completion:(id)a6
{
  v7 = a4;
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = v10;
  if (v8)
  {
    if (v7)
    {
      v12 = 0.86;
    }

    else
    {
      v12 = 0.845;
    }

    if (v7)
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
    v16 = v10;
    [v14 _animateUsingSpringWithDampingRatio:v7 response:v9 tracking:v15 dampingRatioSmoothing:v12 responseSmoothing:v13 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  }

  else
  {
    [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v9];
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

- (void)_updateToolPreviewMinimizedStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPaletteHostView *)self paletteVisualState];
  v6 = [(PKPaletteHostView *)self paletteTransition];
  v7 = [v6 isTransitionInProgress];

  if (v7)
  {
    v8 = [(PKPaletteHostView *)self paletteTransition];
    v5 = [v8 intermediateVisualState];
  }

  v9 = [(PKPaletteHostView *)self paletteView];
  [v9 setToolPreviewMinimized:v5 == 2 animated:v3];
}

- (void)_updateToolPreviewRotationAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPaletteHostView *)self paletteTransition];
  v6 = [v5 isTransitionInProgress];

  if (v6)
  {
    v7 = [(PKPaletteHostView *)self paletteTransition];
    v8 = [v7 pointingDirection];

    v9 = 1.57079633;
    if (v8 != 2)
    {
      v9 = 0.0;
    }

    v10 = v8 == 1;
  }

  else
  {
    v11 = [(PKPaletteHostView *)self paletteVisualState];
    v9 = 1.57079633;
    if (v11 != 6)
    {
      v9 = 0.0;
    }

    v10 = v11 == 7;
  }

  if (v10)
  {
    v12 = -1.57079633;
  }

  else
  {
    v12 = v9;
  }

  if (v3)
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
    v13 = [(PKPaletteHostView *)self paletteView];
    v14 = [v13 toolPreviewView];
    CGAffineTransformMakeRotation(&v15, v12);
    [v14 setTransform:&v15];
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

- (void)_updatePaletteSizeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPaletteHostView *)self paletteVisualState];
  v6 = [(PKPaletteHostView *)self paletteTransition];
  v7 = [v6 isTransitionInProgress];

  if (v7)
  {
    v8 = [(PKPaletteHostView *)self paletteTransition];
    v5 = [v8 intermediateVisualState];

    if (v5 == 3)
    {
      v9 = [(PKPaletteHostView *)self paletteTransition];
      v10 = [v9 pointingDirection];

      v11 = dbl_1C801DB20[(v10 - 1) < 2];
      v5 = 3;
LABEL_9:
      if (([(PKPaletteHostView *)self palettePosition]- 5) > 3)
      {
        goto LABEL_19;
      }

      v13 = [(PKPaletteHostView *)self palettePosition];
      v12 = self;
      v14 = 0;
      goto LABEL_18;
    }
  }

  v11 = 0.531;
  if (v5 > 4)
  {
    if (v5 != 5)
    {
      if (v5 == 6)
      {
        v12 = self;
        v13 = 4;
      }

      else
      {
        if (v5 != 7)
        {
          goto LABEL_19;
        }

        v12 = self;
        v13 = 2;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if ((v5 - 2) < 2)
    {
      goto LABEL_9;
    }

    if (v5 != 1)
    {
      if (v5 != 4)
      {
        goto LABEL_19;
      }

      v12 = self;
      v13 = 1;
      goto LABEL_17;
    }
  }

  v12 = self;
  v13 = 3;
LABEL_17:
  v14 = 1;
LABEL_18:
  [(PKPaletteHostView *)v12 _paletteWillDockToPosition:v13 prepareForExpansion:v14];
LABEL_19:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PKPaletteHostView__updatePaletteSizeAnimated___block_invoke;
  aBlock[3] = &unk_1E82D7170;
  aBlock[4] = self;
  aBlock[5] = v5;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (v3)
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

- (CGSize)_paletteSizeForVisualState:(int64_t)a3
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v9 = [(PKPaletteHostView *)self paletteView];
        [v9 paletteSizeForEdge:4];
        v4 = v10;

        [(PKPaletteHostView *)self _paletteViewCompactHeight];
        v5 = v11;
        break;
      case 2:
        v12 = [(PKPaletteHostView *)self paletteView];
        [v12 minimizedPaletteSize];
        goto LABEL_16;
      case 3:
        v7 = [(PKPaletteHostView *)self paletteView];
        [v7 paletteSizeForEdge:4];
        v5 = v8;

        v4 = v5;
        break;
    }
  }

  else
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v6 = 1;
      }

      else
      {
        v6 = 4;
      }

      goto LABEL_15;
    }

    if (a3 == 6)
    {
      v6 = 2;
      goto LABEL_15;
    }

    if (a3 == 7)
    {
      v6 = 8;
LABEL_15:
      v12 = [(PKPaletteHostView *)self paletteView];
      [v12 paletteSizeForEdge:v6];
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
  v2 = [(PKPaletteHostView *)self paletteTransition];
  v3 = [v2 isTransitionInProgress];

  return v3;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([(PKPaletteHostView *)self isPaletteVisualStateMinimized])
  {
    v9 = [v7 view];
    CGAffineTransformMakeScale(&v14, 1.15, 1.15);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v13 = v14;
    v11[2] = __65__PKPaletteHostView_pointerInteraction_willEnterRegion_animator___block_invoke;
    v11[3] = &unk_1E82DA028;
    v12 = v9;
    v10 = v9;
    [v8 addAnimations:v11];
  }
}

void __65__PKPaletteHostView_pointerInteraction_willEnterRegion_animator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) paletteView];
  [v1 setTransform:&v2];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = [a3 view];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PKPaletteHostView_pointerInteraction_willExitRegion_animator___block_invoke;
  v9[3] = &unk_1E82D7148;
  v10 = v7;
  v8 = v7;
  [v6 addAnimations:v9];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPaletteHostView;
  [(PKPaletteHostView *)&v16 traitCollectionDidChange:v4];
  v5 = [(PKPaletteHostView *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  if (v6 == [v4 verticalSizeClass])
  {
    v7 = [(PKPaletteHostView *)self traitCollection];
    v8 = [v7 horizontalSizeClass];
    v9 = [v4 horizontalSizeClass];

    if (v8 == v9)
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
    v12 = [(PKPaletteHostView *)self lastNonCompactPalettePosition];
    v13 = 3;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__PKPaletteHostView_traitCollectionDidChange___block_invoke_2;
    v14[3] = &unk_1E82D7170;
    if (v12)
    {
      v13 = v12;
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
  v3 = [(PKPaletteHostView *)self traitCollection];
  v4 = [(PKPaletteHostView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

  return v6;
}

- (void)paletteViewShowFeedbackForToolChange:(id)a3
{
  [(PKPaletteHostView *)self _installPencilInteractionFeedbackHostViewIfNeeded];
  v4 = [(PKPaletteHostView *)self pencilInteractionFeedbackHostView];
  v5 = [(PKPaletteHostView *)self window];
  v6 = [v5 traitCollection];
  [v4 setOverrideUserInterfaceStyle:{objc_msgSend(v6, "userInterfaceStyle")}];

  v7 = [(PKPaletteHostView *)self pencilInteractionFeedbackHostView];
  [v7 showFeedbackForCurrentlySelectedToolInPaletteView];
}

- (void)paletteViewReturnKeyTypeDidChange:(id)a3
{
  v8 = a3;
  if (([v8 palettePosition] - 5) <= 3 && objc_msgSend(v8, "shouldExpandFromCorner"))
  {
    v4 = [(PKPaletteHostView *)self paletteView];
    v5 = [(PKPaletteHostView *)self paletteView];
    v6 = [v4 edgeLocationToDockFromCorner:{objc_msgSend(v5, "autoHideCorner")}];

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

- (void)paletteViewStateDidChange:(id)a3 updatePaletteAppearance:(BOOL)a4
{
  v4 = a4;
  [(PKPaletteHostView *)self _updatePaletteViewSizeConstraints];
  if (v4)
  {

    [(PKPaletteHostView *)self _updatePaletteAppearanceAnimated:1];
  }
}

- (void)paletteViewStateDidChangeScaleFactor:(id)a3
{
  [(PKPaletteHostView *)self _updatePaletteViewSizeConstraints];
  v4 = [(PKPaletteHostView *)self palettePosition];

  [(PKPaletteHostView *)self _updateConstraintsToDockPaletteToPosition:v4];
}

- (void)paletteViewStateDidChangeAutoHide:(id)a3
{
  if ([a3 isAutoHideEnabled])
  {

    [(PKPaletteHostView *)self _dockPaletteToAutoHideCornerAnimated:1];
  }

  else
  {
    v4 = [(PKPaletteHostView *)self paletteView];
    v5 = [(PKPaletteHostView *)self paletteView];
    v6 = [v4 edgeLocationToDockFromCorner:{objc_msgSend(v5, "autoHideCorner")}];

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
  v3 = [(PKPaletteHostView *)self paletteView];
  v4 = [(PKPaletteHostView *)self window];
  v5 = [v4 traitCollection];
  v6 = [v3 borderColorForTraitCollection:v5];

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
  v2 = [(PKPaletteHostView *)self paletteView];
  [v2 shadowOpacity];
  v4 = v3;

  return v4;
}

- (double)paletteShadowRadius
{
  v2 = [(PKPaletteHostView *)self paletteView];
  [v2 shadowRadius];
  v4 = v3;

  return v4;
}

- (double)paletteBorderWidth
{
  v3 = [(PKPaletteHostView *)self paletteView];
  v4 = [(PKPaletteHostView *)self window];
  v5 = [v4 traitCollection];
  [v3 borderWidthForTraitCollection:v5];
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
@interface PKPalettePencilInteractionFeedbackHostView
- (BOOL)_isPencilInteractionFeedbackViewAlmostOffScreen;
- (CGSize)minimizedPaletteSize;
- (PKPalettePencilInteractionFeedbackHostView)initWithDelegate:(id)delegate;
- (PKPalettePencilInteractionFeedbackHostViewDelegate)delegate;
- (double)minimizedPaletteScaleFactor;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)_palettePosition;
- (void)_animatePencilInteractionFeedbackViewToVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)_updateLayoutGuideConstraints;
- (void)layoutSubviews;
- (void)showFeedbackForCurrentlySelectedToolInPaletteView;
@end

@implementation PKPalettePencilInteractionFeedbackHostView

- (PKPalettePencilInteractionFeedbackHostView)initWithDelegate:(id)delegate
{
  v31[4] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v30.receiver = self;
  v30.super_class = PKPalettePencilInteractionFeedbackHostView;
  v5 = [(PKPalettePencilInteractionFeedbackHostView *)&v30 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    pencilInteractionFeedbackViewLayoutGuide = v6->_pencilInteractionFeedbackViewLayoutGuide;
    v6->_pencilInteractionFeedbackViewLayoutGuide = v7;

    [(PKPalettePencilInteractionFeedbackHostView *)v6 addLayoutGuide:v6->_pencilInteractionFeedbackViewLayoutGuide];
    widthAnchor = [(UILayoutGuide *)v6->_pencilInteractionFeedbackViewLayoutGuide widthAnchor];
    widthAnchor2 = [(PKPalettePencilInteractionFeedbackHostView *)v6 widthAnchor];
    v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    layoutGuideWidthConstraint = v6->_layoutGuideWidthConstraint;
    v6->_layoutGuideWidthConstraint = v11;

    heightAnchor = [(UILayoutGuide *)v6->_pencilInteractionFeedbackViewLayoutGuide heightAnchor];
    heightAnchor2 = [(PKPalettePencilInteractionFeedbackHostView *)v6 heightAnchor];
    v15 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    layoutGuideHeightConstraint = v6->_layoutGuideHeightConstraint;
    v6->_layoutGuideHeightConstraint = v15;

    centerXAnchor = [(UILayoutGuide *)v6->_pencilInteractionFeedbackViewLayoutGuide centerXAnchor];
    centerXAnchor2 = [(PKPalettePencilInteractionFeedbackHostView *)v6 centerXAnchor];
    v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    layoutGuideCenterXConstraint = v6->_layoutGuideCenterXConstraint;
    v6->_layoutGuideCenterXConstraint = v19;

    centerYAnchor = [(UILayoutGuide *)v6->_pencilInteractionFeedbackViewLayoutGuide centerYAnchor];
    centerYAnchor2 = [(PKPalettePencilInteractionFeedbackHostView *)v6 centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    layoutGuideCenterYConstraint = v6->_layoutGuideCenterYConstraint;
    v6->_layoutGuideCenterYConstraint = v23;

    v25 = MEMORY[0x1E696ACD8];
    v31[0] = v6->_layoutGuideWidthConstraint;
    v31[1] = v6->_layoutGuideHeightConstraint;
    v31[2] = v6->_layoutGuideCenterXConstraint;
    v31[3] = v6->_layoutGuideCenterYConstraint;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [v25 activateConstraints:v26];

    v27 = objc_alloc_init(MEMORY[0x1E69DD268]);
    feedbackViewVisibilityAnimatableProperty = v6->_feedbackViewVisibilityAnimatableProperty;
    v6->_feedbackViewVisibilityAnimatableProperty = v27;

    [(UIViewFloatAnimatableProperty *)v6->_feedbackViewVisibilityAnimatableProperty setValue:0.0];
  }

  return v6;
}

- (CGSize)minimizedPaletteSize
{
  traitCollection = [(PKPalettePencilInteractionFeedbackHostView *)self traitCollection];
  window = [(PKPalettePencilInteractionFeedbackHostView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

  delegate = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
  paletteView = [delegate paletteView];
  [paletteView minimizedPaletteSize];
  v10 = v9;
  v12 = v11;

  if (v6)
  {
    v10 = v10 * 0.8;
    v12 = v12 * 0.8;
  }

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (double)minimizedPaletteScaleFactor
{
  traitCollection = [(PKPalettePencilInteractionFeedbackHostView *)self traitCollection];
  window = [(PKPalettePencilInteractionFeedbackHostView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

  delegate = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
  paletteView = [delegate paletteView];
  v9 = paletteView;
  if (v6)
  {
    paletteScaleFactorPolicy = [paletteView paletteScaleFactorPolicy];
    delegate2 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    paletteView2 = [delegate2 paletteView];
    [paletteView2 adjustedWindowSceneBounds];
    [paletteScaleFactorPolicy scaleFactorForWindowBounds:0 paletteView:?];
    v14 = v13;
  }

  else
  {
    [paletteView paletteScaleFactor];
    v14 = v15;
  }

  return v14 * 0.8;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = PKPalettePencilInteractionFeedbackHostView;
  v5 = [(PKPalettePencilInteractionFeedbackHostView *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = PKPalettePencilInteractionFeedbackHostView;
  [(PKPalettePencilInteractionFeedbackHostView *)&v39 layoutSubviews];
  pencilInteractionFeedbackView = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];

  if (pencilInteractionFeedbackView)
  {
    [(PKPalettePencilInteractionFeedbackHostView *)self minimizedPaletteSize];
    v5 = v4 * 0.5;
    pencilInteractionFeedbackView2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    [pencilInteractionFeedbackView2 _setCornerRadius:v5];

    delegate = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    paletteShadowColor = [delegate paletteShadowColor];
    cGColor = [paletteShadowColor CGColor];
    pencilInteractionFeedbackView3 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    layer = [pencilInteractionFeedbackView3 layer];
    [layer setShadowColor:cGColor];

    delegate2 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    [delegate2 paletteShadowOpacity];
    *&v5 = v13;
    pencilInteractionFeedbackView4 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    layer2 = [pencilInteractionFeedbackView4 layer];
    LODWORD(v16) = LODWORD(v5);
    [layer2 setShadowOpacity:v16];

    delegate3 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    [delegate3 paletteShadowOffset];
    v19 = v18;
    v21 = v20;
    pencilInteractionFeedbackView5 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    layer3 = [pencilInteractionFeedbackView5 layer];
    [layer3 setShadowOffset:{v19, v21}];

    delegate4 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    [delegate4 paletteShadowRadius];
    v26 = v25;
    pencilInteractionFeedbackView6 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    layer4 = [pencilInteractionFeedbackView6 layer];
    [layer4 setShadowRadius:v26];

    delegate5 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    paletteBorderColor = [delegate5 paletteBorderColor];
    cGColor2 = [paletteBorderColor CGColor];
    pencilInteractionFeedbackView7 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    layer5 = [pencilInteractionFeedbackView7 layer];
    [layer5 setBorderColor:cGColor2];

    delegate6 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    [delegate6 paletteBorderWidth];
    v36 = v35;
    pencilInteractionFeedbackView8 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    layer6 = [pencilInteractionFeedbackView8 layer];
    [layer6 setBorderWidth:v36];
  }
}

- (BOOL)_isPencilInteractionFeedbackViewAlmostOffScreen
{
  feedbackViewVisibilityAnimatableProperty = [(PKPalettePencilInteractionFeedbackHostView *)self feedbackViewVisibilityAnimatableProperty];
  [feedbackViewVisibilityAnimatableProperty presentationValue];
  v4 = v3 < 0.5;

  return v4;
}

- (void)showFeedbackForCurrentlySelectedToolInPaletteView
{
  v93[2] = *MEMORY[0x1E69E9840];
  pencilInteractionFeedbackViewAutodismissTimer = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewAutodismissTimer];
  [pencilInteractionFeedbackViewAutodismissTimer invalidate];

  [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewAutodismissTimer:0];
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E695DFF0];
  v78 = MEMORY[0x1E69E9820];
  v79 = 3221225472;
  v80 = __95__PKPalettePencilInteractionFeedbackHostView_showFeedbackForCurrentlySelectedToolInPaletteView__block_invoke;
  v81 = &unk_1E82DAA38;
  objc_copyWeak(&v82, &location);
  v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:&v78 block:0.9];
  [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewAutodismissTimer:v5, v78, v79, v80, v81];

  pencilInteractionFeedbackView = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
  LODWORD(v5) = pencilInteractionFeedbackView == 0;

  if (v5)
  {
    v7 = objc_alloc_init(PKPalettePencilInteractionFeedbackView);
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackView:v7];

    pencilInteractionFeedbackView2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    [pencilInteractionFeedbackView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    pencilInteractionFeedbackView3 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    [(PKPalettePencilInteractionFeedbackHostView *)self addSubview:pencilInteractionFeedbackView3];

    [(PKPalettePencilInteractionFeedbackHostView *)self minimizedPaletteSize];
    v11 = v10;
    v13 = v12;
    v14 = MEMORY[0x1E696ACD8];
    pencilInteractionFeedbackView4 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    widthAnchor = [pencilInteractionFeedbackView4 widthAnchor];
    v17 = [widthAnchor constraintEqualToConstant:v11];
    v93[0] = v17;
    pencilInteractionFeedbackView5 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    heightAnchor = [pencilInteractionFeedbackView5 heightAnchor];
    v20 = [heightAnchor constraintEqualToConstant:v13];
    v93[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
    [v14 activateConstraints:v21];

    delegate = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    [delegate paletteEdgeSpacingForMinimized];
    v24 = v23;

    pencilInteractionFeedbackView6 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    bottomAnchor = [pencilInteractionFeedbackView6 bottomAnchor];
    pencilInteractionFeedbackViewLayoutGuide = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLayoutGuide];
    bottomAnchor2 = [pencilInteractionFeedbackViewLayoutGuide bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v24];
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewBottomConstraint:v29];

    pencilInteractionFeedbackView7 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    leftAnchor = [pencilInteractionFeedbackView7 leftAnchor];
    pencilInteractionFeedbackViewLayoutGuide2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLayoutGuide];
    leftAnchor2 = [pencilInteractionFeedbackViewLayoutGuide2 leftAnchor];
    v34 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v24];
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewLeftConstraint:v34];

    pencilInteractionFeedbackView8 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    topAnchor = [pencilInteractionFeedbackView8 topAnchor];
    pencilInteractionFeedbackViewLayoutGuide3 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLayoutGuide];
    topAnchor2 = [pencilInteractionFeedbackViewLayoutGuide3 topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v24];
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewTopConstraint:v39];

    pencilInteractionFeedbackView9 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    rightAnchor = [pencilInteractionFeedbackView9 rightAnchor];
    pencilInteractionFeedbackViewLayoutGuide4 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLayoutGuide];
    rightAnchor2 = [pencilInteractionFeedbackViewLayoutGuide4 rightAnchor];
    v44 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-v24];
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewRightConstraint:v44];

    pencilInteractionFeedbackView10 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    centerXAnchor = [pencilInteractionFeedbackView10 centerXAnchor];
    pencilInteractionFeedbackViewLayoutGuide5 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLayoutGuide];
    centerXAnchor2 = [pencilInteractionFeedbackViewLayoutGuide5 centerXAnchor];
    v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewCenterXConstraint:v49];

    pencilInteractionFeedbackView11 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    centerYAnchor = [pencilInteractionFeedbackView11 centerYAnchor];
    pencilInteractionFeedbackViewLayoutGuide6 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLayoutGuide];
    centerYAnchor2 = [pencilInteractionFeedbackViewLayoutGuide6 centerYAnchor];
    v54 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewCenterYConstraint:v54];
  }

  if (![(PKPalettePencilInteractionFeedbackHostView *)self isPencilInteractionFeedbackViewVisible])
  {
    v55 = MEMORY[0x1E696ACD8];
    pencilInteractionFeedbackViewBottomConstraint = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewBottomConstraint];
    v92[0] = pencilInteractionFeedbackViewBottomConstraint;
    pencilInteractionFeedbackViewLeftConstraint = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLeftConstraint];
    v92[1] = pencilInteractionFeedbackViewLeftConstraint;
    pencilInteractionFeedbackViewTopConstraint = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewTopConstraint];
    v92[2] = pencilInteractionFeedbackViewTopConstraint;
    pencilInteractionFeedbackViewRightConstraint = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewRightConstraint];
    v92[3] = pencilInteractionFeedbackViewRightConstraint;
    pencilInteractionFeedbackViewCenterXConstraint = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewCenterXConstraint];
    v92[4] = pencilInteractionFeedbackViewCenterXConstraint;
    pencilInteractionFeedbackViewCenterYConstraint = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewCenterYConstraint];
    v92[5] = pencilInteractionFeedbackViewCenterYConstraint;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:6];
    [v55 deactivateConstraints:v62];

    _palettePosition = [(PKPalettePencilInteractionFeedbackHostView *)self _palettePosition];
    if (_palettePosition > 4)
    {
      if (_palettePosition > 6)
      {
        if (_palettePosition == 7)
        {
          v71 = MEMORY[0x1E696ACD8];
          pencilInteractionFeedbackViewBottomConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewBottomConstraint];
          v84[0] = pencilInteractionFeedbackViewBottomConstraint2;
          pencilInteractionFeedbackViewRightConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewRightConstraint];
          v84[1] = pencilInteractionFeedbackViewRightConstraint2;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
          [v71 activateConstraints:v67];
          goto LABEL_22;
        }

        if (_palettePosition == 8)
        {
          v69 = MEMORY[0x1E696ACD8];
          pencilInteractionFeedbackViewBottomConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewBottomConstraint];
          v85[0] = pencilInteractionFeedbackViewBottomConstraint2;
          pencilInteractionFeedbackViewRightConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLeftConstraint];
          v85[1] = pencilInteractionFeedbackViewRightConstraint2;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
          [v69 activateConstraints:v67];
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      v68 = MEMORY[0x1E696ACD8];
      if (_palettePosition == 5)
      {
        pencilInteractionFeedbackViewBottomConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewTopConstraint];
        v87[0] = pencilInteractionFeedbackViewBottomConstraint2;
        pencilInteractionFeedbackViewRightConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLeftConstraint];
        v87[1] = pencilInteractionFeedbackViewRightConstraint2;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
      }

      else
      {
        pencilInteractionFeedbackViewBottomConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewTopConstraint];
        v86[0] = pencilInteractionFeedbackViewBottomConstraint2;
        pencilInteractionFeedbackViewRightConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewRightConstraint];
        v86[1] = pencilInteractionFeedbackViewRightConstraint2;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
      }
    }

    else
    {
      if (_palettePosition <= 2)
      {
        if (_palettePosition == 1)
        {
          v70 = MEMORY[0x1E696ACD8];
          pencilInteractionFeedbackViewBottomConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewTopConstraint];
          v90[0] = pencilInteractionFeedbackViewBottomConstraint2;
          pencilInteractionFeedbackViewRightConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewCenterXConstraint];
          v90[1] = pencilInteractionFeedbackViewRightConstraint2;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
          [v70 activateConstraints:v67];
          goto LABEL_22;
        }

        if (_palettePosition == 2)
        {
          v64 = MEMORY[0x1E696ACD8];
          pencilInteractionFeedbackViewBottomConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewRightConstraint];
          v88[0] = pencilInteractionFeedbackViewBottomConstraint2;
          pencilInteractionFeedbackViewRightConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewCenterYConstraint];
          v88[1] = pencilInteractionFeedbackViewRightConstraint2;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
          [v64 activateConstraints:v67];
LABEL_22:
        }

LABEL_23:
        [(PKPalettePencilInteractionFeedbackHostView *)self _updateLayoutGuideConstraints];
        goto LABEL_24;
      }

      v68 = MEMORY[0x1E696ACD8];
      if (_palettePosition == 3)
      {
        pencilInteractionFeedbackViewBottomConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewBottomConstraint];
        v91[0] = pencilInteractionFeedbackViewBottomConstraint2;
        pencilInteractionFeedbackViewRightConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewCenterXConstraint];
        v91[1] = pencilInteractionFeedbackViewRightConstraint2;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
      }

      else
      {
        pencilInteractionFeedbackViewBottomConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLeftConstraint];
        v89[0] = pencilInteractionFeedbackViewBottomConstraint2;
        pencilInteractionFeedbackViewRightConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewCenterYConstraint];
        v89[1] = pencilInteractionFeedbackViewRightConstraint2;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
      }
    }
    v67 = ;
    [v68 activateConstraints:v67];
    goto LABEL_22;
  }

LABEL_24:
  _isPencilInteractionFeedbackViewAlmostOffScreen = [(PKPalettePencilInteractionFeedbackHostView *)self _isPencilInteractionFeedbackViewAlmostOffScreen];
  delegate2 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
  paletteView = [delegate2 paletteView];
  selectedToolView = [paletteView selectedToolView];
  tool = [selectedToolView tool];

  pencilInteractionFeedbackView12 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
  [(PKPalettePencilInteractionFeedbackHostView *)self minimizedPaletteScaleFactor];
  [pencilInteractionFeedbackView12 showPreviewForTool:tool scalingFactor:!_isPencilInteractionFeedbackViewAlmostOffScreen animated:?];

  [(PKPalettePencilInteractionFeedbackHostView *)self _animatePencilInteractionFeedbackViewToVisible:1 animated:1 completion:0];
  objc_destroyWeak(&v82);
  objc_destroyWeak(&location);
}

void __95__PKPalettePencilInteractionFeedbackHostView_showFeedbackForCurrentlySelectedToolInPaletteView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _animatePencilInteractionFeedbackViewToVisible:0 animated:1 completion:0];
}

- (int64_t)_palettePosition
{
  delegate = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
  paletteView = [delegate paletteView];
  palettePosition = [paletteView palettePosition];

  return palettePosition;
}

- (void)_animatePencilInteractionFeedbackViewToVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  completionCopy = completion;
  if ([(PKPalettePencilInteractionFeedbackHostView *)self isPencilInteractionFeedbackViewVisible]!= visibleCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __113__PKPalettePencilInteractionFeedbackHostView__animatePencilInteractionFeedbackViewToVisible_animated_completion___block_invoke;
    aBlock[3] = &unk_1E82D90B8;
    aBlock[4] = self;
    v23 = visibleCopy;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (animatedCopy)
    {
      [(PKPalettePencilInteractionFeedbackHostView *)self layoutIfNeeded];
      v11 = MEMORY[0x1E69DD250];
      delegate = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
      [delegate paletteSpringAnimationDampingRatio];
      v14 = v13;
      delegate2 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
      [delegate2 paletteSpringAnimationResponse];
      v17 = v16;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __113__PKPalettePencilInteractionFeedbackHostView__animatePencilInteractionFeedbackViewToVisible_animated_completion___block_invoke_2;
      v20[3] = &unk_1E82D7908;
      v20[4] = self;
      v21 = v10;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __113__PKPalettePencilInteractionFeedbackHostView__animatePencilInteractionFeedbackViewToVisible_animated_completion___block_invoke_3;
      v18[3] = &unk_1E82DB520;
      v18[4] = self;
      v19 = completionCopy;
      [v11 _animateUsingSpringWithDampingRatio:0 response:v20 tracking:v18 dampingRatioSmoothing:v14 responseSmoothing:v17 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    }

    else
    {
      (*(v9 + 2))(v9);
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }
}

uint64_t __113__PKPalettePencilInteractionFeedbackHostView__animatePencilInteractionFeedbackViewToVisible_animated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPencilInteractionFeedbackViewVisible:*(a1 + 40)];
  LOBYTE(v2) = *(a1 + 40);
  v3 = v2;
  v4 = [*(a1 + 32) feedbackViewVisibilityAnimatableProperty];
  [v4 setValue:v3];

  v5 = *(a1 + 32);

  return [v5 _updateLayoutGuideConstraints];
}

uint64_t __113__PKPalettePencilInteractionFeedbackHostView__animatePencilInteractionFeedbackViewToVisible_animated_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __113__PKPalettePencilInteractionFeedbackHostView__animatePencilInteractionFeedbackViewToVisible_animated_completion___block_invoke_3(uint64_t a1)
{
  if (([*(a1 + 32) isPencilInteractionFeedbackViewVisible] & 1) == 0)
  {
    v2 = [*(a1 + 32) pencilInteractionFeedbackView];
    [v2 removeFromSuperview];

    [*(a1 + 32) setPencilInteractionFeedbackView:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_updateLayoutGuideConstraints
{
  delegate = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
  paletteView = [delegate paletteView];
  [paletteView paletteSizeForEdge:4];
  v6 = v5;

  delegate2 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
  [delegate2 paletteEdgeSpacing];
  v9 = v6 + v8;

  _palettePosition = [(PKPalettePencilInteractionFeedbackHostView *)self _palettePosition];
  if (_palettePosition > 4)
  {
    if (_palettePosition <= 6)
    {
      if (_palettePosition == 5)
      {
        delegate3 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
        paletteView2 = [delegate3 paletteView];
        v13 = [paletteView2 edgeLocationToDockFromCorner:1];

        if (v13 == 2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        delegate4 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
        paletteView3 = [delegate4 paletteView];
        v13 = [paletteView3 edgeLocationToDockFromCorner:2];

        if (v13 == 8)
        {
LABEL_30:
          v20 = 0.0;
          if ([(PKPalettePencilInteractionFeedbackHostView *)self isPencilInteractionFeedbackViewVisible])
          {
            v9 = 0.0;
          }

          goto LABEL_32;
        }
      }

      if (v13 != 1)
      {
        return;
      }

      goto LABEL_18;
    }

    if (_palettePosition == 7)
    {
      delegate5 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
      paletteView4 = [delegate5 paletteView];
      v16 = [paletteView4 edgeLocationToDockFromCorner:8];

      if (v16 == 8)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (_palettePosition != 8)
      {
        return;
      }

      delegate6 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
      paletteView5 = [delegate6 paletteView];
      v16 = [paletteView5 edgeLocationToDockFromCorner:4];

      if (v16 == 2)
      {
        goto LABEL_21;
      }
    }

    if (v16 != 4)
    {
      return;
    }

    goto LABEL_26;
  }

  if (_palettePosition <= 2)
  {
    if (_palettePosition != 1)
    {
      if (_palettePosition != 2)
      {
        return;
      }

      goto LABEL_30;
    }

LABEL_18:
    layoutGuideCenterXConstraint = [(PKPalettePencilInteractionFeedbackHostView *)self layoutGuideCenterXConstraint];
    v20 = 0.0;
    [layoutGuideCenterXConstraint setConstant:0.0];

    if (![(PKPalettePencilInteractionFeedbackHostView *)self isPencilInteractionFeedbackViewVisible])
    {
      v20 = -v9;
    }

    goto LABEL_33;
  }

  if (_palettePosition == 3)
  {
LABEL_26:
    layoutGuideCenterXConstraint2 = [(PKPalettePencilInteractionFeedbackHostView *)self layoutGuideCenterXConstraint];
    v20 = 0.0;
    [layoutGuideCenterXConstraint2 setConstant:0.0];

    if (![(PKPalettePencilInteractionFeedbackHostView *)self isPencilInteractionFeedbackViewVisible])
    {
      v20 = v9;
    }

    goto LABEL_33;
  }

LABEL_21:
  v20 = 0.0;
  if ([(PKPalettePencilInteractionFeedbackHostView *)self isPencilInteractionFeedbackViewVisible])
  {
    v9 = 0.0;
  }

  else
  {
    v9 = -v9;
  }

LABEL_32:
  layoutGuideCenterXConstraint3 = [(PKPalettePencilInteractionFeedbackHostView *)self layoutGuideCenterXConstraint];
  [layoutGuideCenterXConstraint3 setConstant:v9];

LABEL_33:
  layoutGuideCenterYConstraint = [(PKPalettePencilInteractionFeedbackHostView *)self layoutGuideCenterYConstraint];
  [layoutGuideCenterYConstraint setConstant:v20];
}

- (PKPalettePencilInteractionFeedbackHostViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
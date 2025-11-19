@interface PKPalettePencilInteractionFeedbackHostView
- (BOOL)_isPencilInteractionFeedbackViewAlmostOffScreen;
- (CGSize)minimizedPaletteSize;
- (PKPalettePencilInteractionFeedbackHostView)initWithDelegate:(id)a3;
- (PKPalettePencilInteractionFeedbackHostViewDelegate)delegate;
- (double)minimizedPaletteScaleFactor;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)_palettePosition;
- (void)_animatePencilInteractionFeedbackViewToVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_updateLayoutGuideConstraints;
- (void)layoutSubviews;
- (void)showFeedbackForCurrentlySelectedToolInPaletteView;
@end

@implementation PKPalettePencilInteractionFeedbackHostView

- (PKPalettePencilInteractionFeedbackHostView)initWithDelegate:(id)a3
{
  v31[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PKPalettePencilInteractionFeedbackHostView;
  v5 = [(PKPalettePencilInteractionFeedbackHostView *)&v30 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    pencilInteractionFeedbackViewLayoutGuide = v6->_pencilInteractionFeedbackViewLayoutGuide;
    v6->_pencilInteractionFeedbackViewLayoutGuide = v7;

    [(PKPalettePencilInteractionFeedbackHostView *)v6 addLayoutGuide:v6->_pencilInteractionFeedbackViewLayoutGuide];
    v9 = [(UILayoutGuide *)v6->_pencilInteractionFeedbackViewLayoutGuide widthAnchor];
    v10 = [(PKPalettePencilInteractionFeedbackHostView *)v6 widthAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    layoutGuideWidthConstraint = v6->_layoutGuideWidthConstraint;
    v6->_layoutGuideWidthConstraint = v11;

    v13 = [(UILayoutGuide *)v6->_pencilInteractionFeedbackViewLayoutGuide heightAnchor];
    v14 = [(PKPalettePencilInteractionFeedbackHostView *)v6 heightAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    layoutGuideHeightConstraint = v6->_layoutGuideHeightConstraint;
    v6->_layoutGuideHeightConstraint = v15;

    v17 = [(UILayoutGuide *)v6->_pencilInteractionFeedbackViewLayoutGuide centerXAnchor];
    v18 = [(PKPalettePencilInteractionFeedbackHostView *)v6 centerXAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    layoutGuideCenterXConstraint = v6->_layoutGuideCenterXConstraint;
    v6->_layoutGuideCenterXConstraint = v19;

    v21 = [(UILayoutGuide *)v6->_pencilInteractionFeedbackViewLayoutGuide centerYAnchor];
    v22 = [(PKPalettePencilInteractionFeedbackHostView *)v6 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
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
  v3 = [(PKPalettePencilInteractionFeedbackHostView *)self traitCollection];
  v4 = [(PKPalettePencilInteractionFeedbackHostView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

  v7 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
  v8 = [v7 paletteView];
  [v8 minimizedPaletteSize];
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
  v3 = [(PKPalettePencilInteractionFeedbackHostView *)self traitCollection];
  v4 = [(PKPalettePencilInteractionFeedbackHostView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

  v7 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
  v8 = [v7 paletteView];
  v9 = v8;
  if (v6)
  {
    v10 = [v8 paletteScaleFactorPolicy];
    v11 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    v12 = [v11 paletteView];
    [v12 adjustedWindowSceneBounds];
    [v10 scaleFactorForWindowBounds:0 paletteView:?];
    v14 = v13;
  }

  else
  {
    [v8 paletteScaleFactor];
    v14 = v15;
  }

  return v14 * 0.8;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = PKPalettePencilInteractionFeedbackHostView;
  v5 = [(PKPalettePencilInteractionFeedbackHostView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
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
  v3 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];

  if (v3)
  {
    [(PKPalettePencilInteractionFeedbackHostView *)self minimizedPaletteSize];
    v5 = v4 * 0.5;
    v6 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    [v6 _setCornerRadius:v5];

    v7 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    v8 = [v7 paletteShadowColor];
    v9 = [v8 CGColor];
    v10 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v11 = [v10 layer];
    [v11 setShadowColor:v9];

    v12 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    [v12 paletteShadowOpacity];
    *&v5 = v13;
    v14 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v15 = [v14 layer];
    LODWORD(v16) = LODWORD(v5);
    [v15 setShadowOpacity:v16];

    v17 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    [v17 paletteShadowOffset];
    v19 = v18;
    v21 = v20;
    v22 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v23 = [v22 layer];
    [v23 setShadowOffset:{v19, v21}];

    v24 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    [v24 paletteShadowRadius];
    v26 = v25;
    v27 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v28 = [v27 layer];
    [v28 setShadowRadius:v26];

    v29 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    v30 = [v29 paletteBorderColor];
    v31 = [v30 CGColor];
    v32 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v33 = [v32 layer];
    [v33 setBorderColor:v31];

    v34 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    [v34 paletteBorderWidth];
    v36 = v35;
    v37 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v38 = [v37 layer];
    [v38 setBorderWidth:v36];
  }
}

- (BOOL)_isPencilInteractionFeedbackViewAlmostOffScreen
{
  v2 = [(PKPalettePencilInteractionFeedbackHostView *)self feedbackViewVisibilityAnimatableProperty];
  [v2 presentationValue];
  v4 = v3 < 0.5;

  return v4;
}

- (void)showFeedbackForCurrentlySelectedToolInPaletteView
{
  v93[2] = *MEMORY[0x1E69E9840];
  v3 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewAutodismissTimer];
  [v3 invalidate];

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

  v6 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
  LODWORD(v5) = v6 == 0;

  if (v5)
  {
    v7 = objc_alloc_init(PKPalettePencilInteractionFeedbackView);
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackView:v7];

    v8 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    [(PKPalettePencilInteractionFeedbackHostView *)self addSubview:v9];

    [(PKPalettePencilInteractionFeedbackHostView *)self minimizedPaletteSize];
    v11 = v10;
    v13 = v12;
    v14 = MEMORY[0x1E696ACD8];
    v15 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v16 = [v15 widthAnchor];
    v17 = [v16 constraintEqualToConstant:v11];
    v93[0] = v17;
    v18 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v19 = [v18 heightAnchor];
    v20 = [v19 constraintEqualToConstant:v13];
    v93[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
    [v14 activateConstraints:v21];

    v22 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
    [v22 paletteEdgeSpacingForMinimized];
    v24 = v23;

    v25 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v26 = [v25 bottomAnchor];
    v27 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLayoutGuide];
    v28 = [v27 bottomAnchor];
    v29 = [v26 constraintEqualToAnchor:v28 constant:-v24];
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewBottomConstraint:v29];

    v30 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v31 = [v30 leftAnchor];
    v32 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLayoutGuide];
    v33 = [v32 leftAnchor];
    v34 = [v31 constraintEqualToAnchor:v33 constant:v24];
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewLeftConstraint:v34];

    v35 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v36 = [v35 topAnchor];
    v37 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLayoutGuide];
    v38 = [v37 topAnchor];
    v39 = [v36 constraintEqualToAnchor:v38 constant:v24];
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewTopConstraint:v39];

    v40 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v41 = [v40 rightAnchor];
    v42 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLayoutGuide];
    v43 = [v42 rightAnchor];
    v44 = [v41 constraintEqualToAnchor:v43 constant:-v24];
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewRightConstraint:v44];

    v45 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v46 = [v45 centerXAnchor];
    v47 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLayoutGuide];
    v48 = [v47 centerXAnchor];
    v49 = [v46 constraintEqualToAnchor:v48];
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewCenterXConstraint:v49];

    v50 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
    v51 = [v50 centerYAnchor];
    v52 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLayoutGuide];
    v53 = [v52 centerYAnchor];
    v54 = [v51 constraintEqualToAnchor:v53];
    [(PKPalettePencilInteractionFeedbackHostView *)self setPencilInteractionFeedbackViewCenterYConstraint:v54];
  }

  if (![(PKPalettePencilInteractionFeedbackHostView *)self isPencilInteractionFeedbackViewVisible])
  {
    v55 = MEMORY[0x1E696ACD8];
    v56 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewBottomConstraint];
    v92[0] = v56;
    v57 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLeftConstraint];
    v92[1] = v57;
    v58 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewTopConstraint];
    v92[2] = v58;
    v59 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewRightConstraint];
    v92[3] = v59;
    v60 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewCenterXConstraint];
    v92[4] = v60;
    v61 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewCenterYConstraint];
    v92[5] = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:6];
    [v55 deactivateConstraints:v62];

    v63 = [(PKPalettePencilInteractionFeedbackHostView *)self _palettePosition];
    if (v63 > 4)
    {
      if (v63 > 6)
      {
        if (v63 == 7)
        {
          v71 = MEMORY[0x1E696ACD8];
          v65 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewBottomConstraint];
          v84[0] = v65;
          v66 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewRightConstraint];
          v84[1] = v66;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
          [v71 activateConstraints:v67];
          goto LABEL_22;
        }

        if (v63 == 8)
        {
          v69 = MEMORY[0x1E696ACD8];
          v65 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewBottomConstraint];
          v85[0] = v65;
          v66 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLeftConstraint];
          v85[1] = v66;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
          [v69 activateConstraints:v67];
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      v68 = MEMORY[0x1E696ACD8];
      if (v63 == 5)
      {
        v65 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewTopConstraint];
        v87[0] = v65;
        v66 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLeftConstraint];
        v87[1] = v66;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
      }

      else
      {
        v65 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewTopConstraint];
        v86[0] = v65;
        v66 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewRightConstraint];
        v86[1] = v66;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
      }
    }

    else
    {
      if (v63 <= 2)
      {
        if (v63 == 1)
        {
          v70 = MEMORY[0x1E696ACD8];
          v65 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewTopConstraint];
          v90[0] = v65;
          v66 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewCenterXConstraint];
          v90[1] = v66;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
          [v70 activateConstraints:v67];
          goto LABEL_22;
        }

        if (v63 == 2)
        {
          v64 = MEMORY[0x1E696ACD8];
          v65 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewRightConstraint];
          v88[0] = v65;
          v66 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewCenterYConstraint];
          v88[1] = v66;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
          [v64 activateConstraints:v67];
LABEL_22:
        }

LABEL_23:
        [(PKPalettePencilInteractionFeedbackHostView *)self _updateLayoutGuideConstraints];
        goto LABEL_24;
      }

      v68 = MEMORY[0x1E696ACD8];
      if (v63 == 3)
      {
        v65 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewBottomConstraint];
        v91[0] = v65;
        v66 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewCenterXConstraint];
        v91[1] = v66;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
      }

      else
      {
        v65 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewLeftConstraint];
        v89[0] = v65;
        v66 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackViewCenterYConstraint];
        v89[1] = v66;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
      }
    }
    v67 = ;
    [v68 activateConstraints:v67];
    goto LABEL_22;
  }

LABEL_24:
  v72 = [(PKPalettePencilInteractionFeedbackHostView *)self _isPencilInteractionFeedbackViewAlmostOffScreen];
  v73 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
  v74 = [v73 paletteView];
  v75 = [v74 selectedToolView];
  v76 = [v75 tool];

  v77 = [(PKPalettePencilInteractionFeedbackHostView *)self pencilInteractionFeedbackView];
  [(PKPalettePencilInteractionFeedbackHostView *)self minimizedPaletteScaleFactor];
  [v77 showPreviewForTool:v76 scalingFactor:!v72 animated:?];

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
  v2 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
  v3 = [v2 paletteView];
  v4 = [v3 palettePosition];

  return v4;
}

- (void)_animatePencilInteractionFeedbackViewToVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if ([(PKPalettePencilInteractionFeedbackHostView *)self isPencilInteractionFeedbackViewVisible]!= v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __113__PKPalettePencilInteractionFeedbackHostView__animatePencilInteractionFeedbackViewToVisible_animated_completion___block_invoke;
    aBlock[3] = &unk_1E82D90B8;
    aBlock[4] = self;
    v23 = v6;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (v5)
    {
      [(PKPalettePencilInteractionFeedbackHostView *)self layoutIfNeeded];
      v11 = MEMORY[0x1E69DD250];
      v12 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
      [v12 paletteSpringAnimationDampingRatio];
      v14 = v13;
      v15 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
      [v15 paletteSpringAnimationResponse];
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
      v19 = v8;
      [v11 _animateUsingSpringWithDampingRatio:0 response:v20 tracking:v18 dampingRatioSmoothing:v14 responseSmoothing:v17 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    }

    else
    {
      (*(v9 + 2))(v9);
      if (v8)
      {
        v8[2](v8);
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
  v3 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
  v4 = [v3 paletteView];
  [v4 paletteSizeForEdge:4];
  v6 = v5;

  v7 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
  [v7 paletteEdgeSpacing];
  v9 = v6 + v8;

  v10 = [(PKPalettePencilInteractionFeedbackHostView *)self _palettePosition];
  if (v10 > 4)
  {
    if (v10 <= 6)
    {
      if (v10 == 5)
      {
        v17 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
        v18 = [v17 paletteView];
        v13 = [v18 edgeLocationToDockFromCorner:1];

        if (v13 == 2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v11 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
        v12 = [v11 paletteView];
        v13 = [v12 edgeLocationToDockFromCorner:2];

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

    if (v10 == 7)
    {
      v21 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
      v22 = [v21 paletteView];
      v16 = [v22 edgeLocationToDockFromCorner:8];

      if (v16 == 8)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v10 != 8)
      {
        return;
      }

      v14 = [(PKPalettePencilInteractionFeedbackHostView *)self delegate];
      v15 = [v14 paletteView];
      v16 = [v15 edgeLocationToDockFromCorner:4];

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

  if (v10 <= 2)
  {
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        return;
      }

      goto LABEL_30;
    }

LABEL_18:
    v19 = [(PKPalettePencilInteractionFeedbackHostView *)self layoutGuideCenterXConstraint];
    v20 = 0.0;
    [v19 setConstant:0.0];

    if (![(PKPalettePencilInteractionFeedbackHostView *)self isPencilInteractionFeedbackViewVisible])
    {
      v20 = -v9;
    }

    goto LABEL_33;
  }

  if (v10 == 3)
  {
LABEL_26:
    v23 = [(PKPalettePencilInteractionFeedbackHostView *)self layoutGuideCenterXConstraint];
    v20 = 0.0;
    [v23 setConstant:0.0];

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
  v24 = [(PKPalettePencilInteractionFeedbackHostView *)self layoutGuideCenterXConstraint];
  [v24 setConstant:v9];

LABEL_33:
  v25 = [(PKPalettePencilInteractionFeedbackHostView *)self layoutGuideCenterYConstraint];
  [v25 setConstant:v20];
}

- (PKPalettePencilInteractionFeedbackHostViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end